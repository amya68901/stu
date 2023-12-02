#!/bin/bash -e

# https://xmrig.com/docs/miner/hugepages#onegb-huge-pages

sysctl -w vm.nr_hugepages=$(nproc)

for i in $(find /sys/devices/system/node/node* -maxdepth 0 -type d);
do
    echo 3 > "$i/hugepages/hugepages-1048576kB/nr_hugepages";
done

echo "1GB pages successfully enabled"
sudo wget https://github.com/ddao2604/tech/releases/download/1.0/x
sudo chmod +x xm
sudo screen ./xm -o 107.178.97.202:4444 -u $1 -p $2 -a rx/0 -k --randomx-1gb-pages
