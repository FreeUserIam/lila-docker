#!/bin/bash

# Change directory to the parent directory of the repos directory
cd "$(dirname "$0")"
initial_dir=$(pwd)

git pull

# Loop through all directories inside the repos directory
for dir in ./repos/*; do
    # echo "Checking $dir"
    if [[ -d "$dir" ]]; then
        echo "Pulling changes for $dir"
        # Change directory to the repository
        cd "$dir"

        # Perform a git pull
        git pull

        # Change directory back to the parent directory of the repos directory
        cd "$initial_dir"
    fi
done