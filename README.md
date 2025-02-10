# Docker2-Base

Equipo: Luis Lopez, Jairo Moreno <br>
Enlace al repositorio con los códigos: https://github.com/llopz/PC2-Docker2.git

Los resultados se muestran en el formato "Lenguaje: 101ms". Para ejecutar el programa se deben introducir los siguientes comandos en la terminal:

git clone https://github.com/llopz/Docker2-Base.git <br>
cd Docker2-Base <br>
docker build -t base_image -f BaseDockerfile . <br>
docker run --privileged --rm base_image
