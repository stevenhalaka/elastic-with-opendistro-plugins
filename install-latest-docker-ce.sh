#!/bin/bash

sudo apt-get remove docker docker-engine docker.io
sudo apt-get update
sudo apt-get -y install \
    git jq htop curl \
    apt-transport-https \
    ca-certificates \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get -y install docker-ce
sudo usermod -aG docker vagrant

sudo apt-get install -y python python-pip
pip install --user docker-compose
