FROM ubuntu
RUN apt-get update
RUN apt-get install apache2 -y 
COPY index.html /var/www/html/
COPY images/ /var/www/html/images/
ENTRYPOINT apachectl -D FOREGROUND 
EXPOSE 80
