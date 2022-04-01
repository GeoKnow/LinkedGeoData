#!/bin/bash

set -aeu

: ${DB_DSN_PDO:=${NOMINATIM_DATABASE_DSN}}
: ${NOMINATIM_DATABASE_DSN:=${DB_DSN_PDO}}

export NOMINATIM_USERHOME=/srv/nominatim
export NOMINATIM_PROJECT_DIR="$NOMINATIM_USERHOME/nominatim-project"

cp -rf /lgd/nominatim/tokenizer "$NOMINATIM_PROJECT_DIR"
./nominatim refresh --website --project-dir "$NOMINATIM_PROJECT_DIR"

/usr/sbin/apache2ctl -D "FOREGROUND"

