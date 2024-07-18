#!/bin/bash

# to stop on first error
set -e

# Delete older .pyc files (optional)
# find . -type d \( -name env -o -name venv  \) -prune -false -o -name "*.pyc" -exec rm -rf {} \;

# Run required migrations (if applicable)
export FLASK_APP=core/server.py
# flask db init -d core/migrations/
# flask db migrate -m "Initial migration." -d core/migrations/
# flask db upgrade -d core/migrations/

# Run server using Waitress
waitress-serve --listen 127.0.0.1:5000 core.server:app

