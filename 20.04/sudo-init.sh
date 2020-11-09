#!/bin/bash

if [ "$(whoami)" != "root" ]; then
	echo "Sorry voe, ale zapoměl jsi na sudo."
	exit 1
fi

#nastavit bluetooth jmeno
echo "PRETTY_HOSTNAME=$(hostname)" | sudo tee /etc/machine-info

echo "127.0.1.1	$(hostname)" > ~/tmp_file && 
echo "127.0.0.1	weby" >> ~/tmp_file && 
cat /etc/hosts >> ~/tmp_file &&
mv ~/tmp_file /etc/hosts

mkdir /media/upnp
chmod 777 /media/upnp

# uprava grubu k zapamatovani posledni zvolene pozice
cp -f /home/$SUDO_USER/scripty/Install-Scripty/init/Data/etc/default/grub /etc/default/
update-grub

