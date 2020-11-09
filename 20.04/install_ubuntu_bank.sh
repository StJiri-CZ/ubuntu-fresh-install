#!/bin/bash

if [ "$(whoami)" != "root" ]; then
	echo "Chybí sudo"
	exit 1
fi

cd ~

#Unity 7 WM
add-apt-repository ppa:unity7maintainers/unity7-desktop
apt-get install ubuntu-unity-desktop -y

apt-get remove unity-scope-clementine unity-scope-musique unity-scope-musicstores unity-lens-photos unity-lens-music unity-lens-video unity-lens-friends unity-scope-gdrive unity-scope-gmusicbrowser unity-scope-gourmet unity-scope-guayadeque unity-scope-video-remote unity-scope-zotero overlay-scrollbar unity-webapps-common

apt-get update

apt-get install gparted exfat-fuse hfsprogs p7zip p7zip-full p7zip-rar simple-scan synaptic chromium-browser pepperflashplugin-nonfree openjdk-8-jdk openjdk-8-jre keepassx compizconfig-settings-manager compiz-plugins compiz-plugins-main compiz-plugins-extra unity-tweak-tool ubuntu-restricted-extras jayatana notify-osd network-manager-openvpn-gnome -y

apt-get update

apt-get upgrade

apt-get autoremove

cd ~

