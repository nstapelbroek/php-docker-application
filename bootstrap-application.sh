#!/bin/bash
if [ "x$COMPOSER_COMMAND" != "x" ]; then
  composer $COMPOSER_COMMAND
fi

if [ "$USE_PUBLIC" == "true" ]; then
  echo 'symlinking public folder'
  ln -sfn $(pwd)/public/ /var/www/html
fi

exec /run.sh
