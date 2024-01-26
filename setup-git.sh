#!/bin/sh

sudo dnf install -y git

git clone https://github.com/ericfaris/server-provisioner.git

sudo chmod 755 ./server-provisioner/setup.sh

sudo ./server-provisioner/setup.sh
