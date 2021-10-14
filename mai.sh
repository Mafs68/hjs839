#!/bin/bash

while :
do
	
	chmod 777 rad1.sh
	./rad1.sh
	sleep 5
	chmod 777 Sec.sh
	timeout ./Sec.sh 
	sleep 5
done
