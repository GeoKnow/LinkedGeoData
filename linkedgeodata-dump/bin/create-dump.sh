echoerr() { echo "$@" 1>&2; }

list="$1"
options="$2"
parallel="$3"
folder="$4"
path="$5"

# TODO Seems like this kind of xargs parallelism doesn't work :/
[ -z "$parallel" ] && parallel="1"

script=`mktemp`
echoerr "Created script at: $script" 
echoerr "Parallel: $parallel"

cat "$list" | ./create-script-dump.sh "$options" "$folder" "$path" > "$script"
#chmod +x "$script"

xargs -0 -a "$script" -P "$parallel" -n 1 -I@ sh -c "@"
