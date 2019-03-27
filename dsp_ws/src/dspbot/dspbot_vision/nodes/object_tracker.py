#!/usr/bin/env python
#coding=utf-8

import rospy
from sensor_msgs.msg import RegionOfInterest, CameraInfo
from std_msgs.msg import Int32
from geometry_msgs.msg import Twist
import thread

class ObjectTracker():
    def __init__(self):
        rospy.init_node("object_tracker")
                
        # Set the shutdown function (stop the robot)
        rospy.on_shutdown(self.shutdown)
        
        # How often should we update the robot's motion?
        self.rate = rospy.get_param("~rate", 10)
        r = rospy.Rate(self.rate) 
        
        # The maximum rotation speed in radians per second
        self.max_rotation_speed = rospy.get_param("~max_rotation_speed", 0.5)
        
        # The minimum rotation speed in radians per second
        self.min_rotation_speed = rospy.get_param("~min_rotation_speed", 0.1)
        
        # Sensitivity to target displacements.  Setting this too high
        # can lead to oscillations of the robot.
        self.gain = rospy.get_param("~gain", 2.0)
        
        # The x threshold (% of image width) indicates how far off-center
        # the ROI needs to be in the x-direction before we react
        self.x_threshold = rospy.get_param("~x_threshold", 0.1)

        # Publisher to control the robot's movement
        self.cmd_vel_pub = rospy.Publisher('cmd_vel', Twist, queue_size=5)
        
        # Intialize the movement command
        self.move_cmd = Twist()
        
        # Get a lock for updating the self.move_cmd values
        self.lock = thread.allocate_lock()
        
        # We will get the image width and height from the camera_info topic
        self.image_width = 0
        self.image_height = 0
        self.Track=0
        self.depth=0
        
        # Set flag to indicate when the ROI stops updating
        self.target_visible = False
        
        # Wait for the camera_info topic to become available
        rospy.loginfo("Waiting for camera_info topic...")
        rospy.wait_for_message('camera_info', CameraInfo)
        
        # Subscribe the camera_info topic to get the image width and height
        rospy.Subscriber('camera_info', CameraInfo, self.get_camera_info, queue_size=1)#get_camera_info
        rospy.Subscriber('dist', Int32, self.get_depth, queue_size=1)

        # Wait until we actually have the camera data
        while self.image_width == 0 or self.image_height == 0:
            rospy.sleep(1)           
        
        rospy.Subscriber('tracking',Int32,self.callbackTrack,queue_size=1)   
                 
        # Subscribe to the ROI topic and set the callback to update the robot's motion
#        if self.Track == 1:        
        rospy.Subscriber('roi', RegionOfInterest, self.set_cmd_vel, queue_size=1)	#set_cmd_vel
        
        # Wait until we have an ROI to follow
        rospy.loginfo("Waiting for messages on /roi...")
        rospy.wait_for_message('roi', RegionOfInterest)
        
        rospy.loginfo("ROI messages detected. Starting tracker...")
        
        # Begin the tracking loop
        while not rospy.is_shutdown():
            # Acquire a lock while we're setting the robot speeds
            self.lock.acquire()
            
            try:
                # If the target is not visible, stop the robot
                if self.Track==1:
                    if not self.target_visible:
                        self.move_cmd = Twist()
                    else:
                    # Reset the flag to False by default
                        self.target_visible = False
                    
                # Send the Twist command to the robot
                    self.cmd_vel_pub.publish(self.move_cmd)
                    if self.move_cmd == Twist():
                        break       
                
                if self.Track==2:
                    self.cmd_vel_pub.publish(Twist())
                    rospy.loginfo("任务结束，发布停止指令")            
                
            finally:
                # Release the lock
                self.lock.release()
                
            # Sleep for 1/self.rate seconds
            r.sleep()

    def set_cmd_vel(self, msg):
        # Acquire a lock while we're setting the robot speeds
        self.lock.acquire()
#        while self.depth>700:
#            rospy.loginfo("depth>700")
#            self.move_cmd.linear.x =0.15
        
        try:
            # If the ROI has a width or height of 0, we have lost the target
            if msg.width == 0 or msg.height == 0:
                self.target_visible = False
                return
            
            # If the ROI stops updating this next statement will not happen
            self.target_visible = True
    
            # Compute the displacement of the ROI from the center of the image
            target_offset_x = msg.x_offset + msg.width / 2 - self.image_width / 2
    
            try:
                percent_offset_x = float(target_offset_x) / (float(self.image_width) / 2.0)
            except:
                percent_offset_x = 0
    
            # Rotate the robot only if the displacement of the target exceeds the threshold
            
#            rospy.loginfo("depth<700,adjust begin")	
            if abs(percent_offset_x) > self.x_threshold:
                # Set the rotation speed proportional to the displacement of the target
                try:
                    speed = self.gain * percent_offset_x
                    if speed < 0:
                        direction = -1
                    else:
                        direction = 1
                    self.move_cmd.angular.z = -direction * max(self.min_rotation_speed,
                                                min(self.max_rotation_speed, abs(speed)))
                except:
                    self.move_cmd = Twist()
            elif self.depth>500:
                self.move_cmd.linear.x =0.2
            else:
                self.move_cmd = Twist()

        finally:
            # Release the lock
            self.lock.release()

    def get_camera_info(self, msg):
        self.image_width = msg.width
        self.image_height = msg.height

    def get_depth(self,msg):
        self.depth=msg.data
        
    def callbackTrack(self,msg):
    	self.Track=msg.data


    def shutdown(self):
        rospy.loginfo("Stopping the robot...")
        self.cmd_vel_pub.publish(Twist())
        rospy.sleep(1)     

if __name__ == '__main__':
    try:
        ObjectTracker()
        rospy.spin()
    except rospy.ROSInterruptException:
        rospy.loginfo("Object tracking node terminated.")

