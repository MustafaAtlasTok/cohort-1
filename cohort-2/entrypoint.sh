#!/usr/bin/env bash
# Show which APP_NAME we’re using, then exec the Python app
echo "➡️ Starting Flask with APP_NAME=${APP_NAME}"
exec python app.py
