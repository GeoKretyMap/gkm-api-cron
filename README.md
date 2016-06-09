# geokretymap-cron

The cron are responsible for maintaining database up to date and perfom system tasks
such as export to xml or backups.

Database can be updated:
* with reference to upstream geokrety.org (export2.php & crawling)
* by consulting a master node (some sort of pull replication)

Use the image tagged as `slave` or `master`.


Running as a slave, need a master node. The master node url could be defined using
an environment variable on the `gkm-api-basex` container. The default value is 
`api.geokretymap.org`.
