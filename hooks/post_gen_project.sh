#!/bin/sh

echo "Running mix deps.get\n"
mix deps.get

echo "\n\nRunning mix deps.compile\n"
mix deps.compile

echo "\n\nAll Done. Enjoy!"
