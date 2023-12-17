FROM alpine:3.18

RUN apk add --no-cache mariadb \
            openrc && \
    apk cache clean

CMD ["mysqld"]