#!/bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "$CURRENT_DIR"

#/home/chip/.local/share/applications/
yes | cp -r ./desktop_files/* ~/.local/share/applications/

mkdir -p ~/Data/Application/icons
yes | cp -r ./icon_files/* ~/Data/Application/icons