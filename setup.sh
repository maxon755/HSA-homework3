#!/usr/bin/env bash

if [[ `uname` == 'Darwin' ]]; then
    export DOCKER_GID=`stat -f '%g' /var/run/docker.sock`
else
    export DOCKER_GID=`stat -c '%g' /var/run/docker.sock`
fi

docker compose up -d
