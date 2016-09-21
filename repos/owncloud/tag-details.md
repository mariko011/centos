<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `owncloud`

-	[`owncloud:8.0.15-apache`](#owncloud8015-apache)
-	[`owncloud:8.0-apache`](#owncloud80-apache)
-	[`owncloud:8.0.15`](#owncloud8015)
-	[`owncloud:8.0`](#owncloud80)
-	[`owncloud:8.0.15-fpm`](#owncloud8015-fpm)
-	[`owncloud:8.0-fpm`](#owncloud80-fpm)
-	[`owncloud:8.1.10-apache`](#owncloud8110-apache)
-	[`owncloud:8.1-apache`](#owncloud81-apache)
-	[`owncloud:8.1.10`](#owncloud8110)
-	[`owncloud:8.1`](#owncloud81)
-	[`owncloud:8.1.10-fpm`](#owncloud8110-fpm)
-	[`owncloud:8.1-fpm`](#owncloud81-fpm)
-	[`owncloud:8.2.8-apache`](#owncloud828-apache)
-	[`owncloud:8.2-apache`](#owncloud82-apache)
-	[`owncloud:8-apache`](#owncloud8-apache)
-	[`owncloud:8.2.8`](#owncloud828)
-	[`owncloud:8.2`](#owncloud82)
-	[`owncloud:8`](#owncloud8)
-	[`owncloud:8.2.8-fpm`](#owncloud828-fpm)
-	[`owncloud:8.2-fpm`](#owncloud82-fpm)
-	[`owncloud:8-fpm`](#owncloud8-fpm)
-	[`owncloud:9.0.5-apache`](#owncloud905-apache)
-	[`owncloud:9.0-apache`](#owncloud90-apache)
-	[`owncloud:9.0.5`](#owncloud905)
-	[`owncloud:9.0`](#owncloud90)
-	[`owncloud:9.0.5-fpm`](#owncloud905-fpm)
-	[`owncloud:9.0-fpm`](#owncloud90-fpm)
-	[`owncloud:9.1.1-apache`](#owncloud911-apache)
-	[`owncloud:9.1-apache`](#owncloud91-apache)
-	[`owncloud:9-apache`](#owncloud9-apache)
-	[`owncloud:apache`](#owncloudapache)
-	[`owncloud:9.1.1`](#owncloud911)
-	[`owncloud:9.1`](#owncloud91)
-	[`owncloud:9`](#owncloud9)
-	[`owncloud:latest`](#owncloudlatest)
-	[`owncloud:9.1.1-fpm`](#owncloud911-fpm)
-	[`owncloud:9.1-fpm`](#owncloud91-fpm)
-	[`owncloud:9-fpm`](#owncloud9-fpm)
-	[`owncloud:fpm`](#owncloudfpm)

## `owncloud:8.0.15-apache`

**does not exist** (yet?)

## `owncloud:8.0-apache`

```console
$ docker pull owncloud@sha256:750c7570ea6ca61e5447e5ecd75a858d4329255796ea2803224a2e7d44f7912e
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.0-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.6 MB (223586745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df967368e4ca0fd3bb49e76940fe47394fe57006883790673dd628379321db7a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:21:21 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 31 Aug 2016 00:21:22 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 31 Aug 2016 00:21:23 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 31 Aug 2016 00:21:24 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 31 Aug 2016 00:21:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 31 Aug 2016 00:34:48 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_VERSION=5.6.26
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 16 Sep 2016 20:35:36 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:35:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:37:51 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:51 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:52 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:37:52 GMT
EXPOSE 80/tcp
# Fri, 16 Sep 2016 20:37:52 GMT
CMD ["apache2-foreground"]
# Fri, 16 Sep 2016 22:26:02 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Sep 2016 22:27:45 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 16 Sep 2016 22:27:46 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Sep 2016 22:27:47 GMT
RUN a2enmod rewrite
# Fri, 16 Sep 2016 22:27:54 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& docker-php-ext-enable apcu
# Fri, 16 Sep 2016 22:27:55 GMT
ENV OWNCLOUD_VERSION=8.0.14
# Fri, 16 Sep 2016 22:27:55 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:28:06 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Fri, 16 Sep 2016 22:28:07 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Fri, 16 Sep 2016 22:28:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:28:08 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9632186b6198e59b441d935261b11ff1c87e5cd9167ca4919c12f7cd776cfb`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 2.8 MB (2846751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa737a56f54d953a4a488dc224cbb55d0c0ea44aae67e531b17a70fb4b42c91`  
		Last Modified: Wed, 31 Aug 2016 16:57:47 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6d454914546db3a7df0bc7e37300f6c19f8710b1d6b539865641c841a1c81d`  
		Last Modified: Wed, 31 Aug 2016 16:57:46 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2de374782c02050ab1a225e1602a0157d489852b1a25833f0d767e12d7607ad`  
		Last Modified: Wed, 31 Aug 2016 16:57:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2793df33d916e62e622430074d131cbb6e53d5c4fbd04f3eec825543522cf6`  
		Last Modified: Wed, 31 Aug 2016 16:57:44 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e04a84359e7cf9895f75bde7ab17d42aad62f3064b837fb7fbef20c5d39b663`  
		Last Modified: Fri, 16 Sep 2016 21:02:57 GMT  
		Size: 12.4 MB (12417486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b78dd93da18cc92c3f4f8d95b3723ce3744e73cb4294394815bdf2752f052e`  
		Last Modified: Fri, 16 Sep 2016 21:02:55 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5a185cc4ffd3fe5b851650ec791d11f5f1a4f6d39025088522728d4e8b0207`  
		Last Modified: Fri, 16 Sep 2016 21:03:00 GMT  
		Size: 15.9 MB (15906800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf93fe985e6684a5806487ff5b23efa84e4d76ce77f10e9dff3bf1a951c896`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02b0950172b2c8ca14a3447bf85adc6ddc07a07fad7e92a48c7066a7a7ae693`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c0deff09285f8c3f296986b938f329a538f4eaf0aeb372b2f5853859135836`  
		Last Modified: Fri, 16 Sep 2016 22:28:26 GMT  
		Size: 33.5 MB (33470425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b250055ff34bdcbc8143af44cc3176f863d2260d3b7285d4ba4c6840aa41c452`  
		Last Modified: Fri, 16 Sep 2016 22:28:19 GMT  
		Size: 3.7 MB (3741475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f05e96bc11465844b61a548ee5216a13cd84f1194babe8131863ebb914b880db`  
		Last Modified: Fri, 16 Sep 2016 22:28:13 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c92ffd75dd2fa8563d1b6068e557fc6ebb3f918bca37bb00501408b85bc5b9`  
		Last Modified: Fri, 16 Sep 2016 22:28:14 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db025a72af85e06879a12a1237fe34272d4d3ae529f45c1d9d69edc0e0b724de`  
		Last Modified: Fri, 16 Sep 2016 22:28:14 GMT  
		Size: 363.7 KB (363700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90bd74f475bce9bbe43889bf090e97dfc72df13a5566e64f7c26a2b6020ae1b`  
		Last Modified: Fri, 16 Sep 2016 22:28:23 GMT  
		Size: 25.9 MB (25884480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1cef717386368b9c5d61d9d8ba046db56c7ca973813a264f4a2c9654a0cb9de`  
		Last Modified: Fri, 16 Sep 2016 22:28:13 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.0.15`

```console
$ docker pull owncloud@sha256:9cdcc8b8d9a0a4a37517158ed575f72f9941760a3261d0f03d60325eb60efef5
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.0.15` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.6 MB (223583769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f3bc7b656b5641d3f6bdd7ddaf1c32034233cf64d44b7d3756f3e0da73ff66`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 23:24:49 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 19 Sep 2016 23:25:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:25:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 19 Sep 2016 23:25:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 19 Sep 2016 23:32:55 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:32:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 19 Sep 2016 23:32:56 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 19 Sep 2016 23:32:57 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 19 Sep 2016 23:32:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 19 Sep 2016 23:32:59 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 19 Sep 2016 23:32:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 19 Sep 2016 23:33:00 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 19 Sep 2016 23:33:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 20 Sep 2016 00:03:15 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_VERSION=5.6.26
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Tue, 20 Sep 2016 00:03:20 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Tue, 20 Sep 2016 00:03:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:31 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 20 Sep 2016 00:09:32 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:32 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:33 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 00:09:33 GMT
EXPOSE 80/tcp
# Tue, 20 Sep 2016 00:09:34 GMT
CMD ["apache2-foreground"]
# Tue, 20 Sep 2016 16:53:37 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:55:24 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 20 Sep 2016 16:55:25 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 16:55:26 GMT
RUN a2enmod rewrite
# Tue, 20 Sep 2016 16:55:34 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& docker-php-ext-enable apcu
# Wed, 21 Sep 2016 23:13:31 GMT
ENV OWNCLOUD_VERSION=8.0.15
# Wed, 21 Sep 2016 23:13:31 GMT
VOLUME [/var/www/html]
# Wed, 21 Sep 2016 23:13:43 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Wed, 21 Sep 2016 23:13:44 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Wed, 21 Sep 2016 23:13:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Sep 2016 23:13:45 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac8ac352fc3917a1c94b6fdd01f8cd1fbb5c84ba5cf9de0827f7aeaf809f51`  
		Last Modified: Tue, 20 Sep 2016 05:25:09 GMT  
		Size: 77.6 MB (77593020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba164c22a40422293321eacfbdf325437ddb9a8e9609a60531fc819076478dd`  
		Last Modified: Tue, 20 Sep 2016 05:24:46 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a720432c5339d80623549f0d127692c83bf21eb6f698a2ae5672609f99707b`  
		Last Modified: Tue, 20 Sep 2016 05:24:47 GMT  
		Size: 2.8 MB (2848976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1793582987f0dee494f9b30b31dfb6fd7a29a59b49215efdff88f8b6e3312cc1`  
		Last Modified: Tue, 20 Sep 2016 05:24:45 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce51da6ec5581808896181ffc3af6aa14bbaad8d1c2c250aa332cc40b0bbed0`  
		Last Modified: Tue, 20 Sep 2016 05:24:43 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb9cc7e0202c85e01bce4a107aca54f50751a9bad44ac8283b16d76733c2557`  
		Last Modified: Tue, 20 Sep 2016 05:24:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459cb9974ae91b15667c79441652f9f0177d860233a45e9c2513fb09f7c18ae1`  
		Last Modified: Tue, 20 Sep 2016 05:24:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a06946c9efc256736268d8bdb801b8224ddbdb86a3b81ef5bec17edae5180e3`  
		Last Modified: Tue, 20 Sep 2016 05:24:44 GMT  
		Size: 12.4 MB (12417485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82da4c5711dacbe710b9bee379619f1399aefdd25d6e8e177268946b5c237f0`  
		Last Modified: Tue, 20 Sep 2016 05:24:40 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c3b990f290e348cf63f6a5c1c62bb075bf7c474d9b0c2c62848544d3e75406`  
		Last Modified: Tue, 20 Sep 2016 05:24:45 GMT  
		Size: 15.9 MB (15906465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb658f92fe225da9cf89b80d1eda8966e98e6eb78536abbbc335deb39052dad`  
		Last Modified: Tue, 20 Sep 2016 05:24:39 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83852ec056413560e93d6d63c1bc46d86f1afa454123eac29b16068494119551`  
		Last Modified: Tue, 20 Sep 2016 05:24:39 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c746e948a5b833980bc432ddd7838471853f1f69c896bff135b9ec4b51e3bca`  
		Last Modified: Wed, 21 Sep 2016 23:16:23 GMT  
		Size: 33.5 MB (33468057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaed25f993f4b3fdf74f1fda6154ff7115c2c954b8dd3f1d4449ec6bf5054381`  
		Last Modified: Wed, 21 Sep 2016 23:16:12 GMT  
		Size: 3.7 MB (3741479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3e874101bb53734b8afb4eee5d994500c4a204940cecc16fc17354df1e26db`  
		Last Modified: Wed, 21 Sep 2016 23:16:08 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef17021d2ef09aa910d2416f8cacc590b673ebc4346fd6afc5cb6372ac85434`  
		Last Modified: Wed, 21 Sep 2016 23:16:08 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0c552d9b66b4ad71f1634245ca02d8099ab63b051a13bda5399983bb9ca415`  
		Last Modified: Wed, 21 Sep 2016 23:16:08 GMT  
		Size: 363.7 KB (363679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e826fd271bac3e2b3b8c8908fb194eda52deff038e165a5d31ba43a649a4924`  
		Last Modified: Wed, 21 Sep 2016 23:16:15 GMT  
		Size: 25.9 MB (25883727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3d019a0f7dcc4effaee0a8d89d1ea5b631385e2ff26995a209074c6bb33080`  
		Last Modified: Wed, 21 Sep 2016 23:16:08 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.0`

```console
$ docker pull owncloud@sha256:9cdcc8b8d9a0a4a37517158ed575f72f9941760a3261d0f03d60325eb60efef5
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.6 MB (223583769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f3bc7b656b5641d3f6bdd7ddaf1c32034233cf64d44b7d3756f3e0da73ff66`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 23:24:49 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 19 Sep 2016 23:25:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:25:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 19 Sep 2016 23:25:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 19 Sep 2016 23:32:55 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:32:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 19 Sep 2016 23:32:56 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 19 Sep 2016 23:32:57 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 19 Sep 2016 23:32:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 19 Sep 2016 23:32:59 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 19 Sep 2016 23:32:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 19 Sep 2016 23:33:00 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 19 Sep 2016 23:33:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 20 Sep 2016 00:03:15 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_VERSION=5.6.26
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Tue, 20 Sep 2016 00:03:20 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Tue, 20 Sep 2016 00:03:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:31 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 20 Sep 2016 00:09:32 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:32 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:33 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 00:09:33 GMT
EXPOSE 80/tcp
# Tue, 20 Sep 2016 00:09:34 GMT
CMD ["apache2-foreground"]
# Tue, 20 Sep 2016 16:53:37 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:55:24 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 20 Sep 2016 16:55:25 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 16:55:26 GMT
RUN a2enmod rewrite
# Tue, 20 Sep 2016 16:55:34 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& docker-php-ext-enable apcu
# Wed, 21 Sep 2016 23:13:31 GMT
ENV OWNCLOUD_VERSION=8.0.15
# Wed, 21 Sep 2016 23:13:31 GMT
VOLUME [/var/www/html]
# Wed, 21 Sep 2016 23:13:43 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Wed, 21 Sep 2016 23:13:44 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Wed, 21 Sep 2016 23:13:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Sep 2016 23:13:45 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac8ac352fc3917a1c94b6fdd01f8cd1fbb5c84ba5cf9de0827f7aeaf809f51`  
		Last Modified: Tue, 20 Sep 2016 05:25:09 GMT  
		Size: 77.6 MB (77593020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba164c22a40422293321eacfbdf325437ddb9a8e9609a60531fc819076478dd`  
		Last Modified: Tue, 20 Sep 2016 05:24:46 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a720432c5339d80623549f0d127692c83bf21eb6f698a2ae5672609f99707b`  
		Last Modified: Tue, 20 Sep 2016 05:24:47 GMT  
		Size: 2.8 MB (2848976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1793582987f0dee494f9b30b31dfb6fd7a29a59b49215efdff88f8b6e3312cc1`  
		Last Modified: Tue, 20 Sep 2016 05:24:45 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce51da6ec5581808896181ffc3af6aa14bbaad8d1c2c250aa332cc40b0bbed0`  
		Last Modified: Tue, 20 Sep 2016 05:24:43 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb9cc7e0202c85e01bce4a107aca54f50751a9bad44ac8283b16d76733c2557`  
		Last Modified: Tue, 20 Sep 2016 05:24:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459cb9974ae91b15667c79441652f9f0177d860233a45e9c2513fb09f7c18ae1`  
		Last Modified: Tue, 20 Sep 2016 05:24:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a06946c9efc256736268d8bdb801b8224ddbdb86a3b81ef5bec17edae5180e3`  
		Last Modified: Tue, 20 Sep 2016 05:24:44 GMT  
		Size: 12.4 MB (12417485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82da4c5711dacbe710b9bee379619f1399aefdd25d6e8e177268946b5c237f0`  
		Last Modified: Tue, 20 Sep 2016 05:24:40 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c3b990f290e348cf63f6a5c1c62bb075bf7c474d9b0c2c62848544d3e75406`  
		Last Modified: Tue, 20 Sep 2016 05:24:45 GMT  
		Size: 15.9 MB (15906465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb658f92fe225da9cf89b80d1eda8966e98e6eb78536abbbc335deb39052dad`  
		Last Modified: Tue, 20 Sep 2016 05:24:39 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83852ec056413560e93d6d63c1bc46d86f1afa454123eac29b16068494119551`  
		Last Modified: Tue, 20 Sep 2016 05:24:39 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c746e948a5b833980bc432ddd7838471853f1f69c896bff135b9ec4b51e3bca`  
		Last Modified: Wed, 21 Sep 2016 23:16:23 GMT  
		Size: 33.5 MB (33468057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaed25f993f4b3fdf74f1fda6154ff7115c2c954b8dd3f1d4449ec6bf5054381`  
		Last Modified: Wed, 21 Sep 2016 23:16:12 GMT  
		Size: 3.7 MB (3741479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3e874101bb53734b8afb4eee5d994500c4a204940cecc16fc17354df1e26db`  
		Last Modified: Wed, 21 Sep 2016 23:16:08 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef17021d2ef09aa910d2416f8cacc590b673ebc4346fd6afc5cb6372ac85434`  
		Last Modified: Wed, 21 Sep 2016 23:16:08 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0c552d9b66b4ad71f1634245ca02d8099ab63b051a13bda5399983bb9ca415`  
		Last Modified: Wed, 21 Sep 2016 23:16:08 GMT  
		Size: 363.7 KB (363679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e826fd271bac3e2b3b8c8908fb194eda52deff038e165a5d31ba43a649a4924`  
		Last Modified: Wed, 21 Sep 2016 23:16:15 GMT  
		Size: 25.9 MB (25883727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3d019a0f7dcc4effaee0a8d89d1ea5b631385e2ff26995a209074c6bb33080`  
		Last Modified: Wed, 21 Sep 2016 23:16:08 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.0.15-fpm`

**does not exist** (yet?)

## `owncloud:8.0-fpm`

```console
$ docker pull owncloud@sha256:a97d4d9fc88e8542d88421ce907c4f2b13b747e3cf2787145212cec35585af36
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.0-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.7 MB (213650839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d0f70073391c6a3e2d8188df1037d9faed787d2d08637427d80fa95ddbe04eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:23:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 31 Aug 2016 00:37:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_VERSION=5.6.26
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 16 Sep 2016 20:37:56 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:37:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:41:18 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:41:18 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:41:19 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:41:19 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 16 Sep 2016 20:41:20 GMT
EXPOSE 9000/tcp
# Fri, 16 Sep 2016 20:41:20 GMT
CMD ["php-fpm"]
# Fri, 16 Sep 2016 22:36:39 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Sep 2016 22:38:21 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 16 Sep 2016 22:38:22 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Sep 2016 22:38:30 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& docker-php-ext-enable apcu
# Fri, 16 Sep 2016 22:38:30 GMT
ENV OWNCLOUD_VERSION=8.0.14
# Fri, 16 Sep 2016 22:38:30 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:38:42 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Fri, 16 Sep 2016 22:38:43 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Fri, 16 Sep 2016 22:38:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:38:43 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f867227ba0ca7d341b526da9b951ce76c29841e628fd41e7848cd02a10cc9b3`  
		Last Modified: Fri, 16 Sep 2016 21:03:33 GMT  
		Size: 12.4 MB (12417483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e060fac29eab30697e9e6d0cf654eb74fd357cf9bae808a22716372d9167adf`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc5c82aa9b2bd88b7d2110285a373e40b7340379ee6e0f8f95b6269ed7b6b28`  
		Last Modified: Fri, 16 Sep 2016 21:03:31 GMT  
		Size: 8.8 MB (8835389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28455473ebdcc509ff6d0f1005ba4537b9c06fc753eac522d34f7d983f90cac1`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779e531cc75ed9693123bb9d9b2adcbf6905ef0dcdef6f54d7f69de0534e99d1`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42627851ab0d4a77e88ff88f96a8ae1246b73e545c2fdd9111e46ff20acf58ec`  
		Last Modified: Fri, 16 Sep 2016 21:03:29 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db282f6681549540fe611a99a0ddbe13b78b18d1c89921e5cff44cae751370c1`  
		Last Modified: Fri, 16 Sep 2016 22:39:01 GMT  
		Size: 33.4 MB (33448036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dd32a5f32681a4c1acf081fc46238bb91a508bf1876f5f9569c5666799172a`  
		Last Modified: Fri, 16 Sep 2016 22:38:50 GMT  
		Size: 3.7 MB (3741654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050371cc9e2294ab592260b5aad534b296c7cc8096c506bebb3e730d3d37aa36`  
		Last Modified: Fri, 16 Sep 2016 22:38:49 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd74a7ff77e6424ef581fdf30b15d3a939aeee177eb4ba4844f05ca0a482184a`  
		Last Modified: Fri, 16 Sep 2016 22:38:49 GMT  
		Size: 363.7 KB (363676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30a9429981f293ea5be42ae0c1d2b2b880846121dcf3c27880e7222d295d47f`  
		Last Modified: Fri, 16 Sep 2016 22:38:57 GMT  
		Size: 25.9 MB (25884476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2449edaee60c67e6bcfb8d17b2df6ace14daad8c273958cbe218b6e72a2332e`  
		Last Modified: Fri, 16 Sep 2016 22:38:49 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.1.10-apache`

**does not exist** (yet?)

## `owncloud:8.1-apache`

```console
$ docker pull owncloud@sha256:49c9c88f1ffe9224f897e11fadcfce960d345839eab8e55d87c0666fac59d051
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.1-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226366956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5790bdf7ab0e5b6b1d959b67329258d277364739757e1598843c26c8ea79adb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:21:21 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 31 Aug 2016 00:21:22 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 31 Aug 2016 00:21:23 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 31 Aug 2016 00:21:24 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 31 Aug 2016 00:21:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 31 Aug 2016 00:34:48 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_VERSION=5.6.26
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 16 Sep 2016 20:35:36 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:35:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:37:51 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:51 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:52 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:37:52 GMT
EXPOSE 80/tcp
# Fri, 16 Sep 2016 20:37:52 GMT
CMD ["apache2-foreground"]
# Fri, 16 Sep 2016 22:29:14 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Sep 2016 22:30:55 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 16 Sep 2016 22:30:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Sep 2016 22:30:57 GMT
RUN a2enmod rewrite
# Fri, 16 Sep 2016 22:31:21 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Fri, 16 Sep 2016 22:39:17 GMT
ENV OWNCLOUD_VERSION=8.1.9
# Fri, 16 Sep 2016 22:39:17 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:39:29 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Fri, 16 Sep 2016 22:39:29 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Fri, 16 Sep 2016 22:39:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:39:30 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9632186b6198e59b441d935261b11ff1c87e5cd9167ca4919c12f7cd776cfb`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 2.8 MB (2846751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa737a56f54d953a4a488dc224cbb55d0c0ea44aae67e531b17a70fb4b42c91`  
		Last Modified: Wed, 31 Aug 2016 16:57:47 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6d454914546db3a7df0bc7e37300f6c19f8710b1d6b539865641c841a1c81d`  
		Last Modified: Wed, 31 Aug 2016 16:57:46 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2de374782c02050ab1a225e1602a0157d489852b1a25833f0d767e12d7607ad`  
		Last Modified: Wed, 31 Aug 2016 16:57:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2793df33d916e62e622430074d131cbb6e53d5c4fbd04f3eec825543522cf6`  
		Last Modified: Wed, 31 Aug 2016 16:57:44 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e04a84359e7cf9895f75bde7ab17d42aad62f3064b837fb7fbef20c5d39b663`  
		Last Modified: Fri, 16 Sep 2016 21:02:57 GMT  
		Size: 12.4 MB (12417486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b78dd93da18cc92c3f4f8d95b3723ce3744e73cb4294394815bdf2752f052e`  
		Last Modified: Fri, 16 Sep 2016 21:02:55 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5a185cc4ffd3fe5b851650ec791d11f5f1a4f6d39025088522728d4e8b0207`  
		Last Modified: Fri, 16 Sep 2016 21:03:00 GMT  
		Size: 15.9 MB (15906800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf93fe985e6684a5806487ff5b23efa84e4d76ce77f10e9dff3bf1a951c896`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02b0950172b2c8ca14a3447bf85adc6ddc07a07fad7e92a48c7066a7a7ae693`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d38fb8b344110342c2cfb55ad7cef07fe5f28e73d52b0f615a25790f7d22af`  
		Last Modified: Fri, 16 Sep 2016 22:31:55 GMT  
		Size: 34.3 MB (34332280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90c85e50d51a68d898d341d54cdf12092a50a6dc18c82d43b277f9abb66ca29`  
		Last Modified: Fri, 16 Sep 2016 22:31:50 GMT  
		Size: 3.7 MB (3741486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3eba82db0dc882dc09f3258ce3458c063ff81da410b43e7c0c6764404de1db`  
		Last Modified: Fri, 16 Sep 2016 22:31:43 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d665990de0edcfcfdc36f2f9b6c37da5ce2d7d9251ca248118f8f351686839f3`  
		Last Modified: Fri, 16 Sep 2016 22:31:43 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965086f475a40f56c9c6faeaa8eb80804c1f92ad66d37e38fc4029e8394742d3`  
		Last Modified: Fri, 16 Sep 2016 22:31:43 GMT  
		Size: 1.3 MB (1330736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f063c09584201368a657b46a5a69e593c25ab3ccf1679a458fbd75f4f255f73a`  
		Last Modified: Fri, 16 Sep 2016 22:39:42 GMT  
		Size: 26.8 MB (26835789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff15f83cdaf0d5b0bddf18531d3d396e6c08c6762cff2c128511488c63b2dc3`  
		Last Modified: Fri, 16 Sep 2016 22:39:36 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.1.10`

**does not exist** (yet?)

## `owncloud:8.1`

```console
$ docker pull owncloud@sha256:49c9c88f1ffe9224f897e11fadcfce960d345839eab8e55d87c0666fac59d051
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226366956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5790bdf7ab0e5b6b1d959b67329258d277364739757e1598843c26c8ea79adb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:21:21 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 31 Aug 2016 00:21:22 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 31 Aug 2016 00:21:23 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 31 Aug 2016 00:21:24 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 31 Aug 2016 00:21:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 31 Aug 2016 00:34:48 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_VERSION=5.6.26
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 16 Sep 2016 20:35:36 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:35:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:37:51 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:51 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:52 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:37:52 GMT
EXPOSE 80/tcp
# Fri, 16 Sep 2016 20:37:52 GMT
CMD ["apache2-foreground"]
# Fri, 16 Sep 2016 22:29:14 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Sep 2016 22:30:55 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 16 Sep 2016 22:30:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Sep 2016 22:30:57 GMT
RUN a2enmod rewrite
# Fri, 16 Sep 2016 22:31:21 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Fri, 16 Sep 2016 22:39:17 GMT
ENV OWNCLOUD_VERSION=8.1.9
# Fri, 16 Sep 2016 22:39:17 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:39:29 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Fri, 16 Sep 2016 22:39:29 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Fri, 16 Sep 2016 22:39:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:39:30 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9632186b6198e59b441d935261b11ff1c87e5cd9167ca4919c12f7cd776cfb`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 2.8 MB (2846751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa737a56f54d953a4a488dc224cbb55d0c0ea44aae67e531b17a70fb4b42c91`  
		Last Modified: Wed, 31 Aug 2016 16:57:47 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6d454914546db3a7df0bc7e37300f6c19f8710b1d6b539865641c841a1c81d`  
		Last Modified: Wed, 31 Aug 2016 16:57:46 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2de374782c02050ab1a225e1602a0157d489852b1a25833f0d767e12d7607ad`  
		Last Modified: Wed, 31 Aug 2016 16:57:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2793df33d916e62e622430074d131cbb6e53d5c4fbd04f3eec825543522cf6`  
		Last Modified: Wed, 31 Aug 2016 16:57:44 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e04a84359e7cf9895f75bde7ab17d42aad62f3064b837fb7fbef20c5d39b663`  
		Last Modified: Fri, 16 Sep 2016 21:02:57 GMT  
		Size: 12.4 MB (12417486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b78dd93da18cc92c3f4f8d95b3723ce3744e73cb4294394815bdf2752f052e`  
		Last Modified: Fri, 16 Sep 2016 21:02:55 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5a185cc4ffd3fe5b851650ec791d11f5f1a4f6d39025088522728d4e8b0207`  
		Last Modified: Fri, 16 Sep 2016 21:03:00 GMT  
		Size: 15.9 MB (15906800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf93fe985e6684a5806487ff5b23efa84e4d76ce77f10e9dff3bf1a951c896`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02b0950172b2c8ca14a3447bf85adc6ddc07a07fad7e92a48c7066a7a7ae693`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d38fb8b344110342c2cfb55ad7cef07fe5f28e73d52b0f615a25790f7d22af`  
		Last Modified: Fri, 16 Sep 2016 22:31:55 GMT  
		Size: 34.3 MB (34332280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90c85e50d51a68d898d341d54cdf12092a50a6dc18c82d43b277f9abb66ca29`  
		Last Modified: Fri, 16 Sep 2016 22:31:50 GMT  
		Size: 3.7 MB (3741486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3eba82db0dc882dc09f3258ce3458c063ff81da410b43e7c0c6764404de1db`  
		Last Modified: Fri, 16 Sep 2016 22:31:43 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d665990de0edcfcfdc36f2f9b6c37da5ce2d7d9251ca248118f8f351686839f3`  
		Last Modified: Fri, 16 Sep 2016 22:31:43 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965086f475a40f56c9c6faeaa8eb80804c1f92ad66d37e38fc4029e8394742d3`  
		Last Modified: Fri, 16 Sep 2016 22:31:43 GMT  
		Size: 1.3 MB (1330736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f063c09584201368a657b46a5a69e593c25ab3ccf1679a458fbd75f4f255f73a`  
		Last Modified: Fri, 16 Sep 2016 22:39:42 GMT  
		Size: 26.8 MB (26835789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff15f83cdaf0d5b0bddf18531d3d396e6c08c6762cff2c128511488c63b2dc3`  
		Last Modified: Fri, 16 Sep 2016 22:39:36 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.1.10-fpm`

**does not exist** (yet?)

## `owncloud:8.1-fpm`

```console
$ docker pull owncloud@sha256:17583f5c3b5e8c5544cf375f9fb0797d6062aa7942ff067d63eecee7f1a2eef5
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.1-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.4 MB (216430654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7bae060cb55a5833232b7170aea38b41084ebbebed5db128f940f51f767cf06`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:23:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 31 Aug 2016 00:37:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_VERSION=5.6.26
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 16 Sep 2016 20:37:56 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:37:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:41:18 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:41:18 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:41:19 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:41:19 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 16 Sep 2016 20:41:20 GMT
EXPOSE 9000/tcp
# Fri, 16 Sep 2016 20:41:20 GMT
CMD ["php-fpm"]
# Fri, 16 Sep 2016 22:33:16 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Sep 2016 22:34:57 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 16 Sep 2016 22:34:58 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Sep 2016 22:35:22 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Fri, 16 Sep 2016 22:40:16 GMT
ENV OWNCLOUD_VERSION=8.1.9
# Fri, 16 Sep 2016 22:40:16 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:40:28 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Fri, 16 Sep 2016 22:40:28 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Fri, 16 Sep 2016 22:40:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:40:29 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f867227ba0ca7d341b526da9b951ce76c29841e628fd41e7848cd02a10cc9b3`  
		Last Modified: Fri, 16 Sep 2016 21:03:33 GMT  
		Size: 12.4 MB (12417483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e060fac29eab30697e9e6d0cf654eb74fd357cf9bae808a22716372d9167adf`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc5c82aa9b2bd88b7d2110285a373e40b7340379ee6e0f8f95b6269ed7b6b28`  
		Last Modified: Fri, 16 Sep 2016 21:03:31 GMT  
		Size: 8.8 MB (8835389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28455473ebdcc509ff6d0f1005ba4537b9c06fc753eac522d34f7d983f90cac1`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779e531cc75ed9693123bb9d9b2adcbf6905ef0dcdef6f54d7f69de0534e99d1`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42627851ab0d4a77e88ff88f96a8ae1246b73e545c2fdd9111e46ff20acf58ec`  
		Last Modified: Fri, 16 Sep 2016 21:03:29 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43aaaa7f1ecbf8ef6277dac013687bd931c670099000e8ab4e83532ab8bab94`  
		Last Modified: Fri, 16 Sep 2016 22:35:55 GMT  
		Size: 34.3 MB (34309515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e3d1d9e1c9436f2597afcf1705654d037513353b6d9ea04fbc98f18ee90f00`  
		Last Modified: Fri, 16 Sep 2016 22:35:44 GMT  
		Size: 3.7 MB (3741633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7bf5bfa2bf3189b507dfa7fe5e70d13c3988d1f77d6cdcaab9e307c796aaee`  
		Last Modified: Fri, 16 Sep 2016 22:35:46 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdc6931bc2898c38ddfaedffd6f5dfdc0beddeee91044cb71cffafe8473f6d9`  
		Last Modified: Fri, 16 Sep 2016 22:35:43 GMT  
		Size: 1.3 MB (1330729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c57b40e71452c7cfc2287d6ac106f28e61625705d4489b0e95412637b453ad3`  
		Last Modified: Fri, 16 Sep 2016 22:40:42 GMT  
		Size: 26.8 MB (26835782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fc1d3cd764d893b740ef591cdfb37548b4644a416d11e458e38bff551fc2fb`  
		Last Modified: Fri, 16 Sep 2016 22:40:35 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.2.8-apache`

```console
$ docker pull owncloud@sha256:8e070d471d33bd0595c663915d4a711e4dca29de8b65e1b988013216c6cd9758
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.2.8-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229749591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea30378c13223230bf09865e31c82e0f546656756ae007efa0ceca6241d188a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 23:24:49 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 19 Sep 2016 23:25:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:25:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 19 Sep 2016 23:25:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 19 Sep 2016 23:32:55 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:32:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 19 Sep 2016 23:32:56 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 19 Sep 2016 23:32:57 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 19 Sep 2016 23:32:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 19 Sep 2016 23:32:59 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 19 Sep 2016 23:32:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 19 Sep 2016 23:33:00 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 19 Sep 2016 23:33:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 20 Sep 2016 00:03:15 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_VERSION=5.6.26
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Tue, 20 Sep 2016 00:03:20 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Tue, 20 Sep 2016 00:03:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:31 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 20 Sep 2016 00:09:32 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:32 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:33 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 00:09:33 GMT
EXPOSE 80/tcp
# Tue, 20 Sep 2016 00:09:34 GMT
CMD ["apache2-foreground"]
# Tue, 20 Sep 2016 17:01:24 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 17:03:06 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 20 Sep 2016 17:03:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 17:03:08 GMT
RUN a2enmod rewrite
# Tue, 20 Sep 2016 17:03:32 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Wed, 21 Sep 2016 23:14:29 GMT
ENV OWNCLOUD_VERSION=8.2.8
# Wed, 21 Sep 2016 23:14:29 GMT
VOLUME [/var/www/html]
# Wed, 21 Sep 2016 23:14:41 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Wed, 21 Sep 2016 23:14:42 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Wed, 21 Sep 2016 23:14:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Sep 2016 23:14:42 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac8ac352fc3917a1c94b6fdd01f8cd1fbb5c84ba5cf9de0827f7aeaf809f51`  
		Last Modified: Tue, 20 Sep 2016 05:25:09 GMT  
		Size: 77.6 MB (77593020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba164c22a40422293321eacfbdf325437ddb9a8e9609a60531fc819076478dd`  
		Last Modified: Tue, 20 Sep 2016 05:24:46 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a720432c5339d80623549f0d127692c83bf21eb6f698a2ae5672609f99707b`  
		Last Modified: Tue, 20 Sep 2016 05:24:47 GMT  
		Size: 2.8 MB (2848976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1793582987f0dee494f9b30b31dfb6fd7a29a59b49215efdff88f8b6e3312cc1`  
		Last Modified: Tue, 20 Sep 2016 05:24:45 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce51da6ec5581808896181ffc3af6aa14bbaad8d1c2c250aa332cc40b0bbed0`  
		Last Modified: Tue, 20 Sep 2016 05:24:43 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb9cc7e0202c85e01bce4a107aca54f50751a9bad44ac8283b16d76733c2557`  
		Last Modified: Tue, 20 Sep 2016 05:24:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459cb9974ae91b15667c79441652f9f0177d860233a45e9c2513fb09f7c18ae1`  
		Last Modified: Tue, 20 Sep 2016 05:24:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a06946c9efc256736268d8bdb801b8224ddbdb86a3b81ef5bec17edae5180e3`  
		Last Modified: Tue, 20 Sep 2016 05:24:44 GMT  
		Size: 12.4 MB (12417485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82da4c5711dacbe710b9bee379619f1399aefdd25d6e8e177268946b5c237f0`  
		Last Modified: Tue, 20 Sep 2016 05:24:40 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c3b990f290e348cf63f6a5c1c62bb075bf7c474d9b0c2c62848544d3e75406`  
		Last Modified: Tue, 20 Sep 2016 05:24:45 GMT  
		Size: 15.9 MB (15906465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb658f92fe225da9cf89b80d1eda8966e98e6eb78536abbbc335deb39052dad`  
		Last Modified: Tue, 20 Sep 2016 05:24:39 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83852ec056413560e93d6d63c1bc46d86f1afa454123eac29b16068494119551`  
		Last Modified: Tue, 20 Sep 2016 05:24:39 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6036bd3674188a38d178d0090e46535b79318dcec334b75e5d6fba460bf261f2`  
		Last Modified: Wed, 21 Sep 2016 23:18:04 GMT  
		Size: 34.3 MB (34329681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd4aeeb560a9f03b6e9c4da7bb307778bd238ab0cdba06cf49457ad6ed03707`  
		Last Modified: Wed, 21 Sep 2016 23:17:50 GMT  
		Size: 3.7 MB (3741493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622028362c313d1ca5cfb9b0f05472c5a200772f0ce70c7fb41b0cb33803a510`  
		Last Modified: Wed, 21 Sep 2016 23:17:45 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b9af4d0bf16c1b59e62fa206a311f46159bbab65c057f804d1c98219118a35`  
		Last Modified: Wed, 21 Sep 2016 23:17:47 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f7750dcc587c118880589a1838772e79f2874e6d17db14e7b371964c3022c8`  
		Last Modified: Wed, 21 Sep 2016 23:17:47 GMT  
		Size: 1.3 MB (1330746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a59fbd44fae1a38708309bfd1d6fd40f7bb25d040ee3bd1e6c00053d8297c0cc`  
		Last Modified: Wed, 21 Sep 2016 23:19:34 GMT  
		Size: 30.2 MB (30220841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f92176b56bf05ac138e5ec6e01bfbe2c69559b8841bf6f0914dbdf5f168b58`  
		Last Modified: Wed, 21 Sep 2016 23:19:26 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.2-apache`

```console
$ docker pull owncloud@sha256:8e070d471d33bd0595c663915d4a711e4dca29de8b65e1b988013216c6cd9758
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.2-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229749591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea30378c13223230bf09865e31c82e0f546656756ae007efa0ceca6241d188a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 23:24:49 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 19 Sep 2016 23:25:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:25:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 19 Sep 2016 23:25:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 19 Sep 2016 23:32:55 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:32:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 19 Sep 2016 23:32:56 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 19 Sep 2016 23:32:57 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 19 Sep 2016 23:32:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 19 Sep 2016 23:32:59 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 19 Sep 2016 23:32:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 19 Sep 2016 23:33:00 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 19 Sep 2016 23:33:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 20 Sep 2016 00:03:15 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_VERSION=5.6.26
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Tue, 20 Sep 2016 00:03:20 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Tue, 20 Sep 2016 00:03:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:31 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 20 Sep 2016 00:09:32 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:32 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:33 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 00:09:33 GMT
EXPOSE 80/tcp
# Tue, 20 Sep 2016 00:09:34 GMT
CMD ["apache2-foreground"]
# Tue, 20 Sep 2016 17:01:24 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 17:03:06 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 20 Sep 2016 17:03:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 17:03:08 GMT
RUN a2enmod rewrite
# Tue, 20 Sep 2016 17:03:32 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Wed, 21 Sep 2016 23:14:29 GMT
ENV OWNCLOUD_VERSION=8.2.8
# Wed, 21 Sep 2016 23:14:29 GMT
VOLUME [/var/www/html]
# Wed, 21 Sep 2016 23:14:41 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Wed, 21 Sep 2016 23:14:42 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Wed, 21 Sep 2016 23:14:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Sep 2016 23:14:42 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac8ac352fc3917a1c94b6fdd01f8cd1fbb5c84ba5cf9de0827f7aeaf809f51`  
		Last Modified: Tue, 20 Sep 2016 05:25:09 GMT  
		Size: 77.6 MB (77593020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba164c22a40422293321eacfbdf325437ddb9a8e9609a60531fc819076478dd`  
		Last Modified: Tue, 20 Sep 2016 05:24:46 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a720432c5339d80623549f0d127692c83bf21eb6f698a2ae5672609f99707b`  
		Last Modified: Tue, 20 Sep 2016 05:24:47 GMT  
		Size: 2.8 MB (2848976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1793582987f0dee494f9b30b31dfb6fd7a29a59b49215efdff88f8b6e3312cc1`  
		Last Modified: Tue, 20 Sep 2016 05:24:45 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce51da6ec5581808896181ffc3af6aa14bbaad8d1c2c250aa332cc40b0bbed0`  
		Last Modified: Tue, 20 Sep 2016 05:24:43 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb9cc7e0202c85e01bce4a107aca54f50751a9bad44ac8283b16d76733c2557`  
		Last Modified: Tue, 20 Sep 2016 05:24:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459cb9974ae91b15667c79441652f9f0177d860233a45e9c2513fb09f7c18ae1`  
		Last Modified: Tue, 20 Sep 2016 05:24:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a06946c9efc256736268d8bdb801b8224ddbdb86a3b81ef5bec17edae5180e3`  
		Last Modified: Tue, 20 Sep 2016 05:24:44 GMT  
		Size: 12.4 MB (12417485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82da4c5711dacbe710b9bee379619f1399aefdd25d6e8e177268946b5c237f0`  
		Last Modified: Tue, 20 Sep 2016 05:24:40 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c3b990f290e348cf63f6a5c1c62bb075bf7c474d9b0c2c62848544d3e75406`  
		Last Modified: Tue, 20 Sep 2016 05:24:45 GMT  
		Size: 15.9 MB (15906465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb658f92fe225da9cf89b80d1eda8966e98e6eb78536abbbc335deb39052dad`  
		Last Modified: Tue, 20 Sep 2016 05:24:39 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83852ec056413560e93d6d63c1bc46d86f1afa454123eac29b16068494119551`  
		Last Modified: Tue, 20 Sep 2016 05:24:39 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6036bd3674188a38d178d0090e46535b79318dcec334b75e5d6fba460bf261f2`  
		Last Modified: Wed, 21 Sep 2016 23:18:04 GMT  
		Size: 34.3 MB (34329681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd4aeeb560a9f03b6e9c4da7bb307778bd238ab0cdba06cf49457ad6ed03707`  
		Last Modified: Wed, 21 Sep 2016 23:17:50 GMT  
		Size: 3.7 MB (3741493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622028362c313d1ca5cfb9b0f05472c5a200772f0ce70c7fb41b0cb33803a510`  
		Last Modified: Wed, 21 Sep 2016 23:17:45 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b9af4d0bf16c1b59e62fa206a311f46159bbab65c057f804d1c98219118a35`  
		Last Modified: Wed, 21 Sep 2016 23:17:47 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f7750dcc587c118880589a1838772e79f2874e6d17db14e7b371964c3022c8`  
		Last Modified: Wed, 21 Sep 2016 23:17:47 GMT  
		Size: 1.3 MB (1330746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a59fbd44fae1a38708309bfd1d6fd40f7bb25d040ee3bd1e6c00053d8297c0cc`  
		Last Modified: Wed, 21 Sep 2016 23:19:34 GMT  
		Size: 30.2 MB (30220841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f92176b56bf05ac138e5ec6e01bfbe2c69559b8841bf6f0914dbdf5f168b58`  
		Last Modified: Wed, 21 Sep 2016 23:19:26 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8-apache`

```console
$ docker pull owncloud@sha256:b330e2e5dd8dade4d34d7d85a53d04e4df1f220b9ec454a7e834cc65d826065e
```

-	Platforms:
	-	linux; amd64

### `owncloud:8-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229852904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05af3599868e782d2623fb2d0168d03619b99456e40316c1a49516ca11693bb2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:21:21 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 31 Aug 2016 00:21:22 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 31 Aug 2016 00:21:23 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 31 Aug 2016 00:21:24 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 31 Aug 2016 00:21:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 31 Aug 2016 00:34:48 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_VERSION=5.6.26
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 16 Sep 2016 20:35:36 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:35:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:37:51 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:51 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:52 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:37:52 GMT
EXPOSE 80/tcp
# Fri, 16 Sep 2016 20:37:52 GMT
CMD ["apache2-foreground"]
# Fri, 16 Sep 2016 22:29:14 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Sep 2016 22:30:55 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 16 Sep 2016 22:30:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Sep 2016 22:30:57 GMT
RUN a2enmod rewrite
# Fri, 16 Sep 2016 22:31:21 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Fri, 16 Sep 2016 22:40:58 GMT
ENV OWNCLOUD_VERSION=8.2.7
# Fri, 16 Sep 2016 22:40:58 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:41:10 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Fri, 16 Sep 2016 22:41:11 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Fri, 16 Sep 2016 22:41:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:41:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9632186b6198e59b441d935261b11ff1c87e5cd9167ca4919c12f7cd776cfb`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 2.8 MB (2846751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa737a56f54d953a4a488dc224cbb55d0c0ea44aae67e531b17a70fb4b42c91`  
		Last Modified: Wed, 31 Aug 2016 16:57:47 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6d454914546db3a7df0bc7e37300f6c19f8710b1d6b539865641c841a1c81d`  
		Last Modified: Wed, 31 Aug 2016 16:57:46 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2de374782c02050ab1a225e1602a0157d489852b1a25833f0d767e12d7607ad`  
		Last Modified: Wed, 31 Aug 2016 16:57:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2793df33d916e62e622430074d131cbb6e53d5c4fbd04f3eec825543522cf6`  
		Last Modified: Wed, 31 Aug 2016 16:57:44 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e04a84359e7cf9895f75bde7ab17d42aad62f3064b837fb7fbef20c5d39b663`  
		Last Modified: Fri, 16 Sep 2016 21:02:57 GMT  
		Size: 12.4 MB (12417486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b78dd93da18cc92c3f4f8d95b3723ce3744e73cb4294394815bdf2752f052e`  
		Last Modified: Fri, 16 Sep 2016 21:02:55 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5a185cc4ffd3fe5b851650ec791d11f5f1a4f6d39025088522728d4e8b0207`  
		Last Modified: Fri, 16 Sep 2016 21:03:00 GMT  
		Size: 15.9 MB (15906800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf93fe985e6684a5806487ff5b23efa84e4d76ce77f10e9dff3bf1a951c896`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02b0950172b2c8ca14a3447bf85adc6ddc07a07fad7e92a48c7066a7a7ae693`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d38fb8b344110342c2cfb55ad7cef07fe5f28e73d52b0f615a25790f7d22af`  
		Last Modified: Fri, 16 Sep 2016 22:31:55 GMT  
		Size: 34.3 MB (34332280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90c85e50d51a68d898d341d54cdf12092a50a6dc18c82d43b277f9abb66ca29`  
		Last Modified: Fri, 16 Sep 2016 22:31:50 GMT  
		Size: 3.7 MB (3741486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3eba82db0dc882dc09f3258ce3458c063ff81da410b43e7c0c6764404de1db`  
		Last Modified: Fri, 16 Sep 2016 22:31:43 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d665990de0edcfcfdc36f2f9b6c37da5ce2d7d9251ca248118f8f351686839f3`  
		Last Modified: Fri, 16 Sep 2016 22:31:43 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965086f475a40f56c9c6faeaa8eb80804c1f92ad66d37e38fc4029e8394742d3`  
		Last Modified: Fri, 16 Sep 2016 22:31:43 GMT  
		Size: 1.3 MB (1330736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c246b15a2d7fc7481e4a1b4e4c30c3efcb15500095d988c04c7130c79b4847`  
		Last Modified: Fri, 16 Sep 2016 22:41:25 GMT  
		Size: 30.3 MB (30321736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956dbc1d7aefbf7fb8331abe8801161c27fbe45f1c10133ce5d502ebe38ecf9c`  
		Last Modified: Fri, 16 Sep 2016 22:41:18 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.2.8`

```console
$ docker pull owncloud@sha256:8e070d471d33bd0595c663915d4a711e4dca29de8b65e1b988013216c6cd9758
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.2.8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229749591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea30378c13223230bf09865e31c82e0f546656756ae007efa0ceca6241d188a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 23:24:49 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 19 Sep 2016 23:25:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:25:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 19 Sep 2016 23:25:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 19 Sep 2016 23:32:55 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:32:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 19 Sep 2016 23:32:56 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 19 Sep 2016 23:32:57 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 19 Sep 2016 23:32:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 19 Sep 2016 23:32:59 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 19 Sep 2016 23:32:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 19 Sep 2016 23:33:00 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 19 Sep 2016 23:33:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 20 Sep 2016 00:03:15 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_VERSION=5.6.26
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Tue, 20 Sep 2016 00:03:20 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Tue, 20 Sep 2016 00:03:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:31 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 20 Sep 2016 00:09:32 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:32 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:33 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 00:09:33 GMT
EXPOSE 80/tcp
# Tue, 20 Sep 2016 00:09:34 GMT
CMD ["apache2-foreground"]
# Tue, 20 Sep 2016 17:01:24 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 17:03:06 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 20 Sep 2016 17:03:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 17:03:08 GMT
RUN a2enmod rewrite
# Tue, 20 Sep 2016 17:03:32 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Wed, 21 Sep 2016 23:14:29 GMT
ENV OWNCLOUD_VERSION=8.2.8
# Wed, 21 Sep 2016 23:14:29 GMT
VOLUME [/var/www/html]
# Wed, 21 Sep 2016 23:14:41 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Wed, 21 Sep 2016 23:14:42 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Wed, 21 Sep 2016 23:14:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Sep 2016 23:14:42 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac8ac352fc3917a1c94b6fdd01f8cd1fbb5c84ba5cf9de0827f7aeaf809f51`  
		Last Modified: Tue, 20 Sep 2016 05:25:09 GMT  
		Size: 77.6 MB (77593020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba164c22a40422293321eacfbdf325437ddb9a8e9609a60531fc819076478dd`  
		Last Modified: Tue, 20 Sep 2016 05:24:46 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a720432c5339d80623549f0d127692c83bf21eb6f698a2ae5672609f99707b`  
		Last Modified: Tue, 20 Sep 2016 05:24:47 GMT  
		Size: 2.8 MB (2848976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1793582987f0dee494f9b30b31dfb6fd7a29a59b49215efdff88f8b6e3312cc1`  
		Last Modified: Tue, 20 Sep 2016 05:24:45 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce51da6ec5581808896181ffc3af6aa14bbaad8d1c2c250aa332cc40b0bbed0`  
		Last Modified: Tue, 20 Sep 2016 05:24:43 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb9cc7e0202c85e01bce4a107aca54f50751a9bad44ac8283b16d76733c2557`  
		Last Modified: Tue, 20 Sep 2016 05:24:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459cb9974ae91b15667c79441652f9f0177d860233a45e9c2513fb09f7c18ae1`  
		Last Modified: Tue, 20 Sep 2016 05:24:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a06946c9efc256736268d8bdb801b8224ddbdb86a3b81ef5bec17edae5180e3`  
		Last Modified: Tue, 20 Sep 2016 05:24:44 GMT  
		Size: 12.4 MB (12417485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82da4c5711dacbe710b9bee379619f1399aefdd25d6e8e177268946b5c237f0`  
		Last Modified: Tue, 20 Sep 2016 05:24:40 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c3b990f290e348cf63f6a5c1c62bb075bf7c474d9b0c2c62848544d3e75406`  
		Last Modified: Tue, 20 Sep 2016 05:24:45 GMT  
		Size: 15.9 MB (15906465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb658f92fe225da9cf89b80d1eda8966e98e6eb78536abbbc335deb39052dad`  
		Last Modified: Tue, 20 Sep 2016 05:24:39 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83852ec056413560e93d6d63c1bc46d86f1afa454123eac29b16068494119551`  
		Last Modified: Tue, 20 Sep 2016 05:24:39 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6036bd3674188a38d178d0090e46535b79318dcec334b75e5d6fba460bf261f2`  
		Last Modified: Wed, 21 Sep 2016 23:18:04 GMT  
		Size: 34.3 MB (34329681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd4aeeb560a9f03b6e9c4da7bb307778bd238ab0cdba06cf49457ad6ed03707`  
		Last Modified: Wed, 21 Sep 2016 23:17:50 GMT  
		Size: 3.7 MB (3741493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622028362c313d1ca5cfb9b0f05472c5a200772f0ce70c7fb41b0cb33803a510`  
		Last Modified: Wed, 21 Sep 2016 23:17:45 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b9af4d0bf16c1b59e62fa206a311f46159bbab65c057f804d1c98219118a35`  
		Last Modified: Wed, 21 Sep 2016 23:17:47 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f7750dcc587c118880589a1838772e79f2874e6d17db14e7b371964c3022c8`  
		Last Modified: Wed, 21 Sep 2016 23:17:47 GMT  
		Size: 1.3 MB (1330746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a59fbd44fae1a38708309bfd1d6fd40f7bb25d040ee3bd1e6c00053d8297c0cc`  
		Last Modified: Wed, 21 Sep 2016 23:19:34 GMT  
		Size: 30.2 MB (30220841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f92176b56bf05ac138e5ec6e01bfbe2c69559b8841bf6f0914dbdf5f168b58`  
		Last Modified: Wed, 21 Sep 2016 23:19:26 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.2`

```console
$ docker pull owncloud@sha256:8e070d471d33bd0595c663915d4a711e4dca29de8b65e1b988013216c6cd9758
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229749591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea30378c13223230bf09865e31c82e0f546656756ae007efa0ceca6241d188a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 23:24:49 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 19 Sep 2016 23:25:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:25:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 19 Sep 2016 23:25:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 19 Sep 2016 23:32:55 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:32:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 19 Sep 2016 23:32:56 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 19 Sep 2016 23:32:57 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 19 Sep 2016 23:32:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 19 Sep 2016 23:32:59 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 19 Sep 2016 23:32:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 19 Sep 2016 23:33:00 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 19 Sep 2016 23:33:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 20 Sep 2016 00:03:15 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_VERSION=5.6.26
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Tue, 20 Sep 2016 00:03:20 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Tue, 20 Sep 2016 00:03:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:31 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 20 Sep 2016 00:09:32 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:32 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:33 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 00:09:33 GMT
EXPOSE 80/tcp
# Tue, 20 Sep 2016 00:09:34 GMT
CMD ["apache2-foreground"]
# Tue, 20 Sep 2016 17:01:24 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 17:03:06 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 20 Sep 2016 17:03:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 17:03:08 GMT
RUN a2enmod rewrite
# Tue, 20 Sep 2016 17:03:32 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Wed, 21 Sep 2016 23:14:29 GMT
ENV OWNCLOUD_VERSION=8.2.8
# Wed, 21 Sep 2016 23:14:29 GMT
VOLUME [/var/www/html]
# Wed, 21 Sep 2016 23:14:41 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Wed, 21 Sep 2016 23:14:42 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Wed, 21 Sep 2016 23:14:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Sep 2016 23:14:42 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac8ac352fc3917a1c94b6fdd01f8cd1fbb5c84ba5cf9de0827f7aeaf809f51`  
		Last Modified: Tue, 20 Sep 2016 05:25:09 GMT  
		Size: 77.6 MB (77593020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba164c22a40422293321eacfbdf325437ddb9a8e9609a60531fc819076478dd`  
		Last Modified: Tue, 20 Sep 2016 05:24:46 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a720432c5339d80623549f0d127692c83bf21eb6f698a2ae5672609f99707b`  
		Last Modified: Tue, 20 Sep 2016 05:24:47 GMT  
		Size: 2.8 MB (2848976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1793582987f0dee494f9b30b31dfb6fd7a29a59b49215efdff88f8b6e3312cc1`  
		Last Modified: Tue, 20 Sep 2016 05:24:45 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce51da6ec5581808896181ffc3af6aa14bbaad8d1c2c250aa332cc40b0bbed0`  
		Last Modified: Tue, 20 Sep 2016 05:24:43 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb9cc7e0202c85e01bce4a107aca54f50751a9bad44ac8283b16d76733c2557`  
		Last Modified: Tue, 20 Sep 2016 05:24:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459cb9974ae91b15667c79441652f9f0177d860233a45e9c2513fb09f7c18ae1`  
		Last Modified: Tue, 20 Sep 2016 05:24:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a06946c9efc256736268d8bdb801b8224ddbdb86a3b81ef5bec17edae5180e3`  
		Last Modified: Tue, 20 Sep 2016 05:24:44 GMT  
		Size: 12.4 MB (12417485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82da4c5711dacbe710b9bee379619f1399aefdd25d6e8e177268946b5c237f0`  
		Last Modified: Tue, 20 Sep 2016 05:24:40 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c3b990f290e348cf63f6a5c1c62bb075bf7c474d9b0c2c62848544d3e75406`  
		Last Modified: Tue, 20 Sep 2016 05:24:45 GMT  
		Size: 15.9 MB (15906465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb658f92fe225da9cf89b80d1eda8966e98e6eb78536abbbc335deb39052dad`  
		Last Modified: Tue, 20 Sep 2016 05:24:39 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83852ec056413560e93d6d63c1bc46d86f1afa454123eac29b16068494119551`  
		Last Modified: Tue, 20 Sep 2016 05:24:39 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6036bd3674188a38d178d0090e46535b79318dcec334b75e5d6fba460bf261f2`  
		Last Modified: Wed, 21 Sep 2016 23:18:04 GMT  
		Size: 34.3 MB (34329681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd4aeeb560a9f03b6e9c4da7bb307778bd238ab0cdba06cf49457ad6ed03707`  
		Last Modified: Wed, 21 Sep 2016 23:17:50 GMT  
		Size: 3.7 MB (3741493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622028362c313d1ca5cfb9b0f05472c5a200772f0ce70c7fb41b0cb33803a510`  
		Last Modified: Wed, 21 Sep 2016 23:17:45 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b9af4d0bf16c1b59e62fa206a311f46159bbab65c057f804d1c98219118a35`  
		Last Modified: Wed, 21 Sep 2016 23:17:47 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f7750dcc587c118880589a1838772e79f2874e6d17db14e7b371964c3022c8`  
		Last Modified: Wed, 21 Sep 2016 23:17:47 GMT  
		Size: 1.3 MB (1330746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a59fbd44fae1a38708309bfd1d6fd40f7bb25d040ee3bd1e6c00053d8297c0cc`  
		Last Modified: Wed, 21 Sep 2016 23:19:34 GMT  
		Size: 30.2 MB (30220841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f92176b56bf05ac138e5ec6e01bfbe2c69559b8841bf6f0914dbdf5f168b58`  
		Last Modified: Wed, 21 Sep 2016 23:19:26 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8`

```console
$ docker pull owncloud@sha256:b330e2e5dd8dade4d34d7d85a53d04e4df1f220b9ec454a7e834cc65d826065e
```

-	Platforms:
	-	linux; amd64

### `owncloud:8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229852904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05af3599868e782d2623fb2d0168d03619b99456e40316c1a49516ca11693bb2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:21:21 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 31 Aug 2016 00:21:22 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 31 Aug 2016 00:21:23 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 31 Aug 2016 00:21:24 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 31 Aug 2016 00:21:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 31 Aug 2016 00:34:48 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_VERSION=5.6.26
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 16 Sep 2016 20:35:36 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:35:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:37:51 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:51 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:52 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:37:52 GMT
EXPOSE 80/tcp
# Fri, 16 Sep 2016 20:37:52 GMT
CMD ["apache2-foreground"]
# Fri, 16 Sep 2016 22:29:14 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Sep 2016 22:30:55 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 16 Sep 2016 22:30:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Sep 2016 22:30:57 GMT
RUN a2enmod rewrite
# Fri, 16 Sep 2016 22:31:21 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Fri, 16 Sep 2016 22:40:58 GMT
ENV OWNCLOUD_VERSION=8.2.7
# Fri, 16 Sep 2016 22:40:58 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:41:10 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Fri, 16 Sep 2016 22:41:11 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Fri, 16 Sep 2016 22:41:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:41:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9632186b6198e59b441d935261b11ff1c87e5cd9167ca4919c12f7cd776cfb`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 2.8 MB (2846751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa737a56f54d953a4a488dc224cbb55d0c0ea44aae67e531b17a70fb4b42c91`  
		Last Modified: Wed, 31 Aug 2016 16:57:47 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6d454914546db3a7df0bc7e37300f6c19f8710b1d6b539865641c841a1c81d`  
		Last Modified: Wed, 31 Aug 2016 16:57:46 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2de374782c02050ab1a225e1602a0157d489852b1a25833f0d767e12d7607ad`  
		Last Modified: Wed, 31 Aug 2016 16:57:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2793df33d916e62e622430074d131cbb6e53d5c4fbd04f3eec825543522cf6`  
		Last Modified: Wed, 31 Aug 2016 16:57:44 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e04a84359e7cf9895f75bde7ab17d42aad62f3064b837fb7fbef20c5d39b663`  
		Last Modified: Fri, 16 Sep 2016 21:02:57 GMT  
		Size: 12.4 MB (12417486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b78dd93da18cc92c3f4f8d95b3723ce3744e73cb4294394815bdf2752f052e`  
		Last Modified: Fri, 16 Sep 2016 21:02:55 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5a185cc4ffd3fe5b851650ec791d11f5f1a4f6d39025088522728d4e8b0207`  
		Last Modified: Fri, 16 Sep 2016 21:03:00 GMT  
		Size: 15.9 MB (15906800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf93fe985e6684a5806487ff5b23efa84e4d76ce77f10e9dff3bf1a951c896`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02b0950172b2c8ca14a3447bf85adc6ddc07a07fad7e92a48c7066a7a7ae693`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d38fb8b344110342c2cfb55ad7cef07fe5f28e73d52b0f615a25790f7d22af`  
		Last Modified: Fri, 16 Sep 2016 22:31:55 GMT  
		Size: 34.3 MB (34332280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90c85e50d51a68d898d341d54cdf12092a50a6dc18c82d43b277f9abb66ca29`  
		Last Modified: Fri, 16 Sep 2016 22:31:50 GMT  
		Size: 3.7 MB (3741486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3eba82db0dc882dc09f3258ce3458c063ff81da410b43e7c0c6764404de1db`  
		Last Modified: Fri, 16 Sep 2016 22:31:43 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d665990de0edcfcfdc36f2f9b6c37da5ce2d7d9251ca248118f8f351686839f3`  
		Last Modified: Fri, 16 Sep 2016 22:31:43 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965086f475a40f56c9c6faeaa8eb80804c1f92ad66d37e38fc4029e8394742d3`  
		Last Modified: Fri, 16 Sep 2016 22:31:43 GMT  
		Size: 1.3 MB (1330736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c246b15a2d7fc7481e4a1b4e4c30c3efcb15500095d988c04c7130c79b4847`  
		Last Modified: Fri, 16 Sep 2016 22:41:25 GMT  
		Size: 30.3 MB (30321736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956dbc1d7aefbf7fb8331abe8801161c27fbe45f1c10133ce5d502ebe38ecf9c`  
		Last Modified: Fri, 16 Sep 2016 22:41:18 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.2.8-fpm`

**does not exist** (yet?)

## `owncloud:8.2-fpm`

```console
$ docker pull owncloud@sha256:62be9068e6c60ab4c3339b2242f414b2579b5096f0030a2712c9db8d7681adab
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.2-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.9 MB (219916596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e57f2b6a26c1c1a80d12a2560520b6c8847a4167d95ba95e799394235d7cd627`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:23:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 31 Aug 2016 00:37:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_VERSION=5.6.26
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 16 Sep 2016 20:37:56 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:37:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:41:18 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:41:18 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:41:19 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:41:19 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 16 Sep 2016 20:41:20 GMT
EXPOSE 9000/tcp
# Fri, 16 Sep 2016 20:41:20 GMT
CMD ["php-fpm"]
# Fri, 16 Sep 2016 22:33:16 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Sep 2016 22:34:57 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 16 Sep 2016 22:34:58 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Sep 2016 22:35:22 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Fri, 16 Sep 2016 22:42:15 GMT
ENV OWNCLOUD_VERSION=8.2.7
# Fri, 16 Sep 2016 22:42:16 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:42:28 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Fri, 16 Sep 2016 22:42:29 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Fri, 16 Sep 2016 22:42:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:42:30 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f867227ba0ca7d341b526da9b951ce76c29841e628fd41e7848cd02a10cc9b3`  
		Last Modified: Fri, 16 Sep 2016 21:03:33 GMT  
		Size: 12.4 MB (12417483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e060fac29eab30697e9e6d0cf654eb74fd357cf9bae808a22716372d9167adf`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc5c82aa9b2bd88b7d2110285a373e40b7340379ee6e0f8f95b6269ed7b6b28`  
		Last Modified: Fri, 16 Sep 2016 21:03:31 GMT  
		Size: 8.8 MB (8835389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28455473ebdcc509ff6d0f1005ba4537b9c06fc753eac522d34f7d983f90cac1`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779e531cc75ed9693123bb9d9b2adcbf6905ef0dcdef6f54d7f69de0534e99d1`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42627851ab0d4a77e88ff88f96a8ae1246b73e545c2fdd9111e46ff20acf58ec`  
		Last Modified: Fri, 16 Sep 2016 21:03:29 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43aaaa7f1ecbf8ef6277dac013687bd931c670099000e8ab4e83532ab8bab94`  
		Last Modified: Fri, 16 Sep 2016 22:35:55 GMT  
		Size: 34.3 MB (34309515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e3d1d9e1c9436f2597afcf1705654d037513353b6d9ea04fbc98f18ee90f00`  
		Last Modified: Fri, 16 Sep 2016 22:35:44 GMT  
		Size: 3.7 MB (3741633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7bf5bfa2bf3189b507dfa7fe5e70d13c3988d1f77d6cdcaab9e307c796aaee`  
		Last Modified: Fri, 16 Sep 2016 22:35:46 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdc6931bc2898c38ddfaedffd6f5dfdc0beddeee91044cb71cffafe8473f6d9`  
		Last Modified: Fri, 16 Sep 2016 22:35:43 GMT  
		Size: 1.3 MB (1330729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08aa1966aaf0cbe831bfe2f060b77d9b20ebc1662507d3212d54ea9e4635886a`  
		Last Modified: Fri, 16 Sep 2016 22:42:43 GMT  
		Size: 30.3 MB (30321724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be49167c9a5f93dd6eb14feccd7ae48d9a2351fe16788e6e7cd89f9372a60cdb`  
		Last Modified: Fri, 16 Sep 2016 22:42:35 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8-fpm`

```console
$ docker pull owncloud@sha256:62be9068e6c60ab4c3339b2242f414b2579b5096f0030a2712c9db8d7681adab
```

-	Platforms:
	-	linux; amd64

### `owncloud:8-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.9 MB (219916596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e57f2b6a26c1c1a80d12a2560520b6c8847a4167d95ba95e799394235d7cd627`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:23:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 31 Aug 2016 00:37:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_VERSION=5.6.26
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 16 Sep 2016 20:37:56 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:37:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:41:18 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:41:18 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:41:19 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:41:19 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 16 Sep 2016 20:41:20 GMT
EXPOSE 9000/tcp
# Fri, 16 Sep 2016 20:41:20 GMT
CMD ["php-fpm"]
# Fri, 16 Sep 2016 22:33:16 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Sep 2016 22:34:57 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 16 Sep 2016 22:34:58 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Sep 2016 22:35:22 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Fri, 16 Sep 2016 22:42:15 GMT
ENV OWNCLOUD_VERSION=8.2.7
# Fri, 16 Sep 2016 22:42:16 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:42:28 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Fri, 16 Sep 2016 22:42:29 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Fri, 16 Sep 2016 22:42:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:42:30 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f867227ba0ca7d341b526da9b951ce76c29841e628fd41e7848cd02a10cc9b3`  
		Last Modified: Fri, 16 Sep 2016 21:03:33 GMT  
		Size: 12.4 MB (12417483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e060fac29eab30697e9e6d0cf654eb74fd357cf9bae808a22716372d9167adf`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc5c82aa9b2bd88b7d2110285a373e40b7340379ee6e0f8f95b6269ed7b6b28`  
		Last Modified: Fri, 16 Sep 2016 21:03:31 GMT  
		Size: 8.8 MB (8835389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28455473ebdcc509ff6d0f1005ba4537b9c06fc753eac522d34f7d983f90cac1`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779e531cc75ed9693123bb9d9b2adcbf6905ef0dcdef6f54d7f69de0534e99d1`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42627851ab0d4a77e88ff88f96a8ae1246b73e545c2fdd9111e46ff20acf58ec`  
		Last Modified: Fri, 16 Sep 2016 21:03:29 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43aaaa7f1ecbf8ef6277dac013687bd931c670099000e8ab4e83532ab8bab94`  
		Last Modified: Fri, 16 Sep 2016 22:35:55 GMT  
		Size: 34.3 MB (34309515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e3d1d9e1c9436f2597afcf1705654d037513353b6d9ea04fbc98f18ee90f00`  
		Last Modified: Fri, 16 Sep 2016 22:35:44 GMT  
		Size: 3.7 MB (3741633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7bf5bfa2bf3189b507dfa7fe5e70d13c3988d1f77d6cdcaab9e307c796aaee`  
		Last Modified: Fri, 16 Sep 2016 22:35:46 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdc6931bc2898c38ddfaedffd6f5dfdc0beddeee91044cb71cffafe8473f6d9`  
		Last Modified: Fri, 16 Sep 2016 22:35:43 GMT  
		Size: 1.3 MB (1330729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08aa1966aaf0cbe831bfe2f060b77d9b20ebc1662507d3212d54ea9e4635886a`  
		Last Modified: Fri, 16 Sep 2016 22:42:43 GMT  
		Size: 30.3 MB (30321724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be49167c9a5f93dd6eb14feccd7ae48d9a2351fe16788e6e7cd89f9372a60cdb`  
		Last Modified: Fri, 16 Sep 2016 22:42:35 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:9.0.5-apache`

```console
$ docker pull owncloud@sha256:ac854ab527695f810f0b7013cc1f7fd6ae25e6e745f217c6c0f0320e123565af
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.0.5-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.6 MB (230550529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd3d532cd1790af1a2da81a14ec695a72d1131531ee6d2a68117b09704f70e3e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 23:24:49 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 19 Sep 2016 23:25:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:25:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 19 Sep 2016 23:25:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 19 Sep 2016 23:32:55 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:32:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 19 Sep 2016 23:32:56 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 19 Sep 2016 23:32:57 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 19 Sep 2016 23:32:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 19 Sep 2016 23:32:59 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 19 Sep 2016 23:32:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 19 Sep 2016 23:33:00 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 19 Sep 2016 23:33:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 20 Sep 2016 00:03:15 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_VERSION=5.6.26
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Tue, 20 Sep 2016 00:03:20 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Tue, 20 Sep 2016 00:03:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:31 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 20 Sep 2016 00:09:32 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:32 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:33 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 00:09:33 GMT
EXPOSE 80/tcp
# Tue, 20 Sep 2016 00:09:34 GMT
CMD ["apache2-foreground"]
# Tue, 20 Sep 2016 17:01:24 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 17:03:06 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 20 Sep 2016 17:03:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 17:03:08 GMT
RUN a2enmod rewrite
# Tue, 20 Sep 2016 17:03:32 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Wed, 21 Sep 2016 23:14:59 GMT
ENV OWNCLOUD_VERSION=9.0.5
# Wed, 21 Sep 2016 23:14:59 GMT
VOLUME [/var/www/html]
# Wed, 21 Sep 2016 23:15:12 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Wed, 21 Sep 2016 23:15:13 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Wed, 21 Sep 2016 23:15:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Sep 2016 23:15:13 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac8ac352fc3917a1c94b6fdd01f8cd1fbb5c84ba5cf9de0827f7aeaf809f51`  
		Last Modified: Tue, 20 Sep 2016 05:25:09 GMT  
		Size: 77.6 MB (77593020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba164c22a40422293321eacfbdf325437ddb9a8e9609a60531fc819076478dd`  
		Last Modified: Tue, 20 Sep 2016 05:24:46 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a720432c5339d80623549f0d127692c83bf21eb6f698a2ae5672609f99707b`  
		Last Modified: Tue, 20 Sep 2016 05:24:47 GMT  
		Size: 2.8 MB (2848976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1793582987f0dee494f9b30b31dfb6fd7a29a59b49215efdff88f8b6e3312cc1`  
		Last Modified: Tue, 20 Sep 2016 05:24:45 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce51da6ec5581808896181ffc3af6aa14bbaad8d1c2c250aa332cc40b0bbed0`  
		Last Modified: Tue, 20 Sep 2016 05:24:43 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb9cc7e0202c85e01bce4a107aca54f50751a9bad44ac8283b16d76733c2557`  
		Last Modified: Tue, 20 Sep 2016 05:24:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459cb9974ae91b15667c79441652f9f0177d860233a45e9c2513fb09f7c18ae1`  
		Last Modified: Tue, 20 Sep 2016 05:24:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a06946c9efc256736268d8bdb801b8224ddbdb86a3b81ef5bec17edae5180e3`  
		Last Modified: Tue, 20 Sep 2016 05:24:44 GMT  
		Size: 12.4 MB (12417485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82da4c5711dacbe710b9bee379619f1399aefdd25d6e8e177268946b5c237f0`  
		Last Modified: Tue, 20 Sep 2016 05:24:40 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c3b990f290e348cf63f6a5c1c62bb075bf7c474d9b0c2c62848544d3e75406`  
		Last Modified: Tue, 20 Sep 2016 05:24:45 GMT  
		Size: 15.9 MB (15906465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb658f92fe225da9cf89b80d1eda8966e98e6eb78536abbbc335deb39052dad`  
		Last Modified: Tue, 20 Sep 2016 05:24:39 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83852ec056413560e93d6d63c1bc46d86f1afa454123eac29b16068494119551`  
		Last Modified: Tue, 20 Sep 2016 05:24:39 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6036bd3674188a38d178d0090e46535b79318dcec334b75e5d6fba460bf261f2`  
		Last Modified: Wed, 21 Sep 2016 23:18:04 GMT  
		Size: 34.3 MB (34329681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd4aeeb560a9f03b6e9c4da7bb307778bd238ab0cdba06cf49457ad6ed03707`  
		Last Modified: Wed, 21 Sep 2016 23:17:50 GMT  
		Size: 3.7 MB (3741493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622028362c313d1ca5cfb9b0f05472c5a200772f0ce70c7fb41b0cb33803a510`  
		Last Modified: Wed, 21 Sep 2016 23:17:45 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b9af4d0bf16c1b59e62fa206a311f46159bbab65c057f804d1c98219118a35`  
		Last Modified: Wed, 21 Sep 2016 23:17:47 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f7750dcc587c118880589a1838772e79f2874e6d17db14e7b371964c3022c8`  
		Last Modified: Wed, 21 Sep 2016 23:17:47 GMT  
		Size: 1.3 MB (1330746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4ddb3291bc7ef5e6f80dc82203462e7530b3d8c5a1b30e72a7acf5775776a9`  
		Last Modified: Wed, 21 Sep 2016 23:21:23 GMT  
		Size: 31.0 MB (31021778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b40f0252af5c26179f78f90b1c74708df59e3c5953383cd3da0d1ae8133a1f`  
		Last Modified: Wed, 21 Sep 2016 23:21:16 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:9.0-apache`

```console
$ docker pull owncloud@sha256:ac854ab527695f810f0b7013cc1f7fd6ae25e6e745f217c6c0f0320e123565af
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.0-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.6 MB (230550529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd3d532cd1790af1a2da81a14ec695a72d1131531ee6d2a68117b09704f70e3e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 23:24:49 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 19 Sep 2016 23:25:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:25:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 19 Sep 2016 23:25:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 19 Sep 2016 23:32:55 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:32:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 19 Sep 2016 23:32:56 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 19 Sep 2016 23:32:57 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 19 Sep 2016 23:32:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 19 Sep 2016 23:32:59 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 19 Sep 2016 23:32:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 19 Sep 2016 23:33:00 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 19 Sep 2016 23:33:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 20 Sep 2016 00:03:15 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_VERSION=5.6.26
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Tue, 20 Sep 2016 00:03:20 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Tue, 20 Sep 2016 00:03:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:31 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 20 Sep 2016 00:09:32 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:32 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:33 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 00:09:33 GMT
EXPOSE 80/tcp
# Tue, 20 Sep 2016 00:09:34 GMT
CMD ["apache2-foreground"]
# Tue, 20 Sep 2016 17:01:24 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 17:03:06 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 20 Sep 2016 17:03:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 17:03:08 GMT
RUN a2enmod rewrite
# Tue, 20 Sep 2016 17:03:32 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Wed, 21 Sep 2016 23:14:59 GMT
ENV OWNCLOUD_VERSION=9.0.5
# Wed, 21 Sep 2016 23:14:59 GMT
VOLUME [/var/www/html]
# Wed, 21 Sep 2016 23:15:12 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Wed, 21 Sep 2016 23:15:13 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Wed, 21 Sep 2016 23:15:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Sep 2016 23:15:13 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac8ac352fc3917a1c94b6fdd01f8cd1fbb5c84ba5cf9de0827f7aeaf809f51`  
		Last Modified: Tue, 20 Sep 2016 05:25:09 GMT  
		Size: 77.6 MB (77593020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba164c22a40422293321eacfbdf325437ddb9a8e9609a60531fc819076478dd`  
		Last Modified: Tue, 20 Sep 2016 05:24:46 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a720432c5339d80623549f0d127692c83bf21eb6f698a2ae5672609f99707b`  
		Last Modified: Tue, 20 Sep 2016 05:24:47 GMT  
		Size: 2.8 MB (2848976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1793582987f0dee494f9b30b31dfb6fd7a29a59b49215efdff88f8b6e3312cc1`  
		Last Modified: Tue, 20 Sep 2016 05:24:45 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce51da6ec5581808896181ffc3af6aa14bbaad8d1c2c250aa332cc40b0bbed0`  
		Last Modified: Tue, 20 Sep 2016 05:24:43 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb9cc7e0202c85e01bce4a107aca54f50751a9bad44ac8283b16d76733c2557`  
		Last Modified: Tue, 20 Sep 2016 05:24:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459cb9974ae91b15667c79441652f9f0177d860233a45e9c2513fb09f7c18ae1`  
		Last Modified: Tue, 20 Sep 2016 05:24:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a06946c9efc256736268d8bdb801b8224ddbdb86a3b81ef5bec17edae5180e3`  
		Last Modified: Tue, 20 Sep 2016 05:24:44 GMT  
		Size: 12.4 MB (12417485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82da4c5711dacbe710b9bee379619f1399aefdd25d6e8e177268946b5c237f0`  
		Last Modified: Tue, 20 Sep 2016 05:24:40 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c3b990f290e348cf63f6a5c1c62bb075bf7c474d9b0c2c62848544d3e75406`  
		Last Modified: Tue, 20 Sep 2016 05:24:45 GMT  
		Size: 15.9 MB (15906465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb658f92fe225da9cf89b80d1eda8966e98e6eb78536abbbc335deb39052dad`  
		Last Modified: Tue, 20 Sep 2016 05:24:39 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83852ec056413560e93d6d63c1bc46d86f1afa454123eac29b16068494119551`  
		Last Modified: Tue, 20 Sep 2016 05:24:39 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6036bd3674188a38d178d0090e46535b79318dcec334b75e5d6fba460bf261f2`  
		Last Modified: Wed, 21 Sep 2016 23:18:04 GMT  
		Size: 34.3 MB (34329681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd4aeeb560a9f03b6e9c4da7bb307778bd238ab0cdba06cf49457ad6ed03707`  
		Last Modified: Wed, 21 Sep 2016 23:17:50 GMT  
		Size: 3.7 MB (3741493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622028362c313d1ca5cfb9b0f05472c5a200772f0ce70c7fb41b0cb33803a510`  
		Last Modified: Wed, 21 Sep 2016 23:17:45 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b9af4d0bf16c1b59e62fa206a311f46159bbab65c057f804d1c98219118a35`  
		Last Modified: Wed, 21 Sep 2016 23:17:47 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f7750dcc587c118880589a1838772e79f2874e6d17db14e7b371964c3022c8`  
		Last Modified: Wed, 21 Sep 2016 23:17:47 GMT  
		Size: 1.3 MB (1330746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4ddb3291bc7ef5e6f80dc82203462e7530b3d8c5a1b30e72a7acf5775776a9`  
		Last Modified: Wed, 21 Sep 2016 23:21:23 GMT  
		Size: 31.0 MB (31021778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b40f0252af5c26179f78f90b1c74708df59e3c5953383cd3da0d1ae8133a1f`  
		Last Modified: Wed, 21 Sep 2016 23:21:16 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:9.0.5`

**does not exist** (yet?)

## `owncloud:9.0`

```console
$ docker pull owncloud@sha256:ee5f6444eca4e201d86d06aa7c386f75fcb97d16028933d6973c3f94321bb0c5
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.6 MB (230617722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbaea946fe9ef699725341ae42f7e7150a7eac82a02b79b2bce658c3f20ea8f2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:21:21 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 31 Aug 2016 00:21:22 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 31 Aug 2016 00:21:23 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 31 Aug 2016 00:21:24 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 31 Aug 2016 00:21:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 31 Aug 2016 00:34:48 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_VERSION=5.6.26
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 16 Sep 2016 20:35:36 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:35:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:37:51 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:51 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:52 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:37:52 GMT
EXPOSE 80/tcp
# Fri, 16 Sep 2016 20:37:52 GMT
CMD ["apache2-foreground"]
# Fri, 16 Sep 2016 22:29:14 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Sep 2016 22:30:55 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 16 Sep 2016 22:30:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Sep 2016 22:30:57 GMT
RUN a2enmod rewrite
# Fri, 16 Sep 2016 22:31:21 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Fri, 16 Sep 2016 22:43:09 GMT
ENV OWNCLOUD_VERSION=9.0.4
# Fri, 16 Sep 2016 22:43:09 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:43:21 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Fri, 16 Sep 2016 22:43:22 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Fri, 16 Sep 2016 22:43:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:43:23 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9632186b6198e59b441d935261b11ff1c87e5cd9167ca4919c12f7cd776cfb`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 2.8 MB (2846751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa737a56f54d953a4a488dc224cbb55d0c0ea44aae67e531b17a70fb4b42c91`  
		Last Modified: Wed, 31 Aug 2016 16:57:47 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6d454914546db3a7df0bc7e37300f6c19f8710b1d6b539865641c841a1c81d`  
		Last Modified: Wed, 31 Aug 2016 16:57:46 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2de374782c02050ab1a225e1602a0157d489852b1a25833f0d767e12d7607ad`  
		Last Modified: Wed, 31 Aug 2016 16:57:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2793df33d916e62e622430074d131cbb6e53d5c4fbd04f3eec825543522cf6`  
		Last Modified: Wed, 31 Aug 2016 16:57:44 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e04a84359e7cf9895f75bde7ab17d42aad62f3064b837fb7fbef20c5d39b663`  
		Last Modified: Fri, 16 Sep 2016 21:02:57 GMT  
		Size: 12.4 MB (12417486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b78dd93da18cc92c3f4f8d95b3723ce3744e73cb4294394815bdf2752f052e`  
		Last Modified: Fri, 16 Sep 2016 21:02:55 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5a185cc4ffd3fe5b851650ec791d11f5f1a4f6d39025088522728d4e8b0207`  
		Last Modified: Fri, 16 Sep 2016 21:03:00 GMT  
		Size: 15.9 MB (15906800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf93fe985e6684a5806487ff5b23efa84e4d76ce77f10e9dff3bf1a951c896`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02b0950172b2c8ca14a3447bf85adc6ddc07a07fad7e92a48c7066a7a7ae693`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d38fb8b344110342c2cfb55ad7cef07fe5f28e73d52b0f615a25790f7d22af`  
		Last Modified: Fri, 16 Sep 2016 22:31:55 GMT  
		Size: 34.3 MB (34332280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90c85e50d51a68d898d341d54cdf12092a50a6dc18c82d43b277f9abb66ca29`  
		Last Modified: Fri, 16 Sep 2016 22:31:50 GMT  
		Size: 3.7 MB (3741486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3eba82db0dc882dc09f3258ce3458c063ff81da410b43e7c0c6764404de1db`  
		Last Modified: Fri, 16 Sep 2016 22:31:43 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d665990de0edcfcfdc36f2f9b6c37da5ce2d7d9251ca248118f8f351686839f3`  
		Last Modified: Fri, 16 Sep 2016 22:31:43 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965086f475a40f56c9c6faeaa8eb80804c1f92ad66d37e38fc4029e8394742d3`  
		Last Modified: Fri, 16 Sep 2016 22:31:43 GMT  
		Size: 1.3 MB (1330736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d65849cb7c7c7c4fe4b6eec57dee45b928b04f1b79eea4859d69cb6eed4fa56`  
		Last Modified: Fri, 16 Sep 2016 22:43:36 GMT  
		Size: 31.1 MB (31086555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e8f9a9f90ed56910ef545f86896dba6331a67cd7c0d7227d83f3ca22ec2973`  
		Last Modified: Fri, 16 Sep 2016 22:43:29 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:9.0.5-fpm`

**does not exist** (yet?)

## `owncloud:9.0-fpm`

```console
$ docker pull owncloud@sha256:b6826163cdc8a380c73026e56454369309cbe4ca6eda0a89e9baa8f02d76a967
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.0-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.6 MB (220612106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02b33126348f5a378754fdb56a354ce3c286b0f7c0b7dad8ce9ad543951778f1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 23:24:49 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 19 Sep 2016 23:25:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:25:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 19 Sep 2016 23:25:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 19 Sep 2016 23:35:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 20 Sep 2016 00:09:34 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 20 Sep 2016 00:09:35 GMT
ENV PHP_VERSION=5.6.26
# Tue, 20 Sep 2016 00:09:35 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Tue, 20 Sep 2016 00:09:36 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Tue, 20 Sep 2016 00:09:40 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Tue, 20 Sep 2016 00:09:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:17:06 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 20 Sep 2016 00:17:08 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:17:08 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 00:17:09 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 20 Sep 2016 00:17:09 GMT
EXPOSE 9000/tcp
# Tue, 20 Sep 2016 00:17:10 GMT
CMD ["php-fpm"]
# Tue, 20 Sep 2016 16:56:25 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:58:07 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 20 Sep 2016 16:58:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 16:58:32 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Wed, 21 Sep 2016 23:15:14 GMT
ENV OWNCLOUD_VERSION=9.0.5
# Wed, 21 Sep 2016 23:15:14 GMT
VOLUME [/var/www/html]
# Wed, 21 Sep 2016 23:15:28 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Wed, 21 Sep 2016 23:15:28 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Wed, 21 Sep 2016 23:15:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Sep 2016 23:15:29 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac8ac352fc3917a1c94b6fdd01f8cd1fbb5c84ba5cf9de0827f7aeaf809f51`  
		Last Modified: Tue, 20 Sep 2016 05:25:09 GMT  
		Size: 77.6 MB (77593020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba164c22a40422293321eacfbdf325437ddb9a8e9609a60531fc819076478dd`  
		Last Modified: Tue, 20 Sep 2016 05:24:46 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b542df4654dc77cdf26f8762e82fa1ab56de797797d91ce459191d710c2bd31`  
		Last Modified: Tue, 20 Sep 2016 05:26:33 GMT  
		Size: 12.4 MB (12417484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81713641802521724a63be2c0e32a8056354dbb7513d9bf9a5b2eb4eaab963dd`  
		Last Modified: Tue, 20 Sep 2016 05:26:30 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ce1ce6c3586bf6ee8b9364a7b2f4d79eeb322e34ec69acf1360913d26fadf5`  
		Last Modified: Tue, 20 Sep 2016 05:26:33 GMT  
		Size: 8.8 MB (8834845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ee40203c5586f597e1398383ed6162c77610c54570dd66b58c3633adfd80dd`  
		Last Modified: Tue, 20 Sep 2016 05:26:29 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839d0cd71a26d95bf130dd5cc67b35be5fd7f463c0390a5707e18fea550f9ce1`  
		Last Modified: Tue, 20 Sep 2016 05:26:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7454258df3d2985f624fa22ba111aa3f4b85d215ed61bc69d1283853eee32f9`  
		Last Modified: Tue, 20 Sep 2016 05:26:26 GMT  
		Size: 7.6 KB (7625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bd2615ea72a2289ed2e7b8f163659b382c3b361a25321af8012563194d3c3d`  
		Last Modified: Wed, 21 Sep 2016 23:19:03 GMT  
		Size: 34.3 MB (34307260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20981ae04c07dbf9d8bd51025682b699ecd678303c9f1dba60d47e7ade870d90`  
		Last Modified: Wed, 21 Sep 2016 23:18:51 GMT  
		Size: 3.7 MB (3741644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed77166da43f17ea0273d9732e12e076f315e15647a8c592090cc403d6a3200e`  
		Last Modified: Wed, 21 Sep 2016 23:18:52 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df58e1a679a56a7538eec9fbd7e9995d69a0746ce0842a1642048674419616dc`  
		Last Modified: Wed, 21 Sep 2016 23:18:50 GMT  
		Size: 1.3 MB (1330670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ddb1fe89674e85e1471a10940339df84d77c7c46b5ccc5868bbd0ff9f332e67`  
		Last Modified: Wed, 21 Sep 2016 23:22:14 GMT  
		Size: 31.0 MB (31021785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3407b7a80b9a842eb3f471b0ca2a1868122ed1c45c492deec637ce7408dbfb5a`  
		Last Modified: Wed, 21 Sep 2016 23:22:06 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:9.1.1-apache`

```console
$ docker pull owncloud@sha256:3d2f1cac9c886ab40dc29ac6ad7eab6c8e95f7d9940f942482b39fb032027a62
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.1.1-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.2 MB (231233617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a87352a387918fd9047500f3f42fd2b9a93ac204ca47b264586f3ca10c780bac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 23:24:49 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 19 Sep 2016 23:25:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:25:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 19 Sep 2016 23:25:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 19 Sep 2016 23:32:55 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:32:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 19 Sep 2016 23:32:56 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 19 Sep 2016 23:32:57 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 19 Sep 2016 23:32:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 19 Sep 2016 23:32:59 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 19 Sep 2016 23:32:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 19 Sep 2016 23:33:00 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 19 Sep 2016 23:33:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 20 Sep 2016 00:03:15 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_VERSION=5.6.26
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Tue, 20 Sep 2016 00:03:20 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Tue, 20 Sep 2016 00:03:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:31 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 20 Sep 2016 00:09:32 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:32 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:33 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 00:09:33 GMT
EXPOSE 80/tcp
# Tue, 20 Sep 2016 00:09:34 GMT
CMD ["apache2-foreground"]
# Tue, 20 Sep 2016 17:01:24 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 17:03:06 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 20 Sep 2016 17:03:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 17:03:08 GMT
RUN a2enmod rewrite
# Tue, 20 Sep 2016 17:03:32 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Wed, 21 Sep 2016 23:15:30 GMT
ENV OWNCLOUD_VERSION=9.1.1
# Wed, 21 Sep 2016 23:15:30 GMT
VOLUME [/var/www/html]
# Wed, 21 Sep 2016 23:15:43 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Wed, 21 Sep 2016 23:15:43 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Wed, 21 Sep 2016 23:15:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Sep 2016 23:15:44 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac8ac352fc3917a1c94b6fdd01f8cd1fbb5c84ba5cf9de0827f7aeaf809f51`  
		Last Modified: Tue, 20 Sep 2016 05:25:09 GMT  
		Size: 77.6 MB (77593020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba164c22a40422293321eacfbdf325437ddb9a8e9609a60531fc819076478dd`  
		Last Modified: Tue, 20 Sep 2016 05:24:46 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a720432c5339d80623549f0d127692c83bf21eb6f698a2ae5672609f99707b`  
		Last Modified: Tue, 20 Sep 2016 05:24:47 GMT  
		Size: 2.8 MB (2848976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1793582987f0dee494f9b30b31dfb6fd7a29a59b49215efdff88f8b6e3312cc1`  
		Last Modified: Tue, 20 Sep 2016 05:24:45 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce51da6ec5581808896181ffc3af6aa14bbaad8d1c2c250aa332cc40b0bbed0`  
		Last Modified: Tue, 20 Sep 2016 05:24:43 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb9cc7e0202c85e01bce4a107aca54f50751a9bad44ac8283b16d76733c2557`  
		Last Modified: Tue, 20 Sep 2016 05:24:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459cb9974ae91b15667c79441652f9f0177d860233a45e9c2513fb09f7c18ae1`  
		Last Modified: Tue, 20 Sep 2016 05:24:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a06946c9efc256736268d8bdb801b8224ddbdb86a3b81ef5bec17edae5180e3`  
		Last Modified: Tue, 20 Sep 2016 05:24:44 GMT  
		Size: 12.4 MB (12417485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82da4c5711dacbe710b9bee379619f1399aefdd25d6e8e177268946b5c237f0`  
		Last Modified: Tue, 20 Sep 2016 05:24:40 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c3b990f290e348cf63f6a5c1c62bb075bf7c474d9b0c2c62848544d3e75406`  
		Last Modified: Tue, 20 Sep 2016 05:24:45 GMT  
		Size: 15.9 MB (15906465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb658f92fe225da9cf89b80d1eda8966e98e6eb78536abbbc335deb39052dad`  
		Last Modified: Tue, 20 Sep 2016 05:24:39 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83852ec056413560e93d6d63c1bc46d86f1afa454123eac29b16068494119551`  
		Last Modified: Tue, 20 Sep 2016 05:24:39 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6036bd3674188a38d178d0090e46535b79318dcec334b75e5d6fba460bf261f2`  
		Last Modified: Wed, 21 Sep 2016 23:18:04 GMT  
		Size: 34.3 MB (34329681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd4aeeb560a9f03b6e9c4da7bb307778bd238ab0cdba06cf49457ad6ed03707`  
		Last Modified: Wed, 21 Sep 2016 23:17:50 GMT  
		Size: 3.7 MB (3741493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622028362c313d1ca5cfb9b0f05472c5a200772f0ce70c7fb41b0cb33803a510`  
		Last Modified: Wed, 21 Sep 2016 23:17:45 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b9af4d0bf16c1b59e62fa206a311f46159bbab65c057f804d1c98219118a35`  
		Last Modified: Wed, 21 Sep 2016 23:17:47 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f7750dcc587c118880589a1838772e79f2874e6d17db14e7b371964c3022c8`  
		Last Modified: Wed, 21 Sep 2016 23:17:47 GMT  
		Size: 1.3 MB (1330746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871d4ea4dfebac50bc29795327efc04df4d5ac2cbc5bd764e3cda19d7ea4e2cc`  
		Last Modified: Wed, 21 Sep 2016 23:22:46 GMT  
		Size: 31.7 MB (31704867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a97fb6b97d2da999ce25b9ecc3435b2df2d6a50835e44451c8dedcc5a42852a`  
		Last Modified: Wed, 21 Sep 2016 23:22:38 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:9.1-apache`

```console
$ docker pull owncloud@sha256:3d2f1cac9c886ab40dc29ac6ad7eab6c8e95f7d9940f942482b39fb032027a62
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.1-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.2 MB (231233617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a87352a387918fd9047500f3f42fd2b9a93ac204ca47b264586f3ca10c780bac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 23:24:49 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 19 Sep 2016 23:25:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:25:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 19 Sep 2016 23:25:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 19 Sep 2016 23:32:55 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:32:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 19 Sep 2016 23:32:56 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 19 Sep 2016 23:32:57 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 19 Sep 2016 23:32:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 19 Sep 2016 23:32:59 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 19 Sep 2016 23:32:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 19 Sep 2016 23:33:00 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 19 Sep 2016 23:33:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 20 Sep 2016 00:03:15 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_VERSION=5.6.26
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Tue, 20 Sep 2016 00:03:20 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Tue, 20 Sep 2016 00:03:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:31 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 20 Sep 2016 00:09:32 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:32 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:33 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 00:09:33 GMT
EXPOSE 80/tcp
# Tue, 20 Sep 2016 00:09:34 GMT
CMD ["apache2-foreground"]
# Tue, 20 Sep 2016 17:01:24 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 17:03:06 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 20 Sep 2016 17:03:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 17:03:08 GMT
RUN a2enmod rewrite
# Tue, 20 Sep 2016 17:03:32 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Wed, 21 Sep 2016 23:15:30 GMT
ENV OWNCLOUD_VERSION=9.1.1
# Wed, 21 Sep 2016 23:15:30 GMT
VOLUME [/var/www/html]
# Wed, 21 Sep 2016 23:15:43 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Wed, 21 Sep 2016 23:15:43 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Wed, 21 Sep 2016 23:15:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Sep 2016 23:15:44 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac8ac352fc3917a1c94b6fdd01f8cd1fbb5c84ba5cf9de0827f7aeaf809f51`  
		Last Modified: Tue, 20 Sep 2016 05:25:09 GMT  
		Size: 77.6 MB (77593020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba164c22a40422293321eacfbdf325437ddb9a8e9609a60531fc819076478dd`  
		Last Modified: Tue, 20 Sep 2016 05:24:46 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a720432c5339d80623549f0d127692c83bf21eb6f698a2ae5672609f99707b`  
		Last Modified: Tue, 20 Sep 2016 05:24:47 GMT  
		Size: 2.8 MB (2848976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1793582987f0dee494f9b30b31dfb6fd7a29a59b49215efdff88f8b6e3312cc1`  
		Last Modified: Tue, 20 Sep 2016 05:24:45 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce51da6ec5581808896181ffc3af6aa14bbaad8d1c2c250aa332cc40b0bbed0`  
		Last Modified: Tue, 20 Sep 2016 05:24:43 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb9cc7e0202c85e01bce4a107aca54f50751a9bad44ac8283b16d76733c2557`  
		Last Modified: Tue, 20 Sep 2016 05:24:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459cb9974ae91b15667c79441652f9f0177d860233a45e9c2513fb09f7c18ae1`  
		Last Modified: Tue, 20 Sep 2016 05:24:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a06946c9efc256736268d8bdb801b8224ddbdb86a3b81ef5bec17edae5180e3`  
		Last Modified: Tue, 20 Sep 2016 05:24:44 GMT  
		Size: 12.4 MB (12417485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82da4c5711dacbe710b9bee379619f1399aefdd25d6e8e177268946b5c237f0`  
		Last Modified: Tue, 20 Sep 2016 05:24:40 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c3b990f290e348cf63f6a5c1c62bb075bf7c474d9b0c2c62848544d3e75406`  
		Last Modified: Tue, 20 Sep 2016 05:24:45 GMT  
		Size: 15.9 MB (15906465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb658f92fe225da9cf89b80d1eda8966e98e6eb78536abbbc335deb39052dad`  
		Last Modified: Tue, 20 Sep 2016 05:24:39 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83852ec056413560e93d6d63c1bc46d86f1afa454123eac29b16068494119551`  
		Last Modified: Tue, 20 Sep 2016 05:24:39 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6036bd3674188a38d178d0090e46535b79318dcec334b75e5d6fba460bf261f2`  
		Last Modified: Wed, 21 Sep 2016 23:18:04 GMT  
		Size: 34.3 MB (34329681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd4aeeb560a9f03b6e9c4da7bb307778bd238ab0cdba06cf49457ad6ed03707`  
		Last Modified: Wed, 21 Sep 2016 23:17:50 GMT  
		Size: 3.7 MB (3741493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622028362c313d1ca5cfb9b0f05472c5a200772f0ce70c7fb41b0cb33803a510`  
		Last Modified: Wed, 21 Sep 2016 23:17:45 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b9af4d0bf16c1b59e62fa206a311f46159bbab65c057f804d1c98219118a35`  
		Last Modified: Wed, 21 Sep 2016 23:17:47 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f7750dcc587c118880589a1838772e79f2874e6d17db14e7b371964c3022c8`  
		Last Modified: Wed, 21 Sep 2016 23:17:47 GMT  
		Size: 1.3 MB (1330746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871d4ea4dfebac50bc29795327efc04df4d5ac2cbc5bd764e3cda19d7ea4e2cc`  
		Last Modified: Wed, 21 Sep 2016 23:22:46 GMT  
		Size: 31.7 MB (31704867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a97fb6b97d2da999ce25b9ecc3435b2df2d6a50835e44451c8dedcc5a42852a`  
		Last Modified: Wed, 21 Sep 2016 23:22:38 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:9-apache`

```console
$ docker pull owncloud@sha256:82595a299ee824649472db298593fc31dbf2e1a2ba82892e32dea06e7a3a9056
```

-	Platforms:
	-	linux; amd64

### `owncloud:9-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231302748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7364728e44825911538b2fa20b6383ba880254c5e183e09a5f4caba07389cbd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:21:21 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 31 Aug 2016 00:21:22 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 31 Aug 2016 00:21:23 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 31 Aug 2016 00:21:24 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 31 Aug 2016 00:21:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 31 Aug 2016 00:34:48 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_VERSION=5.6.26
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 16 Sep 2016 20:35:36 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:35:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:37:51 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:51 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:52 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:37:52 GMT
EXPOSE 80/tcp
# Fri, 16 Sep 2016 20:37:52 GMT
CMD ["apache2-foreground"]
# Fri, 16 Sep 2016 22:29:14 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Sep 2016 22:30:55 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 16 Sep 2016 22:30:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Sep 2016 22:30:57 GMT
RUN a2enmod rewrite
# Fri, 16 Sep 2016 22:31:21 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Fri, 16 Sep 2016 22:31:22 GMT
ENV OWNCLOUD_VERSION=9.1.0
# Fri, 16 Sep 2016 22:31:22 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:31:35 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Fri, 16 Sep 2016 22:31:36 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Fri, 16 Sep 2016 22:31:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:31:37 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9632186b6198e59b441d935261b11ff1c87e5cd9167ca4919c12f7cd776cfb`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 2.8 MB (2846751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa737a56f54d953a4a488dc224cbb55d0c0ea44aae67e531b17a70fb4b42c91`  
		Last Modified: Wed, 31 Aug 2016 16:57:47 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6d454914546db3a7df0bc7e37300f6c19f8710b1d6b539865641c841a1c81d`  
		Last Modified: Wed, 31 Aug 2016 16:57:46 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2de374782c02050ab1a225e1602a0157d489852b1a25833f0d767e12d7607ad`  
		Last Modified: Wed, 31 Aug 2016 16:57:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2793df33d916e62e622430074d131cbb6e53d5c4fbd04f3eec825543522cf6`  
		Last Modified: Wed, 31 Aug 2016 16:57:44 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e04a84359e7cf9895f75bde7ab17d42aad62f3064b837fb7fbef20c5d39b663`  
		Last Modified: Fri, 16 Sep 2016 21:02:57 GMT  
		Size: 12.4 MB (12417486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b78dd93da18cc92c3f4f8d95b3723ce3744e73cb4294394815bdf2752f052e`  
		Last Modified: Fri, 16 Sep 2016 21:02:55 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5a185cc4ffd3fe5b851650ec791d11f5f1a4f6d39025088522728d4e8b0207`  
		Last Modified: Fri, 16 Sep 2016 21:03:00 GMT  
		Size: 15.9 MB (15906800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf93fe985e6684a5806487ff5b23efa84e4d76ce77f10e9dff3bf1a951c896`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02b0950172b2c8ca14a3447bf85adc6ddc07a07fad7e92a48c7066a7a7ae693`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d38fb8b344110342c2cfb55ad7cef07fe5f28e73d52b0f615a25790f7d22af`  
		Last Modified: Fri, 16 Sep 2016 22:31:55 GMT  
		Size: 34.3 MB (34332280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90c85e50d51a68d898d341d54cdf12092a50a6dc18c82d43b277f9abb66ca29`  
		Last Modified: Fri, 16 Sep 2016 22:31:50 GMT  
		Size: 3.7 MB (3741486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3eba82db0dc882dc09f3258ce3458c063ff81da410b43e7c0c6764404de1db`  
		Last Modified: Fri, 16 Sep 2016 22:31:43 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d665990de0edcfcfdc36f2f9b6c37da5ce2d7d9251ca248118f8f351686839f3`  
		Last Modified: Fri, 16 Sep 2016 22:31:43 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965086f475a40f56c9c6faeaa8eb80804c1f92ad66d37e38fc4029e8394742d3`  
		Last Modified: Fri, 16 Sep 2016 22:31:43 GMT  
		Size: 1.3 MB (1330736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e2af7d1f81585db5ee0d1bbd1415775ac7b1d2c89a39d8fdf6e29905c0a87b`  
		Last Modified: Fri, 16 Sep 2016 22:31:52 GMT  
		Size: 31.8 MB (31771580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2edf0570cbdb2b0841bf9e29b0c5caae9dd3e957e61505da9c433096193c999`  
		Last Modified: Fri, 16 Sep 2016 22:31:42 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:apache`

```console
$ docker pull owncloud@sha256:82595a299ee824649472db298593fc31dbf2e1a2ba82892e32dea06e7a3a9056
```

-	Platforms:
	-	linux; amd64

### `owncloud:apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231302748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7364728e44825911538b2fa20b6383ba880254c5e183e09a5f4caba07389cbd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:21:21 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 31 Aug 2016 00:21:22 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 31 Aug 2016 00:21:23 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 31 Aug 2016 00:21:24 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 31 Aug 2016 00:21:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 31 Aug 2016 00:34:48 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_VERSION=5.6.26
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 16 Sep 2016 20:35:36 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:35:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:37:51 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:51 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:52 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:37:52 GMT
EXPOSE 80/tcp
# Fri, 16 Sep 2016 20:37:52 GMT
CMD ["apache2-foreground"]
# Fri, 16 Sep 2016 22:29:14 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Sep 2016 22:30:55 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 16 Sep 2016 22:30:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Sep 2016 22:30:57 GMT
RUN a2enmod rewrite
# Fri, 16 Sep 2016 22:31:21 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Fri, 16 Sep 2016 22:31:22 GMT
ENV OWNCLOUD_VERSION=9.1.0
# Fri, 16 Sep 2016 22:31:22 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:31:35 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Fri, 16 Sep 2016 22:31:36 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Fri, 16 Sep 2016 22:31:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:31:37 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9632186b6198e59b441d935261b11ff1c87e5cd9167ca4919c12f7cd776cfb`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 2.8 MB (2846751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa737a56f54d953a4a488dc224cbb55d0c0ea44aae67e531b17a70fb4b42c91`  
		Last Modified: Wed, 31 Aug 2016 16:57:47 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6d454914546db3a7df0bc7e37300f6c19f8710b1d6b539865641c841a1c81d`  
		Last Modified: Wed, 31 Aug 2016 16:57:46 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2de374782c02050ab1a225e1602a0157d489852b1a25833f0d767e12d7607ad`  
		Last Modified: Wed, 31 Aug 2016 16:57:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2793df33d916e62e622430074d131cbb6e53d5c4fbd04f3eec825543522cf6`  
		Last Modified: Wed, 31 Aug 2016 16:57:44 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e04a84359e7cf9895f75bde7ab17d42aad62f3064b837fb7fbef20c5d39b663`  
		Last Modified: Fri, 16 Sep 2016 21:02:57 GMT  
		Size: 12.4 MB (12417486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b78dd93da18cc92c3f4f8d95b3723ce3744e73cb4294394815bdf2752f052e`  
		Last Modified: Fri, 16 Sep 2016 21:02:55 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5a185cc4ffd3fe5b851650ec791d11f5f1a4f6d39025088522728d4e8b0207`  
		Last Modified: Fri, 16 Sep 2016 21:03:00 GMT  
		Size: 15.9 MB (15906800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf93fe985e6684a5806487ff5b23efa84e4d76ce77f10e9dff3bf1a951c896`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02b0950172b2c8ca14a3447bf85adc6ddc07a07fad7e92a48c7066a7a7ae693`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d38fb8b344110342c2cfb55ad7cef07fe5f28e73d52b0f615a25790f7d22af`  
		Last Modified: Fri, 16 Sep 2016 22:31:55 GMT  
		Size: 34.3 MB (34332280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90c85e50d51a68d898d341d54cdf12092a50a6dc18c82d43b277f9abb66ca29`  
		Last Modified: Fri, 16 Sep 2016 22:31:50 GMT  
		Size: 3.7 MB (3741486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3eba82db0dc882dc09f3258ce3458c063ff81da410b43e7c0c6764404de1db`  
		Last Modified: Fri, 16 Sep 2016 22:31:43 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d665990de0edcfcfdc36f2f9b6c37da5ce2d7d9251ca248118f8f351686839f3`  
		Last Modified: Fri, 16 Sep 2016 22:31:43 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965086f475a40f56c9c6faeaa8eb80804c1f92ad66d37e38fc4029e8394742d3`  
		Last Modified: Fri, 16 Sep 2016 22:31:43 GMT  
		Size: 1.3 MB (1330736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e2af7d1f81585db5ee0d1bbd1415775ac7b1d2c89a39d8fdf6e29905c0a87b`  
		Last Modified: Fri, 16 Sep 2016 22:31:52 GMT  
		Size: 31.8 MB (31771580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2edf0570cbdb2b0841bf9e29b0c5caae9dd3e957e61505da9c433096193c999`  
		Last Modified: Fri, 16 Sep 2016 22:31:42 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:9.1.1`

**does not exist** (yet?)

## `owncloud:9.1`

```console
$ docker pull owncloud@sha256:82595a299ee824649472db298593fc31dbf2e1a2ba82892e32dea06e7a3a9056
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231302748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7364728e44825911538b2fa20b6383ba880254c5e183e09a5f4caba07389cbd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:21:21 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 31 Aug 2016 00:21:22 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 31 Aug 2016 00:21:23 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 31 Aug 2016 00:21:24 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 31 Aug 2016 00:21:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 31 Aug 2016 00:34:48 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_VERSION=5.6.26
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 16 Sep 2016 20:35:36 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:35:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:37:51 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:51 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:52 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:37:52 GMT
EXPOSE 80/tcp
# Fri, 16 Sep 2016 20:37:52 GMT
CMD ["apache2-foreground"]
# Fri, 16 Sep 2016 22:29:14 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Sep 2016 22:30:55 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 16 Sep 2016 22:30:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Sep 2016 22:30:57 GMT
RUN a2enmod rewrite
# Fri, 16 Sep 2016 22:31:21 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Fri, 16 Sep 2016 22:31:22 GMT
ENV OWNCLOUD_VERSION=9.1.0
# Fri, 16 Sep 2016 22:31:22 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:31:35 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Fri, 16 Sep 2016 22:31:36 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Fri, 16 Sep 2016 22:31:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:31:37 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9632186b6198e59b441d935261b11ff1c87e5cd9167ca4919c12f7cd776cfb`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 2.8 MB (2846751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa737a56f54d953a4a488dc224cbb55d0c0ea44aae67e531b17a70fb4b42c91`  
		Last Modified: Wed, 31 Aug 2016 16:57:47 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6d454914546db3a7df0bc7e37300f6c19f8710b1d6b539865641c841a1c81d`  
		Last Modified: Wed, 31 Aug 2016 16:57:46 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2de374782c02050ab1a225e1602a0157d489852b1a25833f0d767e12d7607ad`  
		Last Modified: Wed, 31 Aug 2016 16:57:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2793df33d916e62e622430074d131cbb6e53d5c4fbd04f3eec825543522cf6`  
		Last Modified: Wed, 31 Aug 2016 16:57:44 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e04a84359e7cf9895f75bde7ab17d42aad62f3064b837fb7fbef20c5d39b663`  
		Last Modified: Fri, 16 Sep 2016 21:02:57 GMT  
		Size: 12.4 MB (12417486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b78dd93da18cc92c3f4f8d95b3723ce3744e73cb4294394815bdf2752f052e`  
		Last Modified: Fri, 16 Sep 2016 21:02:55 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5a185cc4ffd3fe5b851650ec791d11f5f1a4f6d39025088522728d4e8b0207`  
		Last Modified: Fri, 16 Sep 2016 21:03:00 GMT  
		Size: 15.9 MB (15906800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf93fe985e6684a5806487ff5b23efa84e4d76ce77f10e9dff3bf1a951c896`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02b0950172b2c8ca14a3447bf85adc6ddc07a07fad7e92a48c7066a7a7ae693`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d38fb8b344110342c2cfb55ad7cef07fe5f28e73d52b0f615a25790f7d22af`  
		Last Modified: Fri, 16 Sep 2016 22:31:55 GMT  
		Size: 34.3 MB (34332280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90c85e50d51a68d898d341d54cdf12092a50a6dc18c82d43b277f9abb66ca29`  
		Last Modified: Fri, 16 Sep 2016 22:31:50 GMT  
		Size: 3.7 MB (3741486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3eba82db0dc882dc09f3258ce3458c063ff81da410b43e7c0c6764404de1db`  
		Last Modified: Fri, 16 Sep 2016 22:31:43 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d665990de0edcfcfdc36f2f9b6c37da5ce2d7d9251ca248118f8f351686839f3`  
		Last Modified: Fri, 16 Sep 2016 22:31:43 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965086f475a40f56c9c6faeaa8eb80804c1f92ad66d37e38fc4029e8394742d3`  
		Last Modified: Fri, 16 Sep 2016 22:31:43 GMT  
		Size: 1.3 MB (1330736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e2af7d1f81585db5ee0d1bbd1415775ac7b1d2c89a39d8fdf6e29905c0a87b`  
		Last Modified: Fri, 16 Sep 2016 22:31:52 GMT  
		Size: 31.8 MB (31771580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2edf0570cbdb2b0841bf9e29b0c5caae9dd3e957e61505da9c433096193c999`  
		Last Modified: Fri, 16 Sep 2016 22:31:42 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:9`

```console
$ docker pull owncloud@sha256:3d2f1cac9c886ab40dc29ac6ad7eab6c8e95f7d9940f942482b39fb032027a62
```

-	Platforms:
	-	linux; amd64

### `owncloud:9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.2 MB (231233617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a87352a387918fd9047500f3f42fd2b9a93ac204ca47b264586f3ca10c780bac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 23:24:49 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 19 Sep 2016 23:25:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:25:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 19 Sep 2016 23:25:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 19 Sep 2016 23:32:55 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:32:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 19 Sep 2016 23:32:56 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 19 Sep 2016 23:32:57 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 19 Sep 2016 23:32:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 19 Sep 2016 23:32:59 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 19 Sep 2016 23:32:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 19 Sep 2016 23:33:00 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 19 Sep 2016 23:33:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 20 Sep 2016 00:03:15 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_VERSION=5.6.26
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Tue, 20 Sep 2016 00:03:16 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Tue, 20 Sep 2016 00:03:20 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Tue, 20 Sep 2016 00:03:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:31 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 20 Sep 2016 00:09:32 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:32 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:33 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 00:09:33 GMT
EXPOSE 80/tcp
# Tue, 20 Sep 2016 00:09:34 GMT
CMD ["apache2-foreground"]
# Tue, 20 Sep 2016 17:01:24 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 17:03:06 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 20 Sep 2016 17:03:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 17:03:08 GMT
RUN a2enmod rewrite
# Tue, 20 Sep 2016 17:03:32 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Wed, 21 Sep 2016 23:15:30 GMT
ENV OWNCLOUD_VERSION=9.1.1
# Wed, 21 Sep 2016 23:15:30 GMT
VOLUME [/var/www/html]
# Wed, 21 Sep 2016 23:15:43 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Wed, 21 Sep 2016 23:15:43 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Wed, 21 Sep 2016 23:15:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Sep 2016 23:15:44 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac8ac352fc3917a1c94b6fdd01f8cd1fbb5c84ba5cf9de0827f7aeaf809f51`  
		Last Modified: Tue, 20 Sep 2016 05:25:09 GMT  
		Size: 77.6 MB (77593020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba164c22a40422293321eacfbdf325437ddb9a8e9609a60531fc819076478dd`  
		Last Modified: Tue, 20 Sep 2016 05:24:46 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a720432c5339d80623549f0d127692c83bf21eb6f698a2ae5672609f99707b`  
		Last Modified: Tue, 20 Sep 2016 05:24:47 GMT  
		Size: 2.8 MB (2848976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1793582987f0dee494f9b30b31dfb6fd7a29a59b49215efdff88f8b6e3312cc1`  
		Last Modified: Tue, 20 Sep 2016 05:24:45 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce51da6ec5581808896181ffc3af6aa14bbaad8d1c2c250aa332cc40b0bbed0`  
		Last Modified: Tue, 20 Sep 2016 05:24:43 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb9cc7e0202c85e01bce4a107aca54f50751a9bad44ac8283b16d76733c2557`  
		Last Modified: Tue, 20 Sep 2016 05:24:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459cb9974ae91b15667c79441652f9f0177d860233a45e9c2513fb09f7c18ae1`  
		Last Modified: Tue, 20 Sep 2016 05:24:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a06946c9efc256736268d8bdb801b8224ddbdb86a3b81ef5bec17edae5180e3`  
		Last Modified: Tue, 20 Sep 2016 05:24:44 GMT  
		Size: 12.4 MB (12417485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82da4c5711dacbe710b9bee379619f1399aefdd25d6e8e177268946b5c237f0`  
		Last Modified: Tue, 20 Sep 2016 05:24:40 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c3b990f290e348cf63f6a5c1c62bb075bf7c474d9b0c2c62848544d3e75406`  
		Last Modified: Tue, 20 Sep 2016 05:24:45 GMT  
		Size: 15.9 MB (15906465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb658f92fe225da9cf89b80d1eda8966e98e6eb78536abbbc335deb39052dad`  
		Last Modified: Tue, 20 Sep 2016 05:24:39 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83852ec056413560e93d6d63c1bc46d86f1afa454123eac29b16068494119551`  
		Last Modified: Tue, 20 Sep 2016 05:24:39 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6036bd3674188a38d178d0090e46535b79318dcec334b75e5d6fba460bf261f2`  
		Last Modified: Wed, 21 Sep 2016 23:18:04 GMT  
		Size: 34.3 MB (34329681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd4aeeb560a9f03b6e9c4da7bb307778bd238ab0cdba06cf49457ad6ed03707`  
		Last Modified: Wed, 21 Sep 2016 23:17:50 GMT  
		Size: 3.7 MB (3741493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622028362c313d1ca5cfb9b0f05472c5a200772f0ce70c7fb41b0cb33803a510`  
		Last Modified: Wed, 21 Sep 2016 23:17:45 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b9af4d0bf16c1b59e62fa206a311f46159bbab65c057f804d1c98219118a35`  
		Last Modified: Wed, 21 Sep 2016 23:17:47 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f7750dcc587c118880589a1838772e79f2874e6d17db14e7b371964c3022c8`  
		Last Modified: Wed, 21 Sep 2016 23:17:47 GMT  
		Size: 1.3 MB (1330746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871d4ea4dfebac50bc29795327efc04df4d5ac2cbc5bd764e3cda19d7ea4e2cc`  
		Last Modified: Wed, 21 Sep 2016 23:22:46 GMT  
		Size: 31.7 MB (31704867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a97fb6b97d2da999ce25b9ecc3435b2df2d6a50835e44451c8dedcc5a42852a`  
		Last Modified: Wed, 21 Sep 2016 23:22:38 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:latest`

```console
$ docker pull owncloud@sha256:82595a299ee824649472db298593fc31dbf2e1a2ba82892e32dea06e7a3a9056
```

-	Platforms:
	-	linux; amd64

### `owncloud:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231302748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7364728e44825911538b2fa20b6383ba880254c5e183e09a5f4caba07389cbd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:21:21 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 31 Aug 2016 00:21:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 31 Aug 2016 00:21:22 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 31 Aug 2016 00:21:23 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 31 Aug 2016 00:21:24 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 31 Aug 2016 00:21:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 31 Aug 2016 00:21:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 31 Aug 2016 00:34:48 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_VERSION=5.6.26
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 16 Sep 2016 20:35:32 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 16 Sep 2016 20:35:36 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:35:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:37:51 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:51 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:37:52 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:37:52 GMT
EXPOSE 80/tcp
# Fri, 16 Sep 2016 20:37:52 GMT
CMD ["apache2-foreground"]
# Fri, 16 Sep 2016 22:29:14 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Sep 2016 22:30:55 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 16 Sep 2016 22:30:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Sep 2016 22:30:57 GMT
RUN a2enmod rewrite
# Fri, 16 Sep 2016 22:31:21 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Fri, 16 Sep 2016 22:31:22 GMT
ENV OWNCLOUD_VERSION=9.1.0
# Fri, 16 Sep 2016 22:31:22 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:31:35 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Fri, 16 Sep 2016 22:31:36 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Fri, 16 Sep 2016 22:31:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:31:37 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9632186b6198e59b441d935261b11ff1c87e5cd9167ca4919c12f7cd776cfb`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 2.8 MB (2846751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa737a56f54d953a4a488dc224cbb55d0c0ea44aae67e531b17a70fb4b42c91`  
		Last Modified: Wed, 31 Aug 2016 16:57:47 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6d454914546db3a7df0bc7e37300f6c19f8710b1d6b539865641c841a1c81d`  
		Last Modified: Wed, 31 Aug 2016 16:57:46 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2de374782c02050ab1a225e1602a0157d489852b1a25833f0d767e12d7607ad`  
		Last Modified: Wed, 31 Aug 2016 16:57:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2793df33d916e62e622430074d131cbb6e53d5c4fbd04f3eec825543522cf6`  
		Last Modified: Wed, 31 Aug 2016 16:57:44 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e04a84359e7cf9895f75bde7ab17d42aad62f3064b837fb7fbef20c5d39b663`  
		Last Modified: Fri, 16 Sep 2016 21:02:57 GMT  
		Size: 12.4 MB (12417486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b78dd93da18cc92c3f4f8d95b3723ce3744e73cb4294394815bdf2752f052e`  
		Last Modified: Fri, 16 Sep 2016 21:02:55 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5a185cc4ffd3fe5b851650ec791d11f5f1a4f6d39025088522728d4e8b0207`  
		Last Modified: Fri, 16 Sep 2016 21:03:00 GMT  
		Size: 15.9 MB (15906800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf93fe985e6684a5806487ff5b23efa84e4d76ce77f10e9dff3bf1a951c896`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02b0950172b2c8ca14a3447bf85adc6ddc07a07fad7e92a48c7066a7a7ae693`  
		Last Modified: Fri, 16 Sep 2016 21:02:54 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d38fb8b344110342c2cfb55ad7cef07fe5f28e73d52b0f615a25790f7d22af`  
		Last Modified: Fri, 16 Sep 2016 22:31:55 GMT  
		Size: 34.3 MB (34332280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90c85e50d51a68d898d341d54cdf12092a50a6dc18c82d43b277f9abb66ca29`  
		Last Modified: Fri, 16 Sep 2016 22:31:50 GMT  
		Size: 3.7 MB (3741486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3eba82db0dc882dc09f3258ce3458c063ff81da410b43e7c0c6764404de1db`  
		Last Modified: Fri, 16 Sep 2016 22:31:43 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d665990de0edcfcfdc36f2f9b6c37da5ce2d7d9251ca248118f8f351686839f3`  
		Last Modified: Fri, 16 Sep 2016 22:31:43 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965086f475a40f56c9c6faeaa8eb80804c1f92ad66d37e38fc4029e8394742d3`  
		Last Modified: Fri, 16 Sep 2016 22:31:43 GMT  
		Size: 1.3 MB (1330736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e2af7d1f81585db5ee0d1bbd1415775ac7b1d2c89a39d8fdf6e29905c0a87b`  
		Last Modified: Fri, 16 Sep 2016 22:31:52 GMT  
		Size: 31.8 MB (31771580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2edf0570cbdb2b0841bf9e29b0c5caae9dd3e957e61505da9c433096193c999`  
		Last Modified: Fri, 16 Sep 2016 22:31:42 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:9.1.1-fpm`

```console
$ docker pull owncloud@sha256:c64fb6c172ac7f962a7848702a235af9bfa5cd45bcfe3858ea33444b28968d88
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.1.1-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221295192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e64bf371e645d539e667e05dee74f0380852e62eb8a4275dac1bf7c5f241458e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 23:24:49 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 19 Sep 2016 23:25:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:25:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 19 Sep 2016 23:25:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 19 Sep 2016 23:35:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 20 Sep 2016 00:09:34 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 20 Sep 2016 00:09:35 GMT
ENV PHP_VERSION=5.6.26
# Tue, 20 Sep 2016 00:09:35 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Tue, 20 Sep 2016 00:09:36 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Tue, 20 Sep 2016 00:09:40 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Tue, 20 Sep 2016 00:09:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:17:06 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 20 Sep 2016 00:17:08 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:17:08 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 00:17:09 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 20 Sep 2016 00:17:09 GMT
EXPOSE 9000/tcp
# Tue, 20 Sep 2016 00:17:10 GMT
CMD ["php-fpm"]
# Tue, 20 Sep 2016 16:56:25 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:58:07 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 20 Sep 2016 16:58:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 16:58:32 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Wed, 21 Sep 2016 23:15:45 GMT
ENV OWNCLOUD_VERSION=9.1.1
# Wed, 21 Sep 2016 23:15:45 GMT
VOLUME [/var/www/html]
# Wed, 21 Sep 2016 23:15:59 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Wed, 21 Sep 2016 23:16:00 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Wed, 21 Sep 2016 23:16:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Sep 2016 23:16:00 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac8ac352fc3917a1c94b6fdd01f8cd1fbb5c84ba5cf9de0827f7aeaf809f51`  
		Last Modified: Tue, 20 Sep 2016 05:25:09 GMT  
		Size: 77.6 MB (77593020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba164c22a40422293321eacfbdf325437ddb9a8e9609a60531fc819076478dd`  
		Last Modified: Tue, 20 Sep 2016 05:24:46 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b542df4654dc77cdf26f8762e82fa1ab56de797797d91ce459191d710c2bd31`  
		Last Modified: Tue, 20 Sep 2016 05:26:33 GMT  
		Size: 12.4 MB (12417484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81713641802521724a63be2c0e32a8056354dbb7513d9bf9a5b2eb4eaab963dd`  
		Last Modified: Tue, 20 Sep 2016 05:26:30 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ce1ce6c3586bf6ee8b9364a7b2f4d79eeb322e34ec69acf1360913d26fadf5`  
		Last Modified: Tue, 20 Sep 2016 05:26:33 GMT  
		Size: 8.8 MB (8834845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ee40203c5586f597e1398383ed6162c77610c54570dd66b58c3633adfd80dd`  
		Last Modified: Tue, 20 Sep 2016 05:26:29 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839d0cd71a26d95bf130dd5cc67b35be5fd7f463c0390a5707e18fea550f9ce1`  
		Last Modified: Tue, 20 Sep 2016 05:26:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7454258df3d2985f624fa22ba111aa3f4b85d215ed61bc69d1283853eee32f9`  
		Last Modified: Tue, 20 Sep 2016 05:26:26 GMT  
		Size: 7.6 KB (7625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bd2615ea72a2289ed2e7b8f163659b382c3b361a25321af8012563194d3c3d`  
		Last Modified: Wed, 21 Sep 2016 23:19:03 GMT  
		Size: 34.3 MB (34307260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20981ae04c07dbf9d8bd51025682b699ecd678303c9f1dba60d47e7ade870d90`  
		Last Modified: Wed, 21 Sep 2016 23:18:51 GMT  
		Size: 3.7 MB (3741644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed77166da43f17ea0273d9732e12e076f315e15647a8c592090cc403d6a3200e`  
		Last Modified: Wed, 21 Sep 2016 23:18:52 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df58e1a679a56a7538eec9fbd7e9995d69a0746ce0842a1642048674419616dc`  
		Last Modified: Wed, 21 Sep 2016 23:18:50 GMT  
		Size: 1.3 MB (1330670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f2b1887648802bd7631bca286e53da14c17b9b6e4228422937d2a9f9ae4c8a`  
		Last Modified: Wed, 21 Sep 2016 23:24:15 GMT  
		Size: 31.7 MB (31704871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90410c11549129703d7e00eea3974acf918f39e9df686b36cf028dd914715a20`  
		Last Modified: Wed, 21 Sep 2016 23:24:05 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:9.1-fpm`

```console
$ docker pull owncloud@sha256:27a88a30d94947f8629e64d3dfc833907f6fa4cf08dfeb561f091eb6b9b7a007
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.1-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.4 MB (221366461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce706d9221f625412c24da4717ff2e9fac44d0e74040c60fc2eeafa01c150abe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:23:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 31 Aug 2016 00:37:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_VERSION=5.6.26
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 16 Sep 2016 20:37:56 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:37:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:41:18 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:41:18 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:41:19 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:41:19 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 16 Sep 2016 20:41:20 GMT
EXPOSE 9000/tcp
# Fri, 16 Sep 2016 20:41:20 GMT
CMD ["php-fpm"]
# Fri, 16 Sep 2016 22:33:16 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Sep 2016 22:34:57 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Fri, 16 Sep 2016 22:34:58 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Sep 2016 22:35:22 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Fri, 16 Sep 2016 22:35:22 GMT
ENV OWNCLOUD_VERSION=9.1.0
# Fri, 16 Sep 2016 22:35:22 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:35:36 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Fri, 16 Sep 2016 22:35:36 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Fri, 16 Sep 2016 22:35:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:35:37 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f867227ba0ca7d341b526da9b951ce76c29841e628fd41e7848cd02a10cc9b3`  
		Last Modified: Fri, 16 Sep 2016 21:03:33 GMT  
		Size: 12.4 MB (12417483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e060fac29eab30697e9e6d0cf654eb74fd357cf9bae808a22716372d9167adf`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc5c82aa9b2bd88b7d2110285a373e40b7340379ee6e0f8f95b6269ed7b6b28`  
		Last Modified: Fri, 16 Sep 2016 21:03:31 GMT  
		Size: 8.8 MB (8835389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28455473ebdcc509ff6d0f1005ba4537b9c06fc753eac522d34f7d983f90cac1`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779e531cc75ed9693123bb9d9b2adcbf6905ef0dcdef6f54d7f69de0534e99d1`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42627851ab0d4a77e88ff88f96a8ae1246b73e545c2fdd9111e46ff20acf58ec`  
		Last Modified: Fri, 16 Sep 2016 21:03:29 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43aaaa7f1ecbf8ef6277dac013687bd931c670099000e8ab4e83532ab8bab94`  
		Last Modified: Fri, 16 Sep 2016 22:35:55 GMT  
		Size: 34.3 MB (34309515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e3d1d9e1c9436f2597afcf1705654d037513353b6d9ea04fbc98f18ee90f00`  
		Last Modified: Fri, 16 Sep 2016 22:35:44 GMT  
		Size: 3.7 MB (3741633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7bf5bfa2bf3189b507dfa7fe5e70d13c3988d1f77d6cdcaab9e307c796aaee`  
		Last Modified: Fri, 16 Sep 2016 22:35:46 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdc6931bc2898c38ddfaedffd6f5dfdc0beddeee91044cb71cffafe8473f6d9`  
		Last Modified: Fri, 16 Sep 2016 22:35:43 GMT  
		Size: 1.3 MB (1330729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59828c532a47de69d31dbd11b79e066afbc1483431a2c53d5416879bbd6a108`  
		Last Modified: Fri, 16 Sep 2016 22:35:51 GMT  
		Size: 31.8 MB (31771588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a418bcfc84eb68baf4199e4eca8f7979b46f24553d3e4519143f6bff3835b2a5`  
		Last Modified: Fri, 16 Sep 2016 22:35:43 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:9-fpm`

```console
$ docker pull owncloud@sha256:c64fb6c172ac7f962a7848702a235af9bfa5cd45bcfe3858ea33444b28968d88
```

-	Platforms:
	-	linux; amd64

### `owncloud:9-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221295192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e64bf371e645d539e667e05dee74f0380852e62eb8a4275dac1bf7c5f241458e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 23:24:49 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 19 Sep 2016 23:25:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:25:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 19 Sep 2016 23:25:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 19 Sep 2016 23:35:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 20 Sep 2016 00:09:34 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 20 Sep 2016 00:09:35 GMT
ENV PHP_VERSION=5.6.26
# Tue, 20 Sep 2016 00:09:35 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Tue, 20 Sep 2016 00:09:36 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Tue, 20 Sep 2016 00:09:40 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Tue, 20 Sep 2016 00:09:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:17:06 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 20 Sep 2016 00:17:08 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:17:08 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 00:17:09 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 20 Sep 2016 00:17:09 GMT
EXPOSE 9000/tcp
# Tue, 20 Sep 2016 00:17:10 GMT
CMD ["php-fpm"]
# Tue, 20 Sep 2016 16:56:25 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:58:07 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 20 Sep 2016 16:58:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 16:58:32 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Wed, 21 Sep 2016 23:15:45 GMT
ENV OWNCLOUD_VERSION=9.1.1
# Wed, 21 Sep 2016 23:15:45 GMT
VOLUME [/var/www/html]
# Wed, 21 Sep 2016 23:15:59 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Wed, 21 Sep 2016 23:16:00 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Wed, 21 Sep 2016 23:16:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Sep 2016 23:16:00 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac8ac352fc3917a1c94b6fdd01f8cd1fbb5c84ba5cf9de0827f7aeaf809f51`  
		Last Modified: Tue, 20 Sep 2016 05:25:09 GMT  
		Size: 77.6 MB (77593020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba164c22a40422293321eacfbdf325437ddb9a8e9609a60531fc819076478dd`  
		Last Modified: Tue, 20 Sep 2016 05:24:46 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b542df4654dc77cdf26f8762e82fa1ab56de797797d91ce459191d710c2bd31`  
		Last Modified: Tue, 20 Sep 2016 05:26:33 GMT  
		Size: 12.4 MB (12417484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81713641802521724a63be2c0e32a8056354dbb7513d9bf9a5b2eb4eaab963dd`  
		Last Modified: Tue, 20 Sep 2016 05:26:30 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ce1ce6c3586bf6ee8b9364a7b2f4d79eeb322e34ec69acf1360913d26fadf5`  
		Last Modified: Tue, 20 Sep 2016 05:26:33 GMT  
		Size: 8.8 MB (8834845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ee40203c5586f597e1398383ed6162c77610c54570dd66b58c3633adfd80dd`  
		Last Modified: Tue, 20 Sep 2016 05:26:29 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839d0cd71a26d95bf130dd5cc67b35be5fd7f463c0390a5707e18fea550f9ce1`  
		Last Modified: Tue, 20 Sep 2016 05:26:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7454258df3d2985f624fa22ba111aa3f4b85d215ed61bc69d1283853eee32f9`  
		Last Modified: Tue, 20 Sep 2016 05:26:26 GMT  
		Size: 7.6 KB (7625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bd2615ea72a2289ed2e7b8f163659b382c3b361a25321af8012563194d3c3d`  
		Last Modified: Wed, 21 Sep 2016 23:19:03 GMT  
		Size: 34.3 MB (34307260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20981ae04c07dbf9d8bd51025682b699ecd678303c9f1dba60d47e7ade870d90`  
		Last Modified: Wed, 21 Sep 2016 23:18:51 GMT  
		Size: 3.7 MB (3741644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed77166da43f17ea0273d9732e12e076f315e15647a8c592090cc403d6a3200e`  
		Last Modified: Wed, 21 Sep 2016 23:18:52 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df58e1a679a56a7538eec9fbd7e9995d69a0746ce0842a1642048674419616dc`  
		Last Modified: Wed, 21 Sep 2016 23:18:50 GMT  
		Size: 1.3 MB (1330670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f2b1887648802bd7631bca286e53da14c17b9b6e4228422937d2a9f9ae4c8a`  
		Last Modified: Wed, 21 Sep 2016 23:24:15 GMT  
		Size: 31.7 MB (31704871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90410c11549129703d7e00eea3974acf918f39e9df686b36cf028dd914715a20`  
		Last Modified: Wed, 21 Sep 2016 23:24:05 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:fpm`

```console
$ docker pull owncloud@sha256:045eec12d6a50e7af9c474f70c783053722956f7fda777ce489b8fb2a46914b4
```

-	Platforms:
	-	linux; amd64

### `owncloud:fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221349119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03aec2a39435b70c4ebd2704275d470d188fda484a1ef9052ef6bcdc5d15749a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:23:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 31 Aug 2016 00:37:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 31 Aug 2016 00:37:08 GMT
ENV PHP_VERSION=5.6.25
# Wed, 31 Aug 2016 00:37:09 GMT
ENV PHP_FILENAME=php-5.6.25.tar.xz
# Wed, 31 Aug 2016 00:37:09 GMT
ENV PHP_SHA256=7535cd6e20040ccec4594cc386c6f15c3f2c88f24163294a31068cf7dfe7f644
# Wed, 31 Aug 2016 00:37:12 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 31 Aug 2016 00:37:12 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 31 Aug 2016 00:40:35 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 31 Aug 2016 00:40:36 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Wed, 31 Aug 2016 00:40:36 GMT
WORKDIR /var/www/html
# Wed, 31 Aug 2016 00:40:37 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 31 Aug 2016 00:40:38 GMT
EXPOSE 9000/tcp
# Wed, 31 Aug 2016 00:40:38 GMT
CMD ["php-fpm"]
# Wed, 31 Aug 2016 02:10:39 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:12:20 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Wed, 31 Aug 2016 02:12:21 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 31 Aug 2016 02:12:45 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Wed, 31 Aug 2016 02:14:13 GMT
ENV OWNCLOUD_VERSION=9.1.0
# Wed, 31 Aug 2016 02:14:13 GMT
VOLUME [/var/www/html]
# Wed, 31 Aug 2016 02:14:26 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Wed, 31 Aug 2016 02:14:26 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Wed, 31 Aug 2016 02:14:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Aug 2016 02:14:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59daf88b88a76c4b1ae701700573dfedc0888882fc90d8d7be80b55ffd1871d3`  
		Last Modified: Wed, 07 Sep 2016 19:04:56 GMT  
		Size: 12.4 MB (12409729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c97f7b1249dc4721395e8cbe8d423825d10cfd6b564780955a95a93ebb014e`  
		Last Modified: Wed, 07 Sep 2016 19:04:51 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f69e96d834d4fde2506631770a8f339c911c571c3fd2ee22889f60c77b4a39`  
		Last Modified: Wed, 07 Sep 2016 19:04:55 GMT  
		Size: 8.8 MB (8826760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423fe0ee3bf2226ae6c744b95312f864fd7642d1fc8fdf6a923739f10d6b211e`  
		Last Modified: Wed, 07 Sep 2016 19:04:51 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2826d98c16659b4a481a89fda1e92fa8b433015be6cf65dcf451f30dafef1f31`  
		Last Modified: Wed, 07 Sep 2016 19:04:51 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10a3f0dc15a2308b53549a30a5308d4afb6cdbbb129af0bfd58d47026d328af`  
		Last Modified: Wed, 07 Sep 2016 19:04:52 GMT  
		Size: 7.6 KB (7627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b4fae0008c733c79f4f10d4ddf900863a834dd653c6c17ef76bb8ce52cb0e7`  
		Last Modified: Wed, 07 Sep 2016 21:50:25 GMT  
		Size: 34.3 MB (34309544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d8ae195ffc66b0105c16c7939581a0f8ab7aab3dcc8450bf5a84ba3dde4414`  
		Last Modified: Wed, 07 Sep 2016 21:50:12 GMT  
		Size: 3.7 MB (3740746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ad19673fcb6e8e3b80ee03ea23838f87e0067dcb2195cf858599caf8247081`  
		Last Modified: Wed, 07 Sep 2016 21:50:10 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4853a3ea44b4d8acbac00c054cfbd98edbb082e0e39d57ad5473297c807cfe5`  
		Last Modified: Wed, 07 Sep 2016 21:50:11 GMT  
		Size: 1.3 MB (1330636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb749fc651f2f203a06ac725bf9e30aa83d75463141d116ff090aa19268f8d4`  
		Last Modified: Wed, 07 Sep 2016 21:50:26 GMT  
		Size: 31.8 MB (31771581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f631e34c64e47dac207f020342db7c61b1bcb7f0d075d20cac68764f74d6636`  
		Last Modified: Wed, 07 Sep 2016 21:50:11 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
