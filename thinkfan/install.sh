#!/bin/bash
if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Error : Root required!"
    exit
fi

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "$CURRENT_DIR"

yes | cp -R "./thinkfan.yaml" "/etc/thinkfan.yaml"
yes | cp -R "./thinkfan.conf.modprobe.d" "/etc/modprobe.d/thinkfan.conf"

#echo "options thinkpad_acpi fan_control=1 experimental=1" | sudo tee /etc/modprobe.d/thinkfan.conf
modprobe -rv thinkpad_acpi
modprobe -v thinkpad_acpi

#thinkpad_acpi.fan_control=1
systemctl enable thinkfan
systemctl start thinkfan