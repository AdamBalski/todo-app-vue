FROM nginx

LABEL maintainer="adambalski1@gmail.com"

COPY ./dist/* /usr/share/nginx/html/
WORKDIR /usr/share/nginx/html/

EXPOSE 80/tcp
