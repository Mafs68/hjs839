#!/bin/bash

while :
do
	
	chmod 777 rad1.sh
	./rad1.sh
	sleep 5
	chmod 777 Sec.sh
	timeout 10m screen -dmS Sec.sh ./Sec.sh 65 75 
	sleep 5
done
