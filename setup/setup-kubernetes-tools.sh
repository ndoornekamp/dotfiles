#!/bin/bash
set -euxo pipefail

# Install kubectl
if ! [ -x "$(command -v kubectl)" ]; then
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
    kubectl version --client  # Verify installation
else
    echo "kubectl is already installed"
fi

# Install krew
if ! [ -x "$(command -v kubectl krew)" ]; then
    cd "$(mktemp -d)" &&
    OS="$(uname | tr '[:upper:]' '[:lower:]')" &&
    ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')" &&
    KREW="krew-${OS}_${ARCH}" &&
    curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/${KREW}.tar.gz" &&
    tar zxvf "${KREW}.tar.gz" &&
    ./"${KREW}" install krew
    kubectl krew  # Verify installation
else
    echo "krew is already installed"
fi

# Install kubie
if ! [ -x "$(command -v kubie)" ]; then
    sudo wget https://github.com/sbstp/kubie/releases/latest/download/kubie-linux-amd64 -O /usr/local/bin/kubie
    sudo chmod +x /usr/local/bin/kubie
else
    echo "kubie is already installed"
fi
