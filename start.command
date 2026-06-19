#!/bin/bash
cd "$(dirname "$0")"

# Kill anything on port 3000
kill $(lsof -ti :3000) 2>/dev/null
sleep 1

# Start server
python3 -m http.server 3000 &
sleep 1

# Open in Chrome
open -a "Google Chrome" "http://localhost:3000/manuflow.html"
open -a "Google Chrome" "http://localhost:3000/dashboard.html"

echo "Manuflow is running at http://localhost:3000"
