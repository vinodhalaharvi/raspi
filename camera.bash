#!/bin/bash

while true; do DATE=$(date +"%Y-%m-%d_%H%M"); raspistill -vf -hf -o /home/pi/media/images/$DATE.jpg; sleep 30 ; done; 
