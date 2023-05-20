#!/usr/bin/env sh
set -eu

git config --global user.name "zivee" \
    && git config --global user.email "xu@zivee.cn"
if test ! -d /app/node_modules ; then
    cd /app
    echo "[ENTRYPOINT]Install packages at $PWD"
    rm -rf node_modules \
        && rm -f package-lock.json npminstall-debug.log \
        && cnpm install --force
    echo "[ENTRYPOINT]Generating static files with Hexo"
    hexo clean && hexo g
fi
exec "$@" 