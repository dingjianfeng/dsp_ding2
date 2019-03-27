echo  'KERNEL=="ttyUSB*", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6001", MODE:="0666", GROUP:="dialout",  SYMLINK+="cutearm"' >/etc/udev/rules.d/arm.rules

service udev reload
sleep 2
service udev restart
