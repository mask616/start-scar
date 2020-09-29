#!/bin/bash

DOCKERFILE_PATH=./
IMAGE_NAME=scar-mysql
IMAGE_TAG=1.0

run() {
    name=$1
    sudo docker run -d --network=host -v /etc/localtime:/etc/localtime --name=${IMAGE_NAME}-${name} ${IMAGE_NAME}:${IMAGE_TAG}
}

del() {
	name=$1
	sudo docker rm -f ${IMAGE_NAME}-${name}
}

docker_name="test-01"
del $docker_name
run $docker_name

# win
# docker build --network=host --no-cache -t scar-mysql:0.1 ./
# docker rm -f scar-mysql
# docker run -d -p 3306:3306 --name=scar-mysql scar-mysql:0.1
# docker push scar-mysql:0.1

# docker logs --tail=100 -f scar-mysql
# docker exec -it scar-mysql bash
