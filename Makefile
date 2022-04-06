up: export DOCKER_USER=501
up: export DOCKER_GROUP=20
up:
	mutagen-compose -f docker-compose.yml -f docker-compose-m1.yml up

down:
	mutagen-compose -f docker-compose.yml -f docker-compose-m1.yml down
