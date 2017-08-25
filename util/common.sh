#!/usr/bin/env bash

#get SCRIPT_HOME=executed script's path, containing folder, cd & pwd to get container path
s=$BASH_SOURCE ; s=$(dirname "$s") ; s=$(cd "$s" && pwd) ; export COMMON_SCRIPT_HOME=$s

#load local common setting if any
source $COMMON_SCRIPT_HOME/common_local.sh > /dev/null 2>&1


IMAGE_NAME='docker-flask-app'
VERSION_TAG='latest'
IMAGE_NAME_LOCAL="$IMAGE_NAME:$VERSION_TAG"
IMAGE_NAME_REMOTE="$DOCKER_HUB_USER/$IMAGE_NAME_LOCAL"
IMAGE_TAG=$IMAGE_NAME_LOCAL #just an alias
CONTAINER_NAME="container.$IMAGE_NAME"

HOST_PORT=17825
CONTAINER_PORT=5000
