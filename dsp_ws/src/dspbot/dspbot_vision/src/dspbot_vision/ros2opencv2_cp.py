#!/usr/bin/env python


import rospy
import cv2
import cv2.cv as cv
import sys
from std_msgs.msg import String,Int32
from sensor_msgs.msg import Image, RegionOfInterest, CameraInfo
from cv_bridge import CvBridge, CvBridgeError
import time
import numpy as np
from geometry_msgs.msg import Twist
from math import copysign

class ROS2OpenCV2(object):
    def __init__(self, node_name):        
        self.node_name = node_name

        rospy.init_node(node_name)
        rospy.loginfo("Starting node " + str(node_name))

        rospy.on_shutdown(self.cleanup)

        # Initialize the Region of Interest and its publisher
        self.ROI = RegionOfInterest()
        self.roi_pub = rospy.Publisher("/roi", RegionOfInterest, queue_size=1)
        
        self.hmin = rospy.get_param("~hmin", 22)
        self.hmax = rospy.get_param("~hmax", 62)
        self.smin = rospy.get_param("~smin", 115)
        self.smax = rospy.get_param("~smax", 255)
        self.vmin = rospy.get_param("~vmin", 50)
        self.vmax = rospy.get_param("~vmax", 255)
        self.slow_down_factor = rospy.get_param("~slow_down_factor", 0.8)
        self.goal_z = rospy.get_param("~goal_z", 1.2)
        self.z_threshold = rospy.get_param("~z_threshold", 0.05)
        self.x_threshold = rospy.get_param("~x_threshold", 0.05)
                
        # How much do we weight the goal distance (z) when making a movement
        self.z_scale = rospy.get_param("~z_scale", 1.0)

        # How much do we weight x-displacement of the person when making a movement        
        self.x_scale = rospy.get_param("~x_scale", 0.8)
        
        # The maximum rotation speed in radians per second
        self.max_angular_speed = rospy.get_param("~max_angular_speed", 0.3)
        
        # The minimum rotation speed in radians per second
        self.min_angular_speed = rospy.get_param("~min_angular_speed", 0.0)
        
        # The max linear speed in meters per second
        self.max_linear_speed = rospy.get_param("~max_linear_speed", 0.4)
        
        # The minimum linear speed in meters per second
        self.min_linear_speed = rospy.get_param("~min_linear_speed", 0.0)
        
        self.move_cmd = Twist()
        self.cmd_vel_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=5)
        rospy.loginfo("Ready to follow!")

        #self.show_text=rospy.get_param("~show_text",True)
        # Initialize a number of global variables
        self.frame = None
        self.frame_size = None
        self.frame_width = None
        self.frame_height = None
        self.depth_image = None
        self.marker_image = None
        self.display_image = None
        self.keystroke = None
        self.keep_marker_history = False
        self.image_width = 0
        self.image_height = 0
        self.cX=0
        self.cY=0
