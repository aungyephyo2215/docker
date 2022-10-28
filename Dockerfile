FROM ubuntu:latest
LABEL "Author"=" AKM"
ENV DEBIAN_FRONTEND=nointeractive 
RUN apt update && apt install git -y < dev/null
RUN apt  install apache2 -y  
CMD {"/usr/sbin/apache2ctl", "-D" , "FOREGROUND"}
EXPOSE 80
WORKDIR /var/www/html
VOLUME /var/log/apache2
ADD webdash.tar.gz /var/www/html
#COPY webdash.tar.gz /var/www/html
