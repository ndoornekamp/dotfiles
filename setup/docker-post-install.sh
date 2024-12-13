#!/bin/sh
set -e

if ! docker run hello-world > /dev/null 2>&1; then
    echo "Running Docker post-install steps"
    groupadd docker -f
    sudo usermod -aG docker $USERNAME
    newgrp docker
    exit
else
    echo "Docker is already available without root privileges"
    exit
fi
