#!/bin/bash

DOCKERFILE_PATH=./
IMAGE_NAME=scar-redis
IMAGE_TAG=1.0

run() {
    name=$1
    sudo docker run -d --network=host -v /etc/localtime:/etc/localtim --name=${IMAGE_NAME}-${name} ${IMAGE_NAME}:${IMAGE_TAG}
}

del() {
	name=$1
	sudo docker rm -f ${IMAGE_NAME}-${name}
}

docker_name="test-01"
del $docker_name
run $docker_name

# win
# docker build --network=host --no-cache -t scar-redis:0.1 ./
# docker rm -f scar-redis
# docker run -itd --network host --name=scar-redis scar-redis:0.1 /bin/bash
# docker push scar-redis:0.1

# docker logs --tail=100 -f scar-redis
# docker exec -it scar-redis bash
