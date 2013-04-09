#!/bin/bash

#
# Replace the OGC geo-datatypes with those of Virtuoso.
# In near to mid future, Virtuoso will support the OGC datatypes too.
#

sed -r 's|http://www.opengis.net/ont/geosparql#wktLiteral|http://www.openlinksw.com/schemas/virtrdf#Geometry|g'

