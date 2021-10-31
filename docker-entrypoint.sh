#!/bin/bash

set -eu

if [ "$RAILS_ENV" = 'localhost' ]; then
  PID_FILE="/app/tmp/pids/server.pid"

  if [ -f ${PID_FILE} ]; then
    rm ${PID_FILE}
  fi
fi

echo "$@"
exec "$@"
