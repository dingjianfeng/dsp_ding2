#!/usr/bin/env python
#coding=utf-8

import rospy
from geometry_msgs.msg import Twist
from std_msgs.msg import String
from math import copysign

class VoiceNav:
	def __init__(self):
		rospy.init_node('voice_nav')

		rospy.on_shutdown(self.cleanup)

		#set a number of parameters affecting the robot's speed
		self.max_speed=rospy.get_param("~max_speed",0.4)
		self.max_angular_speed=rospy.get_param("~max_angular_speed",1.5)
		self.speed=rospy.get_param("~start_speed",0.1)
		self.angular_speed=rospy.get_param("~start_angular_speed",0.5)
		self.linear_increment=rospy.get_param("~linear_increment",0.05)
		self.angular_increment=rospy.get_param("~angular_increment",0.4)

		#we don't have to run the script very fast
		self.rate=rospy.get_param("~rate",5)
		r=rospy.Rate(self.rate)

		#A flag to determine whether or not voice control is paused
		self.paused=False

		#Initialize the Twist message we will publish
		self.cmd_vel=Twist()

		#publish the twist message to the  cmd_vel topic
		self.cmd_vel_pub=rospy.Publisher('cmd_vel',Twist,queue_size=5)

		#self.tts_pub = rospy.Publisher("voice/xf_tts_topic", String, queue_size=1)
		self.tts_pub = rospy.Publisher('/voice/xf_tts_topic', String, queue_size=5)
		#subscribe  to the .......topic  to receive voice commands. 此处要订阅讯飞将语音转化为文字发布出来的tipic
		rospy.Subscriber('/voice/xf_nlp_topic',String,self.speech_callback)

		#a mapping from keywords or phrases to commands.命令字典
		self.keywords_to_command={
		                '停止':['停止','停下','关闭','关掉'],
		                '减速':['减速','慢点'],
		                '加速':['加速','快点'],
		                '前进':['前进','直走'],
		                '后退':['后退','倒退'],
		                '左转':['左转','向左转'],
		                '右转':['右转','向右转'],
		                '半速':['半速'],
		                '暂停':['暂停'],
		                '继续':['继续'],
				'中国首都是哪个城市':['中国首都是哪个城市'],
				'介绍一下你自己':['介绍一下你自己'],
				'给我们讲个绕口令吧':['给我们讲个绕口令吧'],
				'你多大了':['你多大了'],
		          
		}


		rospy.loginfo("Ready to receive voice commands")


		#we have to keep publishing the cmd_vel message if we want the robot to keep moving
		while  not rospy.is_shutdown():
			self.cmd_vel_pub.publish(self.cmd_vel)
			r.sleep()


	def get_command(self,data):
		#attempt to match the recognized word or phrase to the keywords_to_command dictionary and return the appropriate command
		for(command,keywords) in self.keywords_to_command.iteritems():
			for word in keywords:
				if data.find(word) >  -1:
					return command

	def  speech_callback(self,msg):
		#get the motion(运动) command from the recognized phrase
		command=self.get_command(msg.data)
		
		#log the command to the screen
		rospy.loginfo("command:"+str(command))

		#if the user has asked to pause/continue voice control,set the flag accordingly(相应的)
		if command=='暂停':
			self.paused=True
		elif command=='继续':
			self.paused=False

		#if voice control is paused,simply return without performing any action
		if self.paused:
			return 

										
   		#the list of  if -then  statements  should be fairly self -explanatory(不需要解释)
   		if command =='前进':
   			self.cmd_vel.linear.x=self.speed
   			self.cmd_vel.angular.z=0

   		elif command=='左转':
   			if self.cmd_vel.linear.x!=0:
   				self.cmd_vel.angular.z+=self.angular_increment
   			else:
   				self.cmd_vel.angular.z=self.angular_speed

   		elif command=='右转':
   			if self.cmd_vel.linear.x!=0:
   				self.cmd_vel.angular.z-=self.angular_increment		
   			else:
   				self.cmd_vel.angular.z=-self.angular_speed

   		elif command=='后退':
   			self.cmd_vel.linear.x=-self.speed
   			self.cmd_vel.angular.z=0

   		elif command=='停止':
   			#stop the robot! publish a twist message consisting of all zeros
   			self.cmd_vel=Twist()		

   		elif command =='加速':
   			self.speed+=self.linear_increment
   			self.angular_speed+=self.angular_increment
   			if self.cmd_vel.linear.x!=0:
   				self.cmd_vel.linear.x+=copysign(self.linear_increment,self.cmd_vel.linear.x)       #python math中的copysign(x,y)函数  返回与y同号的x值,若y<0，返回-1*x的绝对值；否则返回x的绝对值
   			if self.cmd_vel.angular.z!=0:
   				self.cmd_vel.angular.z+=copysign(self.angular_increment,self.cmd_vel.angular.z)	

   		elif command =='减速':
   			self.speed-=self.linear_increment
   			self.angular-=self.angular_increment
   			if self.cmd_vel.linear.x!=0:
   				self.cmd_vel.linear.x-=copysign(self.linear_increment,self.cmd_vel.linear.x)
   			if self.cmd_vel.angular.z!=0:
   				self.cmd_vel.angular.z-=copysign(self.angular_increment,self.cmd_vel.angular.z)	


   		elif command =='半速':
   			self.speed=copysign(self.max_speed/2,self.speed)

   			if self.cmd_vel.linear.x!=0:
   				self.cmd_vel.linear.x-=copysign(self.speed,self.cmd_vel.linear.x)
   			if self.cmd_vel.angular.z!=0:
   				self.cmd_vel.angular.z-=copysign(self.angular_speed,self.cmd_vel.angular.z)

		elif command =='中国首都是哪个城市':
			t1="北京"
			self.tts_pub.publish(t1)
			rospy.loginfo("北京")	

		elif command =='介绍一下你自己':
			t1="大家好，我是来自于德施普科技有限公司的小德，很高兴认识大家。"
			self.tts_pub.publish(t1)

		elif command =='给我们讲个绕口令吧':
			t1="有个小孩叫小杜, 上街打醋又买布.买了布,打了醋,回头看见鹰抓兔.放下布,搁下醋, 上前去追鹰和兔,飞了鹰,跑了兔.洒了醋,湿了布."
			self.tts_pub.publish(t1)
	
		elif command =='你多大了':
			t1="我都两个月大了呢"
			self.tts_pub.publish(t1)
		
		else:
			return

		self.cmd_vel.linear.x=min(self.max_speed,max(-self.max_speed,self.cmd_vel.linear.x))
		self.cmd_vel.angular.z=min(self.max_angular_speed,max(-self.max_angular_speed,self.cmd_vel.angular.z))	

	def cleanup(self):
		#when shutting down be sure to stop the robot!
		twist=Twist()
		self.cmd_vel_pub.publish(twist)
		rospy.sleep(1)

if __name__=="__main__":
	try:
		VoiceNav()
		rospy.spin()
	except rospy.ROSInterruptException:
		rospy.loginfo("Voice navigation terminated.")
						
