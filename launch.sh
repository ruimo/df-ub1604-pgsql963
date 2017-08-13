#!/bin/sh
docker run -d -p 5433:5432 -v /var/pg_db:/var/pgsql:rw -v /etc/localtime:/etc/localtime:ro --name postgres-db ruimo/df-ub1604-pgsql96x $*
