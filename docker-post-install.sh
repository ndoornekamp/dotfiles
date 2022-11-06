set -e

groupadd docker
usermod -aG docker $USER
newgrp docker
