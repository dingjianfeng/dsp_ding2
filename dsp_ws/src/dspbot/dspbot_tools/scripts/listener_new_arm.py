#!/usr/bin/env python

import rospy
from std_msgs.msg import String
import serial 
import binascii  

def callback(data):
  global k
  if data.data=='start':
        rospy.loginfo('I heard %s', data.data)
        buffer_write_1=bytearray("\x55\x55\x1A\x03\x07\xE8\x03\x10\xDC\x05\x0E\xC4\x06\x0F\x26\x06\x18\xB0\x04\x19\xDC\x05\x1A\xD0\x07\x1F\x20\x03")
  	ser.write(buffer_write_1) 
  if data.data=='pick':
        rospy.loginfo('I heard %s', data.data)
        buffer_write_2=bytearray("\x55\x55\x1A\x03\x07\xE8\x03\x10\xB2\x07\x0E\x25\x08\x0F\x4C\x04\x18\xd6\x06\x19\xA4\x06\x1A\xD0\x07\x1F\x20\x03")
        ser.write(buffer_write_2) 
        
        rospy.sleep(2)
        buffer_write_3=bytearray("\x55\x55\x1A\x03\x07\xE8\x03\x10\xB2\x07\x0E\x25\x08\x0F\x4C\x04\x18\xd6\x06\x19\xA4\x06\x1A\xD0\x07\x1F\xC2\x06")
        ser.write(buffer_write_3) 
        
        rospy.sleep(2)
        buffer_write_4=bytearray("\x55\x55\x1A\x03\x07\xE8\x03\x10\xD6\x06\x0E\x1B\x08\x0F\x4C\x04\x18\x4C\x04\x19\xA4\x06\x1A\xD0\x07\x1F\xC2\x06")
        ser.write(buffer_write_4) 
        
        k=1
  if data.data=='release':
        buffer_write_5=bytearray("\x55\x55\x1A\x03\x07\xE8\x03\x10\xDC\x05\x0E\x53\x07\x0F\xB0\x04\x18\xB0\x04\x19\xA4\x06\x1A\xD0\x07\x1F\xC2\x06")
        ser.write(buffer_write_5) 
        rospy.sleep(2)
        buffer_write_6=bytearray("\x55\x55\x1A\x03\x07\xE8\x03\x10\xDC\x05\x0E\x53\x07\x0F\xB0\x04\x18\xB0\x04\x19\xA4\x06\x1A\xD0\x07\x1F\x14\x05")
        ser.write(buffer_write_6) 
        k=2
        #ser.write(buffer_write_final)
        #rospy.sleep(2)
        #ser.write(buffer_write_final_1)
        #k=1


def listener():
  #k=0
  rospy.init_node('listener', anonymous=True)
  rospy.Subscriber('arm', String, callback)
  rospy.spin()

if __name__ == '__main__':
  ser = serial.Serial('/dev/arm', 9600, timeout=15)   
  k=0
  listener()
