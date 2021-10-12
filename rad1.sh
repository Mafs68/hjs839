# cat /tmp/testscript.sh
#!/bin/bash

runtime="10 minute"
endtime=$(date -ud "$runtime" +%s)

while [[ $(date -u +%s) -le $endtime ]]
do
    echo "Time Now: `date +%H:%M:%S`"
    echo "Sleeping for 20 sec"
    sleep 20
done
