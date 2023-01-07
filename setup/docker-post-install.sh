#!/bin/sh
set -e

if ! [ -x "$(command -v docker)" ]; then
    echo "Running Docker post-install steps"
    groupadd docker -f
    usermod -aG docker $USERNAME
    newgrp docker
    exit
else
    echo "Docker is already available without root privileges"
    exit
fi
