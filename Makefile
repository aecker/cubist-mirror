models?=udnie.t7 

build:
	docker build -t jonasrauber/restyle-gpu docker-gpu/
start-container:
	./start-container.sh
rm-container:
	docker rm -f cubist-mirror
run-gpu:
	docker exec -ti -u aecker cubist-mirror /aecker/cubist-mirror/cam.sh -models $(models)

