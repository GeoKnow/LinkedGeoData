#!/bin/bash

cat ./src/settings/local.php.dist | envsubst > ./src/settings/local.php

rm -rf /var/www/html/*
./src/utils/setup.php --create-website /var/www/html

/usr/sbin/apache2ctl -D "FOREGROUND"

