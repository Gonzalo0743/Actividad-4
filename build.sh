#!/bin/bash

echo "Instalando dependencias"
npm install

echo "Empezando"
npm run build

echo "Medio terminado"
docker build . -t isaacsnk/star-wars-server:latest

echo "Docker push"
docker login -u Gonzalo0743 -p $DOCKER_HUB_PASSWORD
docker push star-wars-server:latest

echo "Se compilo ak7"
