FROM GeoKretyMap/gkm-api-cron:master

# install cron for slave
COPY root /var/spool/cron/crontabs/root

CMD crond -l 2 -f

# Sample docker compose
#
#  gkm-api-cron:
#    container_name: gkm-api-cron
#    image: geokretymap/gkm-api-cron:slave
#
