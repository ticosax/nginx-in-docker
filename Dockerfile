FROM jayofdoom/docker-ubuntu-14.04

MAINTAINER Nicolas Delaby <nicolas.delaby@ezeep.com>

RUN apt-get -y update
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
RUN apt-get -y update

RUN apt-get install -y -q nginx nginx-extras
VOLUME /var/log/nginx
VOLUME /etc/nginx/

EXPOSE 80 443
ENTRYPOINT ["nginx"]
