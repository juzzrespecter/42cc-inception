FROM alpine:3.18

RUN apk add --no-cache php \
            php-fpm \
            wget \
            openrc && \
    apk cache clean && \
    mkdir -p /run/openrc && \
    touch /run/openrc/softlevel && \
    mkdir -p /var/data/wordpress/

RUN wget -0 /tmp/latest.zip https://wordpress.org/latest.zip && \
    unzip /tmp/latest.zip -d /var/data/wordpress/

CMD ["php", "-S", "127.0.0.1:8000"]