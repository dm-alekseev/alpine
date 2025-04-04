FROM nginx:alpine-slim

COPY certs/   /etc/nginx/certs/
COPY conf/    /etc/nginx/conf.d/
COPY html/    /usr/share/nginx/html/

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80 443 
