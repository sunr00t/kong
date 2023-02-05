#!/bin/bash 
echo "Atualizando o sistema..."
sudo apt-get update;
echo "Instalando dependencias..."
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
echo "Instalando Docker GPG Keys"
mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "Criando apt source.list"
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "Atualizando apt list..."
sudo apt-get update
echo "Instalando Docker"
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
echo "Criando docker-group"
sudo groupadd docker
echo "Adicionando usuario logado ao grupo..."
sudo usermod -aG docker $USER
echo "Docker instalado...."
docker run hello-world