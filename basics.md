# Configurar el sistema

## Primero lo primero

    $ su
    Password: [x] 

Correr el basics script:

    $ sh ./debasics.sh

Agregar al usuario al sudo command

    $ /usr/sbin/usermod -aG sudo <username>
    # ruta absoluta, ruta segura

¡NO ES NECESARIO REBOOTEAR...!

    reboot

Correr el mate-basics script: ¿por qué? Porque vamos a usar Mate.

    $ sh ./mate-basics.sh

Instalar las aplicaciones

    $ sh ./instalapps.sh

