#!/bin/bash

# CONSTANTS

REPO=jupyter_notebook
# ACTIONS

start_jupyter="start"
stop_jupyter="stop"
up_jupyter="up"
drop_jupyter="down"
launch_bash="bash"
build_jupyter="build"

# COMMANDS

comm_up_jupyter=(docker-compose -f ~/jupyter/docker-compose.yml up -d)
comm_down_jupyter=(docker-compose -f ~/jupyter/docker-compose.yml down)
comm_stop_jupyter=(docker-compose -f ~/jupyter/docker-compose.yml stop)
comm_start_jupyter=(docker-compose -f ~/jupyter/docker-compose.yml start)
comm_bash_jupyter=(docker-compose --file ~/jupyter/docker-compose.yml exec notebook bash)
comm_build_jupyter=(docker build -f ~/jupyter/Dockerfile -t $REPO ~/jupyter)

# MESSAGES

help_l1=$'Usage: jpt <parameter>

    Parameters:

    stop  - stop service
    start - start service
    up    - create container
    down  - destroy container
    build - build container

    bash  - log into the container with bash (if it is launched)
'

# CONTAINER PLUGGING-IN PATH

# Process the path where to plug the container for docker-compose.yml
export current_path=$(pwd)

# DOCKER MANIPULATIONS 

# Build
if [ "$1" = "$build_jupyter" ]; then
    "${comm_build_jupyter[@]}"

# Up
elif [ "$1" = "$up_jupyter" ]; then
    "${comm_up_jupyter[@]}"

# Down
elif [ "$1" = "$drop_jupyter" ]; then
    "${comm_down_jupyter[@]}"

# Start
elif [ "$1" = "$start_jupyter" ]; then
    "${comm_start_jupyter[@]}"

# Stop
elif [ "$1" = "$stop_jupyter" ]; then
    "${comm_stop_jupyter[@]}"

# Bash
elif [ "$1" = "$launch_bash" ]; then
    "${comm_bash_jupyter[@]}"

# Help
else
    echo "$help_l1"
fi

