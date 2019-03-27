/*
* 文本语义技术能将文本内容进行语义解析。
*/


#include <ros/ros.h>
#include <std_msgs/String.h>
#include <iostream>
#include <sstream>
#include <jsoncpp/json/json.h>
#include <string>
#include <exception>
#include <unistd.h>
#include <fstream>

#include "msp_cmn.h"
#include "msp_errors.h"

using  namespace std;

int flag=0;      //设置语义解析标志初，始值设置为0，语义解析成功后，设置为1
string result;   //用来存放语义解析后的结果


//#define SOURCETEXT  "source.txt" //语义文本资源
#define RESULTTEXT  "result.txt" //语义结果文本


//解析讯飞sdk返回的json string
int Analyse()
{
                //读取result.txt文本中的内容赋值到string字符串中
	ifstream in("result.txt", ios::in);
                istreambuf_iterator<char> beg(in), end;
                string strdata(beg, end);
                in.close();
                std::cout<<"语义解析结果"<<strdata<<std::endl;

                Json::Value root;
                Json::Reader reader;
                bool parsingSuccessful=reader.parse(strdata,root);
                if(!parsingSuccessful)
                {
                	printf("\n解析json字符串失败\n");
                	return  -1;
                }
                const Json::Value rc=root["rc"];
                const Json::Value answer=root["answer"];
                const Json::Value text=answer["text"];
                //cout<<"response rc:"<<rc<<std::endl;
                //cout<<"response answer:"<<answer<<std::endl;
                //cout<<"response text:"<<text<<std::endl;
	
	if(rc==0)
	{
		printf("\n操作成功\n");
	}
	else if(rc==1)
	{
		printf("\n无效请求\n");
		return -1;
	}
	else if(rc==2)
	{
		printf("\n服务器内部错误\n");
		return -1;
	}
	else if(rc==3)
	{
		printf("\n业务操作失败，语义解析服务出错\n");
		return -1;
	}
	else
	{
		printf("\n服务不理解或不能处理该文本\n");
		return -1;
	}

	result=text.asString();
	flag=1;           //将标志设置为1
                
                /*
                switch(rc)
                {
                	case  "0":
                	printf("\n操作成功\n");
                	break;
                	case  "1":
                	printf("\n无效请求\n");
                	break;
                	case  "2":
                	printf("\n服务器内部错误\n");
                	break;
                	case  "3":
                	printf("\n业务操作失败，语义解析服务出错\n");
                	break;
                	case  "4":
                	printf("\n服务不理解或不能处理该文本\n");
                	break;
                }
                */
	return 0;
}

int  XfNlp(string input)        //调用讯飞自然语言处理部分
{
	const char*  login_params	 =	"appid = 5c9b1764"; // 登录参数，appid与msc库绑定,请勿随意改动
	const char*  rec_text        =   NULL;
	unsigned int str_len         =   0;
	int	         ret		     =	 MSP_SUCCESS;
	FILE*        fw              =   NULL;
	//FILE*        fr              =   NULL;
	long         txtSize         =   0;
	long		 read_size	     =	 0;
	char*        text            =   NULL;
	/* 用户登录 */
	ret = MSPLogin(NULL, NULL, login_params); //第一个参数是用户名，第二个参数是密码，均传NULL即可，第三个参数是登录参数	
	if (MSP_SUCCESS != ret)
	{
		printf("MSPLogin failed , Error code %d.\n",ret);
		goto exit; //登录失败，退出登录
	}

             
                /*   
                //原来通过读文本方法获取文本信息
	fr=fopen(SOURCETEXT,"rb");
	if(NULL == fr)
	{
		printf("\nopen [%s] failed! \n",SOURCETEXT);
		goto exit;
	}

	fseek(fr, 0, SEEK_END);
	txtSize = ftell(fr);
	fseek(fr, 0, SEEK_SET);

	text = (char *)malloc(txtSize+1);
	if (NULL == text)
	{
		printf("\nout of memory! \n");
		goto exit;
	}

	read_size = fread((void *)text,1, txtSize, fr);
	if (read_size != txtSize)
	{
		printf("\nread [%s] error!\n", SOURCETEXT);
		goto exit;
	}
	text[txtSize]='\0';
	str_len = strlen(text);
               
                */
                 text=(char*)(input.data());     //获取要进行语义解析的文本
                 str_len=strlen(text);     //获取文本的长度

	printf("\n开始语义解析...\n");
	//MSPSearch函数的四个参数含义分别如下：1.nlp_version,语义版本，默认为1.0版本；2.上传的文本，文本须为utf-8编码；3.上传文本长度（如果是字符串，则不包含'\0'）;4.errorCode[out],如果函数调用成功返回MSP_SUCCESS，否则返回错误代码。
	//函数返回：成功返回缓冲区指针，失败或数据不存在返回NULL
	rec_text = MSPSearch("nlp_version=2.0",text,&str_len,&ret);
	if(MSP_SUCCESS !=ret)
	{
		printf("MSPSearch failed ,error code is:%d\n",ret);
		goto exit;
	}
	printf("\n语义解析完成!\n");

          
	//写入到RESULTTEXT文件中
	fw=fopen(RESULTTEXT,"wb");
	if(NULL == fw)
	{
		printf("\nopen [%s] failed! \n",RESULTTEXT);
		goto exit;
	}

	read_size = fwrite(rec_text,1,str_len,fw);
	if(read_size != str_len)
	{
		printf("\nwrite [%s] error!\n", RESULTTEXT);
		goto exit;
	}
	printf("\n语义解析结果已写入%s文件\n",RESULTTEXT);
                
exit:
               /*
	if (NULL != fr)
	{
		fclose(fr);
		fr = NULL;
	}

	*/
	if (NULL != fw)
	{
		fclose(fw);
		fw = NULL;
	}
	if (NULL != text)
	{
		//free(text);
		text = NULL;
	}
	//printf("\n按任意键退出 ...\n");
	//getchar();
	MSPLogout(); //退出登录

                Analyse();    //调用Analyse()函数

	return 0;
}

//当voice/xf_nlp_topic话题有消息时，调用讯飞的语义理解sdk，返回结果
void nlpCallBack(const std_msgs::String::ConstPtr &msg)
{
	std::cout<<"your question is:"<<msg->data<<std::endl;
	//调用讯飞语义理解sdk
	XfNlp(msg->data);
}

int main(int argc, char* argv[])
{
	printf("语义处理模块启动成功\n");
	
	ros::init(argc,argv,"xf_nlp_node");
	ros::NodeHandle   nd;

	ros::Subscriber  sub=nd.subscribe("voice/xf_nlp_topic",10,nlpCallBack);
	ros::Publisher pub=nd.advertise<std_msgs::String>("/voice/xf_tts_topic",10);
	ros::Rate loop_rate(10);

	while(ros::ok())
	{
		if(flag)
		{
			std_msgs::String msg;
			msg.data=result;
			pub.publish(msg);       //将语义解析的结果发布到话题/voice/xf_tts_topic
			flag=0;
		}
		ros::spinOnce();
		loop_rate.sleep();
	}
	
}
