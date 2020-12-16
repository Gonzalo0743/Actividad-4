#!/bin/bash

echo "Instalando dependencias"
npm install

echo "Empezando"
npm run build

echo "Medio terminado"
docker build . -t isaacsnk/star-wars-server:latest

echo "Docker push"
docker push star-wars-server:latest

echo "Se compilo ak7"
