echoerr() { echo "$@" 1>&2; }

options="$1"
folder="$2"
path="$3"

[ -z "$folder" ] && folder=`date +%F`
[ -z "$path" ] && path="../target/dump/"

targetDir="$path/$folder/"
mkdir -p "$targetDir"

sed -r '/(^#)|($\s*^)/ d' | while read typ; do
    ./create-script-entity-type.sh "$typ" "node" "$options" "$folder" "$path"
    ./create-script-entity-type.sh "$typ" "way" "$options" "$folder" "$path"
#    ./create-script-entity-type "$typ" "relation" "$options" "$folder" "$path"
done
            
