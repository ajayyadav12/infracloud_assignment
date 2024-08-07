#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <start_index> <end_index>"
  exit 1
fi
start_index=$1
end_index=$2

output_file="inputFile"

: > "$output_file"

for (( i=start_index; i<=end_index; i++ ))
do
  random_number=$((RANDOM % 1000))
  echo "$i, $random_number" >> "$output_file"
done

echo "File $output_file has been created with the specified content."
