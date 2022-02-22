#!/bin/bash

x=`pgrep -x ffmpeg | wc -l`
echo $x
if [ $x -eq 1 ]
then
		echo "pass"
else
		echo "not pass"
fi
