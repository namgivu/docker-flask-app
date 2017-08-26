#!/usr/bin/env bash

#ref. https://docs.docker.com/docker-cloud/builds/push-images/
:

#get SCRIPT_HOME=executed script's path, containing folder, cd & pwd to get container path
s=$BASH_SOURCE ; s=$(dirname "$s") ; s=$(cd "$s" && pwd) ; export SCRIPT_HOME=$s

source "$SCRIPT_HOME/common.sh"

sh="
docker tag $IMAGE_NAME_LOCAL $IMAGE_NAME_REMOTE;
docker push $IMAGE_NAME_REMOTE;
"
eval $sh
