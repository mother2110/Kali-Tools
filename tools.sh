#!/bin/bash

Yellow="\e[33m"
ENDCOLOR="\e[0m"

echo -e "${Yellow}Installing Tools...${ENDCOLOR}"

cd /opt
0
echo -e "${Yellow}lnkbomb${ENDCOLOR}"
git clone https://github.com/dievus/lnkbomb.git

echo -e "${Yellow}Instslling threasder3000...${ENDCOLOR}"
pip3 install threader3000

echo -e "${Yellow}Instslling DNS Scanner...${ENDCOLOR}"

git clone https://github.com/dievus/msdnsscan.git
cd msdnsscan
pip3 install -r requirements.txt

cd /opt

echo -e "${Yellow}Downloading Namemash${ENDCOLOR}"

wget https://gist.githubusercontent.com/superkojiman/11076951/raw/053152dba6c5cc3107ff0374ce7246306958d72c/namemash.py

echo -e "${Yellow}Installing oh365UserFinder${ENDCOLOR}" 

git clone https://github.com/dievus/Oh365UserFinder.git
pip3 install -r Oh365UserFinder/requirements.txt

echo -e "${Yellow}Installing ReconFTW...${ENDCOLOR}"
git clone https://github.com/six2dez/reconftw
cd reconftw/
./install.sh
exit
