#!/usr/bin/env bash
export WEBDEPLOY_VERSION=v1
echo "[$0]:: Begin [$*]"
status=0

set -x

docker images| grep vsc-docker-fundamentals| awk '{print $3}'| xargs docker rmi -f 
docker rmi -f nginx:alpine 
docker rmi -f webdeploy:v1

docker stop nginx-docker-swift
sleep 3
docker rm -f nginx-docker-swift

set +x

echo "[$0]:: End   [$status]"
exit $status