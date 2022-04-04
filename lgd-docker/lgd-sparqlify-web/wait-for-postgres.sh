#!/bin/bash
# wait-for-postgres.sh

# Source: https://docs.docker.com/compose/startup-order/

set -e
  
cmd="$@"
  
until PGPASSWORD="$DB_PASS" psql -h "$DB_HOST" -U "$DB_USER" -c '\q'; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done
  
>&2 echo "Postgres is up - executing command"
exec $cmd


