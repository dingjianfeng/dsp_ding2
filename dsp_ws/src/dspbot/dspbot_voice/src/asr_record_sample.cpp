/*
* 语音听写(iFly Auto Transform)技术能够实时地将语音转换成对应的文字。
*/

/*
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>

#include "../../include/qisr.h"
#include "../../include/msp_cmn.h"
#include "../../include/msp_errors.h"
#include "speech_recognizer.h"
*/

#include <ros/ros.h>
#include <std_msgs/String.h>
#include <std_msgs/Int32.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include "qisr.h"
#include "msp_cmn.h"
#include "msp_errors.h"
#include "speech_recognizer.h"
#include <string>


#define FRAME_LEN	640 
#define	BUFFER_SIZE	4096
#define SAMPLE_RATE_16K     (16000)
#define SAMPLE_RATE_8K      (8000)
#define MAX_GRAMMARID_LEN   (32)
#define MAX_PARAMS_LEN      (1024)
#define ASRFLAG   1

using namespace std;

const char * ASR_RES_PATH        = "fo|/home/dsp/dsp_ws/src/dspbot/dspbot_voice/msc/res/asr/common.jet"; //离线语法识别资源路径
const char * GRM_BUILD_PATH      = "/home/dsp/dsp_ws/src/dspbot/dspbot_voice/msc/res/asr/GrmBuilld"; //构建离线语法识别网络生成数据保存路径
const char * GRM_FILE            = "/home/dsp/dsp_ws/src/dspbot/dspbot_voice/test.bnf"; //构建离线识别语法网络所用的语法文件
const char * LEX_NAME            = "contact"; //更新离线识别语法的contact槽（语法文件为此示例中使用的call.bnf）

string mydata="";
bool flag=false;    //当该flag为真的时候，向/voice/xf_nlp_topic发布数据
bool recorder_Flag=true;   //当说话结束而不超过15秒时，提前结束，而不用等到15秒
bool myflag=false;  //控制输出表示的标志,自己测试用

typedef struct _UserData {
	int     build_fini; //标识语法构建是否完成
	int     update_fini; //标识更新词典是否完成
	int     errcode; //记录语法构建或更新词典回调错误码
	char    grammar_id[MAX_GRAMMARID_LEN]; //保存语法构建返回的语法ID
}UserData;


const char *get_audio_file(void); //选择进行离线语法识别的语音文件
int build_grammar(UserData *udata); //构建离线识别语法网络
int update_lexicon(UserData *udata); //更新离线识别语法词典
int run_asr(UserData *udata); //进行离线语法识别

const char* get_audio_file(void)    //选择从文件输入音频文件时，获取音频文件，在wav目录下，返回结果为wav下的pcm文件。
{
	int key = 0;
	while(key != 27) //按Esc则退出
	{
		printf("请选择音频文件：\n");
		printf("1.打电话给丁伟\n");
		printf("2.打电话给黄辣椒\n");
		scanf("%d", &key);
		//key = getc();
		//printf("key==========%c",key);
		switch(key)
		{
		case 1:
			printf("\n1.打电话给丁伟\n");
			return "wav/ddhgdw.pcm";
		case 2:
			printf("\n2.打电话给黄辣椒\n");
			return "wav/ddhghlj.pcm";
		default:
			continue;
		}
	}
	exit(0);
	return NULL;
}

int build_grm_cb(int ecode, const char *info, void *udata)
{
	UserData *grm_data = (UserData *)udata;

	if (NULL != grm_data) {
		grm_data->build_fini = 1;
		grm_data->errcode = ecode;
	}

	if (MSP_SUCCESS == ecode && NULL != info) {
		printf("构建语法成功！ 语法ID:%s\n", info);
		if (NULL != grm_data)
			snprintf(grm_data->grammar_id, MAX_GRAMMARID_LEN - 1, info);
	}
	else
		printf("构建语法失败！%d\n", ecode);

	return 0;
}

