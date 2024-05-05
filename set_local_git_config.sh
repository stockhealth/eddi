#!/bin/bash

# Check if user provided arguments
if [ $# -ne 3 ]; then
    echo "Usage: $0 <user.name> <user.email> <github.token>"
    exit 1
fi

# Set local configuration
git config user.name "$1"
git config user.email "$2"
export GITHUB_TOKEN="$3"

echo "Local Git configuration set:"
echo "user.name = $1"
echo "user.email = $2"
echo "GitHub Token = $3"

