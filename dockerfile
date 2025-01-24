# Dockerfile - Ubuntu update, Apache2 install and run Apache on start

# Base Platform
FROM ubuntu

# Work directory on the container
WORKDIR /app

# Execute commands
RUN apt-get update && \
apt-get install apache2 -y 

COPY website/ /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND 
EXPOSE 80

