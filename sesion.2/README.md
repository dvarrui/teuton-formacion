
# Sesión 2: formación sobre Teuton

https://meet.jit.si/teuton-formacion

## Sesión anterior

Hemos visto
* Cómo instalar Teuton.
* Crear nuevo test.
* Crear targets (target/run/expect)
* Consultar los ficheros de salida
* Configurar máquinas remotas (config.yaml)

## Contenido

Vamos a ver ahora:
* `export`: Exportar a diversos formatos de salida
* `send`: Enviar copias de los informes a las máquinas remotas
* Acceder a un host remoto sin clave
* Acceder a un contenedor por SSH.
* `log` y `result`: Registrar la salida de los comandos ejecutados (log result.value)
* `unique`: Detectar copias con unique
* `use`: Organizar los targets con use
* Evaluar varios hosts del mismo alumno/a
* Evaluar hosts detrás de un NAT.

## Teuton se conecta a un docker por SSH

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
