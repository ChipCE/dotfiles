#!/bin/bash
DEST="/home/tux/Downloads/"
PROG="mousepad"
for ARG in "$@"; do
    echo $ARG > log.txt
    filename=($(basename $ARG))
    echo $filename > log.txt
    yes | cp -rf "$ARG" "$DEST$filename"
    "$PROG" "$DEST$filename"
done
