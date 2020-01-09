FROM php:7.4-fpm
LABEL maintainer="hello@samnela.com"
RUN apt-get update && apt-get install -y librabbitmq-dev libssh-dev libicu-dev \
    git unzip vim  python-setuptools supervisor  \
    libonig-dev libcurl4-openssl-dev uuid-dev \
    && pecl install amqp uuid

RUN easy_install supervisor

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN rm /etc/localtime
RUN ln -s /usr/share/zoneinfo/Europe/Paris /etc/localtime
RUN "date"

# Type docker-php-ext-install to see available extensions
RUN docker-php-ext-install pdo pdo_mysql mbstring bcmath sockets pcntl


WORKDIR /var/www/
