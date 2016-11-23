FROM alpine:edge

MAINTAINER Nicolas Delaby <ticosax@free.fr>

RUN apk add --update nginx-mod-http-lua ca-certificates

RUN echo -n "daemon off;" >> /etc/nginx/nginx.conf

VOLUME /var/log/nginx
VOLUME /etc/nginx/

EXPOSE 80 443
ENTRYPOINT ["nginx"]
CMD []
