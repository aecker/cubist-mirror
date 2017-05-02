models?=udnie.t7,feathers.t7,la_muse.t7,evian.t7,candy.t7,mosaic.t7,the_scream.t7 
model?=udnie.t7

build:
	docker build -t jonasrauber/restyle-gpu docker-gpu/
restart-container:
	docker restart cubist-mirror
start-container:
	./start-container.sh
rm-container:
	docker rm -f cubist-mirror
run-gpu:
	docker exec -ti -u aecker cubist-mirror /aecker/cubist-mirror/cam.sh -models $(model) -cycle 0
run-cycle:
	docker exec -ti -u aecker cubist-mirror /aecker/cubist-mirror/cam.sh -models $(models) -cycle 1 -cycle_time 15
run-four:
	docker exec -ti -u aecker cubist-mirror /aecker/cubist-mirror/cam.sh -models udnie.t7,la_muse.t7,feathers.t7,candy.t7 -width 320 -height 180
run-density:
	docker exec -ti -u aecker cubist-mirror /aecker/cubist-mirror/cam.sh -saliency -density -imgvis
run-saliency:
	docker exec -ti -u aecker cubist-mirror /aecker/cubist-mirror/cam.sh -saliency -imgvis -gamma 4 -width 432 -height 240
	#docker exec -ti -u aecker cubist-mirror /aecker/cubist-mirror/cam.sh -saliency -imgvis -gamma 3 -width 320 -height 180
	#docker exec -ti -u aecker cubist-mirror /aecker/cubist-mirror/cam.sh -saliency -imgvis -gamma 3 -width 320 -height 180
	#docker exec -ti -u aecker cubist-mirror /aecker/cubist-mirror/cam.sh -saliency
