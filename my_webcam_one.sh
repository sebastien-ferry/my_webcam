#!/bin/sh
# webcam pic from systemd timer

resolution=1600x1200
device=/dev/video0
folder=/home/sebn/code/my_webcam/picsd


echo "Grab: $(date +'%Y-%m-%d %H:%M:%S')"

filename="picd.$(date +%Y%m%d-%H%M%S).jpg"
ffmpeg -v 16 -f video4linux2 -s "$resolution" -i "$device" -ss 0:0:2 -frames 1 "$folder/$filename"

