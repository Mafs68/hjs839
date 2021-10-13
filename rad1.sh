# cat /tmp/testscript.sh
#!/bin/bash

runtime="10 minute"
endtime=$(date -ud "$runtime" +%s)

while [[ $(date -u +%s) -le $endtime ]]
do
    echo "Time Now: `date +%H:%M:%S`"
    rodi=$(openssl rand -base64 7)
    echo $rodi
    sleep 20
done
