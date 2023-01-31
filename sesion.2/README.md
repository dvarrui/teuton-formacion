
# Teuton se conecta a un docker por SSH

* `docker run -it --rm --name demo -v "$PWD":/opt -w /opt ubuntu bash`, iniciar un contenedor.
* Dentro del contenedor debemos tener el SSH en ejecución.
```
apt install openssh-server
service ssh status
service ssh start
service ssh status
adduser vader
```
* `docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' demo`, consultamos la IP del contenedor.
* `ssh vader@CONTAINER_IP`, Ya podemos entrar al contenedor.