#        rospy.loginfo("a")
        cv.NamedWindow("Parameters", 0)
        cv.MoveWindow("Parameters", 700, 325)

        # Create the slider controls for saturation, value and threshold
        cv.CreateTrackbar("Min H", "Parameters", self.hmin, 255, self.set_hmin)
        cv.CreateTrackbar("Max H", "Parameters", self.hmax, 255, self.set_hmax)
        cv.CreateTrackbar("Min S", "Parameters", self.smin, 255, self.set_smin)
        cv.CreateTrackbar("Max S", "Parameters", self.smax, 255, self.set_smax)
        cv.CreateTrackbar("Min Value", "Parameters", self.vmin, 255, self.set_vmin)
        cv.CreateTrackbar("Max Value", "Parameters", self.vmax, 255, self.set_vmax)

        # Create the main display window
        self.cv_window_name = self.node_name
        cv.NamedWindow(self.cv_window_name, cv.CV_WINDOW_NORMAL)
        cv.NamedWindow("reality", cv.CV_WINDOW_NORMAL)
        cv.NamedWindow("depth", cv.CV_WINDOW_NORMAL)

        # Create the cv_bridge object
        self.bridge = CvBridge()

        # Subscribe to the image and depth topics and set the appropriate callbacks
        # The image topic names can be remapped in the appropriate launch file
        self.image_sub = rospy.Subscriber("input_rgb_image", Image, self.image_callback, queue_size=1)
        self.depth_sub = rospy.Subscriber("input_depth_image", Image, self.depth_callback, queue_size=1)
            
    def image_callback(self, data):
        # Store the image header in a global variable
        self.image_header = data.header

        # Convert the ROS image to OpenCV format using a cv_bridge helper function
        frame = self.convert_image(data)
        
        # Store the frame width and height in a pair of global variables
        if self.frame_width is None:
            self.frame_size = (frame.shape[1], frame.shape[0])
            self.frame_width, self.frame_height = self.frame_size            
            
        # Create the marker image we will use for display purposes
        if self.marker_image is None:
            self.marker_image = np.zeros_like(frame)
            
        # Copy the current frame to the global image in case we need it elsewhere
        self.frame = frame.copy()

        # Reset the marker image if we're not displaying the history
        if not self.keep_marker_history:
            self.marker_image = np.zeros_like(self.marker_image)

        processed_image = self.process_image(frame)
        self.processed_image = processed_image.copy()

        #self.display_image=cv2.bitwise_or(self.processed_image, self.marker_image)

        # First blur the image
        myimage= cv2.blur( frame, (5, 5))
        # Convert from RGB to HSV space
        hsv = cv2.cvtColor(myimage, cv2.COLOR_BGR2HSV)
        # Create a mask using the current saturation and value parameters
        mask = cv2.inRange(hsv, np.array((self.hmin, self.smin, self.vmin)), np.array((self.hmax, self.smax, self.vmax)))
        #self.display_image=mask.copy();
        element = cv2.getStructuringElement(cv2.MORPH_RECT, (5, 5));
        eroded = cv2.erode(mask,element)

        ret, thresh = cv2.threshold(eroded, 127, 255, cv2.THRESH_BINARY)
        contours, hierarchy = cv2.findContours(thresh, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)

        maxArea=0
        k=-1
        for i in xrange(len(contours)):
              area=cv2.contourArea(contours[i])
              if area>maxArea:
                   maxArea=area
                   k=i

        if k>-1:
            cnt=contours[k]
            x, y, w, h = cv2.boundingRect(cnt)
            cv2.rectangle(self.frame, (x, y), (x+w, y+h), (0, 255, 0), 2)
            M = cv2.moments(cnt)
            self.cX = int(M["m10"] / M["m00"])
            self.cY = int(M["m01"] / M["m00"])
            cv2.circle(self.frame, (self.cX, self.cY), 7, (255, 255, 255), -1)


        #self.publish_roi()
        cv2.imshow(self.node_name,eroded)
        cv2.imshow("reality",self.frame)
        self.keystroke = cv2.waitKey(5)

    def depth_callback(self, data):
        # Convert the ROS image to OpenCV format using a cv_bridge helper function
        depth_image = self.convert_depth_image(data)

        # Process the depth image
        processed_depth_image = self.process_depth_image(depth_image)

        # Make global copies
        self.depth_image = depth_image.copy()
        self.processed_depth_image = processed_depth_image.copy()
        #self.publish_roi()

        font_face=cv2.FONT_HERSHEY_SIMPLEX
        font_scale=0.5
        if self.cX>0:
            dist=depth_image[self.cY][self.cX]
            rospy.loginfo(str(dist))
            cv2.putText(self.frame,"Distance:"+str(dist)+"cX="+str(self.cX)+"cY"+str(self.cY),(10,25),font_face,font_scale,cv.RGB(255,255,0))
        cv2.imshow("depth",self.processed_depth_image)
        self.keystroke = cv2.waitKey(5)
        
        ###############################################(testing)
        """
        if (self.cX>0)and(self.cY>0):
                
            # Check our movement thresholds
            if (abs(dist/1000 - self.goal_z) > self.z_threshold):
                # Compute the angular component of the movement
                linear_speed = (dist/1000 - self.goal_z) * self.z_scale
                
                # Make sure we meet our min/max specifications
                self.move_cmd.linear.x = copysign(max(self.min_linear_speed, 
                                        min(self.max_linear_speed, abs(linear_speed))), linear_speed)
            else:
                self.move_cmd.linear.x *= self.slow_down_factor
                
            if (abs(self.cX-320) > 10):     
                # Compute the linear component of the movement
                angular_speed = -self.cX/1000 * self.x_scale
                
                # Make sure we meet our min/max specifications
                self.move_cmd.angular.z = copysign(max(self.min_angular_speed, 
                                        min(self.max_angular_speed, abs(angular_speed))), angular_speed)
            else:
                # Stop the rotation smoothly
                self.move_cmd.angular.z *= self.slow_down_factor
                
        else:
            # Stop the robot smoothly
            self.move_cmd.linear.x *= self.slow_down_factor
            self.move_cmd.angular.z *= self.slow_down_factor
            
        # Publish the movement command
        self.cmd_vel_pub.publish(self.move_cmd)
        """
#        dist_pub = rospy.Publisher('dist', Int32, queue_size=5)
#        dist_pub.publish(dist)
        
        ###############################################

          
    def process_image(self, frame): 
        return frame
    
    def process_depth_image(self, frame):
        return frame

    def convert_image(self, ros_image):
              # Use cv_bridge() to convert the ROS image to OpenCV format
              try:
                  cv_image = self.bridge.imgmsg_to_cv2(ros_image, "bgr8")
                  return np.array(cv_image, dtype=np.uint8)
              except CvBridgeError, e:
                  print e

    def convert_depth_image(self, ros_image):
              # Use cv_bridge() to convert the ROS image to OpenCV format
              try:
                  depth_image = self.bridge.imgmsg_to_cv2(ros_image, "passthrough")

                  # Convert to a numpy array since this is what OpenCV uses
                  depth_image = np.array(depth_image, dtype=np.float32)
                  return depth_image

              except CvBridgeError, e:
                  print e

     # These are the callbacks for the slider controls
    def set_hmin(self, pos):
        self.hmin = pos

    def set_hmax(self, pos):
        self.hmax = pos

    def set_smin(self, pos):
        self.smin = pos

    def set_smax(self, pos):
        self.smax = pos

    def set_vmin(self, pos):
        self.vmin = pos

    def set_vmax(self, pos):
         self.vmax = pos

    def cleanup(self):
        print "Shutting down vision node."
        cv2.destroyAllWindows()    
    
    def get_camera_info(self, msg):
        self.image_width = msg.width
        self.image_height = msg.height   

def main(args):    
    try:
        node_name = "ros2opencv2_cp"
        ROS2OpenCV2(node_name)
        rospy.spin()
    except KeyboardInterrupt:
        print "Shutting down ros2opencv node."
        cv.DestroyAllWindows()

if __name__ == '__main__':
    main(sys.argv)
