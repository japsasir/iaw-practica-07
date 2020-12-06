# iaw-practica-07
Práctica seis de la asignatura IAW de 2º de Asir.

> IES Celia Viñas (Almería) - Curso 2020/2021
Módulo: IAW - Implantación de Aplicaciones Web
Ciclo: CFGS Administración de Sistemas Informáticos en Red

**Introducción**
En esta práctica vamos a configurar Nginx para que trabaje como un balanceador de carga.
**Archivos en el repositorio**
------------
1. README.md-Documentación
2. lemp.sh-Script necesario para desarrollar los frontales con Nginx
3. load_balancer.sh-Script necesario para desarrollar el balanceador de carga con Nginx
4. back_end.sh-Script para la máquina back-end, que contiene la base de datos MySQL.
5. default-Dos archivos de configuración Nginx, uno para lemp.sh y otro para load_balancer.sh. Separados en carpeta. 
**Pasos seguidos**
------------
- En primera instancia desplegamos nuestro servidor back_end con el script correspondiente.

- En segundo lugar desplegamos nuestros dos servidores front_end con pila LEMP. Deberemos especificar la variable IP_PRIVADA que apunta a nuestro back_end. Hay que modificar /var/www/html/index.php manualmente para indicar en que frontal estamos, guardar la edición y reiniciar Nginx. En mi práctica, he elegido usar `<p class="lead">Front_end_1</p>` como prueba.

- En último lugar, desplegamos nuestro balanceador de carga. Necesitaremos especificar las ip privadas de nuestro servidores front_end en el archivo default.

- Visitaremos la IP pública de nuestro balanceador de carga y comprobaremos que aparecen los dos modelos de index.

**Archivos de configuración alterados durante el script**
------------
- `/etc/nginx/sites-enabled/default` en el balanceador de carga

**Errores**
------------
- El balanceador no funcionaba por no haber puesto ';' despues de cada ip privada de los servidores front_end

**Referencias**
------------
- Guía original para la práctica.
https://josejuansanchez.org/iaw/practica-07/
- Plantilla balanceador
https://www.nginx.com/resources/wiki/start/topics/examples/loadbalanceexample/