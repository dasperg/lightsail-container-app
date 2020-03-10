#!/bin/bash

#Author: https://github.com/mikegcoleman/todo

# install latest version of docker the lazy way
curl -sSL https://get.docker.com | sh

# make it so you don't need to sudo to run docker commands
usermod -aG docker $USER

# install docker-compose
curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# And this is my part:

# create portainer volume
docker volume create portainer_data

# start portainer container
docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer