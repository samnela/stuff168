FROM debian:stretch-slim

LABEL maintainer="hello@samnela.com"

RUN apt-get update && apt-get install -y \
    nginx
COPY nginx.conf /etc/nginx/
COPY symfony.conf /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/symfony.conf /etc/nginx/sites-enabled/symfony
RUN rm /etc/nginx/sites-enabled/default
RUN rm /etc/nginx/sites-available/default

RUN echo "upstream php-upstream { php:9000; }" > /etc/nginx/conf.d/upstream.conf


RUN usermod -u 1000 www-data

CMD ["nginx"]

EXPOSE 80 443
