#!/bin/bash

###--------------------------------------------------------###
### Script para máquina front_end con balanceador de carga ###
###------------------------------------------------------- ###

# Extraemos los archivos de la carpeta load_balancer al directorio /home/ubuntu

# ------------------------------------------------------------------------------ Instalación de Nginx ------------------------------------------------------------------------------ 
# Habilitamos el modo de shell para mostrar los comandos que se ejecutan
set -x
# Actualizamos la lista de paquetes
apt update
# Instalamos el servidor web Nginx
apt install nginx -y
# Copiamos el archivo de configuración 'default' a Nginx. Está configurado para ser balanceador de carga.
cp default /etc/nginx/sites-available/default
# Reiniciamos Nginx para que se apliquen los cambios
systemctl restart nginx