#!/bin/sh

sudo dnf install -y git

git clone https://github.com/ericfaris/server-provisioner.git

sudo dnf install -y docker

sudo groupadd -f docker

sudo usermod -aG docker $USER

sudo systemctl enable docker

sudo systemctl enable containerd

sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s | tr '[:upper:]' '[:lower:]')-$(uname -m) -o /usr/bin/docker-compose && sudo chmod 755 /usr/bin/docker-compose && docker-compose --version

git clone https://github.com/wmnnd/nginx-certbot.git
