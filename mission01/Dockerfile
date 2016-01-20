FROM ubuntu

RUN apt-get update && apt-get install -y nginx

ADD index.html /usr/share/nginx/html/index.html

RUN sed -i 's/root/zhasni/' /etc/passwd