#!/bin/bash
mvn clean install
cd linkedgeodata-debian
mvn clean install
cd target
sudo dpkg -i `ls linkedgeodata*.deb`

