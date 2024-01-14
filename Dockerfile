# Use an official PHP runtime as a parent image
FROM php:7.4-apache

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Copy the contents of the src directory into the container at /var/www/html
COPY src/ /var/www/html

# Install any dependencies your application needs
# For example, if you are using MySQL, you might need to install the MySQL client and the MySQLi extension
RUN apt-get update && \
    apt-get install -y default-mysql-client && \
    docker-php-ext-install mysqli && \
    docker-php-ext-enable mysqli

# Configure Apache to point to the /var/www/html/src folder
RUN sed -i -e 's!/var/www/html!/var/www/html/src!g' /etc/apache2/sites-available/000-default.conf

# AllowOverride to enable .htaccess
RUN sed -i -e 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf

# Expose port 80 to the outside world
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
