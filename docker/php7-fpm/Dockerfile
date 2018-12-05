FROM php:7.2-fpm
LABEL maintainer="hello@samnela.com"
RUN apt-get update && apt-get install -y librabbitmq-dev libssh-dev \
    git  unzip vim  python-setuptools supervisor \
    && pecl install amqp

RUN easy_install supervisor

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer --version

RUN rm /etc/localtime
RUN ln -s /usr/share/zoneinfo/Europe/Paris /etc/localtime
RUN "date"

# Type docker-php-ext-install to see available extensions
RUN docker-php-ext-install pdo pdo_mysql mbstring bcmath sockets pcntl


WORKDIR /var/www/
