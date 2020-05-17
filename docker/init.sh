#!/usr/bin/env bash

# Ensure /.composer exists and is writable
if [ ! -d /.composer ]; then
    mkdir /.composer
fi

chmod -R ugo+rw /.composer

# Run a command or start supervisor.d
if [ $# -gt 0 ];then
    exec "$@"
else
    /usr/bin/supervisord
fi
