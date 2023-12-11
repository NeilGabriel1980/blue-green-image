#!/bin/sh
set -eu


DIR=/etc/nginx/conf.d/certs
mkdir -p $DIR

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ${DIR}/server.key -out ${DIR}/server.crt -subj "/C=UK/ST=Greater London/L=London/O=AMA Network/>echo "<!DOCTYPE html>
<html>
  <head>
    <title>$COLOR</title>
  </head>
  <body style=\"background-color:$COLOR;\">
    <h1>Welcome to $COLOR</h1>
  </body>
</html>" >  /usr/share/nginx/html/index.html

exec /usr/sbin/nginx -g "daemon off;"
