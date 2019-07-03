#!/bin/bash
xrandr --newmode "1920x1080_60.00"  172.80  1920 2040 2248 2576  1080 1081 1084 1118  -HSync +Vsync
xrandr --addmode DVI-I-1-1 1920x1080_60.00
xrandr --output DVI-I-1-1 --mode 1920x1080_60.00
#(xrandr --listproviders | grep -q "modesetting") && xrandr --setprovideroutputsource 1 0
#xrandr --output DVI-I-1-1 --mode 1920x1080_60.00 --primary --right-of LVDS1
