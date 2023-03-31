#!/bin/bash

# ./server.sh -p 8888 -o file.tgz


if [[ "$#" -gt 0 ]]; then
    case $1 in
        -p|--port) port="$2";;
        *) echo "Unknown parameter --port: $2"; exit 1 ;;
    esac
    case $3 in
        -o|--out) outfile="$4";; 
        *) echo "Unknown parameter --out: $4"; exit 1 ;;
    esac
fi

echo -e "HTTP/1.1 200 OK\n\n<div>done</div>" | nc -n -l -p $port | cat - > $outfile
