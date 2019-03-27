#include <iostream>
#include <ros/ros.h>
#include <boost/asio.hpp>
#include <boost/bind.hpp>
#include <std_msgs/String.h>
#include <std_msgs/Int32.h>
#include <string>

using namespace std;
using namespace boost::asio;

int flag=0;    //当唤醒成功后，设为1,当为1时，向/voice/xf_xfm_topic发布消息
//string  result=string("start");

int main(int argc, char* argv[])
{
	ros::init(argc,argv,"xf_xfm_node");
	ros::NodeHandle nd;

	ros::Publisher pub=nd.advertise<std_msgs::String>("/voice/xf_xfm_topic",1);
	ros::Rate loop_rate(10);
	
        io_service iosev;
	char str1[3];
	 int angle,sum=0;
	char bufR[200];		//读
	unsigned char bufW[6]={'R','E','S','E','T','\n'};
        //节点文件
        serial_port sp(iosev, "/dev/ttyUSB1");
        // 设置参数
        sp.set_option(serial_port::baud_rate(115200));                             //波特率
        sp.set_option(serial_port::flow_control(serial_port::flow_control::none)); //流量控制
        sp.set_option(serial_port::parity(serial_port::parity::none));             //奇偶校验
        sp.set_option(serial_port::stop_bits(serial_port::stop_bits::one));        //停止位
        sp.set_option(serial_port::character_size(8));                             //字符大小
	
	  ROS_INFO("start");
	  read(sp, buffer(bufR));     //向串口读数据
	  ROS_INFO("reading");
	  ROS_INFO("%s",bufR);
	  
	  char *str=strstr(bufR,"angle");
	  str1[0]=*(str+6);
	  str1[1]=*(str+7);
	  str1[2]=*(str+8);
	  cout<<endl<<str1[0]<<endl<<str1[1]<<endl<<str1[2]<<endl<<endl;
	  for(int i=0;i<3;i++)
	  {
	    if(str1[i]>='0'&&str1[i]<='9')
	      sum++;
	  }
	  cout<<"sum="<<sum<<endl;
	  if (sum==1)
	    angle=(str1[0]-'0');
	  else if(sum==2)
	    angle=(str1[0]-'0')*10+str1[1]-'0';
	  else if(sum==3)
	    angle=(str1[0]-'0')*100+(str1[1]-'0')*10+(str1[2]-'0');
	  
	  ROS_INFO("angle=%d\n",angle);
	  
	  cout<<"--------------------------------------------------------------"<<endl;

//	  cout<<result<<endl;
	  if (angle>=0)
	    flag=1;    //唤醒成功，将标志设置为1
	  
	  //while(ros::ok())
	  //{
	  	if(flag)
	  	{
	  		std_msgs::Int32 msg;
//	  		int Angle=angle;
			msg.data=angle;
	  		pub.publish(msg);
	  		flag=0;
	  	}
		
	  	//ros::spinOnce();    //没有这个，回调函数就永远不会被调用
	  	//loop_rate.sleep();
	  //}

	  //向串口写数据
	  write(sp, buffer(bufW, 6)); 		//写入RESET
	  ROS_INFO("writing ok");

	iosev.run();
	return 0;
}
