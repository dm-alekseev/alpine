FROM nginx:alpine-slim

WORKDIR /etc/nginx/

COPY certs/   ./certs/
COPY conf/    ./conf.d/
COPY html/    /usr/share/nginx/html/

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80 443 
