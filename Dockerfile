FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html styles.css logo.png /usr/share/nginx/html/
COPY publicidad/ /usr/share/nginx/html/publicidad/

EXPOSE 80
