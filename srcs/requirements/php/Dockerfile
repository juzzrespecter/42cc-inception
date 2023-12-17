FROM alpine:3.18

RUN apk add --no-cache php \
            php-fpm \
            wget \
            openrc && \
    apk cache clean && \
    touch /run/openrc/softlevel && \
    mkdir -p /var/data/wordpress/

RUN wget https://wordpress.org/latest.zip -0 /tmp/wordpress.zip && \
    unzip /tmp/wordpress.zip -d /var/data/wordpress/

CMD ["php", "-S", "127.0.0.1:8000"]