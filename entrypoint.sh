#!/bin/sh
envsubst '${BASE_PATH}' < /usr/share/nginx/html/index.html.template > /usr/share/nginx/html/index.html
envsubst '${BASE_PATH}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf
envsubst '${BASE_PATH}' < /etc/nginx/conf.d/default.conf.template
nginx -g 'daemon off;'