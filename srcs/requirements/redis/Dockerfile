FROM alpine:3.18

RUN apk add --no-cache redis && \
        apk cache clean

CMD ["redis-server"]