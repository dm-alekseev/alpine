FROM nginx:alpine-slim
RUN mkdir -p /etc/nginx/certs
COPY certs/    /etc/nginx/certs/
CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80
