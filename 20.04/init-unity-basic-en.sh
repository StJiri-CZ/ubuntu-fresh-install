#!/bin/bash

if [ -f ~/.jss-basicinit-done ]
then
    echo "Už jenou provedeno." 
    exit 1
fi

touch ~/.jss-basicinit-done

#zkopirujeme cast konfiguraku, zbytek udelame po syncu
echo "Kopíruji první část konfiguráků, zbytek proveď až po syncu"
cp -vfR $PWD/Data/config/* /home/$USER/.config/

#Vytvorime adresare
echo "Vytvářím profilové adresáře"
chmod 700 /home/$USER #kvuli apachovi
cd /home/$USER
mkdir Weby
chmod 755 /home/$USER/Weby -R
mkdir .Programy
mkdir Temp
mkdir .FavWP
mkdir .SafeWP
mkdir .KPX
mkdir Backup
cd /home/$USER/Backup
mkdir Quick

cd /home/$USER

#install Joplin
echo "Instaluji Joplin"
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash
