#!/usr/bin/env bash
if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <dockerHubUsername>"
  exit 1
fi

USER="$1"

# Use an empty string '' so BSD sed does in-place edits without backups
find . -type f -exec sed -i '' "s/pnavin/${USER}/g" {} \;
