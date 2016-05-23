FROM alpine:3.3

RUN apk add --no-cache curl

COPY gkm-update /usr/bin/gkm-update
COPY gkm-update-full /usr/bin/gkm-update-full

COPY root /var/spool/cron/crontabs/root

RUN chmod +x /usr/bin/gkm-update /usr/bin/gkm-update-full

CMD crond -l 2 -f

# Sample docker compose
#
#  gkm-api-cron:
#    container_name: gkm-api-cron
#    image: geokretymap/gkm-api-cron
#
