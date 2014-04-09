FROM debian:sid

MAINTAINER Nicolas Delaby <nicolas.delaby@ezeep.com>

RUN apt-get -y update && apt-get install -y -q nginx nginx-extras
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME /var/log/nginx
VOLUME /etc/nginx/

EXPOSE 80 443
ENTRYPOINT ["nginx"]
