FROM nginx:alpine-slim
RUN mkdir -p /etc/nginx/certs \ 
             /usr/share/nginx/html \
             /usr/share/nginx/html/redblue
COPY alekseev.mywire.org.cert /etc/nginx/certs/
COPY alekseev.mywire.org.key /etc/nginx/certs/
COPY index.html /usr/share/nginx/html/index.html
COPY index.html /usr/share/nginx/html/redblue/index.html
COPY red.conf /etc/nginx/conf.d/
COPY blue.conf /etc/nginx/conf.d/
COPY redblue.conf /etc/nginx/conf.d/
COPY blue.html /usr/share/nginx/html/redblue/blue.html
COPY red.html /usr/share/nginx/html/redblue/red.html
COPY redblue.html /usr/share/nginx/html/redblue/redblue.html

ENTRYPOINT ["nginx", "-g", "daemon off;"]


EXPOSE 80 81 82 83 
