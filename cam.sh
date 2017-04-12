#!/bin/bash

cd /aecker/fast-neural-style
qlua webcam_demo.lua -webcam_fps 20 -height 360 -width 640 -gpu 0 -models models/models/instance_norm/udnie.t7 $@

