FROM php:8.2-fpm-alpine as app

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin


RUN set -eux; \
    install-php-extensions pdo pdo_mysql;

#RUN docker-php-ext-install pdo pdo_mysql

# set super user at all times
ENV COMPOSER_ALLOW_SUPERUSER=1

# get composer
COPY --from=composer:2.4 /usr/bin/composer /usr/bin/composer

COPY ./app/composer.* ./

# install
RUN composer install --prefer-dist --no-dev --no-scripts --no-progress --no-interaction

# copy app to workdir

COPY ./app .-

# autoload dump
RUN composer dump-autoload --optimize


# Dev image
# This stage is meant to be target-built into a separate image
# https://docs.docker.com/develop/develop-images/multistage-build/#stop-at-a-specific-build-stage
# https://docs.docker.com/compose/compose-file/#target
FROM app as app_dev

ENV XDEBUG_MODE=off

COPY ./php/conf.d/xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

RUN set -eux; \
    install-php-extensions xdebug

