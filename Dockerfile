FROM tutum/apache-php
MAINTAINER Nico Stapelbroek <nstapelbroek@gmail.com>

ENV ALLOW_OVERRIDE=true
ENV APPLICATION_VCS=https://github.com/zendframework/ZendSkeletonApplication.git
ENV COMPOSER_COMMAND="install -o"

RUN apt-get update && apt-get install -yq git curl tar && rm -rf /var/lib/apt/lists/*

ADD zf2-skeleton-init.sh /zf2-skeleton-init.sh
RUN chmod 755 /*.sh

RUN rm -rf /app && mkdir /app
WORKDIR /app

CMD ["/zf2-skeleton-init.sh"]
