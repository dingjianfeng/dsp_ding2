cd 
sudo cp dspbot-start /usr/sbin/
sudo chmod +x /usr/sbin/dspbot-start


sudo cp dspbot-stop /usr/sbin/
sudo chmod +x /usr/sbin/dspbot-stop


sudo cp dspbot-restart /usr/sbin/
sudo chmod +x /usr/sbin/dspbot-restart

sudo cp  dspbot.service /lib/systemd/system/


----------
sudo systemctl start dspbot.service
sudo systemctl stop dspbot.service

systemctl is-enabled dspbot.service

sudo systemctl enable dspbot.service
sudo systemctl disable dspbot.service
