#!/bin/bash
echo $(date) >> /home/pi/Desktop/log.txt
until ping -c1 www.google.com &>/dev/null; do :; done
sleep 5
sudo su - pi -c "screen -dm -S pistartup ~/Desktop/stream.sh"

