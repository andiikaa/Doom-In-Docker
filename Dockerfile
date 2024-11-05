FROM nginx:stable-alpine

COPY doom/public /usr/share/nginx/html
COPY nginx.conf.template /etc/nginx/conf.d/default.conf.template

WORKDIR /app
COPY entrypoint.sh .

RUN chmod +x entrypoint.sh

EXPOSE 8080

ENTRYPOINT [ "/app/entrypoint.sh" ]