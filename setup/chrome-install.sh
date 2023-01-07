#!/bin/sh
set -e

if ! [ -x "$(command -v google-chrome)" ]; then
    echo "Chrome is not yet installed"
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
    sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
    apt-get update
    apt-get install google-chrome-stable
    exit
else
    echo "Chrome is already installed"
    exit
fi