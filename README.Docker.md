#=====#
docker build -t alpine .

docker-compose up --build 

echo "html conf certs" | xargs -n 1 docker volume create

docker run  -p 80:80  --rm --name alpine -v conf:/etc/nginx/conf.d -v html:/usr/share/nginx/html -v certs:/etc/nginx/certs -p  443:443 alpine


# рекомендуется создавать в Dockerfile отдельную группу и пользователя и выделять ему минимально необходимые привилегии:
# создать группу и пользователя
RUN groupadd -r tom && useradd -g tom tom
# определить права и владельцев 
RUN chown -R tom:tom /my-app
# переключиться на пользователя 
USER tom

Для сканирования можно воспользоваться встроенным в Docker сканером, базирующимся на Snyk  (docker scan ubuntu ) и Trivy 

Рекомендуется ограничить добавление новых привилегий после того, как контейнер был создан. Это можно сделать с помощью команды —security-opt=no-new-privileges:
docker run -it --security-opt=no-new-privileges:true imagename