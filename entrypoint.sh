#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /debug-app/tmp/pids/server.pid

exec "$@"