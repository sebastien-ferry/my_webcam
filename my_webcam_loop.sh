#!/bin/sh
# webcam pic every minute - ffmpeg

resolution=1600x1200
device=/dev/video0
folder=pics


pic=0
while  [ ! -f stop ]
do
    pic=$((pic + 1))
    echo "Grab: $(date +'%Y-%m-%d %H:%M:%S') #$pic"

    filename="pic.$(date +%Y%m%d-%H%M%S).$pic.jpg"
    ffmpeg -v 16 -f video4linux2 -s "$resolution" -i "$device" -ss 0:0:2 -frames 1 "$folder/$filename"

    sleep 58
done
