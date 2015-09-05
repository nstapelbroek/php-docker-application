#!/bin/bash
if [ "$(ls -A /app)" ]; then
     echo '/app folder contains files, aborting initialisation'
else
  git clone $APPLICATION_VCS ./
  composer install -o
fi

exec run.sh
