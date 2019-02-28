#!/bin/bash

while [ -z "$ID" ]
do
	ID=`xdotool search --onlyvisible --name image.display`
	sleep 0.5
done
xdotool windowsize $ID 1920 1080

