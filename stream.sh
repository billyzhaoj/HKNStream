#!/bin/bash
sleep 1
ffmpeg -async 1 -thread_queue_size 512 -ar 44100 -ac 2 -f alsa -i hw:1   -re -itsoffset 0.5 -f v4l2 -s 1920x1080 -thread_queue_size 512 -r 30 -input_format h264 -i /dev/video0 -vcodec copy -preset veryfast -r 30 -g 30 -b:v 3000k -ar 44100 -threads 8 -b:a 96k -bufsize 3000k -f flv  rtmp://REDACTED 
