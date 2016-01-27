#!/bin/bash

LOCK_IMAGE=/home/noah/pictures/lock.png
TMP_DIR=/tmp/screenlock


[ -d $TMP_DIR ] || mkdir -p $TMP_DIR

scrot $TMP_DIR/screenshot.png

convert $TMP_DIR/screenshot.png -blur 3x3 $TMP_DIR/screenshot.png

composite -gravity center $LOCK_IMAGE $TMP_DIR/screenshot.png $TMP_DIR/lockscreen.png

i3lock -n -i $TMP_DIR/lockscreen.png
