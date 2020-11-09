#!/bin/bash

if [ -f ~/.jss-basicinit-done ]
then
    echo "Už jenou provedeno." 
    exit 1
fi

touch ~/.jss-basicinit-done

#Vytvorime adresare
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
