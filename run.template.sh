#!/usr/bin/env bash
HOSTNAME="aosp-7-1"
HOST_PATH_1="/PATH/TO/aosp-7.1"
DOCKER_PATH_1="/aosp/aosp-7.1"

docker run -ti \
    --hostname ${HOSTNAME} \
    --volume ${HOST_PATH_1}:${DOCKER_PATH_1} \
    -e LOCAL_USER_ID=`id -u $USER` \
    -e LOCAL_GROUP_ID=`id -g $USER` \
    -e GIT_USER_NAME="Username" \
    -e GIT_USER_EMAIL="user@example.org" \
    aosp-build-environment:latest
