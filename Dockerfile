FROM alpine:3.19.1

RUN apk add socat
RUN apk add openssl

RUN mkdir /certs
RUN openssl req -x509 -newkey rsa:4096 \
  -keyout /certs/server.key -out /certs/server.crt \
  -sha256 -days 36500 -nodes \
  -subj "/C=TW/ST=Taiwan/L=Taipei/O=localhost/OU=localhost/CN=localhost"

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
