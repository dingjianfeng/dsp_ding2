#include <stdlib.h>

#include <stdio.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <ros/ros.h>
#include <std_msgs/String.h>
#include <std_msgs/Int32.h>
#include <string>

/*
#include "../include/msc/msp_cmn.h"
#include "../include/msc/qivw.h"
#include "../include/msc/msp_errors.h"

#include "../include/asr_record/asr_record.h"
#include "../include/asr_record/formats.h"
#include "../include/asr_record/linuxrec.h"
#include "../include/asr_record/speech_recognizer.h"
*/

#include "msp_cmn.h"

#include "qivw.h"

#include "msp_errors.h"

#include "asr_record.h"

#include "formats.h"

#include "linuxrec.h"

#include "speech_recognizer.h"

#include "awaken.h"

#include "play_audio.h"

#define E_SR_NOACTIVEDEVICE		1
#define E_SR_NOMEM			2
#define E_SR_INVAL			3
#define E_SR_RECORDFAIL			4
#define E_SR_ALREADY			5


#define DEFAULT_FORMAT		\
{\
	WAVE_FORMAT_PCM,	\
	1,			\
	16000,			\
	32000,			\
	2,			\
	16,			\
	sizeof(WAVEFORMATEX)	\
}
using namespace std;

#define lgi_param_a "appid =5c9b1764,engine_start = ivw,work_dir = .,ivw_res_path =fo|"
#define lgi_param_b concat(lgi_param_a, PACKAGE_PATH)
//const char *lgi_param = concat(lgi_param_b, "res/ivw/wakeupresource.jet"); //使用唤醒需要在此设置engine_start = ivw,ivw_res_path =fo|xxx/xx 启动唤醒引擎
//const char *ssb_param = "ivw_threshold=0:1450,sst=wakeup";      //modify by ding

const char *lgi_param = "appid = 5c3c073e,work_dir = .";
const char *ssb_param = "ivw_threshold=0:1450,sst=wakeup,ivw_res_path =fo|/home/dsp/dsp_ws/src/dspbot/dspbot_voice/msc/res/ivw/wakeupresource.jet";      //modify by ding


string mydata="語音喚醒成功";
int awakeFlag=0;


int16_t g_order = ORDER_NONE;
BOOL g_is_order_publiced = FALSE;
UserData asr_data;

#define MAX_SIZE 100


static int record_state = MSP_AUDIO_SAMPLE_CONTINUE;
struct recorder *recorder;
BOOL g_is_awaken_succeed = TRUE;



static void sleep_ms(size_t ms)
{
	usleep(ms*1000);
}



/* the record call back */
static void iat_cb(char *data, unsigned long len, void *user_para)
{
	int errcode;
	const char *session_id = (const char *)user_para;

	if(len == 0 || data == NULL)
		return;
	if(!g_is_awaken_succeed){
		errcode = QIVWAudioWrite(session_id, (const void *)data, len, record_state);
	}
	if (MSP_SUCCESS != errcode)
	{
		printf("QIVWAudioWrite failed! error code:%d\n",errcode);
		int ret = stop_record(recorder);
		if (ret != 0) {
			printf("Stop failed! \n");
			//return -E_SR_RECORDFAIL;
		}
		wait_for_rec_stop(recorder, (unsigned int)-1);       //modify by ding,修改了speech_recognizer.h（聲明）和speech_recognizer.cpp（static）
		QIVWAudioWrite(session_id, NULL, 0, MSP_AUDIO_SAMPLE_LAST);
		record_state = MSP_AUDIO_SAMPLE_LAST;
		g_is_awaken_succeed = FALSE;
	}
	if(record_state == MSP_AUDIO_SAMPLE_FIRST){
		record_state = MSP_AUDIO_SAMPLE_CONTINUE;
	}
}



int cb_ivw_msg_proc( const char *sessionID, int msg, int param1, int param2, const void *info, void *userData )
{

  if (MSP_IVW_MSG_ERROR == msg) //唤醒出错消息
  {
    printf("\n\nMSP_IVW_MSG_ERROR errCode = %d\n\n", param1);
    g_is_awaken_succeed = FALSE;
    record_state = MSP_AUDIO_SAMPLE_LAST;
  }else if (MSP_IVW_MSG_WAKEUP == msg) //唤醒成功消息
  {
    printf("\n\nMSP_IVW_MSG_WAKEUP result = %s\n\n", (char*)info);
    g_is_awaken_succeed = TRUE;
    record_state = MSP_AUDIO_SAMPLE_LAST;
    awakeFlag=1;
    //pub2.publish(msg);
  }
  int ret = stop_record(recorder);
	if (ret != 0) {
		printf("Stop failed! \n");
	}else{
		printf("stop success\n");
	}
	//wait_for_rec_stop(recorder, (unsigned int)-1);
	//QIVWAudioWrite(sessionID, NULL, 0, MSP_AUDIO_SAMPLE_LAST);
  
  return 0;
}



