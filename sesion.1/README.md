
# Sesión 1

Requisitos para la sesión:
* Una máquina real/virtual donde instalar Teutón (T-NODE).
* Máquinas reales/virtuales para probar los test remotos (S-NODE)

El proyecto Teutón:
* Código y documentación: https://github.com/teuton-software/teuton
* Gemas: https://rubygems.org/gems/teuton

## Instalación

T-NODE: Es la máquina donde vamos a ejecutar Teuton.
* Instalar Ruby(>=2.5.9): `apt install ruby`
* Instalar Teuton: `gem install teuton`.

## Máquinas virtuales

Para crear las máquinas virtuales de Virtual Box voy a usar Vagrant.

* Repositorio de Vagrant Boxes: https://app.vagrantup.com/boxes/search?provider=virtualbox
* Fichero [Vagrantfile](../vagrant/debian/Vagranfile)

```ruby
NAME = "vagrant-debian"
BOX = "generic/debian11"

Vagrant.configure("2") do |config|
  config.vm.define NAME do |i|
    i.vm.box = BOX
    i.vm.hostname = NAME
    i.vm.network "public_network", bridge: [ "wlp6s0" ]
    i.vm.network :forwarded_port, guest: 22, host: 2241
    i.vm.synced_folder "./", "/vagrant"
    i.vm.provision "shell", path: 'install-software.sh'

    # VIRTUALBOX
    i.vm.provider "virtualbox" do |v|
      v.name = NAME
      v.memory = 2048
    end
  end
end
```
* Las máquinas que vamos a evaluar deben tener la red en modo puente y a se posible configuradas de forma estática para que no cambien en cada reinicio.


## Unidades de prueba

* Empezamos viendo un [ejemplo](01.unit_test) de las unidades de prueba usadas en programación.
* La idea es que Teuton nos permite crear unidades de prueba para nuestros sistemas.

## Localhost

* Ahora vamos a crear nuestro [primer test](02.localhost) desde cero.
* `teuton new demo`
* El test tiene 2 ficheros: config.yaml y start.rb.
* En start.rb definimos el test, y en config.yaml configuramos las máquinas.
* De momento sólo usaremos localhost.
* Las instrucciones que vamos a usar son: target, run y expect.
    * target: describe el objetivo que queremos evaluar
    * run: el comando que ejecutamos para consultar
    * expect: el valor que esperamos ver en la salida del comando anterior
* Si se cumple la salida "expect" es correcto.

## Máquinas remotas

Para evaluar máquinas remotas:
* Configuramos las máquinas en el fichero "config.yaml".
* Las instrucciones run tendrán la siguiente forma `run "comando", on: :host1`