int build_grammar(UserData *udata)      //构建离线识别语法网络
{
	FILE *grm_file                           = NULL;
	char *grm_content                        = NULL;
	unsigned int grm_cnt_len                 = 0;
	char grm_build_params[MAX_PARAMS_LEN]    = {NULL};
	int ret                                  = 0;

	grm_file = fopen(GRM_FILE, "rb");	 //GRM_FILE为构建离线识别语法网络所用的语法文件，GRM_FILE为文件夹中的call.bnf文件
	if(NULL == grm_file) {
		printf("打开\"%s\"文件失败！[%s]\n", GRM_FILE, strerror(errno));
		return -1; 
	}

	fseek(grm_file, 0, SEEK_END);
	grm_cnt_len = ftell(grm_file);
	fseek(grm_file, 0, SEEK_SET);

	grm_content = (char *)malloc(grm_cnt_len + 1);
	if (NULL == grm_content)
	{
		printf("内存分配失败!\n");
		fclose(grm_file);
		grm_file = NULL;
		return -1;
	}
	fread((void*)grm_content, 1, grm_cnt_len, grm_file);
	grm_content[grm_cnt_len] = '\0';
	fclose(grm_file);
	grm_file = NULL;

	snprintf(grm_build_params, MAX_PARAMS_LEN - 1,          //snprintf函数的使用
		"engine_type = local, \
		asr_res_path = %s, sample_rate = %d, \
		grm_build_path = %s, ",
		ASR_RES_PATH,
		SAMPLE_RATE_16K,
		GRM_BUILD_PATH
		);
	ret = QISRBuildGrammar("bnf", grm_content, grm_cnt_len, grm_build_params, build_grm_cb, udata);

	free(grm_content);
	grm_content = NULL;

	return ret;
}

int update_lex_cb(int ecode, const char *info, void *udata)
{
	UserData *lex_data = (UserData *)udata;

	if (NULL != lex_data) {
		lex_data->update_fini = 1;
		lex_data->errcode = ecode;
	}

	if (MSP_SUCCESS == ecode)
		printf("更新词典成功！\n");
	else
		printf("更新词典失败！%d\n", ecode);

	return 0;
}

int update_lexicon(UserData *udata)     //更新离线识别语法词典
{
	const char *lex_content                   = "丁伟\n黄辣椒";
	unsigned int lex_cnt_len                  = strlen(lex_content);
	char update_lex_params[MAX_PARAMS_LEN]    = {NULL}; 

	snprintf(update_lex_params, MAX_PARAMS_LEN - 1, 
		"engine_type = local, text_encoding = UTF-8, \
		asr_res_path = %s, sample_rate = %d, \
		grm_build_path = %s, grammar_list = %s, ",
		ASR_RES_PATH,
		SAMPLE_RATE_16K,
		GRM_BUILD_PATH,
		udata->grammar_id);
	return QISRUpdateLexicon(LEX_NAME, lex_content, lex_cnt_len, update_lex_params, update_lex_cb, udata);    //更新本地语法词典函数，祥见讯飞语音开发文档
}

static void show_result(char *str, char is_over)      //输出结果
{
        string myresult=string(str);  //将指针转化为字符串
     	
	char *a="<rawtext>";
        char *b="</rawtext>";
	int length=strlen(a);  //计算<rawtext>所占位数
	
        char *begin=strstr(str,a)+length;  //计算所需信息起始位置
        char *end=strstr(str,b);          //计算所需信息结束位置

	//计算用substr()函数所需要的两个参数
	int m=begin-str;    //计算要获取子串的起始位置
	int n=end-begin;    //计算要获取子串的长度


	mydata=myresult.substr(m,n);
//	cout<<"输出为:"<<myresult<<endl;
	cout<<"指令为:"<<mydata<<endl;

	/*
	for(;begin<end;begin++)
	{
		cout<<str[l];
		l++;
	}
	cout<<endl;
	*/
	

	/*
        string a=string("<rawtext>");
        string b=string("</rawtext>");
        int pos=0;
        int begin=find(a,pos);
        int end=find(b,pos);
        cout<<a<<"和"<<b<<endl;
    	printf("读取成功2\n");
	cout<<string->rawtext<<endl;
        */
	

       /*
        //测试
        char *a="<rawtext>";
        char *b="</rawtext>";
        char *begin=strstr(string,a);
        char *end=strstr(string,b);
        //int l=begin-string;
        int length=end-begin;
        char * myresult=NULL;
        strncpy(myresult,begin,length);
        printf("\rmyResult: [ %s ]", myresult);
       */


       /*
	//用tinyxml进行的测试
        XMLDocument *doc=new XMLDocument();
        if(doc->LoadFile(string)!=XML_NO_ERROR)
        {
       		printf("read xml file error\n");
        }
        //获取根节点，即nlp节点
  	XMLElement *root=doc->RootElement();
 	XMLElement *perAttr=root->FirstChildElement();
        perAttr=perAttr->NextSiblingElement();
        printf("name %s,text %s\n",perAttr->Name(),perAttr->GetText());
       */

     
       /*
        XMLDocument doc;
       	doc.LoadFile(str); 
  	printf("读取成功1\n");
	XMLElement *nlp=doc.RootElement();  
	printf("读取成功2\n");      
	cout<<nlp->Value()<<endl;
       	XMLElement *version=doc.FirstChildElement("version"); 
   	printf("读取成功3\n");      
        cout<<version<<endl;
        printf("读取成功4\n");
	XMLElement *rawtext=doc.FirstChildElement("rawtext");
	cout<<rawtext->GetText()<<endl;
	*/
	if(is_over)
		putchar('\n');
}