void run_ivw(const char *grammar_list ,  const char* session_begin_params)
{
	const char *session_id = NULL;
	int err_code = MSP_SUCCESS;
	char sse_hints[128];
	
	WAVEFORMATEX wavfmt = DEFAULT_FORMAT;
	wavfmt.nSamplesPerSec = SAMPLE_RATE_16K;
	wavfmt.nAvgBytesPerSec = wavfmt.nBlockAlign * wavfmt.nSamplesPerSec;


//start QIVW
	session_id=QIVWSessionBegin(grammar_list, session_begin_params, &err_code);
	if (err_code != MSP_SUCCESS)
	{
		printf("QIVWSessionBegin failed! error code:%d\n",err_code);
		goto exit;
	}


	err_code = QIVWRegisterNotify(session_id, cb_ivw_msg_proc,NULL);
	if (err_code != MSP_SUCCESS)
	{
		snprintf(sse_hints, sizeof(sse_hints), "QIVWRegisterNotify errorCode=%d", err_code);
		printf("QIVWRegisterNotify failed! error code:%d\n",err_code);
		goto exit;
	}
//start record
	err_code = create_recorder(&recorder, iat_cb, (void*)session_id);
	if (recorder == NULL || err_code != 0) {
			printf("create recorder failed: %d\n", err_code);
			err_code = -E_SR_RECORDFAIL;
			goto exit;
	}

	err_code = open_recorder(recorder, get_default_input_dev(), &wavfmt);
	if (err_code != 0) {
		printf("recorder open failed: %d\n", err_code);
		err_code = -E_SR_RECORDFAIL;
		goto exit;
	}

	err_code = start_record(recorder);
	if (err_code != 0) {
		printf("start record failed: %d\n", err_code);
		err_code = -E_SR_RECORDFAIL;
		goto exit;
	}
	record_state = MSP_AUDIO_SAMPLE_FIRST;

	
	while(record_state != MSP_AUDIO_SAMPLE_LAST)
	{
		sleep_ms(200); //模拟人说话时间间隙，10帧的音频时长为200ms
		printf("waiting for awaken%d\n", record_state);
	}
	snprintf(sse_hints, sizeof(sse_hints), "success");

exit:
	if (recorder) {
		if(!is_record_stopped(recorder))
			stop_record(recorder);
		close_recorder(recorder);
		destroy_recorder(recorder);
		recorder = NULL;
	}
	if (NULL != session_id)
	{
		QIVWSessionEnd(session_id, sse_hints);
	}
}




int main(int argc, char* argv[])
{
	printf("语音喚醒模块启动成功\n");
	ros::init(argc,argv,"xf_awake_node");
	ros::NodeHandle nd;

  	ros::Publisher pub2 = nd.advertise<std_msgs::String>("/voice/xf_tts_topic",3);
	
  	ros::Rate loop_rate(10);
  	std_msgs::String msg;
  	msg.data=mydata;			
 
	
        char current_absolute_path[MAX_SIZE];
  	//获取当前程序绝对路径
 	int cnt = readlink("/proc/self/exe", current_absolute_path, MAX_SIZE);
  	getcwd(current_absolute_path, MAX_SIZE);
  	printf("current absolute path:%s\n", current_absolute_path);


	int ret = 0 ;

  	ret = MSPLogin(NULL, NULL, lgi_param);
  	if (MSP_SUCCESS != ret)
 	{
   		printf("MSPLogin failed, error code: %d.\n", ret);
    		goto exit ;//登录失败，退出登录
  	}
	
	while (1)
	{

    		run_ivw(NULL, ssb_param); 
    		printf("finish run_ivw\n");
		if(awakeFlag)
		{
			pub2.publish(msg);
			awakeFlag=0;
		}
		
/*
    		if(g_is_awaken_succeed){
      			printf("begin to run asr\n");
      			//run_asr(&asr_data);
      			//g_is_awaken_succeed = FALSE;
    		}
    		printf("%d:%d\n", g_is_order_publiced, g_order);
    		if(g_is_order_publiced == FALSE){
      			if(g_order==ORDER_BACK_TO_CHARGE){
        			printf("%d\n", g_order);
        			play_wav((char*)concat(PACKAGE_PATH, "audios/back_to_charge.wav"));        
      		}
      		if(g_order == ORDER_FACE_DETECTION){
        		printf("%d\n", g_order);
        		play_wav((char*)concat(PACKAGE_PATH, "audios/operating_face_rec.wav"));
      		}
      		g_is_order_publiced = TRUE;
				}


*/    


  	}
exit:
  MSPLogout();
  printf("请按任意键退出...\n");
  getchar();

	
	return 0;
}










