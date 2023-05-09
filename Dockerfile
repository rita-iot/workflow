FROM php:8.1.3-fpm
RUN apt-get update \
    && apt install -y libmagickwand-dev \
    && apt install -y git \
    && apt install -y curl \
    && apt install -y vim \
    && pecl install imagick \
    && docker-php-ext-install pdo \
    && docker-php-ext-install openssl \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install fileinfo \
    && docker-php-ext-install exif \
    && docker-php-ext-install gd \
    && docker-php-ext-install session \
    && docker-php-ext-install xml \
    && echo "output_buffering = 4096" > /usr/local/etc/php/conf.d/php-fpm.ini \
    && echo "date.timezone = PRC" >> /usr/local/etc/php/conf.d/php-fpm.ini