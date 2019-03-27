#!/usr/bin/env python

import rospy
from std_msgs.msg import String
import serial  



def callback(data):
  global k
  #if data.data=='pick' and k==0:
  if data.data=='pick':
        rospy.loginfo('I heard %s', data.data)
        buffer_write_2=bytearray("\x55\x55\x1A\x03\x07\xE8\x03\x15\x08\x07\x16\xE7\x08\x17\x4C\x04\x18\x08\x07\x19\x08\x07\x1A\xD0\x07\x1E\x20\x03")
        ser.write(buffer_write_2)    
        rospy.sleep(2)
        buffer_write_3=bytearray("\x55\x55\x1A\x03\x07\xE8\x03\x15\x08\x07\x16\xE7\x08\x17\x4C\x04\x18\x08\x07\x19\x08\x07\x1A\xD0\x07\x1E\xD6\x06")
        ser.write(buffer_write_3) 
        rospy.sleep(2)
        buffer_write_4=bytearray("\x55\x55\x1A\x03\x07\xE8\x03\x15\x08\x07\x16\xE7\x08\x17\x4C\x04\x18\xB0\x04\x19\x08\x07\x1A\xD0\x07\x1E\xD6\x06")
        ser.write(buffer_write_4) 
        k=1
  if data.data=='release':
  	rospy.loginfo('I heard %s', data.data)
        buffer_write_5=bytearray("\x55\x55\x1A\x03\x07\xE8\x03\x15\x40\x06\x16\xE7\x08\x17\xB0\x04\x18\x40\x06\x19\xA4\x06\x1A\xD0\x07\x1E\xD6\x06")
        ser.write(buffer_write_5) 
        rospy.sleep(2)
        buffer_write_6=bytearray("\x55\x55\x1A\x03\x07\xE8\x03\x15\x40\x06\x16\xE7\x08\x17\xB0\x04\x18\x40\x06\x19\xA4\x06\x1A\xD0\x07\x1E\x14\x05")
        ser.write(buffer_write_6) 
        rospy.sleep(1)



def listener():
  #k=0
  rospy.init_node('listener', anonymous=True)
  rospy.Subscriber('arm', String, callback)
  buffer_write_1=bytearray("\x55\x55\x1A\x03\x07\xE8\x03\x15\xB5\x03\x16\x58\x08\x17\xEE\x05\x18\xC0\x03\x19\xDC\x05\x1A\xD0\x07\x1E\x20\x03")
  ser.write(buffer_write_1) 
  rospy.spin()

if __name__ == '__main__':
  ser = serial.Serial('/dev/arm', 9600, timeout=10)   
  k=0
  listener()
