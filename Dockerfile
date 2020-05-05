FROM alpine:latest

MAINTAINER Herald Yu <yuhr123@gmail.com>

RUN apk update && \
        apk add --no-cache --update darkhttpd && \
        rm -rf /var/cache/apk/* \
        mkdir /www

ADD . /www       
#VOLUME [ "/www" ]
EXPOSE 80
ENTRYPOINT [ "/usr/bin/darkhttpd" ]
CMD [ "/www" ]
