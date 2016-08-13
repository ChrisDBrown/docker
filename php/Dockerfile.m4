FROM php:ifdef(`IMAGE_TAG',IMAGE_TAG,7.1-cli)

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
        zlib1g-dev \
        libicu-dev \
        libxml2-dev \
        g++ \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-configure intl \
    && docker-php-ext-install -j$(nproc) gd intl mcrypt iconv bcmath zip soap \
    && apt-get autoclean -y && apt-get --purge remove g++ -y \
    && rm -rf /tmp/*

ifelse(COMPOSER, true, include(`composer.m4'))
