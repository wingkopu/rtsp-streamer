#!/bin/bash

SERVICE="ffmpeg"
#if pgrep -x "$SERVICE" >/dev/null
num=`pgrep -x "$SERVICE" | wc -l`
if [ $num -eq 1 ]
then
    echo "$SERVICE is running"
elif [ $num -gt 1 ]
then
    echo "$SERVICE is running more than 1. Weird"
    pkill -9 ffmpeg
else
    echo "$SERVICE stopped"
    echo "$(date) try starting $SERVICE"
    /home/wipu/Workspaces/rtsp-streamer/start-streamer.sh &> /tmp/streamer&
fi
