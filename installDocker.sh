#!/bin/bash
echo "######################"
echo "Install Docker"
echo "######################"

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#Adding Docker repos
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update

#Install Docker itself
sudo apt install docker-ce docker-ce-cli contaidevinerd.io -y

#Test docker
sudo docker run hello-world

echo "######################"
echo "Docker is ready!"
echo "######################"