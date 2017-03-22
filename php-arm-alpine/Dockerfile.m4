FROM armhf/alpine:3.5

RUN apk upgrade --no-cache && \
    ifelse(PHP_VERSION, 7, include(`php7.m4'))
    ifelse(PHP_VERSION, 7fpm, include(`php7-fpm.m4'))
    rm -rf /var/cache/apk/*

VOLUME ["/srv"]
WORKDIR /srv

# ENTRYPOINT ["/usr/bin/php7"]
# ENTRYPOINT ["/usr/sbin/php-fpm7", "-F"]
