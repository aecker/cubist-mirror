models?=udnie.t7 

build:
	docker build -t jonasrauber/restyle-gpu docker-gpu/
restart-container:
	docker restart cubist-mirror
start-container:
	./start-container.sh
rm-container:
	docker rm -f cubist-mirror
run-gpu:
	docker exec -ti -u aecker cubist-mirror /aecker/cubist-mirror/cam.sh -models $(models)
run-cycle:
	docker exec -u aecker cubist-mirror /aecker/cubist-mirror/cycle.sh
run-four:
	docker exec -ti -u aecker cubist-mirror /aecker/cubist-mirror/cam.sh -models udnie.t7,la_muse.t7,feathers.t7,candy.t7 -width 320 -height 180
run-saliency:
	docker exec -ti -u aecker cubist-mirror /aecker/cubist-mirror/cam.sh -saliency -imgvis
