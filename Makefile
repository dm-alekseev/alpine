IMAGE_NAME=alpine
CONTAINER_NAME=alpine

build: 
	docker build -t $(IMAGE_NAME) .

run:
	docker run --name $(CONTAINER_NAME) -d -p 80:80  -p 443:443 --rm -v conf:/etc/nginx/conf.d/ $(IMAGE_NAME)

stop: 
	docker stop $(CONTAINER_NAME)

remove: 
	docker rmi  $(IMAGE_NAME)

logs:
	docker logs $(CONTAINER_NAME)
clean:  stop remove	
