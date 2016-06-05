FROM alpine:3.3

RUN apk add --no-cache curl

COPY gkm-backup /usr/local/bin/
COPY gkm-export /usr/local/bin/
COPY gkm-update /usr/local/bin/
COPY gkm-update-full /usr/local/bin/

COPY root /var/spool/cron/crontabs/root

RUN chmod +x /usr/local/bin/gkm-*

CMD crond -l 2 -f

# Sample docker compose
#
#  gkm-api-cron:
#    container_name: gkm-api-cron
#    image: geokretymap/gkm-api-cron
#
