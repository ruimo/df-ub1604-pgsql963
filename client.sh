#!/bin/sh
docker run --rm --link postgres-pgdb:postgres -v $HOME:/var/home:rw -v /var/pgsql-db:/var/pgsql:rw -i -t ruimo/df-ub1604-pgsql96x /bin/bash --rcfile /profile -i
