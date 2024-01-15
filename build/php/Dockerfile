FROM php:8.1-apache

# Update DocumentRoot to point to /var/www/html/src
RUN sed -ri -e 's!/var/www/html!/var/www/html/src!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!/var/www/html/src/!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

RUN apt-get update && \
    docker-php-ext-install mysqli pdo pdo_mysql

RUN apt-get install -y git
