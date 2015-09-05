#!/bin/bash
if [ "$(ls -A $(pwd))" ]; then
     echo '$(pwd) folder contains files, aborting initialisation'
     exec /run.sh
     exit 0
fi

if [ "x$GIT_COMMAND" != "x" ]; then
  git $GIT_COMMAND
fi

if [ "x$COMPOSER_COMMAND" != "x" ]; then
  composer $COMPOSER_COMMAND
fi

exec /run.sh