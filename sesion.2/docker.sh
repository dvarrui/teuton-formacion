#/usr/bin/env bash

NAME=demo
echo "[*] Show $NAME container IP"

docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $NAME
