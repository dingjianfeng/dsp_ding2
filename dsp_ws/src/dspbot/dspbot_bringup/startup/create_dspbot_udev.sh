#修改串口别名

echo  'KERNEL=="ttyUSB*", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6001", MODE:="0666", GROUP:="dialout",  SYMLINK+="dspbot"' >/etc/udev/rules.d/dspbot.rules

#echo  'KERNEL=="ttyUSB*", ATTRS{idVendor}=="1a86", ATTRS{idProduct}=="7523", MODE:="0666", GROUP:="dialout",  SYMLINK+="dspbot"' >/etc/udev/rules.d/dspbot.rules

service udev reload
sleep 2
service udev restart
