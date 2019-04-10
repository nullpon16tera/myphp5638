FROM php:5.6.38-apache
COPY php.ini /usr/local/etc/php/
COPY 000-default.conf /etc/apache2/sites-avilable/000-default.conf
RUN apt-get update \
  && apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng-dev libmcrypt-dev \
  && docker-php-ext-install pdo_mysql mysqli mbstring gd iconv mcrypt
RUN a2enmod rewrite