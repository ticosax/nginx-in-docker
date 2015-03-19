FROM debian:jessie

MAINTAINER Nicolas Delaby <ticosax@free.fr>

RUN apt-get -y update &&\
    apt-get install -y -q nginx nginx-extras &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME /var/log/nginx
VOLUME /etc/nginx/

EXPOSE 80 443
ENTRYPOINT ["nginx"]
CMD []
