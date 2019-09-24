# my_webcam

bash scripts to take a picture every XX seconds

  * loop.sh: to be used in tmux/screen/nohup session
  * one.sh: to be used with cron/systemd timer

# Pre-Requisites

  * webcam
  * ffmpeg
  * cron/systemd timer [optional]

# Notes

one.sh (and timer) was developped because loop.sh happened to be stuck on ffmpeg...

Both scripts are wrappers around ffmpeg
```Shell
 ffmpeg -v 16 -f video4linux2 -s "$resolution" -i "$device" -ss 0:0:2 -frames 1 "$folder/$filename"
```


