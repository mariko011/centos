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

```console
$ docker pull owncloud@sha256:9cdcc8b8d9a0a4a37517158ed575f72f9941760a3261d0f03d60325eb60efef5
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.0.15-apache` - linux; amd64

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

## `owncloud:8.0-apache`

```console
$ docker pull owncloud@sha256:9cdcc8b8d9a0a4a37517158ed575f72f9941760a3261d0f03d60325eb60efef5
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.0-apache` - linux; amd64

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

```console
$ docker pull owncloud@sha256:5ce00bb2e9ef941703e7776df7128a68cf0879f2b9744ab2035c70506b88a7b9
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.0.15-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.6 MB (213645487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:993f83384362d5a5ed26348c1fbc1b45bb9ba0494c60bf0d445b3a3128d406ca`
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
# Tue, 20 Sep 2016 16:59:02 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 17:00:43 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 20 Sep 2016 17:00:44 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 17:00:52 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& docker-php-ext-enable apcu
# Wed, 21 Sep 2016 23:13:45 GMT
ENV OWNCLOUD_VERSION=8.0.15
# Wed, 21 Sep 2016 23:13:46 GMT
VOLUME [/var/www/html]
# Wed, 21 Sep 2016 23:13:58 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Wed, 21 Sep 2016 23:13:59 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Wed, 21 Sep 2016 23:13:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Sep 2016 23:13:59 GMT
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
	-	`sha256:00aee8bb075c27483beeb2228493bfb7f11d54624fdc1c432256d6a6429ad262`  
		Last Modified: Wed, 21 Sep 2016 23:17:21 GMT  
		Size: 33.4 MB (33445680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757ddbe9d9f91bfe318d4962affa9551ca6a59f4a3923fe153a5f2279df839ee`  
		Last Modified: Wed, 21 Sep 2016 23:17:10 GMT  
		Size: 3.7 MB (3741639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7299420b7b2c17bf9685382354c41838697e86d91b937334cc838aba4f72f278`  
		Last Modified: Wed, 21 Sep 2016 23:17:10 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c772d98d136efd7a62714eae12ab33bf8db20d05fa6c2b684e0f955c44a15262`  
		Last Modified: Wed, 21 Sep 2016 23:17:09 GMT  
		Size: 363.7 KB (363673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ffef7e7965844be8a3976a8ae0be0de4c700369990371162324f3518a0a740`  
		Last Modified: Wed, 21 Sep 2016 23:17:15 GMT  
		Size: 25.9 MB (25883750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1eeeb30a3dcb922a7aba2cfec4e968fd65bffcae38cb9d4339ee092c605fd61`  
		Last Modified: Wed, 21 Sep 2016 23:17:08 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.0-fpm`

```console
$ docker pull owncloud@sha256:5ce00bb2e9ef941703e7776df7128a68cf0879f2b9744ab2035c70506b88a7b9
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.0-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.6 MB (213645487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:993f83384362d5a5ed26348c1fbc1b45bb9ba0494c60bf0d445b3a3128d406ca`
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
# Tue, 20 Sep 2016 16:59:02 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 17:00:43 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 20 Sep 2016 17:00:44 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 17:00:52 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& docker-php-ext-enable apcu
# Wed, 21 Sep 2016 23:13:45 GMT
ENV OWNCLOUD_VERSION=8.0.15
# Wed, 21 Sep 2016 23:13:46 GMT
VOLUME [/var/www/html]
# Wed, 21 Sep 2016 23:13:58 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Wed, 21 Sep 2016 23:13:59 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Wed, 21 Sep 2016 23:13:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Sep 2016 23:13:59 GMT
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
	-	`sha256:00aee8bb075c27483beeb2228493bfb7f11d54624fdc1c432256d6a6429ad262`  
		Last Modified: Wed, 21 Sep 2016 23:17:21 GMT  
		Size: 33.4 MB (33445680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757ddbe9d9f91bfe318d4962affa9551ca6a59f4a3923fe153a5f2279df839ee`  
		Last Modified: Wed, 21 Sep 2016 23:17:10 GMT  
		Size: 3.7 MB (3741639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7299420b7b2c17bf9685382354c41838697e86d91b937334cc838aba4f72f278`  
		Last Modified: Wed, 21 Sep 2016 23:17:10 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c772d98d136efd7a62714eae12ab33bf8db20d05fa6c2b684e0f955c44a15262`  
		Last Modified: Wed, 21 Sep 2016 23:17:09 GMT  
		Size: 363.7 KB (363673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ffef7e7965844be8a3976a8ae0be0de4c700369990371162324f3518a0a740`  
		Last Modified: Wed, 21 Sep 2016 23:17:15 GMT  
		Size: 25.9 MB (25883750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1eeeb30a3dcb922a7aba2cfec4e968fd65bffcae38cb9d4339ee092c605fd61`  
		Last Modified: Wed, 21 Sep 2016 23:17:08 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.1.10-apache`

```console
$ docker pull owncloud@sha256:3f4d108877c6edff9f653868b1f845429fd5de5efb795b92ab7273d4ccc318f9
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.1.10-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226365412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc4e588613900da9640a4f248d81d1cdd3cef2982bd049a70dd817554111fa5`
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
# Wed, 21 Sep 2016 23:14:00 GMT
ENV OWNCLOUD_VERSION=8.1.10
# Wed, 21 Sep 2016 23:14:00 GMT
VOLUME [/var/www/html]
# Wed, 21 Sep 2016 23:14:12 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Wed, 21 Sep 2016 23:14:13 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Wed, 21 Sep 2016 23:14:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Sep 2016 23:14:13 GMT
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
	-	`sha256:c305cf6863dc024229ce119863a5b9a2893ecbf4e5287d67b0d12d3939ec0813`  
		Last Modified: Wed, 21 Sep 2016 23:17:53 GMT  
		Size: 26.8 MB (26836661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8679fc31a6b4931112447169ac56d8c08ab0865704b1e81ccdbe944de781527`  
		Last Modified: Wed, 21 Sep 2016 23:17:46 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.1-apache`

```console
$ docker pull owncloud@sha256:3f4d108877c6edff9f653868b1f845429fd5de5efb795b92ab7273d4ccc318f9
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.1-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226365412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc4e588613900da9640a4f248d81d1cdd3cef2982bd049a70dd817554111fa5`
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
# Wed, 21 Sep 2016 23:14:00 GMT
ENV OWNCLOUD_VERSION=8.1.10
# Wed, 21 Sep 2016 23:14:00 GMT
VOLUME [/var/www/html]
# Wed, 21 Sep 2016 23:14:12 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Wed, 21 Sep 2016 23:14:13 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Wed, 21 Sep 2016 23:14:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Sep 2016 23:14:13 GMT
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
	-	`sha256:c305cf6863dc024229ce119863a5b9a2893ecbf4e5287d67b0d12d3939ec0813`  
		Last Modified: Wed, 21 Sep 2016 23:17:53 GMT  
		Size: 26.8 MB (26836661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8679fc31a6b4931112447169ac56d8c08ab0865704b1e81ccdbe944de781527`  
		Last Modified: Wed, 21 Sep 2016 23:17:46 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.1.10`

```console
$ docker pull owncloud@sha256:3f4d108877c6edff9f653868b1f845429fd5de5efb795b92ab7273d4ccc318f9
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.1.10` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226365412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc4e588613900da9640a4f248d81d1cdd3cef2982bd049a70dd817554111fa5`
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
# Wed, 21 Sep 2016 23:14:00 GMT
ENV OWNCLOUD_VERSION=8.1.10
# Wed, 21 Sep 2016 23:14:00 GMT
VOLUME [/var/www/html]
# Wed, 21 Sep 2016 23:14:12 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Wed, 21 Sep 2016 23:14:13 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Wed, 21 Sep 2016 23:14:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Sep 2016 23:14:13 GMT
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
	-	`sha256:c305cf6863dc024229ce119863a5b9a2893ecbf4e5287d67b0d12d3939ec0813`  
		Last Modified: Wed, 21 Sep 2016 23:17:53 GMT  
		Size: 26.8 MB (26836661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8679fc31a6b4931112447169ac56d8c08ab0865704b1e81ccdbe944de781527`  
		Last Modified: Wed, 21 Sep 2016 23:17:46 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.1`

```console
$ docker pull owncloud@sha256:3f4d108877c6edff9f653868b1f845429fd5de5efb795b92ab7273d4ccc318f9
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226365412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc4e588613900da9640a4f248d81d1cdd3cef2982bd049a70dd817554111fa5`
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
# Wed, 21 Sep 2016 23:14:00 GMT
ENV OWNCLOUD_VERSION=8.1.10
# Wed, 21 Sep 2016 23:14:00 GMT
VOLUME [/var/www/html]
# Wed, 21 Sep 2016 23:14:12 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Wed, 21 Sep 2016 23:14:13 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Wed, 21 Sep 2016 23:14:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Sep 2016 23:14:13 GMT
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
	-	`sha256:c305cf6863dc024229ce119863a5b9a2893ecbf4e5287d67b0d12d3939ec0813`  
		Last Modified: Wed, 21 Sep 2016 23:17:53 GMT  
		Size: 26.8 MB (26836661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8679fc31a6b4931112447169ac56d8c08ab0865704b1e81ccdbe944de781527`  
		Last Modified: Wed, 21 Sep 2016 23:17:46 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.1.10-fpm`

```console
$ docker pull owncloud@sha256:710efa4ea51874c8542c4725a01bd38ea2e2dccee5fd698ab1885d54d0a05df1
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.1.10-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.4 MB (216426951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6b1407cf656e1642e4609f00e60c55e629e658440dd99a6ada68daa7b7cd1d2`
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
# Wed, 21 Sep 2016 23:14:14 GMT
ENV OWNCLOUD_VERSION=8.1.10
# Wed, 21 Sep 2016 23:14:14 GMT
VOLUME [/var/www/html]
# Wed, 21 Sep 2016 23:14:27 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Wed, 21 Sep 2016 23:14:28 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Wed, 21 Sep 2016 23:14:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Sep 2016 23:14:28 GMT
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
	-	`sha256:145e768cb21f8125d8c0c5bddaa9d4b378ee44b6a3caef52b97baae632b03e0b`  
		Last Modified: Wed, 21 Sep 2016 23:18:56 GMT  
		Size: 26.8 MB (26836631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74bd19cc3d7f71144d084c71b42e36b141a5ef06dc8816fa248315541f2e9cad`  
		Last Modified: Wed, 21 Sep 2016 23:18:49 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.1-fpm`

```console
$ docker pull owncloud@sha256:710efa4ea51874c8542c4725a01bd38ea2e2dccee5fd698ab1885d54d0a05df1
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.1-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.4 MB (216426951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6b1407cf656e1642e4609f00e60c55e629e658440dd99a6ada68daa7b7cd1d2`
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
# Wed, 21 Sep 2016 23:14:14 GMT
ENV OWNCLOUD_VERSION=8.1.10
# Wed, 21 Sep 2016 23:14:14 GMT
VOLUME [/var/www/html]
# Wed, 21 Sep 2016 23:14:27 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Wed, 21 Sep 2016 23:14:28 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Wed, 21 Sep 2016 23:14:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Sep 2016 23:14:28 GMT
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
	-	`sha256:145e768cb21f8125d8c0c5bddaa9d4b378ee44b6a3caef52b97baae632b03e0b`  
		Last Modified: Wed, 21 Sep 2016 23:18:56 GMT  
		Size: 26.8 MB (26836631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74bd19cc3d7f71144d084c71b42e36b141a5ef06dc8816fa248315541f2e9cad`  
		Last Modified: Wed, 21 Sep 2016 23:18:49 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.2.8-apache`

```console
$ docker pull owncloud@sha256:a85139c598fe42f2c57a3fad61dd6e2b8fb0dae4ce437da6a35d0afdfb4cdaaa
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.2.8-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229750258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9f1cb10a3830f10a4c5dedfb522a1c01ff1c196de29e0a2d606eb2fedbf9ba8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:24:54 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 23 Sep 2016 21:24:55 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 23 Sep 2016 21:24:56 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 23 Sep 2016 21:24:57 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 23 Sep 2016 21:24:58 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 23 Sep 2016 21:24:58 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 23 Sep 2016 21:24:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 23 Sep 2016 21:24:59 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 23 Sep 2016 21:24:59 GMT
ENV PHP_VERSION=5.6.26
# Fri, 23 Sep 2016 21:25:00 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 23 Sep 2016 21:25:00 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 23 Sep 2016 21:25:03 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:25:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:27:21 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:27:22 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:27:23 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:27:23 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:27:23 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 21:27:24 GMT
CMD ["apache2-foreground"]
# Sat, 24 Sep 2016 04:28:35 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 04:30:20 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 24 Sep 2016 04:30:21 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 24 Sep 2016 04:30:22 GMT
RUN a2enmod rewrite
# Sat, 24 Sep 2016 04:30:46 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 24 Sep 2016 04:30:47 GMT
ENV OWNCLOUD_VERSION=8.2.8
# Sat, 24 Sep 2016 04:30:47 GMT
VOLUME [/var/www/html]
# Sat, 24 Sep 2016 04:31:00 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 24 Sep 2016 04:31:01 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 24 Sep 2016 04:31:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 24 Sep 2016 04:31:02 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05dcf7da5898c6779d2972c35fd7695512c8d3639d4316f6c5fb5c92cf7a587`  
		Last Modified: Fri, 23 Sep 2016 21:27:38 GMT  
		Size: 2.8 MB (2849086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e38500c090694a52f13ac803f1786e1b6eaf47d8efa2c5129d5db2ef52ebbf1`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cba9364455184cd78edc0d317497664453686c65153710dfd4e9cce5ead08e`  
		Last Modified: Fri, 23 Sep 2016 21:27:34 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc53f7ef49062cf4ce2d2a03d7d282c1c79cc3de048012605d5e53abe748c83b`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6a63a6d9035b4a9307637baf440ceb1cda513c63cee3dbf7f29b406eea9b5b`  
		Last Modified: Fri, 23 Sep 2016 21:27:33 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451d9efcb5d67a20d448824067692067087b6c9969a1458f43d6b52da81074df`  
		Last Modified: Fri, 23 Sep 2016 21:27:33 GMT  
		Size: 12.4 MB (12417481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850743d4e387a0303b9e2c1f1520ffd532f4de363efac31a7dc4ab227e0c7a0f`  
		Last Modified: Fri, 23 Sep 2016 21:27:31 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720bc600730dada164aff3d18c85f4366fe7f84b9749d95105a73a76db6a3e05`  
		Last Modified: Fri, 23 Sep 2016 21:27:39 GMT  
		Size: 15.9 MB (15906474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631b7b76ef128cf5fb6933fd3094c701b335303e22f21702fd4f78acaa77d18d`  
		Last Modified: Fri, 23 Sep 2016 21:27:31 GMT  
		Size: 1.8 KB (1834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9704d22c95dfc2d7d95e2bd1b2fdb829f5cbc9f9381413b1bc1bb047a4ab7b90`  
		Last Modified: Fri, 23 Sep 2016 21:27:31 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc60b604ddbf538adea4398d2877cf4634bdc42f1c94250526ea17e23e4e0fb4`  
		Last Modified: Sat, 24 Sep 2016 04:31:24 GMT  
		Size: 34.3 MB (34331362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac5b649c6708d66924f28ef21fe9fb15491e79ace85f8b0ae1163164208a18e`  
		Last Modified: Sat, 24 Sep 2016 04:31:15 GMT  
		Size: 3.7 MB (3741474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c196d5eafc3e7b4fe40d931d7caaa1b7911c82aeca3e17aad9cadee9d8d03360`  
		Last Modified: Sat, 24 Sep 2016 04:31:10 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c402831f0d43f6bd1d8c44af10a60e973da2be7f05e6f62df6aac28f50583cfe`  
		Last Modified: Sat, 24 Sep 2016 04:31:11 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c055b6a66550d347fe5614fb94417bdae49f01a7df055a70961682a0151fa3`  
		Last Modified: Sat, 24 Sep 2016 04:31:11 GMT  
		Size: 1.3 MB (1330706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d8521f54fe8f9153dbe4637c78eb74e7dcd537d7962d7e3194a3955f289a6d`  
		Last Modified: Sat, 24 Sep 2016 04:31:18 GMT  
		Size: 30.2 MB (30220834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d89502816cd04a0cf4adb0fb55e776552dc57ad3aa1e31a2585bf10b82dfbc7`  
		Last Modified: Sat, 24 Sep 2016 04:31:11 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.2-apache`

```console
$ docker pull owncloud@sha256:a85139c598fe42f2c57a3fad61dd6e2b8fb0dae4ce437da6a35d0afdfb4cdaaa
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.2-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229750258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9f1cb10a3830f10a4c5dedfb522a1c01ff1c196de29e0a2d606eb2fedbf9ba8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:24:54 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 23 Sep 2016 21:24:55 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 23 Sep 2016 21:24:56 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 23 Sep 2016 21:24:57 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 23 Sep 2016 21:24:58 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 23 Sep 2016 21:24:58 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 23 Sep 2016 21:24:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 23 Sep 2016 21:24:59 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 23 Sep 2016 21:24:59 GMT
ENV PHP_VERSION=5.6.26
# Fri, 23 Sep 2016 21:25:00 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 23 Sep 2016 21:25:00 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 23 Sep 2016 21:25:03 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:25:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:27:21 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:27:22 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:27:23 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:27:23 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:27:23 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 21:27:24 GMT
CMD ["apache2-foreground"]
# Sat, 24 Sep 2016 04:28:35 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 04:30:20 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 24 Sep 2016 04:30:21 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 24 Sep 2016 04:30:22 GMT
RUN a2enmod rewrite
# Sat, 24 Sep 2016 04:30:46 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 24 Sep 2016 04:30:47 GMT
ENV OWNCLOUD_VERSION=8.2.8
# Sat, 24 Sep 2016 04:30:47 GMT
VOLUME [/var/www/html]
# Sat, 24 Sep 2016 04:31:00 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 24 Sep 2016 04:31:01 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 24 Sep 2016 04:31:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 24 Sep 2016 04:31:02 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05dcf7da5898c6779d2972c35fd7695512c8d3639d4316f6c5fb5c92cf7a587`  
		Last Modified: Fri, 23 Sep 2016 21:27:38 GMT  
		Size: 2.8 MB (2849086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e38500c090694a52f13ac803f1786e1b6eaf47d8efa2c5129d5db2ef52ebbf1`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cba9364455184cd78edc0d317497664453686c65153710dfd4e9cce5ead08e`  
		Last Modified: Fri, 23 Sep 2016 21:27:34 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc53f7ef49062cf4ce2d2a03d7d282c1c79cc3de048012605d5e53abe748c83b`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6a63a6d9035b4a9307637baf440ceb1cda513c63cee3dbf7f29b406eea9b5b`  
		Last Modified: Fri, 23 Sep 2016 21:27:33 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451d9efcb5d67a20d448824067692067087b6c9969a1458f43d6b52da81074df`  
		Last Modified: Fri, 23 Sep 2016 21:27:33 GMT  
		Size: 12.4 MB (12417481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850743d4e387a0303b9e2c1f1520ffd532f4de363efac31a7dc4ab227e0c7a0f`  
		Last Modified: Fri, 23 Sep 2016 21:27:31 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720bc600730dada164aff3d18c85f4366fe7f84b9749d95105a73a76db6a3e05`  
		Last Modified: Fri, 23 Sep 2016 21:27:39 GMT  
		Size: 15.9 MB (15906474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631b7b76ef128cf5fb6933fd3094c701b335303e22f21702fd4f78acaa77d18d`  
		Last Modified: Fri, 23 Sep 2016 21:27:31 GMT  
		Size: 1.8 KB (1834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9704d22c95dfc2d7d95e2bd1b2fdb829f5cbc9f9381413b1bc1bb047a4ab7b90`  
		Last Modified: Fri, 23 Sep 2016 21:27:31 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc60b604ddbf538adea4398d2877cf4634bdc42f1c94250526ea17e23e4e0fb4`  
		Last Modified: Sat, 24 Sep 2016 04:31:24 GMT  
		Size: 34.3 MB (34331362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac5b649c6708d66924f28ef21fe9fb15491e79ace85f8b0ae1163164208a18e`  
		Last Modified: Sat, 24 Sep 2016 04:31:15 GMT  
		Size: 3.7 MB (3741474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c196d5eafc3e7b4fe40d931d7caaa1b7911c82aeca3e17aad9cadee9d8d03360`  
		Last Modified: Sat, 24 Sep 2016 04:31:10 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c402831f0d43f6bd1d8c44af10a60e973da2be7f05e6f62df6aac28f50583cfe`  
		Last Modified: Sat, 24 Sep 2016 04:31:11 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c055b6a66550d347fe5614fb94417bdae49f01a7df055a70961682a0151fa3`  
		Last Modified: Sat, 24 Sep 2016 04:31:11 GMT  
		Size: 1.3 MB (1330706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d8521f54fe8f9153dbe4637c78eb74e7dcd537d7962d7e3194a3955f289a6d`  
		Last Modified: Sat, 24 Sep 2016 04:31:18 GMT  
		Size: 30.2 MB (30220834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d89502816cd04a0cf4adb0fb55e776552dc57ad3aa1e31a2585bf10b82dfbc7`  
		Last Modified: Sat, 24 Sep 2016 04:31:11 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8-apache`

```console
$ docker pull owncloud@sha256:a85139c598fe42f2c57a3fad61dd6e2b8fb0dae4ce437da6a35d0afdfb4cdaaa
```

-	Platforms:
	-	linux; amd64

### `owncloud:8-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229750258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9f1cb10a3830f10a4c5dedfb522a1c01ff1c196de29e0a2d606eb2fedbf9ba8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:24:54 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 23 Sep 2016 21:24:55 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 23 Sep 2016 21:24:56 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 23 Sep 2016 21:24:57 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 23 Sep 2016 21:24:58 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 23 Sep 2016 21:24:58 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 23 Sep 2016 21:24:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 23 Sep 2016 21:24:59 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 23 Sep 2016 21:24:59 GMT
ENV PHP_VERSION=5.6.26
# Fri, 23 Sep 2016 21:25:00 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 23 Sep 2016 21:25:00 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 23 Sep 2016 21:25:03 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:25:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:27:21 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:27:22 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:27:23 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:27:23 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:27:23 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 21:27:24 GMT
CMD ["apache2-foreground"]
# Sat, 24 Sep 2016 04:28:35 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 04:30:20 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 24 Sep 2016 04:30:21 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 24 Sep 2016 04:30:22 GMT
RUN a2enmod rewrite
# Sat, 24 Sep 2016 04:30:46 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 24 Sep 2016 04:30:47 GMT
ENV OWNCLOUD_VERSION=8.2.8
# Sat, 24 Sep 2016 04:30:47 GMT
VOLUME [/var/www/html]
# Sat, 24 Sep 2016 04:31:00 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 24 Sep 2016 04:31:01 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 24 Sep 2016 04:31:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 24 Sep 2016 04:31:02 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05dcf7da5898c6779d2972c35fd7695512c8d3639d4316f6c5fb5c92cf7a587`  
		Last Modified: Fri, 23 Sep 2016 21:27:38 GMT  
		Size: 2.8 MB (2849086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e38500c090694a52f13ac803f1786e1b6eaf47d8efa2c5129d5db2ef52ebbf1`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cba9364455184cd78edc0d317497664453686c65153710dfd4e9cce5ead08e`  
		Last Modified: Fri, 23 Sep 2016 21:27:34 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc53f7ef49062cf4ce2d2a03d7d282c1c79cc3de048012605d5e53abe748c83b`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6a63a6d9035b4a9307637baf440ceb1cda513c63cee3dbf7f29b406eea9b5b`  
		Last Modified: Fri, 23 Sep 2016 21:27:33 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451d9efcb5d67a20d448824067692067087b6c9969a1458f43d6b52da81074df`  
		Last Modified: Fri, 23 Sep 2016 21:27:33 GMT  
		Size: 12.4 MB (12417481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850743d4e387a0303b9e2c1f1520ffd532f4de363efac31a7dc4ab227e0c7a0f`  
		Last Modified: Fri, 23 Sep 2016 21:27:31 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720bc600730dada164aff3d18c85f4366fe7f84b9749d95105a73a76db6a3e05`  
		Last Modified: Fri, 23 Sep 2016 21:27:39 GMT  
		Size: 15.9 MB (15906474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631b7b76ef128cf5fb6933fd3094c701b335303e22f21702fd4f78acaa77d18d`  
		Last Modified: Fri, 23 Sep 2016 21:27:31 GMT  
		Size: 1.8 KB (1834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9704d22c95dfc2d7d95e2bd1b2fdb829f5cbc9f9381413b1bc1bb047a4ab7b90`  
		Last Modified: Fri, 23 Sep 2016 21:27:31 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc60b604ddbf538adea4398d2877cf4634bdc42f1c94250526ea17e23e4e0fb4`  
		Last Modified: Sat, 24 Sep 2016 04:31:24 GMT  
		Size: 34.3 MB (34331362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac5b649c6708d66924f28ef21fe9fb15491e79ace85f8b0ae1163164208a18e`  
		Last Modified: Sat, 24 Sep 2016 04:31:15 GMT  
		Size: 3.7 MB (3741474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c196d5eafc3e7b4fe40d931d7caaa1b7911c82aeca3e17aad9cadee9d8d03360`  
		Last Modified: Sat, 24 Sep 2016 04:31:10 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c402831f0d43f6bd1d8c44af10a60e973da2be7f05e6f62df6aac28f50583cfe`  
		Last Modified: Sat, 24 Sep 2016 04:31:11 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c055b6a66550d347fe5614fb94417bdae49f01a7df055a70961682a0151fa3`  
		Last Modified: Sat, 24 Sep 2016 04:31:11 GMT  
		Size: 1.3 MB (1330706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d8521f54fe8f9153dbe4637c78eb74e7dcd537d7962d7e3194a3955f289a6d`  
		Last Modified: Sat, 24 Sep 2016 04:31:18 GMT  
		Size: 30.2 MB (30220834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d89502816cd04a0cf4adb0fb55e776552dc57ad3aa1e31a2585bf10b82dfbc7`  
		Last Modified: Sat, 24 Sep 2016 04:31:11 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.2.8`

```console
$ docker pull owncloud@sha256:a85139c598fe42f2c57a3fad61dd6e2b8fb0dae4ce437da6a35d0afdfb4cdaaa
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.2.8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229750258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9f1cb10a3830f10a4c5dedfb522a1c01ff1c196de29e0a2d606eb2fedbf9ba8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:24:54 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 23 Sep 2016 21:24:55 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 23 Sep 2016 21:24:56 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 23 Sep 2016 21:24:57 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 23 Sep 2016 21:24:58 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 23 Sep 2016 21:24:58 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 23 Sep 2016 21:24:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 23 Sep 2016 21:24:59 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 23 Sep 2016 21:24:59 GMT
ENV PHP_VERSION=5.6.26
# Fri, 23 Sep 2016 21:25:00 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 23 Sep 2016 21:25:00 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 23 Sep 2016 21:25:03 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:25:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:27:21 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:27:22 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:27:23 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:27:23 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:27:23 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 21:27:24 GMT
CMD ["apache2-foreground"]
# Sat, 24 Sep 2016 04:28:35 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 04:30:20 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 24 Sep 2016 04:30:21 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 24 Sep 2016 04:30:22 GMT
RUN a2enmod rewrite
# Sat, 24 Sep 2016 04:30:46 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 24 Sep 2016 04:30:47 GMT
ENV OWNCLOUD_VERSION=8.2.8
# Sat, 24 Sep 2016 04:30:47 GMT
VOLUME [/var/www/html]
# Sat, 24 Sep 2016 04:31:00 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 24 Sep 2016 04:31:01 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 24 Sep 2016 04:31:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 24 Sep 2016 04:31:02 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05dcf7da5898c6779d2972c35fd7695512c8d3639d4316f6c5fb5c92cf7a587`  
		Last Modified: Fri, 23 Sep 2016 21:27:38 GMT  
		Size: 2.8 MB (2849086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e38500c090694a52f13ac803f1786e1b6eaf47d8efa2c5129d5db2ef52ebbf1`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cba9364455184cd78edc0d317497664453686c65153710dfd4e9cce5ead08e`  
		Last Modified: Fri, 23 Sep 2016 21:27:34 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc53f7ef49062cf4ce2d2a03d7d282c1c79cc3de048012605d5e53abe748c83b`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6a63a6d9035b4a9307637baf440ceb1cda513c63cee3dbf7f29b406eea9b5b`  
		Last Modified: Fri, 23 Sep 2016 21:27:33 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451d9efcb5d67a20d448824067692067087b6c9969a1458f43d6b52da81074df`  
		Last Modified: Fri, 23 Sep 2016 21:27:33 GMT  
		Size: 12.4 MB (12417481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850743d4e387a0303b9e2c1f1520ffd532f4de363efac31a7dc4ab227e0c7a0f`  
		Last Modified: Fri, 23 Sep 2016 21:27:31 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720bc600730dada164aff3d18c85f4366fe7f84b9749d95105a73a76db6a3e05`  
		Last Modified: Fri, 23 Sep 2016 21:27:39 GMT  
		Size: 15.9 MB (15906474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631b7b76ef128cf5fb6933fd3094c701b335303e22f21702fd4f78acaa77d18d`  
		Last Modified: Fri, 23 Sep 2016 21:27:31 GMT  
		Size: 1.8 KB (1834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9704d22c95dfc2d7d95e2bd1b2fdb829f5cbc9f9381413b1bc1bb047a4ab7b90`  
		Last Modified: Fri, 23 Sep 2016 21:27:31 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc60b604ddbf538adea4398d2877cf4634bdc42f1c94250526ea17e23e4e0fb4`  
		Last Modified: Sat, 24 Sep 2016 04:31:24 GMT  
		Size: 34.3 MB (34331362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac5b649c6708d66924f28ef21fe9fb15491e79ace85f8b0ae1163164208a18e`  
		Last Modified: Sat, 24 Sep 2016 04:31:15 GMT  
		Size: 3.7 MB (3741474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c196d5eafc3e7b4fe40d931d7caaa1b7911c82aeca3e17aad9cadee9d8d03360`  
		Last Modified: Sat, 24 Sep 2016 04:31:10 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c402831f0d43f6bd1d8c44af10a60e973da2be7f05e6f62df6aac28f50583cfe`  
		Last Modified: Sat, 24 Sep 2016 04:31:11 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c055b6a66550d347fe5614fb94417bdae49f01a7df055a70961682a0151fa3`  
		Last Modified: Sat, 24 Sep 2016 04:31:11 GMT  
		Size: 1.3 MB (1330706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d8521f54fe8f9153dbe4637c78eb74e7dcd537d7962d7e3194a3955f289a6d`  
		Last Modified: Sat, 24 Sep 2016 04:31:18 GMT  
		Size: 30.2 MB (30220834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d89502816cd04a0cf4adb0fb55e776552dc57ad3aa1e31a2585bf10b82dfbc7`  
		Last Modified: Sat, 24 Sep 2016 04:31:11 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.2`

```console
$ docker pull owncloud@sha256:a85139c598fe42f2c57a3fad61dd6e2b8fb0dae4ce437da6a35d0afdfb4cdaaa
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229750258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9f1cb10a3830f10a4c5dedfb522a1c01ff1c196de29e0a2d606eb2fedbf9ba8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:24:54 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 23 Sep 2016 21:24:55 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 23 Sep 2016 21:24:56 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 23 Sep 2016 21:24:57 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 23 Sep 2016 21:24:58 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 23 Sep 2016 21:24:58 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 23 Sep 2016 21:24:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 23 Sep 2016 21:24:59 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 23 Sep 2016 21:24:59 GMT
ENV PHP_VERSION=5.6.26
# Fri, 23 Sep 2016 21:25:00 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 23 Sep 2016 21:25:00 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 23 Sep 2016 21:25:03 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:25:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:27:21 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:27:22 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:27:23 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:27:23 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:27:23 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 21:27:24 GMT
CMD ["apache2-foreground"]
# Sat, 24 Sep 2016 04:28:35 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 04:30:20 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 24 Sep 2016 04:30:21 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 24 Sep 2016 04:30:22 GMT
RUN a2enmod rewrite
# Sat, 24 Sep 2016 04:30:46 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 24 Sep 2016 04:30:47 GMT
ENV OWNCLOUD_VERSION=8.2.8
# Sat, 24 Sep 2016 04:30:47 GMT
VOLUME [/var/www/html]
# Sat, 24 Sep 2016 04:31:00 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 24 Sep 2016 04:31:01 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 24 Sep 2016 04:31:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 24 Sep 2016 04:31:02 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05dcf7da5898c6779d2972c35fd7695512c8d3639d4316f6c5fb5c92cf7a587`  
		Last Modified: Fri, 23 Sep 2016 21:27:38 GMT  
		Size: 2.8 MB (2849086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e38500c090694a52f13ac803f1786e1b6eaf47d8efa2c5129d5db2ef52ebbf1`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cba9364455184cd78edc0d317497664453686c65153710dfd4e9cce5ead08e`  
		Last Modified: Fri, 23 Sep 2016 21:27:34 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc53f7ef49062cf4ce2d2a03d7d282c1c79cc3de048012605d5e53abe748c83b`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6a63a6d9035b4a9307637baf440ceb1cda513c63cee3dbf7f29b406eea9b5b`  
		Last Modified: Fri, 23 Sep 2016 21:27:33 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451d9efcb5d67a20d448824067692067087b6c9969a1458f43d6b52da81074df`  
		Last Modified: Fri, 23 Sep 2016 21:27:33 GMT  
		Size: 12.4 MB (12417481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850743d4e387a0303b9e2c1f1520ffd532f4de363efac31a7dc4ab227e0c7a0f`  
		Last Modified: Fri, 23 Sep 2016 21:27:31 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720bc600730dada164aff3d18c85f4366fe7f84b9749d95105a73a76db6a3e05`  
		Last Modified: Fri, 23 Sep 2016 21:27:39 GMT  
		Size: 15.9 MB (15906474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631b7b76ef128cf5fb6933fd3094c701b335303e22f21702fd4f78acaa77d18d`  
		Last Modified: Fri, 23 Sep 2016 21:27:31 GMT  
		Size: 1.8 KB (1834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9704d22c95dfc2d7d95e2bd1b2fdb829f5cbc9f9381413b1bc1bb047a4ab7b90`  
		Last Modified: Fri, 23 Sep 2016 21:27:31 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc60b604ddbf538adea4398d2877cf4634bdc42f1c94250526ea17e23e4e0fb4`  
		Last Modified: Sat, 24 Sep 2016 04:31:24 GMT  
		Size: 34.3 MB (34331362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac5b649c6708d66924f28ef21fe9fb15491e79ace85f8b0ae1163164208a18e`  
		Last Modified: Sat, 24 Sep 2016 04:31:15 GMT  
		Size: 3.7 MB (3741474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c196d5eafc3e7b4fe40d931d7caaa1b7911c82aeca3e17aad9cadee9d8d03360`  
		Last Modified: Sat, 24 Sep 2016 04:31:10 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c402831f0d43f6bd1d8c44af10a60e973da2be7f05e6f62df6aac28f50583cfe`  
		Last Modified: Sat, 24 Sep 2016 04:31:11 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c055b6a66550d347fe5614fb94417bdae49f01a7df055a70961682a0151fa3`  
		Last Modified: Sat, 24 Sep 2016 04:31:11 GMT  
		Size: 1.3 MB (1330706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d8521f54fe8f9153dbe4637c78eb74e7dcd537d7962d7e3194a3955f289a6d`  
		Last Modified: Sat, 24 Sep 2016 04:31:18 GMT  
		Size: 30.2 MB (30220834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d89502816cd04a0cf4adb0fb55e776552dc57ad3aa1e31a2585bf10b82dfbc7`  
		Last Modified: Sat, 24 Sep 2016 04:31:11 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8`

```console
$ docker pull owncloud@sha256:a85139c598fe42f2c57a3fad61dd6e2b8fb0dae4ce437da6a35d0afdfb4cdaaa
```

-	Platforms:
	-	linux; amd64

### `owncloud:8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229750258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9f1cb10a3830f10a4c5dedfb522a1c01ff1c196de29e0a2d606eb2fedbf9ba8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:24:54 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 23 Sep 2016 21:24:55 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 23 Sep 2016 21:24:56 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 23 Sep 2016 21:24:57 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 23 Sep 2016 21:24:58 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 23 Sep 2016 21:24:58 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 23 Sep 2016 21:24:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 23 Sep 2016 21:24:59 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 23 Sep 2016 21:24:59 GMT
ENV PHP_VERSION=5.6.26
# Fri, 23 Sep 2016 21:25:00 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 23 Sep 2016 21:25:00 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 23 Sep 2016 21:25:03 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:25:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:27:21 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:27:22 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:27:23 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:27:23 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:27:23 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 21:27:24 GMT
CMD ["apache2-foreground"]
# Sat, 24 Sep 2016 04:28:35 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 04:30:20 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 24 Sep 2016 04:30:21 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 24 Sep 2016 04:30:22 GMT
RUN a2enmod rewrite
# Sat, 24 Sep 2016 04:30:46 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 24 Sep 2016 04:30:47 GMT
ENV OWNCLOUD_VERSION=8.2.8
# Sat, 24 Sep 2016 04:30:47 GMT
VOLUME [/var/www/html]
# Sat, 24 Sep 2016 04:31:00 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 24 Sep 2016 04:31:01 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 24 Sep 2016 04:31:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 24 Sep 2016 04:31:02 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05dcf7da5898c6779d2972c35fd7695512c8d3639d4316f6c5fb5c92cf7a587`  
		Last Modified: Fri, 23 Sep 2016 21:27:38 GMT  
		Size: 2.8 MB (2849086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e38500c090694a52f13ac803f1786e1b6eaf47d8efa2c5129d5db2ef52ebbf1`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cba9364455184cd78edc0d317497664453686c65153710dfd4e9cce5ead08e`  
		Last Modified: Fri, 23 Sep 2016 21:27:34 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc53f7ef49062cf4ce2d2a03d7d282c1c79cc3de048012605d5e53abe748c83b`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6a63a6d9035b4a9307637baf440ceb1cda513c63cee3dbf7f29b406eea9b5b`  
		Last Modified: Fri, 23 Sep 2016 21:27:33 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451d9efcb5d67a20d448824067692067087b6c9969a1458f43d6b52da81074df`  
		Last Modified: Fri, 23 Sep 2016 21:27:33 GMT  
		Size: 12.4 MB (12417481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850743d4e387a0303b9e2c1f1520ffd532f4de363efac31a7dc4ab227e0c7a0f`  
		Last Modified: Fri, 23 Sep 2016 21:27:31 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720bc600730dada164aff3d18c85f4366fe7f84b9749d95105a73a76db6a3e05`  
		Last Modified: Fri, 23 Sep 2016 21:27:39 GMT  
		Size: 15.9 MB (15906474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631b7b76ef128cf5fb6933fd3094c701b335303e22f21702fd4f78acaa77d18d`  
		Last Modified: Fri, 23 Sep 2016 21:27:31 GMT  
		Size: 1.8 KB (1834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9704d22c95dfc2d7d95e2bd1b2fdb829f5cbc9f9381413b1bc1bb047a4ab7b90`  
		Last Modified: Fri, 23 Sep 2016 21:27:31 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc60b604ddbf538adea4398d2877cf4634bdc42f1c94250526ea17e23e4e0fb4`  
		Last Modified: Sat, 24 Sep 2016 04:31:24 GMT  
		Size: 34.3 MB (34331362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac5b649c6708d66924f28ef21fe9fb15491e79ace85f8b0ae1163164208a18e`  
		Last Modified: Sat, 24 Sep 2016 04:31:15 GMT  
		Size: 3.7 MB (3741474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c196d5eafc3e7b4fe40d931d7caaa1b7911c82aeca3e17aad9cadee9d8d03360`  
		Last Modified: Sat, 24 Sep 2016 04:31:10 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c402831f0d43f6bd1d8c44af10a60e973da2be7f05e6f62df6aac28f50583cfe`  
		Last Modified: Sat, 24 Sep 2016 04:31:11 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c055b6a66550d347fe5614fb94417bdae49f01a7df055a70961682a0151fa3`  
		Last Modified: Sat, 24 Sep 2016 04:31:11 GMT  
		Size: 1.3 MB (1330706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d8521f54fe8f9153dbe4637c78eb74e7dcd537d7962d7e3194a3955f289a6d`  
		Last Modified: Sat, 24 Sep 2016 04:31:18 GMT  
		Size: 30.2 MB (30220834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d89502816cd04a0cf4adb0fb55e776552dc57ad3aa1e31a2585bf10b82dfbc7`  
		Last Modified: Sat, 24 Sep 2016 04:31:11 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.2.8-fpm`

```console
$ docker pull owncloud@sha256:caf3c9f9cd55a9f9cb6f9b9fe05432e2057e9f1547f73b2a444f89e32216eb21
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.2.8-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.8 MB (219811515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:397e1f0a3056428c193e705aa66bccca2ea02145f584f338dbb47e3effda64a7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:28:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 23 Sep 2016 21:28:05 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 23 Sep 2016 21:28:05 GMT
ENV PHP_VERSION=5.6.26
# Fri, 23 Sep 2016 21:28:06 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 23 Sep 2016 21:28:06 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 23 Sep 2016 21:28:10 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:28:10 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:31:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:31:35 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:31:35 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:31:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 23 Sep 2016 21:31:36 GMT
EXPOSE 9000/tcp
# Fri, 23 Sep 2016 21:31:37 GMT
CMD ["php-fpm"]
# Sat, 24 Sep 2016 04:32:41 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 04:34:23 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 24 Sep 2016 04:34:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 24 Sep 2016 04:34:49 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 24 Sep 2016 04:34:50 GMT
ENV OWNCLOUD_VERSION=8.2.8
# Sat, 24 Sep 2016 04:34:50 GMT
VOLUME [/var/www/html]
# Sat, 24 Sep 2016 04:35:20 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 24 Sep 2016 04:35:21 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 24 Sep 2016 04:35:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 24 Sep 2016 04:35:22 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce19e16f61bc6e5320c327d66037ddc770407e95eb60cbfe7ee9b33aa9ca65e`  
		Last Modified: Fri, 23 Sep 2016 21:31:48 GMT  
		Size: 12.4 MB (12417481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f7ab14322501cde225129bf89e96566577bd5d278c6a60ea7dd864c1d6cfcd7`  
		Last Modified: Fri, 23 Sep 2016 21:31:44 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e7e9616671c2689898d27c6f61b07dd1f82c6b7172da42ba57f5890986a356`  
		Last Modified: Fri, 23 Sep 2016 21:31:47 GMT  
		Size: 8.8 MB (8834935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4bff2cb766be3ed6a23d4963605068e7ea8f95adfb8fd636410b3534feb02d`  
		Last Modified: Fri, 23 Sep 2016 21:31:44 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a14705c2152ba673f5a6c8c32354c6733c9aeebaf8ad76887ea1bb3ad72a56`  
		Last Modified: Fri, 23 Sep 2016 21:31:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab3ee32b4c623bace5e3954243fdac94e551b5e4be02ada8e7c19b82a1d4882`  
		Last Modified: Fri, 23 Sep 2016 21:31:44 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3aa1e9f51c3d250e363eb6eee208554e087911f1b8714c628754524eb2d89c`  
		Last Modified: Sat, 24 Sep 2016 04:35:42 GMT  
		Size: 34.3 MB (34308541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5f78d129cddd6f79868eb0867cf2f8e09ef293a261db5ec4ffb2aeacda4be2`  
		Last Modified: Sat, 24 Sep 2016 04:35:31 GMT  
		Size: 3.7 MB (3741668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12300127b88ee27c96beefb73d0d0c721421577f3b31d339e7a3a829cb1fc00`  
		Last Modified: Sat, 24 Sep 2016 04:35:31 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2196275524276906534b92dd557db0e42f22b704963a0e33816c6c258d3c4982`  
		Last Modified: Sat, 24 Sep 2016 04:35:30 GMT  
		Size: 1.3 MB (1330718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d9d2e6d34bde8441e39aa17dedb84b4e49f51a2195dd352ed8064db373b612`  
		Last Modified: Sat, 24 Sep 2016 04:35:38 GMT  
		Size: 30.2 MB (30220832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b4843005f6024abc92867bb1abf0b6c3fab83b82891475d00036499e215510`  
		Last Modified: Sat, 24 Sep 2016 04:35:30 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8.2-fpm`

```console
$ docker pull owncloud@sha256:caf3c9f9cd55a9f9cb6f9b9fe05432e2057e9f1547f73b2a444f89e32216eb21
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.2-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.8 MB (219811515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:397e1f0a3056428c193e705aa66bccca2ea02145f584f338dbb47e3effda64a7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:28:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 23 Sep 2016 21:28:05 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 23 Sep 2016 21:28:05 GMT
ENV PHP_VERSION=5.6.26
# Fri, 23 Sep 2016 21:28:06 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 23 Sep 2016 21:28:06 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 23 Sep 2016 21:28:10 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:28:10 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:31:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:31:35 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:31:35 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:31:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 23 Sep 2016 21:31:36 GMT
EXPOSE 9000/tcp
# Fri, 23 Sep 2016 21:31:37 GMT
CMD ["php-fpm"]
# Sat, 24 Sep 2016 04:32:41 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 04:34:23 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 24 Sep 2016 04:34:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 24 Sep 2016 04:34:49 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 24 Sep 2016 04:34:50 GMT
ENV OWNCLOUD_VERSION=8.2.8
# Sat, 24 Sep 2016 04:34:50 GMT
VOLUME [/var/www/html]
# Sat, 24 Sep 2016 04:35:20 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 24 Sep 2016 04:35:21 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 24 Sep 2016 04:35:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 24 Sep 2016 04:35:22 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce19e16f61bc6e5320c327d66037ddc770407e95eb60cbfe7ee9b33aa9ca65e`  
		Last Modified: Fri, 23 Sep 2016 21:31:48 GMT  
		Size: 12.4 MB (12417481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f7ab14322501cde225129bf89e96566577bd5d278c6a60ea7dd864c1d6cfcd7`  
		Last Modified: Fri, 23 Sep 2016 21:31:44 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e7e9616671c2689898d27c6f61b07dd1f82c6b7172da42ba57f5890986a356`  
		Last Modified: Fri, 23 Sep 2016 21:31:47 GMT  
		Size: 8.8 MB (8834935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4bff2cb766be3ed6a23d4963605068e7ea8f95adfb8fd636410b3534feb02d`  
		Last Modified: Fri, 23 Sep 2016 21:31:44 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a14705c2152ba673f5a6c8c32354c6733c9aeebaf8ad76887ea1bb3ad72a56`  
		Last Modified: Fri, 23 Sep 2016 21:31:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab3ee32b4c623bace5e3954243fdac94e551b5e4be02ada8e7c19b82a1d4882`  
		Last Modified: Fri, 23 Sep 2016 21:31:44 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3aa1e9f51c3d250e363eb6eee208554e087911f1b8714c628754524eb2d89c`  
		Last Modified: Sat, 24 Sep 2016 04:35:42 GMT  
		Size: 34.3 MB (34308541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5f78d129cddd6f79868eb0867cf2f8e09ef293a261db5ec4ffb2aeacda4be2`  
		Last Modified: Sat, 24 Sep 2016 04:35:31 GMT  
		Size: 3.7 MB (3741668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12300127b88ee27c96beefb73d0d0c721421577f3b31d339e7a3a829cb1fc00`  
		Last Modified: Sat, 24 Sep 2016 04:35:31 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2196275524276906534b92dd557db0e42f22b704963a0e33816c6c258d3c4982`  
		Last Modified: Sat, 24 Sep 2016 04:35:30 GMT  
		Size: 1.3 MB (1330718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d9d2e6d34bde8441e39aa17dedb84b4e49f51a2195dd352ed8064db373b612`  
		Last Modified: Sat, 24 Sep 2016 04:35:38 GMT  
		Size: 30.2 MB (30220832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b4843005f6024abc92867bb1abf0b6c3fab83b82891475d00036499e215510`  
		Last Modified: Sat, 24 Sep 2016 04:35:30 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `owncloud:8-fpm`

```console
$ docker pull owncloud@sha256:caf3c9f9cd55a9f9cb6f9b9fe05432e2057e9f1547f73b2a444f89e32216eb21
```

-	Platforms:
	-	linux; amd64

### `owncloud:8-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.8 MB (219811515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:397e1f0a3056428c193e705aa66bccca2ea02145f584f338dbb47e3effda64a7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:28:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 23 Sep 2016 21:28:05 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 23 Sep 2016 21:28:05 GMT
ENV PHP_VERSION=5.6.26
# Fri, 23 Sep 2016 21:28:06 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 23 Sep 2016 21:28:06 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 23 Sep 2016 21:28:10 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:28:10 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:31:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:31:35 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:31:35 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:31:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 23 Sep 2016 21:31:36 GMT
EXPOSE 9000/tcp
# Fri, 23 Sep 2016 21:31:37 GMT
CMD ["php-fpm"]
# Sat, 24 Sep 2016 04:32:41 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 04:34:23 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Sat, 24 Sep 2016 04:34:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 24 Sep 2016 04:34:49 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Sat, 24 Sep 2016 04:34:50 GMT
ENV OWNCLOUD_VERSION=8.2.8
# Sat, 24 Sep 2016 04:34:50 GMT
VOLUME [/var/www/html]
# Sat, 24 Sep 2016 04:35:20 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Sat, 24 Sep 2016 04:35:21 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh 
# Sat, 24 Sep 2016 04:35:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 24 Sep 2016 04:35:22 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce19e16f61bc6e5320c327d66037ddc770407e95eb60cbfe7ee9b33aa9ca65e`  
		Last Modified: Fri, 23 Sep 2016 21:31:48 GMT  
		Size: 12.4 MB (12417481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f7ab14322501cde225129bf89e96566577bd5d278c6a60ea7dd864c1d6cfcd7`  
		Last Modified: Fri, 23 Sep 2016 21:31:44 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e7e9616671c2689898d27c6f61b07dd1f82c6b7172da42ba57f5890986a356`  
		Last Modified: Fri, 23 Sep 2016 21:31:47 GMT  
		Size: 8.8 MB (8834935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4bff2cb766be3ed6a23d4963605068e7ea8f95adfb8fd636410b3534feb02d`  
		Last Modified: Fri, 23 Sep 2016 21:31:44 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a14705c2152ba673f5a6c8c32354c6733c9aeebaf8ad76887ea1bb3ad72a56`  
		Last Modified: Fri, 23 Sep 2016 21:31:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab3ee32b4c623bace5e3954243fdac94e551b5e4be02ada8e7c19b82a1d4882`  
		Last Modified: Fri, 23 Sep 2016 21:31:44 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3aa1e9f51c3d250e363eb6eee208554e087911f1b8714c628754524eb2d89c`  
		Last Modified: Sat, 24 Sep 2016 04:35:42 GMT  
		Size: 34.3 MB (34308541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5f78d129cddd6f79868eb0867cf2f8e09ef293a261db5ec4ffb2aeacda4be2`  
		Last Modified: Sat, 24 Sep 2016 04:35:31 GMT  
		Size: 3.7 MB (3741668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12300127b88ee27c96beefb73d0d0c721421577f3b31d339e7a3a829cb1fc00`  
		Last Modified: Sat, 24 Sep 2016 04:35:31 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2196275524276906534b92dd557db0e42f22b704963a0e33816c6c258d3c4982`  
		Last Modified: Sat, 24 Sep 2016 04:35:30 GMT  
		Size: 1.3 MB (1330718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d9d2e6d34bde8441e39aa17dedb84b4e49f51a2195dd352ed8064db373b612`  
		Last Modified: Sat, 24 Sep 2016 04:35:38 GMT  
		Size: 30.2 MB (30220832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b4843005f6024abc92867bb1abf0b6c3fab83b82891475d00036499e215510`  
		Last Modified: Sat, 24 Sep 2016 04:35:30 GMT  
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

```console
$ docker pull owncloud@sha256:ac854ab527695f810f0b7013cc1f7fd6ae25e6e745f217c6c0f0320e123565af
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.0.5` - linux; amd64

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

## `owncloud:9.0`

```console
$ docker pull owncloud@sha256:ac854ab527695f810f0b7013cc1f7fd6ae25e6e745f217c6c0f0320e123565af
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.0` - linux; amd64

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

## `owncloud:9.0.5-fpm`

```console
$ docker pull owncloud@sha256:b6826163cdc8a380c73026e56454369309cbe4ca6eda0a89e9baa8f02d76a967
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.0.5-fpm` - linux; amd64

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
$ docker pull owncloud@sha256:3d2f1cac9c886ab40dc29ac6ad7eab6c8e95f7d9940f942482b39fb032027a62
```

-	Platforms:
	-	linux; amd64

### `owncloud:9-apache` - linux; amd64

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

## `owncloud:apache`

```console
$ docker pull owncloud@sha256:3d2f1cac9c886ab40dc29ac6ad7eab6c8e95f7d9940f942482b39fb032027a62
```

-	Platforms:
	-	linux; amd64

### `owncloud:apache` - linux; amd64

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

## `owncloud:9.1.1`

```console
$ docker pull owncloud@sha256:3d2f1cac9c886ab40dc29ac6ad7eab6c8e95f7d9940f942482b39fb032027a62
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.1.1` - linux; amd64

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

## `owncloud:9.1`

```console
$ docker pull owncloud@sha256:3d2f1cac9c886ab40dc29ac6ad7eab6c8e95f7d9940f942482b39fb032027a62
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.1` - linux; amd64

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
$ docker pull owncloud@sha256:3d2f1cac9c886ab40dc29ac6ad7eab6c8e95f7d9940f942482b39fb032027a62
```

-	Platforms:
	-	linux; amd64

### `owncloud:latest` - linux; amd64

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
$ docker pull owncloud@sha256:c64fb6c172ac7f962a7848702a235af9bfa5cd45bcfe3858ea33444b28968d88
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.1-fpm` - linux; amd64

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
$ docker pull owncloud@sha256:c64fb6c172ac7f962a7848702a235af9bfa5cd45bcfe3858ea33444b28968d88
```

-	Platforms:
	-	linux; amd64

### `owncloud:fpm` - linux; amd64

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
