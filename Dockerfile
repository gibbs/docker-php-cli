ARG DEBIAN_CODENAME=buster
FROM docker.io/bitnami/minideb:${DEBIAN_CODENAME}
LABEL maintainer "Dan Gibbs <dev@dangibbs.co.uk>"

ARG DEBIAN_CODENAME=buster
ARG PHP_PACKAGES="composer php-cli php-gd php-imagick php-mysql"
ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HTACCESS_PROTECT 0
ENV COMPOSER_HOME /data/

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# hadolint ignore=DL3008
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections; \
    apt-get update -qq && apt-get upgrade -y; \
    apt-get install -y --no-install-recommends \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg2 \
        zip \
        unzip; \
    curl -L https://packages.sury.org/php/apt.gpg | apt-key add -; \
    echo "deb https://packages.sury.org/php/ ${DEBIAN_CODENAME} main" | \
        tee /etc/apt/sources.list.d/php.list; \
    apt-get update -qq; \
    apt-get install -y --no-install-recommends ${PHP_PACKAGES}; \
    curl -sS https://getcomposer.org/installer | \
        php -- --install-dir=/usr/local/bin --filename=composer; \
    apt-get autoremove -y;\
    apt-get clean -y; \
    apt-get autoclean -y; \
    rm -rf \
        /var/lib/apt/lists/* \
        /var/cache/debconf/*-old \
        /usr/share/man/* \
        /usr/share/doc/**/*.gz \
        /usr/share/locale/

VOLUME ["/data"]
WORKDIR /data

ENTRYPOINT ["php"]
CMD ["-v"]
