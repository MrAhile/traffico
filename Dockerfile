FROM ubuntu
MAINTAINER williams AHILE (williams14.ahile@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80
#ADD static-website-example/ /var/www/html/
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/MrAhile/traffico.git /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]