# Usamos una imagen base de Linux con las versiones de Apache y SSH
FROM ubuntu:latest

# Actualizamos el sistema y agregamos el repositorio para instalar Apache y SSH
RUN apt-get update && apt-get install -y apache2 openssh-server

# Copiamos el contenido de la página web de ejemplo al directorio del servidor web en el contenedor
COPY nombre_del_sitio/ /var/www/html/

# Creamos un usuario para correr la aplicación
RUN useradd -m admin1
RUN echo 'admin1:Bsecure01!' | chpasswd

# Iniciamos los servicios de Apache y SSH al arrancar el contenedor
CMD service apache2 start && service ssh start && /bin/bash
