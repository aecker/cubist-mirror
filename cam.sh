#!/bin/bash

cd /aecker/fast-neural-style
qlua webcam_demo.lua -webcam_fps 15 -height 360 -width 640 -gpu 0 -models udnie.t7 $@

