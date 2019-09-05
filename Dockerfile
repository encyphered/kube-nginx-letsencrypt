FROM alpine:3.9

RUN apk update && apk add bash curl jq python certbot
RUN mkdir /etc/letsencrypt

CMD ["/entrypoint.sh"]

COPY secret-patch-template.json /
COPY deployment-patch-template.json /
COPY entrypoint.sh /
