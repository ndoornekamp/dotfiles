#!/bin/sh
set -e

if ! [ -x "$(command -v docker)" ]; then
    echo "Docker is not yet installed"
    apt update -y
    apt install ca-certificates curl gnupg lsb-release -y
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
    echo  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    apt update -y
    apt install docker-ce docker-ce-cli containerd.io -y
    exit
else
    echo "Docker is already installed"
    exit
fi