static char *g_result = NULL;
static unsigned int g_buffersize = BUFFER_SIZE;

void on_result(const char *result, char is_last)
{
	if (result) {
		size_t left = g_buffersize - 1 - strlen(g_result);
		size_t size = strlen(result);
		if (left < size) {
			g_result = (char*)realloc(g_result, g_buffersize + BUFFER_SIZE);
			if (g_result)
				g_buffersize += BUFFER_SIZE;
			else {
				printf("mem alloc failed\n");
				return;
			}
		}
		strncat(g_result, result, size);
		show_result(g_result, is_last);
//		cout<<"result"<<result<<endl;
	}
}
void on_speech_begin()
{
	if (g_result)
	{
		free(g_result);
	}
	g_result = (char*)malloc(BUFFER_SIZE);
	g_buffersize = BUFFER_SIZE;
	memset(g_result, 0, g_buffersize);

	printf("Start Listening...\n");
}
void on_speech_end(int reason)
{
	if (reason == END_REASON_VAD_DETECT)
	{
		printf("\nSpeaking done \n");
		recorder_Flag=false;
	}
	else
		printf("\nRecognizer error %d\n", reason);
}

/* demo send audio data from a file */
static void demo_file(const char* audio_file, const char* session_begin_params)
{
	int	errcode = 0;
	FILE*	f_pcm = NULL;
	char*	p_pcm = NULL;
	unsigned long	pcm_count = 0;
	unsigned long	pcm_size = 0;
	unsigned long	read_size = 0;
	struct speech_rec iat;
	struct speech_rec_notifier recnotifier = {
		on_result,
		on_speech_begin,
		on_speech_end
	};

	if (NULL == audio_file)
		goto iat_exit;

	f_pcm = fopen(audio_file, "rb");
	if (NULL == f_pcm)
	{
		printf("\nopen [%s] failed! \n", audio_file);
		goto iat_exit;
	}

	fseek(f_pcm, 0, SEEK_END);
	pcm_size = ftell(f_pcm);
	fseek(f_pcm, 0, SEEK_SET);

	p_pcm = (char *)malloc(pcm_size);
	if (NULL == p_pcm)
	{
		printf("\nout of memory! \n");
		goto iat_exit;
	}

	read_size = fread((void *)p_pcm, 1, pcm_size, f_pcm);
	if (read_size != pcm_size)
	{
		printf("\nread [%s] error!\n", audio_file);
		goto iat_exit;
	}

	errcode = sr_init(&iat, session_begin_params, SR_USER, &recnotifier);
	if (errcode) {
		printf("speech recognizer init failed : %d\n", errcode);
		goto iat_exit;
	}

	errcode = sr_start_listening(&iat);
	if (errcode) {
		printf("\nsr_start_listening failed! error code:%d\n", errcode);
		goto iat_exit;
	}

	while (1)
	{
		unsigned int len = 10 * FRAME_LEN; /* 200ms audio */
		int ret = 0;

		if (pcm_size < 2 * len)
			len = pcm_size;
		if (len <= 0)
			break;

		ret = sr_write_audio_data(&iat, &p_pcm[pcm_count], len);

		if (0 != ret)
		{
			printf("\nwrite audio data failed! error code:%d\n", ret);
			goto iat_exit;
		}

		pcm_count += (long)len;
		pcm_size -= (long)len;		
	}

	errcode = sr_stop_listening(&iat);
	if (errcode) {
		printf("\nsr_stop_listening failed! error code:%d \n", errcode);
		goto iat_exit;
	}

iat_exit:
	if (NULL != f_pcm)
	{
		fclose(f_pcm);
		f_pcm = NULL;
	}
	if (NULL != p_pcm)
	{
		free(p_pcm);
		p_pcm = NULL;
	}

	sr_stop_listening(&iat);
	sr_uninit(&iat);
}

