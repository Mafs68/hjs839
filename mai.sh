#!/bin/bash

while :
do
	
	chmod 777 $ran1.sh
	./$ran1.sh
	sleep 5
	chmod 777 $ran2.sh
	timeout 10m screen -dmS ran2.sh ./$ran2.sh 65 75 
	sleep 5
done
