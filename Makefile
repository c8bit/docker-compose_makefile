author = c8bit
product_name = reverse_proxy

build-dev:
	docker-compose build

build-prod:
	docker-compose -f docker-compose.yml -f docker-compose.prod.yml build

save-server:
	docker save $(author)/$(product_name):latest > $(product_name).tar

load-server:
	docker load --input $(product_name).tar

dev:
	docker-compose up

prod:
	docker-compose -f docker-compose.yml -f docker-compose.prod.yml up

down:
	@eval docker stop $$(docker ps -a -q)
	docker-compose down
