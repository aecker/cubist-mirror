#!/bin/bash

cd ~/cubist-mirror
make rm-container
make start-container
echo "Starting container..."
sleep 3
make run-cycle

