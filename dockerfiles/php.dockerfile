FROM php:8.1-fpm-alpine3.16

WORKDIR /var/www/html

COPY src .

RUN docker-php-ext-install pdo pdo_mysql

RUN chown -R www-data:www-data /var/www/html 
#no CMD or ENTRYPOINT command, because php base image has this command 
#therefore it will be executed and it will invoke php interpreter