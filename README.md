# ft_server

**build image**

	docker build -t www .

**build volume for mysql db**

	docker volume create www-db

**run container**

	docker run --rm -d --name www -p 80:80 -p 443:443 -v www-db:/var/lib/mysql www

**log in to container**

	docker exec -it www bash

**flip autoindex on/off**

	./autoindex.sh

**stop container**

	docker stop www

**remove container/image/volume**

	docker rm www
	docker rmi www
	docker volume rm www-db

**show info**

	docker version
	docker images
	docker volume ls
	docker ps -a

**clear docker cache**

	docker builder prune

**misc**

	docker exec -it $(docker ps -qa) bash
	docker ps -a && docker stop $(docker ps -qa)

