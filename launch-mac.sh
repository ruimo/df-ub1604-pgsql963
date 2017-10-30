#!/bin/sh
docker rm postgres-db
docker run -d -p 5432:5432 -v /private/var/pg_db:/var/pgsql:rw -v /etc/localtime:/etc/localtime:ro --name postgres-db ruimo/df-ub1604-pgsql96x $*
