FROM alpine:3.10.0

RUN apk update && \
    apk add -U openssl ca-certificates wget unzip

RUN cd /usr/local/share/ca-certificates; \
    wget -q https://github.com/hacdescm/certs/archive/master.zip; \
    unzip -j master.zip; \
    rm master.zip

RUN update-ca-certificates
