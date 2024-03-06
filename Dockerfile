FROM ubuntu/apache2:latest
RUN apt-get update && apt-get upgrade -y && rm /var/www/html/index.html && ls /var/www/html/
WORKDIR /var/www/html/
COPY ./src/ /var/www/html/
EXPOSE 80
