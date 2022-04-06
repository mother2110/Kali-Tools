#!/bin/bash

echo " Installing tools..."

cd /opt

echo "Grabbing lnkbomb..."
git clone https://github.com/dievus/lnkbomb.git

echo "Instslling threasder3000..."
pip3 install threader3000

echo "Installing DNS Scanner..."

git clone https://github.com/dievus/msdnsscan.git
cd msdnsscan
pip3 install -r requirements.txt

cd /opt

echo "Grabbing NameMash pyhton script..."

wget https://gist.githubusercontent.com/superkojiman/11076951/raw/053152dba6c5cc3107ff0374ce7246306958d72c/namemash.py

echo "Instllling Terminator Terminal..."

apt install terminator -y

echo "Installing Oh365UserFinder"

git clone https://github.com/dievus/Oh365UserFinder.git
pip3 install -r Oh365UserFinder/requirements.txt

echo "Installing ReconFTW"
git clone https://github.com/six2dez/reconftw
cd reconftw/
./install.sh
exit
