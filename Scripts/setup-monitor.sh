#!/bin/bash
xrandr | grep -q HDMI1 && xrandr --output VGA1 --auto --output HDMI1 --auto --right-of VGA1
