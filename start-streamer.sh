#!/bin/bash

#ffmpeg -rtsp_transport tcp -re -i rtsp://admin:1q2w3e4r@192.168.100.29:10554/tcp/av0_0 -c copy -f rtsp -c:v mpeg4 -b:v 9000k  -maxrate 9000k -bufsize 1835k rtsp://localhost:8554/mystream
ffmpeg -rtsp_transport tcp -i rtsp://admin:1q2w3e4r@192.168.100.29:10554/tcp/av0_0 -c copy -f segment -strftime 1 -reset_timestamps 1 -segment_time 300 -segment_format mp4 -c:a aac /data/cctv-data/saved_%Y-%m-%d_%H-%M-%S.mp4
