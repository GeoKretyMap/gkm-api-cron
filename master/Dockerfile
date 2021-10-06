FROM alpine:3.13

RUN apk add --no-cache curl

COPY bin/gkm-* /usr/local/bin/

COPY root /var/spool/cron/crontabs/root

RUN chmod +x /usr/local/bin/gkm-*

CMD crond -l 2 -f

# Sample docker compose
#
#  gkm-api-cron:
#    container_name: gkm-api-cron
#    image: geokretymap/gkm-api-cron:master
#
