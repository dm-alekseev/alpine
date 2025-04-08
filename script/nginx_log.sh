#!/bin/bash/
while  true 
  do
    cat /var/log/nginx/error.log /var/log/nginx/access.log > /var/log/nginx/nginx.log
    grep -w HTTP\/1.1\"\ \4.. /var/log/nginx/nginx.log > /var/log/nginx/400.error
    grep -w HTTP\/1.1\"\ \5.. /var/log/nginx/nginx.log > /var/log/nginx/500.error
  sleep 5
done
