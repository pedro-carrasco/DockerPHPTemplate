up: export DOCKER_USER=501
up: export DOCKER_GROUP=20
up:
	mutagen-compose -f docker-compose.yml -f docker-compose-m1.yml up

down:
	mutagen-compose -f docker-compose.yml -f docker-compose-m1.yml down

update:
	docker cp gesparada-app:/var/www/vendor - | tar -x --directory ./src
	docker cp gesparada-app:/var/www/node_modules - | tar -x --directory ./src
	docker cp gesparada-app:/var/www/public - | tar -x --directory ./src
