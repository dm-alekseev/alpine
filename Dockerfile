FROM nginx:alpine-slim
RUN mkdir -p /etc/nginx/certs \
             /usr/share/nginx/html \
             /usr/share/nginx/html/redblue
COPY alekseev.mywire.org.cert /etc/nginx/certs/
COPY alekseev.mywire.org.key /etc/nginx/certs/
COPY index.html /usr/share/nginx/html/
COPY index.html /usr/share/nginx/html/redblue/
COPY red.conf /etc/nginx/conf.d/
COPY blue.conf /etc/nginx/conf.d/
COPY redblue.conf /etc/nginx/conf.d/
COPY blue.html /usr/share/nginx/html/redblue/
COPY red.html /usr/share/nginx/html/redblue/
COPY redblue.html /usr/share/nginx/html/redblue/

ENTRYPOINT ["nginx", "-g", "daemon off;"]


EXPOSE 80 83 84 
