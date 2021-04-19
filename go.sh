#!/bin/bash

# ACTIONS

start_jupyter="start"
stop_jupyter="stop"
build_jupyter="up"
drop_jupyter="down"
launch_bash="bash"

# COMMANDS

comm_up_jupyter=(docker-compose -f ~/jupyter/docker-compose.yml up -d)
comm_down_jupyter=(docker-compose -f ~/jupyter/docker-compose.yml down)
comm_stop_jupyter=(docker-compose -f ~/jupyter/docker-compose.yml stop)
comm_start_jupyter=(docker-compose -f ~/jupyter/docker-compose.yml start)
comm_bash_jupyter=(docker-compose --file ~/jupyter/docker-compose.yml exec notebook bash)

# MESSAGES

help_l1=$'Usage: jpt <parameter>

    Parameters:

    stop - stop service
    start - start service
    up - create container
    down - destroy container

    bash - log into the container with bash (if it is launched)
'

# DOCKER MANIPULATIONS 

# Up
if [ "$1" = "$build_jupyter" ]; then
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

