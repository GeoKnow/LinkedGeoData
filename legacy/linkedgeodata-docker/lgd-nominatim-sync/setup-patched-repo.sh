#!/bin/bash

target="target"

mkdir "$target"
(cd "$target"; git clone https://github.com/openstreetmap/Nominatim || true; cd Nominatim; git checkout "$NOMINATIM_VERSION")

cp setup-patched.php "$target/Nominatim/utils"
cp update-patched.php "$target/Nominatim/utils" 

