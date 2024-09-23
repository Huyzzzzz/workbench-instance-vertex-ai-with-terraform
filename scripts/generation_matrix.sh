#!/bin/bash

DIRECTORY="../src/workbench_instances/users_tfvars"  # Replace with your directory

output='{"user_config": ['

for file in "$DIRECTORY"/*; do
  filename=$(basename "$file")
  if [[ -n "$output" && "$output" != '{"user_config": [' ]]; then
    output+=","
  fi
  output+="\"$filename\""
done

output+=']}'

echo "$output"