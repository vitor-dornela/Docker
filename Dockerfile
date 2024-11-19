FROM php:5.6-apache # Base image for PHP 5.6 with Apache

RUN docker-php-ext-install mysqli # Install MySQLi extension to connect to MySQL database