FROM alpine:3.18

RUN apk add --no-cache mariadb \
            mysql-client && \
            openrc && \
    apk cache clean && \
    mkdir -p /run/openrc && \
    touch /run/openrc/softlevel && \
    rc-service mariadb start

CMD ["mysqld"]