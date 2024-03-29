#!/bin/bash

Yellow="\e[33m"
ENDCOLOR="\e[0m"

echo -e "${YELLOW}Setting up enviroment${ENDCOLOR}"
echo export GDK_SCALE=2 >> ~/.xsessionrc
xfconf-query -c xfwm4 -p /general/theme -s Kali-Dark-xHiDPI
xfconf-query -c xsettings -p /Gdk/WindowScalingFactor -n -t 'int' -s 2
echo export QT_SCALE_FACTOR=2 >> ~/.xsessionrc
echo export XCURSOR_SIZE=48 >> ~/.xsessionrc


echo -e "${Yellow}Installing Tools...${ENDCOLOR}"

cd /opt
echo -e "${Yellow}Pimpmykali Setup${ENDCOLOR}"
git clone https://github.com/Dewalt-arch/pimpmykali
cd pimpmykali
sudo ./pimpmykali.sh

cd /opt
echo -e "${Yellow}lnkbomb${ENDCOLOR}"
sudo git clone https://github.com/dievus/lnkbomb.git

cd /opt
echo -e "${Yellow}Instslling threasder3000...${ENDCOLOR}"
cd threader3000
sudo pip3 install threader3000

cd /opt
echo -e "${Yellow}Instslling DNS Scanner...${ENDCOLOR}"
sudo git clone https://github.com/dievus/msdnsscan.git
cd msdnsscan
sudo pip3 install -r requirements.txt

cd /opt
echo -e "${Yellow}Downloading Namemash${ENDCOLOR}"
wget https://gist.githubusercontent.com/superkojiman/11076951/raw/053152dba6c5cc3107ff0374ce7246306958d72c/namemash.py

cd /opt
echo -e "${Yellow}Installing CME${ENDCOLOR}"
sudo apt-get install -y libkrb5-dev 
sudo apt install crackmapexec

cd /opt
echo -e "${Yellow}Installing oh365UserFinder${ENDCOLOR}" 
sudo git clone https://github.com/dievus/Oh365UserFinder.git
cd oh365UserFinder
sudo pip3 install -r Oh365UserFinder/requirements.txt

cd /opt
echo -e "${Yellow}Installing ReconFTW...${ENDCOLOR}"
sudo git clone https://github.com/six2dez/reconftw
cd reconftw/
sudo ./install.sh

cd /opt
echo -e "${Yellow}Installing Pretender...${ENDCOLOR}"
sudo git clone https://github.com/RedTeamPentesting/pretender.git
cd pretender
sudo go build

cd /opt
echo -e "${Yellow}Installing geeMailFinder...${ENDCOLOR}"
sudo git clone https://github.com/dievus/geeMailUserFinder.git
cd geeMailFinder
sudo pip3 install -r requirements.txt

cd /opt
echo -e "${Yellow}Installing Aresenal...${ENDCOLOR}
sudo git clone https://github.com/Orange-Cyberdefense/arsenal.git
cd arsenal
sudo python3 -m pip install -r requirements.txt
sudo ln -s /usr/bin/crackmapexec /usr/bin/cme

cd /opt
exit
