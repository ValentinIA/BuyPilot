# BuyPilot - TFG

## Puesta en marcha
Para levantar el proyecto, usa el siguiente comando:
```
docker-compose up --build -d
```

## Conexión con la Base de Datos al servidor

La base de datos esta conectada al servidor para que el sistema funcione.
Si da error y no esta levantado, contacta con alguno de los siguientes correos:

```
valentintigovan@gmail.com

kevinmoraleslasso@gmail.com

alejandroalonso6@hotmail.com
```
## Conexión con la Base de Datos localmente en docker

Si deseas instalar la base de datos en tu entorno Docker local hay que importarla en el contenedor mysql, sigue estos pasos:

### 1. Modifica las credenciales en el archivo .env antes de hacer docker-compose up --build -d ubicado en:

```
/TFG/src/Models/.env
```

### 2. Copia el archivo SQL al contenedor de MySQL:
```
docker cp BuyPilot.sql mysql:/BuyPilot.sql
```

### 3. Accede al contenedor:
```
docker exec -it mysql bash
```

### 4. Importa la base de datos dentro del contenedor:
``
mysql -u buypilot -p BuyPilot < BuyPilot.sql
```

Contraseña buypilot23