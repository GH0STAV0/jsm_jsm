#!/usr/bin/env bash
clear
ngrok authtoken $NGROK_TOKENS
ngrok http 6901 > /dev/null &
export WEBHOOK_URL="$(curl http://localhost:4040/api/tunnels | jq ".tunnels[0].public_url")" && echo $WEBHOOK_URL
trap "echo oh;exit" SIGTERM SIGINT
echo $google_main > /root/g00g
# echo -e "nameserver 103.86.96.100\nnameserver 103.86.99.100" >  /etc/resolv.conf
echo "nameserver 8.8.8.8" >  /etc/resolv.conf
echo "nameserver 8.8.4.4" >>  /etc/resolv.conf

cd /headless/
git clone https://github.com/GH0STAV0/jas_scra.git

# rm -rf site_5
# git reset --hard
# git pull
cd /headless/jas_scra/
chmod +x *
pwd
# python3 run_run.py
# curl ipinfo.io
while true
do
	echo "NEW ..............."
	dbus-uuidgen > /var/lib/dbus/machine-id
	cd /headless/jas_scra/
	timeout 5m python3 start.py
	# python3 google_let.py
done
