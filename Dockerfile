FROM ubuntu/apache2:latest
RUN apt-get update \
    apt-get upgrade -y \
    apt-get install php8.2 \
    apt-get install curl \
    apt-get install php php-curl \
    curl -sS https://getcomposer.org/installer -o composer-setup.php \
    php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
    rm /var/www/html/index.html \
WORKDIR /var/www/html/
COPY ./src/ /var/www/html/
EXPOSE 80
