#!/bin/bash
if [ -d .git ]; then
     echo "$(pwd) folder is allready a git repository, cloning aborted"
else
  rm $(pwd)/.gitkeep
  git clone $APPLICATION_VCS $(pwd)
fi

if [ "x$COMPOSER_COMMAND" != "x" ]; then
  composer $COMPOSER_COMMAND
fi

if [ "$USE_PUBLIC" != "false" ]; then
  ln -sfn $(pwd)/public/ /var/www/html
fi

exec /run.sh
