catkin.sh:通过release模式编译工程，编译速度比较快。通过./catkin.sh执行该脚本,以下脚本类似。

voice.sh:该脚本之用来演示语音相关功能，在该脚本中可以选择性启动语音相关节点，具体看实际需求。

备注：其余相关功能性脚本可以按照上述脚本编写，其中建议rviz节点单独拿出来，作为可选项节点存在。

nav.sh:导航相关节点。

follow.sh:跟随相关节点。

map.sh:建图脚本，包含键盘或者手柄节点启动。

savemap.sh:保存地图脚本。




ssh dsp@192.168.1.102: ssh连接小D，小D的102 ip可以手动设定，之后数量增多后，所有的ip也都是102，大D可以换另一个IP，便于区分。
所有的工控机设定统一，包括用户名等。

ssh -X dsp@192.168.1.102: ssh连接小D，可以启动可视化界面，包含rviz。


# dsp_ding
# dsp_ding