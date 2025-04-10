#!/bin/bash/
while  true 
  do
    cat /usr/log/error.log /usr/log/access.log > /usr/log/nginx.log
    grep -w HTTP\/1.1\"\ \4.. /usr/log/nginx.log > /usr/log/400.error
    grep -w HTTP\/1.1\"\ \5.. /usr/log/nginx.log > /usr/log/500.error
  sleep 5
done
