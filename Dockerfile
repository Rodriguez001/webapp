FROM ubuntu:18.04
MAINTAINER Rodriguez003 (kamgaingrodrigue3@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80
# ADD static-website-example/ /var/www/html/
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/cloudacademy/static-website-example.git /var/www/html/
ENTRYPOINT ["nginx", "-g", "daemon off;"]