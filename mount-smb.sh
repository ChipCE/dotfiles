#!/bin/bash
smbHost="192.168.1.101"
echo "auto smb mount script"
echo -n  "Waiting for $smbHost"
for i in {1..12}
do
    if ping -c 1 $smbHost &> /dev/null
    then
        echo ""
        echo "Connected!"
        sudo mount //192.168.1.101/share -t cifs /home/chip/EarthBase/share/ -o "username=***,password=***,uid=***"
        sudo mount //192.168.1.101/private -t cifs /home/chip/EarthBase/private/ -o "username=***,password=***,uid=***"
        sudo mount //192.168.1.101/upload -t cifs /home/chip/EarthBase/upload/ -o "username=***,password=***,uid=***"
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

