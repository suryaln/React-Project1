#!/bin/bash

#docker_username="suryaln"
docker login -u $docker_username -p $docker_pswd

docker tag imagefromreactapp suryaln/imagefromreactapp

docker push suryaln/imagefromreactapp

