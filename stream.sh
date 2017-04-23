sleep 1
ffmpeg -f alsa -i hw:1 -f v4l2 -s 1920x1080 -r 30 -input_format h264 -i /dev/video0 -vcodec copy -preset veryfast -r 15 -g 30 -b:v 3000k -ar 44100 -threads 6 -b:a 96k -bufsize 3000k -f flv rtmp://a.rtmp.youtube.com/live2/REDACTED
