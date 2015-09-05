#!/bin/bash
if [ "$(ls -A $(pwd))" ]; then
     echo '$(pwd) folder contains files, aborting initialisation'
     exec /run.sh
     exit 0
fi

git clone $APPLICATION_VCS $(pwd)

if [ "x$COMPOSER_COMMAND" != "x" ]; then
  composer $COMPOSER_COMMAND
fi

exec /run.sh
