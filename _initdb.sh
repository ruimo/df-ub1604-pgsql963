#!/bin/sh
# Run this script through client.sh at the first time you launch pgsql image.
mkdir -p /var/pg_db
chown -R postgres /var/pgsql
su - postgres -s /bin/bash -c "/usr/local/pgsql/bin/initdb -D /var/pgsql/data"
sed -i -e "s;^#log_destination\s*=\s*.*$;log_destination = 'syslog';" \
       -e "s;^#port\s=.*;port = 5432;" \
       -e "s;^#listen_address.*;listen_addresses = '0.0.0.0';" \
  /var/pgsql/data/postgresql.conf
echo "host     all             all             172.16.0.0/12           trust" >> /var/pgsql/data/pg_hba.conf
echo "host     all             all             192.168.0.0/16          trust" >> /var/pgsql/data/pg_hba.conf
