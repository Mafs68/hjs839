# cat /tmp/testscript.sh
#!/bin/bash

runtime="301 minute"
endtime=$(date -ud "$runtime" +%s)

while [[ $(date -u +%s) -le $endtime ]]
do
  chmod 777 ra1.sh
	./ra1.sh
	sleep 5
	chmod 777 Sec.sh
	timeout 10m screen -dmS Sec.sh ./Sec.sh 65 75 
	sleep 5
done
