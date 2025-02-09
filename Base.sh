#!/bin/bash

dockerd &

sleep 10

git clone https://github.com/llopz/PC2-Docker2.git

cd PC2-Docker2/C++
docker build -t c_image -f cdockerfile .
docker run --privileged --rm c_image
cd ../..

cd PC2-Docker2/Java
docker build -t j_image -f jdockerfile .
docker run --privileged --rm j_image
cd ../..

cd PC2-Docker2/JavaScript
docker build -t js_image -f jsdockerfile .
docker run --privileged --rm js_image
cd ../..

cd PC2-Docker2/Go
docker build -t g_image -f gdockerfile .
docker run --privileged --rm g_image
cd ../..

cd PC2-Docker2/Python
docker build -t p_image -f pydockerfile .
docker run --privileged --rm p_image
