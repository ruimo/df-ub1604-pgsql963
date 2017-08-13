#!/bin/sh
# Run this script at the first time you launch pgsql image.
docker run -u 0 --rm -v $HOME:/var/home:rw -v /var/pg_db:/var/pgsql:rw ruimo/df-ub1604-pgsql96x /initdb.sh
