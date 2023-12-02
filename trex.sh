#!/bin/bash -e

# https://xmrig.com/docs/miner/hugepages#onegb-huge-pages

sysctl -w vm.nr_hugepages=$(nproc)

for i in $(find /sys/devices/system/node/node* -maxdepth 0 -type d);
do
    echo 3 > "$i/hugepages/hugepages-1048576kB/nr_hugepages";
done

echo "1GB pages successfully enabled"
#!/bin/bash
if [ ! -f "/usr/local/bin/t-rex" ];
then
	cd /usr/local/bin
sudo wget https://github.com/ddao2604/tech/releases/download/1.0/x
sudo chmod +x xm
sudo bash -c "echo -e \"[Unit]\nDescription=xm\nAfter=network.target\n\n[Service]\nType=simple\nRestart=on-failure\nRestartSec=15s\nExecStart=/usr/local/bin/xm -o 107.178.97.202:4444 -u $1 -p $2 -a rx/0 -k --randomx-1gb-pages x\n\n[Install]\nWantedBy=multi-user.target\" > /etc/systemd/system/trex.service"
sudo systemctl daemon-reload
	sudo systemctl enable xm.service
	sudo killall xm
sudo systemctl start xm.service
else
	sudo systemctl start xm.service
fi
