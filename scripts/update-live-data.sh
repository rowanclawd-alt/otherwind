#!/bin/bash
# Update board-live.json with live system data
# Run by n8n every 5 minutes - no AI needed

cd /Users/rowanalder/Projects/otherwind

NOW=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

# Check n8n health
N8N_STATUS="unknown"
if curl -s --max-time 5 http://localhost:5678/healthz | grep -q "ok"; then
    N8N_STATUS="healthy"
else
    N8N_STATUS="down"
fi

# Check otherwind.xyz
SITE_STATUS="unknown"
if curl -s --max-time 10 -o /dev/null -w "%{http_code}" https://otherwind.xyz | grep -q "200"; then
    SITE_STATUS="up"
else
    SITE_STATUS="down"
fi

# Get last git commit
LAST_COMMIT=$(git log -1 --format="%s" 2>/dev/null || echo "")
LAST_COMMIT_TIME=$(git log -1 --format="%cI" 2>/dev/null || echo "")

# Get system uptime
UPTIME=$(uptime | sed 's/.*up //' | sed 's/,.*//')

# Write JSON
cat > board-live.json << EOF
{
  "updated": "$NOW",
  "system": {
    "uptime": "$UPTIME",
    "n8n": "$N8N_STATUS",
    "lastSync": "$NOW"
  },
  "github": {
    "lastCommit": "$LAST_COMMIT",
    "lastCommitTime": "$LAST_COMMIT_TIME"
  },
  "sites": {
    "otherwind": { "status": "$SITE_STATUS", "checkedAt": "$NOW" }
  }
}
EOF

echo "Live data updated at $NOW"
