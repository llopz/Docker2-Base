#!/bin/bash

dockerd &

sleep 10

git clone https://github.com/llopz/PC2-Docker2.git

echo "" >> $TIMES

cd PC2-Docker2/C++
docker build -t c_image -f cdockerfile .
c_time=$(docker run --privileged --rm c_image)
cd ../..

cd PC2-Docker2/Java
docker build -t j_image -f jdockerfile .
j_time=$(docker run --privileged --rm j_image)
cd ../..

cd PC2-Docker2/JavaScript
docker build -t js_image -f jsdockerfile .
js_time=$(docker run --privileged --rm js_image)
cd ../..

cd PC2-Docker2/Go
docker build -t g_image -f gdockerfile .
g_time=$(docker run --privileged --rm g_image)
cd ../..

cd PC2-Docker2/Python
docker build -t p_image -f pydockerfile .
p_time=$(docker run --privileged --rm p_image)

echo -e "-----RESULTADOS-----"
echo $c_time
echo $j_time
echo $js_time
echo $g_time
echo $p_time
