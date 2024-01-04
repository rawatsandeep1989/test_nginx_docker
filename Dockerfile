# Pull OS on which nginx is to be installed. #This is just a commentt
ARG OS_VERSION=latest
ARG NGINX_VERSION=latest
FROM ubuntu:${OS_VERSION}

# Dockerfile Maintainer
MAINTAINER Sandeep Singh Rawat "rawatsandeep1989@gmail.com"

# Install nginx and adjust nginx config to stay in foreground
RUN apt-get update && apt-get install --no-install-recommends -y nginx 

#mkdir /var/www/html if doesn't exist
RUN mkdir -p /var/www/html/ 

#COPY files to docker container
COPY index.html /var/www/html/

#start nginx server
CMD ["nginx", "-g", "daemon off;"]


#export port 8080 of it
EXPOSE 80