/* demo recognize the audio from microphone */
static void demo_mic(const char* session_begin_params)      //从麦克风识别语音
{
	int errcode;
	int i = 0;

	struct speech_rec iat;

	struct speech_rec_notifier recnotifier = {
		on_result,
		on_speech_begin,
		on_speech_end
	};

	errcode = sr_init(&iat, session_begin_params, SR_MIC, &recnotifier);
	if (errcode) {
		printf("speech recognizer init failed\n");
		return;
	}
	errcode = sr_start_listening(&iat);
	if (errcode) {
		printf("start listen failed %d\n", errcode);
	}
	/* demo 15 seconds recording */
	//while(i++ < 15)
	while(recorder_Flag)
	{
		sleep(1);
	}
	errcode = sr_stop_listening(&iat);       //见speech_recognizer.c中的sr_stop_listening()函数
	if (errcode) {
		printf("stop listening failed %d\n", errcode);
	}

	sr_uninit(&iat);
}


int run_asrFromFile(UserData *udata)          //进行离线语法识别,从文本读入数据
{
	char asr_params[MAX_PARAMS_LEN]    = {NULL};
	const char *rec_rslt               = NULL;
	const char *session_id             = NULL;
	const char *asr_audiof             = NULL;
	FILE *f_pcm                        = NULL;
	char *pcm_data                     = NULL;
	long pcm_count                     = 0;
	long pcm_size                      = 0;
	int last_audio                     = 0;

	int aud_stat                       = MSP_AUDIO_SAMPLE_CONTINUE;
	int ep_status                      = MSP_EP_LOOKING_FOR_SPEECH;
	int rec_status                     = MSP_REC_STATUS_INCOMPLETE;
	int rss_status                     = MSP_REC_STATUS_INCOMPLETE;
	int errcode                        = -1;
	int aud_src                        = 0;
	//离线语法识别参数设置
	snprintf(asr_params, MAX_PARAMS_LEN - 1, 
		"engine_type = local, \
		asr_res_path = %s, sample_rate = %d, \
		grm_build_path = %s, local_grammar = %s, \
		result_type = xml, result_encoding = UTF-8, ",
		ASR_RES_PATH,
		SAMPLE_RATE_16K,
		GRM_BUILD_PATH,
		udata->grammar_id
		);
	printf("从文件读入音频文件\n");
	
	asr_audiof = get_audio_file();      
	demo_file(asr_audiof, asr_params);  //从文件读入
	
	return 0;
}


int run_asrFromMic(UserData *udata)          //进行离线语法识别，从mic读入数据
{
	char asr_params[MAX_PARAMS_LEN]    = {NULL};
	const char *rec_rslt               = NULL;
	const char *session_id             = NULL;
	const char *asr_audiof             = NULL;
	FILE *f_pcm                        = NULL;
	char *pcm_data                     = NULL;
	long pcm_count                     = 0;
	long pcm_size                      = 0;
	int last_audio                     = 0;

	int aud_stat                       = MSP_AUDIO_SAMPLE_CONTINUE;
	int ep_status                      = MSP_EP_LOOKING_FOR_SPEECH;
	int rec_status                     = MSP_REC_STATUS_INCOMPLETE;
	int rss_status                     = MSP_REC_STATUS_INCOMPLETE;
	int errcode                        = -1;
	int aud_src                        = 0;
	//离线语法识别参数设置
	snprintf(asr_params, MAX_PARAMS_LEN - 1, 
		"engine_type = local, \
		asr_res_path = %s, sample_rate = %d, \
		grm_build_path = %s, local_grammar = %s, \
		result_type = xml, result_encoding = UTF-8, ",
		ASR_RES_PATH,
		SAMPLE_RATE_16K,
		GRM_BUILD_PATH,
		udata->grammar_id
		);

	printf("请发出指令\n");   
	demo_mic(asr_params);               //从MIC说话

	return 0;
}


int run_asr(UserData *udata)          //进行离线语法识别，包括从文件和从mic
{
	char asr_params[MAX_PARAMS_LEN]    = {NULL};
	const char *rec_rslt               = NULL;
	const char *session_id             = NULL;
	const char *asr_audiof             = NULL;
	FILE *f_pcm                        = NULL;
	char *pcm_data                     = NULL;
	long pcm_count                     = 0;
	long pcm_size                      = 0;
	int last_audio                     = 0;

	int aud_stat                       = MSP_AUDIO_SAMPLE_CONTINUE;
	int ep_status                      = MSP_EP_LOOKING_FOR_SPEECH;
	int rec_status                     = MSP_REC_STATUS_INCOMPLETE;
	int rss_status                     = MSP_REC_STATUS_INCOMPLETE;
	int errcode                        = -1;
	int aud_src                        = 0;
	//离线语法识别参数设置
	snprintf(asr_params, MAX_PARAMS_LEN - 1, 
		"engine_type = local, \
		asr_res_path = %s, sample_rate = %d, \
		grm_build_path = %s, local_grammar = %s, \
		result_type = xml, result_encoding = UTF-8, ",
		ASR_RES_PATH,
		SAMPLE_RATE_16K,
		GRM_BUILD_PATH,
		udata->grammar_id
		);
	printf("音频数据在哪? \n0: 从文件读入\n1:从MIC说话\n");
	scanf("%d", &aud_src);
	if(aud_src != 0) {               
		demo_mic(asr_params);               //从MIC说话
	} else {
		asr_audiof = get_audio_file();      
		demo_file(asr_audiof, asr_params);  //从文件读入
	}
	return 0;
}

