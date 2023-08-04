# Examen_docker
Examen_Docker
Para utilizar la imagen es necesario tener instalado Docker
#Se debe descargar la imagen con el comando
docker pull saulgabino/examen_docker:v1
#Es importante tener el sitio web listo para el despliegue.
#Se debe revisar que la descarga fue correcta con el comando
docker images
#Despues solo sera correr el contenedor
docker run -dit -p 80:80 -p 3333:22 examen_docker:v1
#Es importan revisar los puerto disponibles en el servidor en ejemplo anterior se utilizo el puerto 3333 para ssh
#Por ultimo corroborar el estado del contenedor 
docker ps
