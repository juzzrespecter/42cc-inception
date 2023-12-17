FROM alpine:3.18

RUN apk add --no-cache nginx \
            openrc && \
    apk cache clean

RUN mkdir -pv /run/openrc && \
    touch /run/openrc/softlevel && \
    mkdir -pv /etc/nginx/http.d/ && \
    rm -fv /etc/nginx/http.d/default.conf

COPY --chown=nginx:nginx ./conf/nginx.conf /etc/nginx/
COPY --chown=nginx:nginx ./conf/server.conf /etc/nginx/http.d/

CMD ["nginx", "-g", "daemon off;"]