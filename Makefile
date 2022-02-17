BUILD_NAME   := genv/php-cli
BUILD_DATE   := $(shell date -u "+%Y%m%dT%H%M%SZ")
PHP_VERSIONS := 5.6 7.0 7.1 7.2 7.3 7.4 8.0 8.1

build: build-php56 build-php70 build-php71 build-php72 build-php73 build-php74 build-php80 build-php81 push
.PHONY: build

build-php56:
	docker build \
		--no-cache \
		--build-arg DEBIAN_CODENAME=stretch \
		--build-arg PHP_PACKAGES="\
			php5.6-bcmath \
			php5.6-cli \
			php5.6-common \
			php5.6-curl \
			php5.6-gd \
			php5.6-imagick \
			php5.6-intl \
			php5.6-json \
			php5.6-ldap \
			php5.6-lz4 \
			php5.6-mbstring \
			php5.6-mcrypt \
			php5.6-mysql \
			php5.6-oauth \
			php5.6-pgsql \
			php5.6-pspell \
			php5.6-readline \
			php5.6-redis \
			php5.6-soap \
			php5.6-solr \
			php5.6-sqlite3 \
			php5.6-xml \
			php5.6-yaml \
			php5.6-zip" \
		-t $(BUILD_NAME):5.6 \
		-t $(BUILD_NAME):5.6-$(BUILD_DATE) \
	.;
.PHONY: build-php56
.SILENT: build-php56

build-php70:
	docker build \
		--no-cache \
		--build-arg DEBIAN_CODENAME=stretch \
		--build-arg PHP_PACKAGES="\
			php7.0-bz2 \
			php7.0-cli \
			php7.0-common \
			php7.0-cli \
			php7.0-decimal \
			php7.0-gd \
			php7.0-gd \
			php7.0-imap \
			php7.0-inotify \
			php7.0-intl \
			php7.0-json \
			php7.0-json \
			php7.0-lz4 \
			php7.0-mbstring \
			php7.0-mcrypt \
			php7.0-mysql \
			php7.0-oauth \
			php7.0-pgsql \
			php7.0-pspell \
			php7.0-psr \
			php7.0-readline \
			php7.0-redis \
			php7.0-sqlite3 \
			php7.0-uuid \
			php7.0-xml \
			php7.0-xmlrpc \
			php7.0-xsl \
			php7.0-yaml \
			php7.0-zip" \
		-t $(BUILD_NAME):7.0 \
		-t $(BUILD_NAME):7.0-$(BUILD_DATE) \
	.;
.PHONY: build-php70
.SILENT: build-php70

build-php71:
	docker build \
		--no-cache \
		--build-arg DEBIAN_CODENAME=stretch \
		--build-arg PHP_PACKAGES="\
			php7.1-bz2 \
			php7.1-cli \
			php7.1-common \
			php7.1-cli \
			php7.1-decimal \
			php7.1-gd \
			php7.1-gd \
			php7.1-imap \
			php7.1-inotify \
			php7.1-intl \
			php7.1-json \
			php7.1-json \
			php7.1-lz4 \
			php7.1-mbstring \
			php7.1-mcrypt \
			php7.1-mysql \
			php7.1-oauth \
			php7.1-pgsql \
			php7.1-pspell \
			php7.1-psr \
			php7.1-readline \
			php7.1-redis \
			php7.1-soap \
			php7.1-sqlite3 \
			php7.1-uuid \
			php7.1-xml \
			php7.1-xmlrpc \
			php7.1-xsl \
			php7.1-yaml \
			php7.1-zip" \
		-t $(BUILD_NAME):7.1 \
		-t $(BUILD_NAME):7.1-$(BUILD_DATE) \
	.;
.PHONY: build-php71
.SILENT: build-php71

build-php72:
	docker build \
		--no-cache \
		--build-arg DEBIAN_CODENAME=stretch \
		--build-arg PHP_PACKAGES="\
			php7.2-bz2 \
			php7.2-cli \
			php7.2-common \
			php7.2-cli \
			php7.2-decimal \
			php7.2-gd \
			php7.2-gd \
			php7.2-imap \
			php7.2-inotify \
			php7.2-intl \
			php7.2-json \
			php7.2-json \
			php7.2-lz4 \
			php7.2-mbstring \
			php7.2-mcrypt \
			php7.2-mysql \
			php7.2-oauth \
			php7.2-pgsql \
			php7.2-pspell \
			php7.2-psr \
			php7.2-readline \
			php7.2-redis \
			php7.2-soap \
			php7.2-sqlite3 \
			php7.2-uuid \
			php7.2-xml \
			php7.2-xmlrpc \
			php7.2-xsl \
			php7.2-yaml \
			php7.2-zip" \
		-t $(BUILD_NAME):7.2 \
		-t $(BUILD_NAME):7.2-$(BUILD_DATE) \
	.;
.PHONY: build-php72
.SILENT: build-php72

