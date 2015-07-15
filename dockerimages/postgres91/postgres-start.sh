#!/bin/bash

if [[ ! "$(mount)" =~ \ /var/lib/pgsql/data\ type ]]
then
    echo "There is no mounted volume"
else
    if [ -z "$(ls -A /var/lib/pgsql/data)" ]; then
      /usr/pgsql-9.1/bin/initdb -D /var/lib/pgsql/data
      echo "host all all 172.17.42.1/32 trust" >> /var/lib/pgsql/data/pg_hba.conf
      echo "listen_addresses='*'" >> /var/lib/pgsql/data/postgresql.conf
    fi
    /usr/pgsql-9.1/bin/postgres -D /var/lib/pgsql/data
fi
