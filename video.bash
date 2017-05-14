#!/bin/bash
#while true;  do 
  DATE=$(date +"%Y-%m-%d_%H%M")

  # Capture 30 seconds of raw video at 640x480 and 150kB/s bit rate into a $DATE.h264 file:
  raspivid -t 30000 -w 640 -h 480 -fps 25 -b 1200000 -p 0,0,640,480 -o /home/pi/media/video/$DATE.h264 

  # Wrap the raw video with an MP4 container: 
  MP4Box -add /home/pi/media/video/$DATE.h264 /home/pi/media/video/$DATE.mp4

  # Remove the source raw file, leaving the remaining $DATE.mp4 file to play
  rm /home/pi/media/video/$DATE.h264

#  sleep 30 
#done
