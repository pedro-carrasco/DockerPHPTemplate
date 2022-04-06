FROM php:8.1-fpm-alpine

RUN apk add --update --no-cache \
    git \
    curl \
    zip \
    vim \
    unzip \
    libpq && \
    apk add --no-cache --virtual .build-deps \
        $PHPIZE_DEPS \
        postgresql-dev \
        g++ && \
    docker-php-ext-install pdo_pgsql pgsql && \
    apk del .build-deps

WORKDIR /var/www
