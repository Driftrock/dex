#!/bin/bash

if [ "$1" != "-f" ]; then
  if [ -f /usr/local/bin/dex ]; then
    echo "/usr/local/bin/dex already exists. Run with -f to overwrite"
    exit 1
  fi
fi

cp dex /usr/local/bin
chmod +x /usr/local/bin/dex
