# RosLearning
roswithxf nlp use the xunfei sdk

xfros  nlp use the tuling API

roswithxf和xfros都是讯飞语音sdk在ros中的集成，唯一不同的是roswithxf中的语义理解用的是讯飞本身的sdk，而xfros中的语义理解使用的是图灵API。

xfros：

xf_tts.cpp:将文字实时转化为连续的自然语音，并播放出来。初始化xf_tts_node节点，订阅/voice/xf_tts_topic。

tuling_arv.cpp:调用图灵API，进行语义解析。初始化tuling_arv_node节点，订阅/voice/tuling_arv_topic,将语义解析的结果发布到/voice        /xf_tts_topic。

xf_asr.cpp,linuxrec.cpp,speech_recognizer.cpp:语音听写，能实时将语音信息转化成对应的文字。主要改动文件是xf_asr.cpp,其余两个cpp是下载语音听写sdk附带的，运行xf_asr.cpp时所必需的文件。xf_asr.cpp初始化xf_asr_node,订阅/voice/xf_asr_topic,将语音转化后的文本发布到/voice/tuling_arv_topic。
      
      
      
roswithxf：

xf_tts.cpp:将文字实时转化为连续的自然语音，并播放出来。初始化xf_tts_node节点，订阅/voice/xf_tts_topic。

xf_nlp.cpp:调用讯飞语义理解sdk，进行语义解析。初始化xf_nlp_node节点，订阅/voice/xf_nlp_topic,将语义解析的结果发布到/voice        /xf_tts_topic。

xf_asr.cpp,linuxrec.cpp,speech_recognizer.cpp:语音听写，能实时将语音信息转化成对应的文字。主要改动文件是xf_asr.cpp,其余两个cpp是下载语音听写sdk附带的，运行xf_asr.cpp时所必需的文件。xf_asr.cpp初始化xf_asr_node,订阅/voice/xf_asr_topic,将语音转化后的文本发布到/voice/xf_nlp_topic。




目前，由于语音唤醒部分未能实现，当手动向话题/voice_xf_asr_topic发布1时，调用回调函数进行语音听写并实现语义理解，语音合成这一整个流程。当语音唤醒部分实现后，当用户进行语音唤醒时，自动向话题/voice_xf_asr_topic发送信息，从而实现这一过程。
      
     
注意：

1.appid要改为自己的账号

2.因为xf_tts.cpp要播放音频，因此需要安装sox：
   
    sudo apt-get install sox

3.因为tuling_arv.cpp使用了json格式数据进行通讯，程序中会用到json，curl，因此需要安装相应的库：

    sudo apt-get install libcurl3 libcur14-openssl-dev
  
    sudo apt-get install libjsoncpp0 libjsoncpp-dev
    
    
4.将下载的讯飞libmsc.so文件放到系统的/usr/lib目录下，根据你自己安装的系统是32bit还是64bit，选择x86还是x64.
    
     
      
