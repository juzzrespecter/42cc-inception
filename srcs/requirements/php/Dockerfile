FROM alpine:3.18

RUN apk add --no-cache php \
            php-fpm \
            wget \
            curl \
            openrc && \
    apk cache clean && \
    mkdir -p /run/openrc && \
    touch /run/openrc/softlevel && \
    mkdir -p /var/data/wordpress/

RUN wget -0 /tmp/latest.zip https://wordpress.org/latest.zip && \
    unzip /tmp/latest.zip -d /var/data/wordpress/ && \
    rm -fv /var/data/wordpress/wp-config-sample.php

COPY ./conf/wp-config.php /var/data/wordpress/wp-config.php

RUN curl https://api.wordpress.org/secret-key/1.1/salt/ >> /var/data/wordpress/wp-config.php

CMD ["php", "-S", "127.0.0.1:8000"]