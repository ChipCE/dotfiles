#!/bin/bash
smbHost="192.168.1.101"
smbUsername="***"
smbPasswd="***"
smbUID="***"
echo "auto smb mount script"
echo -n  "Waiting for $smbHost"
for i in {1..12}
do
    if ping -c 1 $smbHost &> /dev/null
    then
        echo ""
        echo "Connected!"
        sudo mount //192.168.1.101/hdd1 -t cifs /home/chip/EarthBase/HDD1/ -o "username=$smbUsername,password=$smbPasswd,uid=$smbUID"
        sudo mount //192.168.1.101/hdd2 -t cifs /home/chip/EarthBase/HDD2/ -o "username=$smbUsername,password=$smbPasswd,uid=$smbUID"
        sudo mount //192.168.1.101/hdd3 -t cifs /home/chip/EarthBase/HDD3/ -o "username=$smbUsername,password=$smbPasswd,uid=$smbUID"
        echo "Done!"
        exit 0
    else
        echo -n "."
        sleep 10s
        echo 0
    fi
done
echo ""
echo "Error : cannot connect to $smbHost."
exit 1

