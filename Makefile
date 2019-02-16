docker-deploy-dev:
	cd ../shjp-gateway/cmd/server && make docker_update_dev
	cd ../shjp-dao/cmd/server && make docker_update_dev
	cd .. && ssh -i shjp_dev.pem ec2-user@$(SHJP_REMOTE_HOST) 'cd shjp/shjp-ops/docker/dev; docker-compose pull; docker-compose down; docker-compose up -d; exit'

docker-up:
	cd docker/dev && docker-compose up -d

docker-down:
	cd docker/dev && docker-compose down