container_name = my_nginx

.PHONY: build-dev build-prod save-server load-server dev prod down
build-dev:
	docker-compose build

build-prod:
	docker-compose -f docker-compose.yml -f docker-compose.prod.yml build

save:
	docker save $(container_name):latest > $(container_name).tar

load:
	docker load --input $(container_name).tar

dev:
	docker-compose up

prod:
	docker-compose -f docker-compose.yml -f docker-compose.prod.yml up

down:
	@eval docker stop $$(docker ps -a -q)
	docker-compose down
