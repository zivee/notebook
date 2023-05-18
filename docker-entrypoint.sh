#!/usr/bin/env sh
set -eu

if test ! -d /app/node_modules ; then
    cd /app
    echo "install packages at $PWD"
    rm -rf /app/node_modules && rm -f package-lock.json npminstall-debug.log && cnpm install --force
fi
exec "$@" 