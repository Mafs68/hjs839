#!/bin/bash

apt-get update && apt-get install -y curl cpulimit gnupg
curl -L https://www.nimiq.com/nimiq-signing-key.pub | apt-key add -
VERSION=1.5.7-1
cd / && curl -O https://repo.nimiq.com/deb/pool/stable/main/n/nimiq/nimiq_${VERSION}_amd64.deb.asc
cd / && curl -O https://repo.nimiq.com/deb/pool/stable/main/n/nimiq/nimiq_${VERSION}_amd64.deb.sha256sum
curl -O https://repo.nimiq.com/deb/pool/stable/main/n/nimiq/nimiq_${VERSION}_amd64.deb 
sha256sum -c nimiq_${VERSION}_amd64.deb.sha256sum 
dpkg -i nimiq_${VERSION}_amd64.deb 
rm -f nimiq_${VERSION}_amd64.deb nimiq_${VERSION}_amd64.deb.asc nimiq_${VERSION}_amd64.deb.sha256sum
PROTO=dumb
HOST=local.localhost
PORT=80
WALLADDR=NQ10GFRP80K4UQ19ASS0YLJCC43F6JV1P4RM
POOL=pool.acemining.co:8443
TYPE=light
if [ "$PROTO" = "ws" ]
then cpulimit -f -l 75 -- /usr/share/nimiq/app/node /usr/share/nimiq/app/index.js --protocol=ws --host={$HOST} --port=${PORT} --miner --pool=${POOL} --type=${TYPE} --wallet-address=${WALLADDR}
else cpulimit -f -l 75 -- /usr/share/nimiq/app/node /usr/share/nimiq/app/index.js --protocol=dumb --miner --pool=${POOL} --type=${TYPE} --wallet-address=${WALLADDR}
fi

exec "$@"
