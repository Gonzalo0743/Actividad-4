#!/bin/bash

echo "Empezando"

npm run build

echo "Medio terminado"

docker build . -t star-wars-server

echo "Se compilo ak7"