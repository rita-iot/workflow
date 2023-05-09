FROM php:8.1.3-fpm
RUN apt-get update \
    && apt install -y \
    libmagickwand-dev \
    git \
    zip \