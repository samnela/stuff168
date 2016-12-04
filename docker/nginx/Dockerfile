FROM debian:jessie

MAINTAINER Vincent Composieux <vincent.composieux@gmail.com>

#RUN apk add --update nginx
#RUN rm -rf /var/cache/apk/* && rm -rf /tmp/*
RUN apt-get update && apt-get install -y \
    nginx
ADD nginx.conf /etc/nginx/
ADD symfony.conf /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/symfony.conf /etc/nginx/sites-enabled/symfony
RUN rm /etc/nginx/sites-enabled/default
RUN rm /etc/nginx/sites-available/default


RUN echo "upstream php-upstream { server php:9000; }" > /etc/nginx/conf.d/upstream.conf

#RUN adduser -D -g '' -G www-data www-data

RUN usermod -u 1000 www-data

CMD ["nginx"]

EXPOSE 80
EXPOSE 443
