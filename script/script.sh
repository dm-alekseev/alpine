#!/bin/bash/
while  true 
  do
    cat /usr/logs/error.log /usr/logs/access.log > /usr/logs/nginx.log
    grep -w HTTP\/1.1\"\ \4.. /usr/logs/nginx.log > /usr/logs/400.error
    grep -w HTTP\/1.1\"\ \5.. /usr/logs/nginx.log > /usr/logs/500.error
  sleep 5
done
