# Znasoft

Sitio estático. `nginx:alpine` sirve la página en el puerto 80 del contenedor.

## Despliegue

```bash
docker compose up -d --build
```

Queda en http://127.0.0.1:8080/. El puerto del host es `ZNASOFT_PORT` (por defecto `8080`), para no usar el 80 que ya ocupa el nginx del servidor.

```bash
ZNASOFT_PORT=8081 docker compose up -d --build
```

`znasoft.com.mx` ya apunta a la zona de LEAD. Este repo no cambia DNS. En el nginx de ese servidor, un sitio de `znasoft.com.mx` puede hacer proxy a `127.0.0.1:8080`.

La red de producción de LEAD es un bridge del propio compose (`lead-network-prod`), no una red externa. Znasoft no se une a ella. Si más adelante hace falta, el nombre real sale con `docker network ls` (suele ser `<carpeta>_lead-network-prod`) y se añade aparte como `external: true`. No es necesario para publicar el sitio.
