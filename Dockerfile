# Base image for PHP 5.6 with Apache
FROM php:5.6-apache 

# Install MySQLi extension to connect to MySQL database
RUN docker-php-ext-install mysqli 