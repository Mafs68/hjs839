#!/bin/bash

while :
do

        chmod 777 rad2.sh
	timeout 10m ./rad2.sh
	sleep 5
	chmod 777 rad1.sh
	./rad1.sh
	sleep 5
	
	
done
