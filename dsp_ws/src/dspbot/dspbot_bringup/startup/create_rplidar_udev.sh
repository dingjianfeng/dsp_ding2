echo  'KERNEL=="ttyUSB*", ATTRS{idVendor}=="10c4", ATTRS{idProduct}=="ea60", MODE:="0666", GROUP:="dialout",  SYMLINK+="rplidar"' >/etc/udev/rules.d/rplidar.rules

echo  'KERNEL=="ttyACM*", ATTRS{idVendor}=="0483", ATTRS{idProduct}=="5740", MODE:="0666", GROUP:="dialout",  SYMLINK+="rplidar"' >/etc/udev/rules.d/rplidar-V2.rules

service udev reload
sleep 2
service udev restart
