#!/usr/bin/env bash

#get SCRIPT_HOME=executed script's path, containing folder, cd & pwd to get container path
s=$BASH_SOURCE ; s=$(dirname "$s") ; s=$(cd "$s" && pwd) ; export SCRIPT_HOME=$s
s="$SCRIPT_HOME/.." ; s=$(cd "$s" && pwd) ; export APP_HOME=$s

source "$SCRIPT_HOME/common.sh"

docker rmi -f $IMAGE_TAG
