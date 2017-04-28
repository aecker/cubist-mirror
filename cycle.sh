#!/bin/bash

#models_list="evian.t7 la_muse.t7 udnie.t7i feathers.t7 candy.t7"
models_list="la_muse.t7 udnie.t7i feathers.t7 candy.t7"
duration=60

cd /aecker/fast-neural-style
while :
do
	for models in $models_list; do
		echo $models
		cmd="timeout $duration qlua webcam_demo.lua -webcam_fps 10 -height 360 -width 640 -gpu 0 -models $models"
        	echo $cmd
        	eval $cmd
	done
done

