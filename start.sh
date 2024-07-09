#!/bin/bash

set -eu

mkdir -p /app/data/lmdb

if [[ ! -f /app/data/strfry.conf ]]; then
    echo "=> First run, copying config files"
    cp /app/pkg/strfry.conf /app/data/strfry.conf
    cp /app/pkg/chief.json /app/data/chief.json
fi

echo "==> Changing ownership"
chown -R cloudron:cloudron /app/data

echo "==> Starting strfry"
exec /usr/local/bin/gosu cloudron:cloudron /app/code/strfry --config /app/data/strfry.conf relay
