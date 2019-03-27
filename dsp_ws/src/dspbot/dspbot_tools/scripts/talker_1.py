#!/usr/bin/env python

import rospy
from std_msgs.msg import String


def talker():
    rospy.init_node('talker', anonymous=True)
    pub = rospy.Publisher('arm', String, queue_size=10)
    rate = rospy.Rate(1) # 10hz
    #count=0
    while not rospy.is_shutdown():
        arm_str = "release" 
        rospy.loginfo(arm_str)
        pub.publish(arm_str)
        #count=1
        rate.sleep()


if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
