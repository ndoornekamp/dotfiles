#!/bin/sh

groupadd docker
usermod -aG docker $USER
newgrp docker
