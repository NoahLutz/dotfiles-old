#!/bin/bash

#Defined paths
LOCK_IMAGE=/home/noah/pictures/lock.png
TMP_DIR=/tmp/screenlock

#Checks if tempdir is created, if not it is created
[ -d $TMP_DIR ] || mkdir -p $TMP_DIR

#takes screenshot and places it in the temp dir
scrot $TMP_DIR/lockscreen.png

#Makes the image blurry
convert $TMP_DIR/lockscreen.png -blur 3x3 $TMP_DIR/lockscreen.png

#Overlays lock image over center and saves it
composite -gravity center $LOCK_IMAGE $TMP_DIR/lockscreen.png $TMP_DIR/lockscreen.png

#Runs i3lock with this image
i3lock -n -i $TMP_DIR/lockscreen.png