/**
	初始化语音听写
	构建语法网络，离线语法识别，更新离线语法词典
**/
void asrProcess()
{
	const char *login_config    = "appid = 5c9b1764"; //登录参数
	UserData asr_data; 
	int ret                     = 0 ;
	char c;

	ret = MSPLogin(NULL, NULL, login_config); //第一个参数为用户名，第二个参数为密码，传NULL即可，第三个参数是登录参数
	if (MSP_SUCCESS != ret) {
		printf("登录失败：%d\n", ret);
		goto exit;
	}

	memset(&asr_data, 0, sizeof(UserData));     //初始化UserData
	printf("构建离线识别语法网络...\n");
	ret = build_grammar(&asr_data);  //第一次使用某语法进行识别，需要先构建语法网络，获取语法ID，之后使用此语法进行识别，无需再次构建
	if (MSP_SUCCESS != ret) {
		printf("构建语法调用失败！\n");
		goto exit;
	}
	while (1 != asr_data.build_fini)
		usleep(300 * 1000);
	if (MSP_SUCCESS != asr_data.errcode)
		goto exit;
	
/*
	printf("离线识别语法网络构建完成，开始识别...\n");	
	ret = run_asrFromMic(&asr_data);      //进行离线语法识别
	if (MSP_SUCCESS != ret) {
		printf("离线语法识别出错: %d \n", ret);
		goto exit;
	}
*/
	printf("更新离线语法词典...\n");
	ret = update_lexicon(&asr_data);  //当语法词典槽中的词条需要更新时，调用QISRUpdateLexicon接口完成更新
	if (MSP_SUCCESS != ret) {
		printf("更新词典调用失败！\n");
		goto exit;
	}
	while (1 != asr_data.update_fini)
		usleep(300 * 1000);
	if (MSP_SUCCESS != asr_data.errcode)
		goto exit;
	printf("更新离线语法词典完成，开始识别...\n");


	ret = run_asrFromMic(&asr_data);
	if (MSP_SUCCESS != ret) {
		printf("离线语法识别出错: %d \n", ret);
		goto exit;
	}

	flag=true;    //设置话题发布为真

exit:
	MSPLogout();
	//printf("请按任意键退出...\n");
	//getchar();

}

/*
	根据发布的话题来修改录音标志，这一部分应该和语音唤醒相结合,后面根据语音唤醒部分来修改
*/
/*void asrCallBack(const std_msgs::String::ConstPtr &msg)
{
	ROS_INFO_STREAM("Topic is Subscriber");
	std::cout<<"get topic text:"<<msg->data.c_str();
	//if(msg->data==ASRFLAG)
	//{
		asrProcess();
	//}
}*/
void asrCallBack(const std_msgs::Int32::ConstPtr &msg)
{
	ROS_INFO_STREAM("Topic is Subscriber");
	if(msg->data==ASRFLAG)
      {
		asrProcess();
      }
}


int main(int argc, char* argv[])
{
	printf("语音听写模块启动成功\n");
	ros::init(argc,argv,"xf_asr_node");
	ros::NodeHandle nd;

	ros::Subscriber sub =nd.subscribe("/voice/xf_asr_topic",1,asrCallBack);  //第二个参数是队列的长度
	ros::Publisher pub1 =nd.advertise<std_msgs::String>("/voice/xf_nlp_topic",3);    //3是发布队列的长度，如果消息发布过快，那么这个设置就是缓存的消息数，在当前设置下，它将缓冲最多3条消息。
	ros::Publisher pub2 = nd.advertise<std_msgs::String>("/voice/xf_tts_topic",3);
	ros::Publisher pub3 = nd.advertise<std_msgs::String>("/voice/xf_asr_follow",3);

	ros::Rate loop_rate(10);

	while(ros::ok())
	{
		if(flag)
		{
			std_msgs::String msg;
			msg.data=mydata;
			pub1.publish(msg);
			//pub2.publish(msg);
			//pub3.publish(msg);
			flag=false;
			recorder_Flag=true;
		}
		ros::spinOnce();
		loop_rate.sleep();
	}
	
	return 0;
}
