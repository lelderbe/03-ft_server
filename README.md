# FT_SERVER

This is example of LEMP installation on debian buster.
Nginx web server + services: WordPress website, phpMyAdmin and MySQL.

## Installation

**build image**

	docker build -t www .

**build volume for mysql db (or use anonymous volume)**

	docker volume create www-db

## Usage

**run container**

	docker run -d --name www -p 80:80 -p 443:443 -v www-db:/var/lib/mysql www
	docker run -d --name www -p 80:80 -p 443:443 -v /var/lib/mysql www

**flip autoindex on/off**

	docker exec www /autoindex.sh

**log into container**

	docker exec -it www bash

**stop/start container**

	docker stop www
	docker start www

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

