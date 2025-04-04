FROM nginx:alpine-slim
RUN mkdir -p /usr/share/nginx/html \
             /usr/share/nginx/html/redblue 
COPY conf/           /etc/nginx/conf.d/
CMD ["nginx", "-g", "daemon off;"]
EXPOSE 82
