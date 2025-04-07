FROM nginx:alpine-slim

WORKDIR /etc/nginx/

ENV HTTP_PORT=80
ENV HTTPS_PORT=443
 
COPY certs/   ./certs/
COPY conf/    ./conf.d/
COPY html/    /usr/share/nginx/html/

VOLUME ["/usr/share/nginx/html","/etc/nginx/conf.d/"]

CMD ["nginx", "-g", "daemon off;"]

EXPOSE $HTTP_PORT $HTTPS_PORT  