#!/bin/bash

DIRECTORY="../workbench_instances/users_tfvars"  # Replace with your directory

# Start the JSON object
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