build-php73:
	docker build \
		--no-cache \
		--build-arg DEBIAN_CODENAME=buster \
		--build-arg PHP_PACKAGES="\
			php7.3-bz2 \
			php7.3-cli \
			php7.3-common \
			php7.3-cli \
			php7.3-decimal \
			php7.3-gd \
			php7.3-gd \
			php7.3-imap \
			php7.3-inotify \
			php7.3-intl \
			php7.3-json \
			php7.3-json \
			php7.3-lz4 \
			php7.3-mbstring \
			php7.3-mcrypt \
			php7.3-mysql \
			php7.3-oauth \
			php7.3-pgsql \
			php7.3-pspell \
			php7.3-psr \
			php7.3-readline \
			php7.3-redis \
			php7.3-soap \
			php7.3-sqlite3 \
			php7.3-uuid \
			php7.3-xml \
			php7.3-xmlrpc \
			php7.3-xsl \
			php7.3-yaml \
			php7.3-zip" \
		-t $(BUILD_NAME):7.3 \
		-t $(BUILD_NAME):7.3-$(BUILD_DATE) \
	.;
.PHONY: build-php73
.SILENT: build-php73

build-php74:
	docker build \
		--no-cache \
		--build-arg DEBIAN_CODENAME=buster \
		--build-arg PHP_PACKAGES="\
			php7.4-bz2 \
			php7.4-cli \
			php7.4-common \
			php7.4-cli \
			php7.4-decimal \
			php7.4-gd \
			php7.4-gd \
			php7.4-imap \
			php7.4-inotify \
			php7.4-intl \
			php7.4-json \
			php7.4-json \
			php7.4-lz4 \
			php7.4-mbstring \
			php7.4-mcrypt \
			php7.4-mysql \
			php7.4-oauth \
			php7.4-pgsql \
			php7.4-pspell \
			php7.4-psr \
			php7.4-readline \
			php7.4-redis \
			php7.4-soap \
			php7.4-sqlite3 \
			php7.4-uuid \
			php7.4-xml \
			php7.4-xmlrpc \
			php7.4-xsl \
			php7.4-yaml \
			php7.4-zip" \
		-t $(BUILD_NAME):7.4 \
		-t $(BUILD_NAME):7.4-$(BUILD_DATE) \
	.;
.PHONY: build-php74
.SILENT: build-php74

build-php80:
	docker build \
		--no-cache \
		--build-arg DEBIAN_CODENAME=buster \
		--build-arg PHP_PACKAGES="\
			php8.0-bcmath \
			php8.0-bcmath \
			php8.0-cli \
			php8.0-common \
			php8.0-curl \
			php8.0-decimal \
			php8.0-gd \
			php8.0-imagick \
			php8.0-imap \
			php8.0-inotify \
			php8.0-inotify \
			php8.0-ldap \
			php8.0-lz4 \
			php8.0-mbstring \
			php8.0-mcrypt \
			php8.0-mcrypt \
			php8.0-oauth \
			php8.0-pcov \
			php8.0-pgsql \
			php8.0-pgsql \
			php8.0-psr \
			php8.0-readline \
			php8.0-redis \
			php8.0-rrd \
			php8.0-soap \
			php8.0-sqlite3 \
			php8.0-uuid \
			php8.0-xml \
			php8.0-xmlrpc \
			php8.0-xsl \
			php8.0-yaml \
			php8.0-zip" \
		-t $(BUILD_NAME):8.0 \
		-t $(BUILD_NAME):8.0-$(BUILD_DATE) \
		-t $(BUILD_NAME):latest \
	.;
.PHONY: build-php80
.SILENT: build-php80

build-php81:
	docker build \
		--no-cache \
		--build-arg DEBIAN_CODENAME=buster \
		--build-arg PHP_PACKAGES="\
			php8.1-bcmath \
			php8.1-bcmath \
			php8.1-cli \
			php8.1-common \
			php8.1-curl \
			php8.1-decimal \
			php8.1-gd \
			php8.1-imagick \
			php8.1-imap \
			php8.1-inotify \
			php8.1-inotify \
			php8.1-ldap \
			php8.1-lz4 \
			php8.1-mbstring \
			php8.1-mcrypt \
			php8.1-mcrypt \
			php8.1-oauth \
			php8.1-pcov \
			php8.1-pgsql \
			php8.1-pgsql \
			php8.1-psr \
			php8.1-readline \
			php8.1-redis \
			php8.1-rrd \
			php8.1-soap \
			php8.1-sqlite3 \
			php8.1-uuid \
			php8.1-xml \
			php8.1-xmlrpc \
			php8.1-xsl \
			php8.1-yaml \
			php8.1-zip" \
		-t $(BUILD_NAME):8.1 \
		-t $(BUILD_NAME):8.1-$(BUILD_DATE) \
		-t $(BUILD_NAME):latest \
	.;
.PHONY: build-php81
.SILENT: build-php81

push:
	for PHP_VERSION in $(PHP_VERSIONS); do \
		docker push $(BUILD_NAME):$$PHP_VERSION; \
		docker push $(BUILD_NAME):$$PHP_VERSION-$(BUILD_DATE); \
	done
	docker push $(BUILD_NAME):latest
.PHONY: push
.SILENT: push

test:
	for PHP_VERSION in $(PHP_VERSIONS); do \
		VERSION=`docker run -ti $(BUILD_NAME):$$PHP_VERSION | grep ^PHP | cut -d' ' -f2`; \
		echo $$VERSION; \
		if [[ "$$PHP_VERSION" != *"$(VERSION)"* ]]; then \
			echo "$$PHP_VERSION not matched in: $$VERSION"; \
			exit 1; \
		fi; \
	done
.PHONY: test
.SILENT: test
