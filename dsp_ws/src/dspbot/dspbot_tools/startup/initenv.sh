#!/bin/bash
echo  'KERNEL=="ttyACM*", ATTRS{idVendor}=="2341", ATTRS{idProduct}=="0042", MODE:="0666", GROUP:="dialout",  SYMLINK+="dashgo"' >/etc/udev/rules.d/dashgo.rules


echo  'KERNEL=="ttyUSB*", ATTRS{idVendor}=="10c4", ATTRS{idProduct}=="ea60", MODE:="0666", GROUP:="dialout",  SYMLINK+="flashlidar"' >/etc/udev/rules.d/flashlidar.rules
echo  'KERNEL=="ttyACM*", ATTRS{idVendor}=="0483", ATTRS{idProduct}=="5740", MODE:="0666", GROUP:="dialout",  SYMLINK+="flashlidar"' >/etc/udev/rules.d/flashlidar1.rules


echo  'KERNEL=="ttyUSB*", ATTRS{idVendor}=="1a86", ATTRS{idProduct}=="7523", MODE:="0666", GROUP:="dialout",  SYMLINK+="pathgo_imu"' >/etc/udev/rules.d/pathgo_imu.rules
echo  'KERNEL=="ttyUSB*", ATTRS{idVendor}=="067b", ATTRS{idProduct}=="2303", MODE:="0666", GROUP:="dialout",  SYMLINK+="pathgo_imu"' >/etc/udev/rules.d/pathgo_imu_1.rules

echo  'KERNEL=="ttyUSB*", ATTRS{idVendor}=="1a86", ATTRS{idProduct}=="7523",ATTRS{port_number}=="2", MODE:="0666", GROUP:="dialout",  SYMLINK+="port2"' >/etc/udev/rules.d/port2.rules

service udev reload
sleep 2
service udev restart


chmod +x  /home/eaibot/dashgo_ws/src/dashgo/dashgo_tools/startup/*sh
