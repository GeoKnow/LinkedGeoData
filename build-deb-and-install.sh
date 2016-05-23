#!/bin/bash
mvn clean install
cd linkedgeodata-debian
mvn clean install deb:package
cd target
sudo dpkg -i `ls linkedgeodata*.deb`

