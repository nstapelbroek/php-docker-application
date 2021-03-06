FROM tutum/apache-php
MAINTAINER Nico Stapelbroek <nstapelbroek@gmail.com>

ENV ALLOW_OVERRIDE=true
ENV COMPOSER_COMMAND="install -o"
ENV USE_PUBLIC=true
ENV APP_ENV='local'

RUN apt-get update && apt-get install -yq git curl tar php5-sqlite && rm -rf /var/lib/apt/lists/*
RUN composer self-update

ADD bootstrap-application.sh /bootstrap-application.sh
RUN chmod 755 /*.sh

CMD ["/bootstrap-application.sh"]
EXPOSE 80
