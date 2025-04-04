FROM nginx:alpine-slim
RUN mkdir -p /etc/nginx/certs \ 
             /usr/share/nginx/html \
             /usr/share/nginx/html/redblue \
             /usr/share/nginx/html/content/ \
             /usr/share/nginx/html/music/ \
             /usr/share/nginx/html/secondserver 
COPY certs/          /etc/nginx/certs/
COPY conf/           /etc/nginx/conf.d/
COPY redblue/        /usr/share/nginx/html/redblue/
COPY ringt.mp3       /usr/share/nginx/html/music/
COPY index.html      /usr/share/nginx/html/index.html



ENTRYPOINT ["nginx", "-g", "daemon off;"]


EXPOSE 80 81 82 83 84 
