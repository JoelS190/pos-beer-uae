FROM php:8.2-apache

# Actualizamos e instalamos las extensiones necesarias para PDO MySQL
RUN apt-get update && apt-get install -y \
    && docker-php-ext-install pdo pdo_mysql

# Habilitamos el mod_rewrite de Apache (muy útil para tu arquitectura MVC)
RUN a2enmod rewrite
