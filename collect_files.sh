#!/bin/bash

input_dir="$1"
output_dir="$2"

find "$input_dir" -type f | while read -r filepath; do
    relative_path="${filepath#$input_dir/}"
    safe_name=$(echo "$relative_path" | tr '/' '_')
    cp "$filepath" "$output_dir/$safe_name"
done