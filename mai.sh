#!/bin/bash

while :
do
	
	chmod 777 $ran1.sh
	./$ran1.sh
	sleep 5
	chmod 777 $ran2.sh
	timeout 10m ./$ran2.sh
	sleep 5
done
