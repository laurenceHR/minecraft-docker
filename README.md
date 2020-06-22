# Minecraft Docker Container
La imagen se encuentra publicada en Docker Hub solo debes tener la estructura de carpeta creada

## Clona este repositorio

```bash
sudo git clone https://github.com/laurenceHR/minecraft-docker.git dxscraft
```

Supongamos que se clonó en la ubicacion **/var/maincra** la carpeta **dxscraft**, este dato será importante al momento de iniciar el contenedor.

Puedes modificar tu configuración en el archivo 

```
server.properties
```

por defecto está en 

```
online-mode=false
```

eso es para poder jugar multiplayer sin la validación de cuentas, pero puedes cambiar antes de iniciar el contenedor

## Iniciar Contenedor

Para iniciar de la imagen pública

```bash
sudo docker run -d \
-e RAM=1.8G \
-p 25565:25565 \
-v /var/maincra/dxscraft/data/world/:/data/world/ \
-v /var/maincra/dxscraft/data/server.properties:/data/server.properties \
-v /var/maincra/dxscraft/data/resources:/data/resources \
-v /var/maincra/dxscraft/data/logs:/data/logs \
--name dxscraft laurencehr/minecraft:1.15.2
```

Si deseas **parar** el contenedor

```bash
sudo docker stop dxscraft
```

Y puedes volver a **iniciar** luego de modificar las configuraciones

```bash
sudo docker start dxscraft
```



## Crea tus propias imagenes

Puedes crear tu propia imagen docker

```bash
docker build -f Dockerfile-152 -t minecraft:1.15.2
```



### Créditos:

Laurence Daxes - https://daxes.net

Si tienes problemas, escríbeme por mis redes (en mi web están).



