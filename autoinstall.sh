#!/bin/bash
sleep 3
clear

#    GPIO GameBoy keypad Installing by wdmomo

echo -e "       \033[0;32m█              █\033[0m     "
echo -e "  \033[0;33m█\033[0m     \033[0;32m█            █\033[0m     \033[0;33m█"
echo -e "\033[0;33m  █  ████████████████████  █"
echo -e "\033[0;33m  ███████\033[1;37m██\033[0;33m████████\033[1;37m██\033[0;33m███████"
echo -e "\033[0;33m  ██████████████████████████"
echo -e "\033[0;33m    ██████████████████████ "
echo -e "\033[0;33m     ████████████████████  "
echo -e "\033[0;33m        █             █   "
echo -e "\033[0;33m       █               █  "
echo ""
echo ""
echo "*****************************************************************"
echo "*                                                               *"
echo "*           Installing GPIO GameBoy keypad by wdmomo            *"
echo "*                                                               *"
echo "*****************************************************************"
sleep 3
cd ~
git clone git://git.drogon.net/wiringPi
cd ~/wiringPi
./build
cd ~
git clone https://github.com/wdmomoxx/Retrogame-2Players.git
cd Retrogame-2Players
make
sudo install retrogame /usr/local/bin/retrogame
sudo sed -i 's/retrogame\ &//g' /etc/rc.local
sudo sed -i '/^exit\ 0/i\retrogame\ &' /etc/rc.local
cd ~
sudo rm -rf wiringPi/
sudo rm -rf Retrogame-2Players/
sudo reboot
