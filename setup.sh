#!/bin/sh

# - Install Git
sudo dnf install git-all

# - Clone docker-install repository
sudo git clone https://github.com/docker/docker-install.git

cd ./docker-install/

sudo ./install.sh

