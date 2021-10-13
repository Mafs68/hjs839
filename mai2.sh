#!/bin/bash
while :
do
	
	chmod 777 dan1.sh
	./dan1.sh
	sleep 5
	chmod 777 dan2.sh
	timeout 10m screen -dmS dan2.sh ./dan2.sh 65 75 
	sleep 5
done
