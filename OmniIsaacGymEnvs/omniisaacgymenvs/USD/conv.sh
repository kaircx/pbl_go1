#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <path_to_file>"
    exit 1
fi

FILE_PATH=$1
TEMP_FILE="${FILE_PATH}"

iconv -f auto -t UTF-8 "$FILE_PATH" -o "$TEMP_FILE"

cat "$TEMP_FILE"

rm "$TEMP_FILE"

