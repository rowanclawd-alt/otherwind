#!/bin/bash
# Board sync script - run by n8n to auto-push board changes
# No AI needed - just git operations

cd /Users/rowanalder/Projects/otherwind

# Pull latest
git pull --rebase 2>/dev/null || true

# Check if there are changes
if [[ -n $(git status --porcelain) ]]; then
    git add -A
    git commit -m "auto: board sync $(date +%Y-%m-%d\ %H:%M)"
    git push
    echo "Changes pushed"
else
    echo "No changes"
fi
