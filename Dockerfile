FROM ubuntu/apache2:latest

EXPOSE 80

CMD [“apache2ctl”, “-D”, “FOREGROUND”]