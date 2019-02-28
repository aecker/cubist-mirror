#!/bin/bash

cd ~/cubist-mirror
make rm-container
make start-container
echo "Starting container..."
sleep 3
if [ $1 -eq 1 ]; then
	./maximize.sh &
fi
make run-cycle
