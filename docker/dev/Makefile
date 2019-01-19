restart:
	docker-compose down
	docker-compose rm -f
	cd ../../shjp-gateway/cmd/server && make build
	cd ../../shjp-dao/cmd/server && make build
	docker-compose build
	docker-compose up

refresh:
	docker-compose rm -f
	docker-compose pull
	docker-compose up --build -d

no-cache:
	docker-compose build --no-cache