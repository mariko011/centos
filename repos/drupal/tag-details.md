<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `drupal`

-	[`drupal:8.2.5-apache`](#drupal825-apache)
-	[`drupal:8.2-apache`](#drupal82-apache)
-	[`drupal:8-apache`](#drupal8-apache)
-	[`drupal:apache`](#drupalapache)
-	[`drupal:8.2.5`](#drupal825)
-	[`drupal:8.2`](#drupal82)
-	[`drupal:8`](#drupal8)
-	[`drupal:latest`](#drupallatest)
-	[`drupal:8.2.5-fpm`](#drupal825-fpm)
-	[`drupal:8.2-fpm`](#drupal82-fpm)
-	[`drupal:8-fpm`](#drupal8-fpm)
-	[`drupal:fpm`](#drupalfpm)
-	[`drupal:7.53-apache`](#drupal753-apache)
-	[`drupal:7-apache`](#drupal7-apache)
-	[`drupal:7.53`](#drupal753)
-	[`drupal:7`](#drupal7)
-	[`drupal:7.53-fpm`](#drupal753-fpm)
-	[`drupal:7-fpm`](#drupal7-fpm)

## `drupal:8.2.5-apache`

```console
$ docker pull drupal@sha256:212d8c288aadcb80942e0a9760ee4f9298f80122b08047477a4973c1603021e8
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.5-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176992355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fc7ce58ed8840c2203c55614f80e45a734e4f64159fd77a7730021dadbdac20`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:54:13 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jan 2017 18:54:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:54:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jan 2017 18:54:40 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:00:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:00:36 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:00:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:00:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:02:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:03:00 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:03:01 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:02 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:03:02 GMT
EXPOSE 80/tcp
# Tue, 24 Jan 2017 19:03:03 GMT
CMD ["apache2-foreground"]
# Tue, 24 Jan 2017 21:09:17 GMT
RUN a2enmod rewrite
# Tue, 24 Jan 2017 21:13:04 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 24 Jan 2017 21:13:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 24 Jan 2017 21:13:06 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 21:13:06 GMT
ENV DRUPAL_VERSION=8.2.5
# Tue, 24 Jan 2017 21:13:07 GMT
ENV DRUPAL_MD5=4bfd35c34ce1b4ba5bac2d18e0d6b5c9
# Tue, 24 Jan 2017 21:13:13 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dce68541a55fd0fb33021383e3921145275a1f87d925f37f1246b682baf0b`  
		Last Modified: Wed, 18 Jan 2017 03:05:48 GMT  
		Size: 77.6 MB (77606810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a832068e64c0a907e1585adac98802eb69cf9fc878ba00941d59e7be57c4b93`  
		Last Modified: Wed, 18 Jan 2017 03:05:21 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da10a8382a2ca7e8f3d5ca17b081516cf0ad3a66b1f052997e8be4d441e5958b`  
		Last Modified: Tue, 24 Jan 2017 19:53:03 GMT  
		Size: 12.7 MB (12705419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0367125b7d8c7329d52d1e82c05ae1e85cbe3009c6f54f22e550ce2baed9d3d`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e0d1d8a91db49b5c444f49ff6b2d8ed40609a491b9d4552ad2a72c31a5fd13`  
		Last Modified: Tue, 24 Jan 2017 19:53:06 GMT  
		Size: 13.3 MB (13305091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5aa3e152475a0fcfb59e3204e6a96abd7d43beadf1d47d8f82207428d3629b`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b99fa36e8f92abbf66a7fdd89665d86459e1b40813a8be5b265db645db970c`  
		Last Modified: Tue, 24 Jan 2017 19:53:01 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f17a622228bf21bab6a01643513060e2ce9eacc74f4f0c07330e2c8acaa09a3`  
		Last Modified: Tue, 24 Jan 2017 21:15:01 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d20146ac1da23180d7bb5240d5d7bbe9bd6a1e0a80c2a7e078d0f18cf9036dff`  
		Last Modified: Tue, 24 Jan 2017 21:16:46 GMT  
		Size: 7.0 MB (7005578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b65b61ef79e21c5f9cd4e0eb2403d588f1ea102214a9105e4388cbabab89a41`  
		Last Modified: Tue, 24 Jan 2017 21:16:44 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0589479cb23c6c2e310982d12966201a63a5ce4986b79f35514a7fd1856a1e61`  
		Last Modified: Tue, 24 Jan 2017 21:16:49 GMT  
		Size: 12.2 MB (12152797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2-apache`

```console
$ docker pull drupal@sha256:212d8c288aadcb80942e0a9760ee4f9298f80122b08047477a4973c1603021e8
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176992355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fc7ce58ed8840c2203c55614f80e45a734e4f64159fd77a7730021dadbdac20`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:54:13 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jan 2017 18:54:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:54:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jan 2017 18:54:40 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:00:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:00:36 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:00:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:00:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:02:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:03:00 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:03:01 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:02 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:03:02 GMT
EXPOSE 80/tcp
# Tue, 24 Jan 2017 19:03:03 GMT
CMD ["apache2-foreground"]
# Tue, 24 Jan 2017 21:09:17 GMT
RUN a2enmod rewrite
# Tue, 24 Jan 2017 21:13:04 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 24 Jan 2017 21:13:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 24 Jan 2017 21:13:06 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 21:13:06 GMT
ENV DRUPAL_VERSION=8.2.5
# Tue, 24 Jan 2017 21:13:07 GMT
ENV DRUPAL_MD5=4bfd35c34ce1b4ba5bac2d18e0d6b5c9
# Tue, 24 Jan 2017 21:13:13 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dce68541a55fd0fb33021383e3921145275a1f87d925f37f1246b682baf0b`  
		Last Modified: Wed, 18 Jan 2017 03:05:48 GMT  
		Size: 77.6 MB (77606810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a832068e64c0a907e1585adac98802eb69cf9fc878ba00941d59e7be57c4b93`  
		Last Modified: Wed, 18 Jan 2017 03:05:21 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da10a8382a2ca7e8f3d5ca17b081516cf0ad3a66b1f052997e8be4d441e5958b`  
		Last Modified: Tue, 24 Jan 2017 19:53:03 GMT  
		Size: 12.7 MB (12705419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0367125b7d8c7329d52d1e82c05ae1e85cbe3009c6f54f22e550ce2baed9d3d`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e0d1d8a91db49b5c444f49ff6b2d8ed40609a491b9d4552ad2a72c31a5fd13`  
		Last Modified: Tue, 24 Jan 2017 19:53:06 GMT  
		Size: 13.3 MB (13305091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5aa3e152475a0fcfb59e3204e6a96abd7d43beadf1d47d8f82207428d3629b`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b99fa36e8f92abbf66a7fdd89665d86459e1b40813a8be5b265db645db970c`  
		Last Modified: Tue, 24 Jan 2017 19:53:01 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f17a622228bf21bab6a01643513060e2ce9eacc74f4f0c07330e2c8acaa09a3`  
		Last Modified: Tue, 24 Jan 2017 21:15:01 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d20146ac1da23180d7bb5240d5d7bbe9bd6a1e0a80c2a7e078d0f18cf9036dff`  
		Last Modified: Tue, 24 Jan 2017 21:16:46 GMT  
		Size: 7.0 MB (7005578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b65b61ef79e21c5f9cd4e0eb2403d588f1ea102214a9105e4388cbabab89a41`  
		Last Modified: Tue, 24 Jan 2017 21:16:44 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0589479cb23c6c2e310982d12966201a63a5ce4986b79f35514a7fd1856a1e61`  
		Last Modified: Tue, 24 Jan 2017 21:16:49 GMT  
		Size: 12.2 MB (12152797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8-apache`

```console
$ docker pull drupal@sha256:212d8c288aadcb80942e0a9760ee4f9298f80122b08047477a4973c1603021e8
```

-	Platforms:
	-	linux; amd64

### `drupal:8-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176992355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fc7ce58ed8840c2203c55614f80e45a734e4f64159fd77a7730021dadbdac20`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:54:13 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jan 2017 18:54:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:54:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jan 2017 18:54:40 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:00:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:00:36 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:00:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:00:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:02:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:03:00 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:03:01 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:02 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:03:02 GMT
EXPOSE 80/tcp
# Tue, 24 Jan 2017 19:03:03 GMT
CMD ["apache2-foreground"]
# Tue, 24 Jan 2017 21:09:17 GMT
RUN a2enmod rewrite
# Tue, 24 Jan 2017 21:13:04 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 24 Jan 2017 21:13:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 24 Jan 2017 21:13:06 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 21:13:06 GMT
ENV DRUPAL_VERSION=8.2.5
# Tue, 24 Jan 2017 21:13:07 GMT
ENV DRUPAL_MD5=4bfd35c34ce1b4ba5bac2d18e0d6b5c9
# Tue, 24 Jan 2017 21:13:13 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dce68541a55fd0fb33021383e3921145275a1f87d925f37f1246b682baf0b`  
		Last Modified: Wed, 18 Jan 2017 03:05:48 GMT  
		Size: 77.6 MB (77606810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a832068e64c0a907e1585adac98802eb69cf9fc878ba00941d59e7be57c4b93`  
		Last Modified: Wed, 18 Jan 2017 03:05:21 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da10a8382a2ca7e8f3d5ca17b081516cf0ad3a66b1f052997e8be4d441e5958b`  
		Last Modified: Tue, 24 Jan 2017 19:53:03 GMT  
		Size: 12.7 MB (12705419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0367125b7d8c7329d52d1e82c05ae1e85cbe3009c6f54f22e550ce2baed9d3d`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e0d1d8a91db49b5c444f49ff6b2d8ed40609a491b9d4552ad2a72c31a5fd13`  
		Last Modified: Tue, 24 Jan 2017 19:53:06 GMT  
		Size: 13.3 MB (13305091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5aa3e152475a0fcfb59e3204e6a96abd7d43beadf1d47d8f82207428d3629b`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b99fa36e8f92abbf66a7fdd89665d86459e1b40813a8be5b265db645db970c`  
		Last Modified: Tue, 24 Jan 2017 19:53:01 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f17a622228bf21bab6a01643513060e2ce9eacc74f4f0c07330e2c8acaa09a3`  
		Last Modified: Tue, 24 Jan 2017 21:15:01 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d20146ac1da23180d7bb5240d5d7bbe9bd6a1e0a80c2a7e078d0f18cf9036dff`  
		Last Modified: Tue, 24 Jan 2017 21:16:46 GMT  
		Size: 7.0 MB (7005578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b65b61ef79e21c5f9cd4e0eb2403d588f1ea102214a9105e4388cbabab89a41`  
		Last Modified: Tue, 24 Jan 2017 21:16:44 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0589479cb23c6c2e310982d12966201a63a5ce4986b79f35514a7fd1856a1e61`  
		Last Modified: Tue, 24 Jan 2017 21:16:49 GMT  
		Size: 12.2 MB (12152797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:apache`

```console
$ docker pull drupal@sha256:212d8c288aadcb80942e0a9760ee4f9298f80122b08047477a4973c1603021e8
```

-	Platforms:
	-	linux; amd64

### `drupal:apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176992355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fc7ce58ed8840c2203c55614f80e45a734e4f64159fd77a7730021dadbdac20`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:54:13 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jan 2017 18:54:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:54:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jan 2017 18:54:40 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:00:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:00:36 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:00:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:00:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:02:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:03:00 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:03:01 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:02 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:03:02 GMT
EXPOSE 80/tcp
# Tue, 24 Jan 2017 19:03:03 GMT
CMD ["apache2-foreground"]
# Tue, 24 Jan 2017 21:09:17 GMT
RUN a2enmod rewrite
# Tue, 24 Jan 2017 21:13:04 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 24 Jan 2017 21:13:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 24 Jan 2017 21:13:06 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 21:13:06 GMT
ENV DRUPAL_VERSION=8.2.5
# Tue, 24 Jan 2017 21:13:07 GMT
ENV DRUPAL_MD5=4bfd35c34ce1b4ba5bac2d18e0d6b5c9
# Tue, 24 Jan 2017 21:13:13 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dce68541a55fd0fb33021383e3921145275a1f87d925f37f1246b682baf0b`  
		Last Modified: Wed, 18 Jan 2017 03:05:48 GMT  
		Size: 77.6 MB (77606810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a832068e64c0a907e1585adac98802eb69cf9fc878ba00941d59e7be57c4b93`  
		Last Modified: Wed, 18 Jan 2017 03:05:21 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da10a8382a2ca7e8f3d5ca17b081516cf0ad3a66b1f052997e8be4d441e5958b`  
		Last Modified: Tue, 24 Jan 2017 19:53:03 GMT  
		Size: 12.7 MB (12705419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0367125b7d8c7329d52d1e82c05ae1e85cbe3009c6f54f22e550ce2baed9d3d`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e0d1d8a91db49b5c444f49ff6b2d8ed40609a491b9d4552ad2a72c31a5fd13`  
		Last Modified: Tue, 24 Jan 2017 19:53:06 GMT  
		Size: 13.3 MB (13305091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5aa3e152475a0fcfb59e3204e6a96abd7d43beadf1d47d8f82207428d3629b`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b99fa36e8f92abbf66a7fdd89665d86459e1b40813a8be5b265db645db970c`  
		Last Modified: Tue, 24 Jan 2017 19:53:01 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f17a622228bf21bab6a01643513060e2ce9eacc74f4f0c07330e2c8acaa09a3`  
		Last Modified: Tue, 24 Jan 2017 21:15:01 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d20146ac1da23180d7bb5240d5d7bbe9bd6a1e0a80c2a7e078d0f18cf9036dff`  
		Last Modified: Tue, 24 Jan 2017 21:16:46 GMT  
		Size: 7.0 MB (7005578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b65b61ef79e21c5f9cd4e0eb2403d588f1ea102214a9105e4388cbabab89a41`  
		Last Modified: Tue, 24 Jan 2017 21:16:44 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0589479cb23c6c2e310982d12966201a63a5ce4986b79f35514a7fd1856a1e61`  
		Last Modified: Tue, 24 Jan 2017 21:16:49 GMT  
		Size: 12.2 MB (12152797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2.5`

```console
$ docker pull drupal@sha256:212d8c288aadcb80942e0a9760ee4f9298f80122b08047477a4973c1603021e8
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176992355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fc7ce58ed8840c2203c55614f80e45a734e4f64159fd77a7730021dadbdac20`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:54:13 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jan 2017 18:54:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:54:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jan 2017 18:54:40 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:00:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:00:36 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:00:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:00:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:02:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:03:00 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:03:01 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:02 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:03:02 GMT
EXPOSE 80/tcp
# Tue, 24 Jan 2017 19:03:03 GMT
CMD ["apache2-foreground"]
# Tue, 24 Jan 2017 21:09:17 GMT
RUN a2enmod rewrite
# Tue, 24 Jan 2017 21:13:04 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 24 Jan 2017 21:13:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 24 Jan 2017 21:13:06 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 21:13:06 GMT
ENV DRUPAL_VERSION=8.2.5
# Tue, 24 Jan 2017 21:13:07 GMT
ENV DRUPAL_MD5=4bfd35c34ce1b4ba5bac2d18e0d6b5c9
# Tue, 24 Jan 2017 21:13:13 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dce68541a55fd0fb33021383e3921145275a1f87d925f37f1246b682baf0b`  
		Last Modified: Wed, 18 Jan 2017 03:05:48 GMT  
		Size: 77.6 MB (77606810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a832068e64c0a907e1585adac98802eb69cf9fc878ba00941d59e7be57c4b93`  
		Last Modified: Wed, 18 Jan 2017 03:05:21 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da10a8382a2ca7e8f3d5ca17b081516cf0ad3a66b1f052997e8be4d441e5958b`  
		Last Modified: Tue, 24 Jan 2017 19:53:03 GMT  
		Size: 12.7 MB (12705419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0367125b7d8c7329d52d1e82c05ae1e85cbe3009c6f54f22e550ce2baed9d3d`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e0d1d8a91db49b5c444f49ff6b2d8ed40609a491b9d4552ad2a72c31a5fd13`  
		Last Modified: Tue, 24 Jan 2017 19:53:06 GMT  
		Size: 13.3 MB (13305091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5aa3e152475a0fcfb59e3204e6a96abd7d43beadf1d47d8f82207428d3629b`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b99fa36e8f92abbf66a7fdd89665d86459e1b40813a8be5b265db645db970c`  
		Last Modified: Tue, 24 Jan 2017 19:53:01 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f17a622228bf21bab6a01643513060e2ce9eacc74f4f0c07330e2c8acaa09a3`  
		Last Modified: Tue, 24 Jan 2017 21:15:01 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d20146ac1da23180d7bb5240d5d7bbe9bd6a1e0a80c2a7e078d0f18cf9036dff`  
		Last Modified: Tue, 24 Jan 2017 21:16:46 GMT  
		Size: 7.0 MB (7005578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b65b61ef79e21c5f9cd4e0eb2403d588f1ea102214a9105e4388cbabab89a41`  
		Last Modified: Tue, 24 Jan 2017 21:16:44 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0589479cb23c6c2e310982d12966201a63a5ce4986b79f35514a7fd1856a1e61`  
		Last Modified: Tue, 24 Jan 2017 21:16:49 GMT  
		Size: 12.2 MB (12152797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2`

```console
$ docker pull drupal@sha256:212d8c288aadcb80942e0a9760ee4f9298f80122b08047477a4973c1603021e8
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176992355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fc7ce58ed8840c2203c55614f80e45a734e4f64159fd77a7730021dadbdac20`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:54:13 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jan 2017 18:54:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:54:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jan 2017 18:54:40 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:00:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:00:36 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:00:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:00:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:02:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:03:00 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:03:01 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:02 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:03:02 GMT
EXPOSE 80/tcp
# Tue, 24 Jan 2017 19:03:03 GMT
CMD ["apache2-foreground"]
# Tue, 24 Jan 2017 21:09:17 GMT
RUN a2enmod rewrite
# Tue, 24 Jan 2017 21:13:04 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 24 Jan 2017 21:13:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 24 Jan 2017 21:13:06 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 21:13:06 GMT
ENV DRUPAL_VERSION=8.2.5
# Tue, 24 Jan 2017 21:13:07 GMT
ENV DRUPAL_MD5=4bfd35c34ce1b4ba5bac2d18e0d6b5c9
# Tue, 24 Jan 2017 21:13:13 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dce68541a55fd0fb33021383e3921145275a1f87d925f37f1246b682baf0b`  
		Last Modified: Wed, 18 Jan 2017 03:05:48 GMT  
		Size: 77.6 MB (77606810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a832068e64c0a907e1585adac98802eb69cf9fc878ba00941d59e7be57c4b93`  
		Last Modified: Wed, 18 Jan 2017 03:05:21 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da10a8382a2ca7e8f3d5ca17b081516cf0ad3a66b1f052997e8be4d441e5958b`  
		Last Modified: Tue, 24 Jan 2017 19:53:03 GMT  
		Size: 12.7 MB (12705419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0367125b7d8c7329d52d1e82c05ae1e85cbe3009c6f54f22e550ce2baed9d3d`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e0d1d8a91db49b5c444f49ff6b2d8ed40609a491b9d4552ad2a72c31a5fd13`  
		Last Modified: Tue, 24 Jan 2017 19:53:06 GMT  
		Size: 13.3 MB (13305091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5aa3e152475a0fcfb59e3204e6a96abd7d43beadf1d47d8f82207428d3629b`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b99fa36e8f92abbf66a7fdd89665d86459e1b40813a8be5b265db645db970c`  
		Last Modified: Tue, 24 Jan 2017 19:53:01 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f17a622228bf21bab6a01643513060e2ce9eacc74f4f0c07330e2c8acaa09a3`  
		Last Modified: Tue, 24 Jan 2017 21:15:01 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d20146ac1da23180d7bb5240d5d7bbe9bd6a1e0a80c2a7e078d0f18cf9036dff`  
		Last Modified: Tue, 24 Jan 2017 21:16:46 GMT  
		Size: 7.0 MB (7005578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b65b61ef79e21c5f9cd4e0eb2403d588f1ea102214a9105e4388cbabab89a41`  
		Last Modified: Tue, 24 Jan 2017 21:16:44 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0589479cb23c6c2e310982d12966201a63a5ce4986b79f35514a7fd1856a1e61`  
		Last Modified: Tue, 24 Jan 2017 21:16:49 GMT  
		Size: 12.2 MB (12152797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8`

```console
$ docker pull drupal@sha256:212d8c288aadcb80942e0a9760ee4f9298f80122b08047477a4973c1603021e8
```

-	Platforms:
	-	linux; amd64

### `drupal:8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176992355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fc7ce58ed8840c2203c55614f80e45a734e4f64159fd77a7730021dadbdac20`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:54:13 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jan 2017 18:54:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:54:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jan 2017 18:54:40 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:00:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:00:36 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:00:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:00:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:02:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:03:00 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:03:01 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:02 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:03:02 GMT
EXPOSE 80/tcp
# Tue, 24 Jan 2017 19:03:03 GMT
CMD ["apache2-foreground"]
# Tue, 24 Jan 2017 21:09:17 GMT
RUN a2enmod rewrite
# Tue, 24 Jan 2017 21:13:04 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 24 Jan 2017 21:13:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 24 Jan 2017 21:13:06 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 21:13:06 GMT
ENV DRUPAL_VERSION=8.2.5
# Tue, 24 Jan 2017 21:13:07 GMT
ENV DRUPAL_MD5=4bfd35c34ce1b4ba5bac2d18e0d6b5c9
# Tue, 24 Jan 2017 21:13:13 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dce68541a55fd0fb33021383e3921145275a1f87d925f37f1246b682baf0b`  
		Last Modified: Wed, 18 Jan 2017 03:05:48 GMT  
		Size: 77.6 MB (77606810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a832068e64c0a907e1585adac98802eb69cf9fc878ba00941d59e7be57c4b93`  
		Last Modified: Wed, 18 Jan 2017 03:05:21 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da10a8382a2ca7e8f3d5ca17b081516cf0ad3a66b1f052997e8be4d441e5958b`  
		Last Modified: Tue, 24 Jan 2017 19:53:03 GMT  
		Size: 12.7 MB (12705419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0367125b7d8c7329d52d1e82c05ae1e85cbe3009c6f54f22e550ce2baed9d3d`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e0d1d8a91db49b5c444f49ff6b2d8ed40609a491b9d4552ad2a72c31a5fd13`  
		Last Modified: Tue, 24 Jan 2017 19:53:06 GMT  
		Size: 13.3 MB (13305091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5aa3e152475a0fcfb59e3204e6a96abd7d43beadf1d47d8f82207428d3629b`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b99fa36e8f92abbf66a7fdd89665d86459e1b40813a8be5b265db645db970c`  
		Last Modified: Tue, 24 Jan 2017 19:53:01 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f17a622228bf21bab6a01643513060e2ce9eacc74f4f0c07330e2c8acaa09a3`  
		Last Modified: Tue, 24 Jan 2017 21:15:01 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d20146ac1da23180d7bb5240d5d7bbe9bd6a1e0a80c2a7e078d0f18cf9036dff`  
		Last Modified: Tue, 24 Jan 2017 21:16:46 GMT  
		Size: 7.0 MB (7005578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b65b61ef79e21c5f9cd4e0eb2403d588f1ea102214a9105e4388cbabab89a41`  
		Last Modified: Tue, 24 Jan 2017 21:16:44 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0589479cb23c6c2e310982d12966201a63a5ce4986b79f35514a7fd1856a1e61`  
		Last Modified: Tue, 24 Jan 2017 21:16:49 GMT  
		Size: 12.2 MB (12152797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:latest`

```console
$ docker pull drupal@sha256:212d8c288aadcb80942e0a9760ee4f9298f80122b08047477a4973c1603021e8
```

-	Platforms:
	-	linux; amd64

### `drupal:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176992355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fc7ce58ed8840c2203c55614f80e45a734e4f64159fd77a7730021dadbdac20`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:54:13 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jan 2017 18:54:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:54:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jan 2017 18:54:40 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:00:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:00:36 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:00:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:00:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:02:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:03:00 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:03:01 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:02 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:03:02 GMT
EXPOSE 80/tcp
# Tue, 24 Jan 2017 19:03:03 GMT
CMD ["apache2-foreground"]
# Tue, 24 Jan 2017 21:09:17 GMT
RUN a2enmod rewrite
# Tue, 24 Jan 2017 21:13:04 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 24 Jan 2017 21:13:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 24 Jan 2017 21:13:06 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 21:13:06 GMT
ENV DRUPAL_VERSION=8.2.5
# Tue, 24 Jan 2017 21:13:07 GMT
ENV DRUPAL_MD5=4bfd35c34ce1b4ba5bac2d18e0d6b5c9
# Tue, 24 Jan 2017 21:13:13 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dce68541a55fd0fb33021383e3921145275a1f87d925f37f1246b682baf0b`  
		Last Modified: Wed, 18 Jan 2017 03:05:48 GMT  
		Size: 77.6 MB (77606810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a832068e64c0a907e1585adac98802eb69cf9fc878ba00941d59e7be57c4b93`  
		Last Modified: Wed, 18 Jan 2017 03:05:21 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da10a8382a2ca7e8f3d5ca17b081516cf0ad3a66b1f052997e8be4d441e5958b`  
		Last Modified: Tue, 24 Jan 2017 19:53:03 GMT  
		Size: 12.7 MB (12705419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0367125b7d8c7329d52d1e82c05ae1e85cbe3009c6f54f22e550ce2baed9d3d`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e0d1d8a91db49b5c444f49ff6b2d8ed40609a491b9d4552ad2a72c31a5fd13`  
		Last Modified: Tue, 24 Jan 2017 19:53:06 GMT  
		Size: 13.3 MB (13305091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5aa3e152475a0fcfb59e3204e6a96abd7d43beadf1d47d8f82207428d3629b`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b99fa36e8f92abbf66a7fdd89665d86459e1b40813a8be5b265db645db970c`  
		Last Modified: Tue, 24 Jan 2017 19:53:01 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f17a622228bf21bab6a01643513060e2ce9eacc74f4f0c07330e2c8acaa09a3`  
		Last Modified: Tue, 24 Jan 2017 21:15:01 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d20146ac1da23180d7bb5240d5d7bbe9bd6a1e0a80c2a7e078d0f18cf9036dff`  
		Last Modified: Tue, 24 Jan 2017 21:16:46 GMT  
		Size: 7.0 MB (7005578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b65b61ef79e21c5f9cd4e0eb2403d588f1ea102214a9105e4388cbabab89a41`  
		Last Modified: Tue, 24 Jan 2017 21:16:44 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0589479cb23c6c2e310982d12966201a63a5ce4986b79f35514a7fd1856a1e61`  
		Last Modified: Tue, 24 Jan 2017 21:16:49 GMT  
		Size: 12.2 MB (12152797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2.5-fpm`

```console
$ docker pull drupal@sha256:cc10eb388968b2c128cd608a3a66f27a6fc6ac421d8590ef415825c1d33faab5
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.5-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173641054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58e7289ca8b9224f427e450b58c64466770fb3c7de86ace42e2b8301a3a8f163`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:54:13 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jan 2017 18:54:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:54:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jan 2017 18:54:40 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jan 2017 19:00:40 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 17 Jan 2017 19:00:40 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 19:00:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 19:00:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:03:04 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:03:04 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:03:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:03:05 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:03:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:03:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:07:01 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:07:02 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:07:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:07:16 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:07:17 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 24 Jan 2017 19:07:17 GMT
EXPOSE 9000/tcp
# Tue, 24 Jan 2017 19:07:30 GMT
CMD ["php-fpm"]
# Tue, 24 Jan 2017 21:14:34 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 24 Jan 2017 21:14:35 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 24 Jan 2017 21:14:36 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 21:14:36 GMT
ENV DRUPAL_VERSION=8.2.5
# Tue, 24 Jan 2017 21:14:37 GMT
ENV DRUPAL_MD5=4bfd35c34ce1b4ba5bac2d18e0d6b5c9
# Tue, 24 Jan 2017 21:14:43 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dce68541a55fd0fb33021383e3921145275a1f87d925f37f1246b682baf0b`  
		Last Modified: Wed, 18 Jan 2017 03:05:48 GMT  
		Size: 77.6 MB (77606810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a832068e64c0a907e1585adac98802eb69cf9fc878ba00941d59e7be57c4b93`  
		Last Modified: Wed, 18 Jan 2017 03:05:21 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adc4f960d6708a157eb2e2bf309c1527d76d588812a85533b4a69be8ab2bb45`  
		Last Modified: Tue, 24 Jan 2017 19:53:43 GMT  
		Size: 12.7 MB (12686248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3362e72b86682d2606142b16bdafc1428159c3ca2c7ba66e96e46901aef511`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73c76e9dd922588dfe19869b77ecca40ea2bc56eda07fe29aec8ae1c2713b12`  
		Last Modified: Tue, 24 Jan 2017 19:53:43 GMT  
		Size: 12.8 MB (12840061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733604049d5f02738f2e4db3249655f5e56e5c051ae375c70f785077959b26b`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 2.0 KB (2011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a902ab47dc431ddf765838c7e20b540a4f3ec76037cef42535f6bf33f2bce4`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e699a493bc711dd2eb0d5abb550f738771964dca27a1d2287eb97786635abf07`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bfa9f90f9a198713589304c6113d583f99c305b3c309a2b751dc3b0bad5bec`  
		Last Modified: Tue, 24 Jan 2017 21:18:55 GMT  
		Size: 7.0 MB (6983099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44f73907d3ab0dc7ede8d55bb7d800172438d7487ac61f90b38e9ce1e9d3f01`  
		Last Modified: Tue, 24 Jan 2017 21:18:53 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d7ce3df71e598e0d6c0cbe5b5db7e7e84ab9e324d3604a4be5c0e6686afec8`  
		Last Modified: Tue, 24 Jan 2017 21:18:59 GMT  
		Size: 12.2 MB (12152798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2-fpm`

```console
$ docker pull drupal@sha256:cc10eb388968b2c128cd608a3a66f27a6fc6ac421d8590ef415825c1d33faab5
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173641054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58e7289ca8b9224f427e450b58c64466770fb3c7de86ace42e2b8301a3a8f163`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:54:13 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jan 2017 18:54:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:54:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jan 2017 18:54:40 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jan 2017 19:00:40 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 17 Jan 2017 19:00:40 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 19:00:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 19:00:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:03:04 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:03:04 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:03:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:03:05 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:03:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:03:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:07:01 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:07:02 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:07:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:07:16 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:07:17 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 24 Jan 2017 19:07:17 GMT
EXPOSE 9000/tcp
# Tue, 24 Jan 2017 19:07:30 GMT
CMD ["php-fpm"]
# Tue, 24 Jan 2017 21:14:34 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 24 Jan 2017 21:14:35 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 24 Jan 2017 21:14:36 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 21:14:36 GMT
ENV DRUPAL_VERSION=8.2.5
# Tue, 24 Jan 2017 21:14:37 GMT
ENV DRUPAL_MD5=4bfd35c34ce1b4ba5bac2d18e0d6b5c9
# Tue, 24 Jan 2017 21:14:43 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dce68541a55fd0fb33021383e3921145275a1f87d925f37f1246b682baf0b`  
		Last Modified: Wed, 18 Jan 2017 03:05:48 GMT  
		Size: 77.6 MB (77606810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a832068e64c0a907e1585adac98802eb69cf9fc878ba00941d59e7be57c4b93`  
		Last Modified: Wed, 18 Jan 2017 03:05:21 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adc4f960d6708a157eb2e2bf309c1527d76d588812a85533b4a69be8ab2bb45`  
		Last Modified: Tue, 24 Jan 2017 19:53:43 GMT  
		Size: 12.7 MB (12686248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3362e72b86682d2606142b16bdafc1428159c3ca2c7ba66e96e46901aef511`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73c76e9dd922588dfe19869b77ecca40ea2bc56eda07fe29aec8ae1c2713b12`  
		Last Modified: Tue, 24 Jan 2017 19:53:43 GMT  
		Size: 12.8 MB (12840061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733604049d5f02738f2e4db3249655f5e56e5c051ae375c70f785077959b26b`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 2.0 KB (2011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a902ab47dc431ddf765838c7e20b540a4f3ec76037cef42535f6bf33f2bce4`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e699a493bc711dd2eb0d5abb550f738771964dca27a1d2287eb97786635abf07`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bfa9f90f9a198713589304c6113d583f99c305b3c309a2b751dc3b0bad5bec`  
		Last Modified: Tue, 24 Jan 2017 21:18:55 GMT  
		Size: 7.0 MB (6983099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44f73907d3ab0dc7ede8d55bb7d800172438d7487ac61f90b38e9ce1e9d3f01`  
		Last Modified: Tue, 24 Jan 2017 21:18:53 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d7ce3df71e598e0d6c0cbe5b5db7e7e84ab9e324d3604a4be5c0e6686afec8`  
		Last Modified: Tue, 24 Jan 2017 21:18:59 GMT  
		Size: 12.2 MB (12152798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8-fpm`

```console
$ docker pull drupal@sha256:cc10eb388968b2c128cd608a3a66f27a6fc6ac421d8590ef415825c1d33faab5
```

-	Platforms:
	-	linux; amd64

### `drupal:8-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173641054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58e7289ca8b9224f427e450b58c64466770fb3c7de86ace42e2b8301a3a8f163`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:54:13 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jan 2017 18:54:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:54:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jan 2017 18:54:40 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jan 2017 19:00:40 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 17 Jan 2017 19:00:40 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 19:00:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 19:00:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:03:04 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:03:04 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:03:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:03:05 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:03:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:03:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:07:01 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:07:02 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:07:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:07:16 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:07:17 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 24 Jan 2017 19:07:17 GMT
EXPOSE 9000/tcp
# Tue, 24 Jan 2017 19:07:30 GMT
CMD ["php-fpm"]
# Tue, 24 Jan 2017 21:14:34 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 24 Jan 2017 21:14:35 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 24 Jan 2017 21:14:36 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 21:14:36 GMT
ENV DRUPAL_VERSION=8.2.5
# Tue, 24 Jan 2017 21:14:37 GMT
ENV DRUPAL_MD5=4bfd35c34ce1b4ba5bac2d18e0d6b5c9
# Tue, 24 Jan 2017 21:14:43 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dce68541a55fd0fb33021383e3921145275a1f87d925f37f1246b682baf0b`  
		Last Modified: Wed, 18 Jan 2017 03:05:48 GMT  
		Size: 77.6 MB (77606810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a832068e64c0a907e1585adac98802eb69cf9fc878ba00941d59e7be57c4b93`  
		Last Modified: Wed, 18 Jan 2017 03:05:21 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adc4f960d6708a157eb2e2bf309c1527d76d588812a85533b4a69be8ab2bb45`  
		Last Modified: Tue, 24 Jan 2017 19:53:43 GMT  
		Size: 12.7 MB (12686248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3362e72b86682d2606142b16bdafc1428159c3ca2c7ba66e96e46901aef511`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73c76e9dd922588dfe19869b77ecca40ea2bc56eda07fe29aec8ae1c2713b12`  
		Last Modified: Tue, 24 Jan 2017 19:53:43 GMT  
		Size: 12.8 MB (12840061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733604049d5f02738f2e4db3249655f5e56e5c051ae375c70f785077959b26b`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 2.0 KB (2011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a902ab47dc431ddf765838c7e20b540a4f3ec76037cef42535f6bf33f2bce4`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e699a493bc711dd2eb0d5abb550f738771964dca27a1d2287eb97786635abf07`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bfa9f90f9a198713589304c6113d583f99c305b3c309a2b751dc3b0bad5bec`  
		Last Modified: Tue, 24 Jan 2017 21:18:55 GMT  
		Size: 7.0 MB (6983099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44f73907d3ab0dc7ede8d55bb7d800172438d7487ac61f90b38e9ce1e9d3f01`  
		Last Modified: Tue, 24 Jan 2017 21:18:53 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d7ce3df71e598e0d6c0cbe5b5db7e7e84ab9e324d3604a4be5c0e6686afec8`  
		Last Modified: Tue, 24 Jan 2017 21:18:59 GMT  
		Size: 12.2 MB (12152798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:fpm`

```console
$ docker pull drupal@sha256:cc10eb388968b2c128cd608a3a66f27a6fc6ac421d8590ef415825c1d33faab5
```

-	Platforms:
	-	linux; amd64

### `drupal:fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173641054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58e7289ca8b9224f427e450b58c64466770fb3c7de86ace42e2b8301a3a8f163`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:54:13 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jan 2017 18:54:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:54:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jan 2017 18:54:40 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jan 2017 19:00:40 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 17 Jan 2017 19:00:40 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 19:00:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 19:00:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:03:04 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:03:04 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:03:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:03:05 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:03:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:03:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:07:01 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:07:02 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:07:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:07:16 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:07:17 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 24 Jan 2017 19:07:17 GMT
EXPOSE 9000/tcp
# Tue, 24 Jan 2017 19:07:30 GMT
CMD ["php-fpm"]
# Tue, 24 Jan 2017 21:14:34 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 24 Jan 2017 21:14:35 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 24 Jan 2017 21:14:36 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 21:14:36 GMT
ENV DRUPAL_VERSION=8.2.5
# Tue, 24 Jan 2017 21:14:37 GMT
ENV DRUPAL_MD5=4bfd35c34ce1b4ba5bac2d18e0d6b5c9
# Tue, 24 Jan 2017 21:14:43 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dce68541a55fd0fb33021383e3921145275a1f87d925f37f1246b682baf0b`  
		Last Modified: Wed, 18 Jan 2017 03:05:48 GMT  
		Size: 77.6 MB (77606810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a832068e64c0a907e1585adac98802eb69cf9fc878ba00941d59e7be57c4b93`  
		Last Modified: Wed, 18 Jan 2017 03:05:21 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adc4f960d6708a157eb2e2bf309c1527d76d588812a85533b4a69be8ab2bb45`  
		Last Modified: Tue, 24 Jan 2017 19:53:43 GMT  
		Size: 12.7 MB (12686248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3362e72b86682d2606142b16bdafc1428159c3ca2c7ba66e96e46901aef511`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73c76e9dd922588dfe19869b77ecca40ea2bc56eda07fe29aec8ae1c2713b12`  
		Last Modified: Tue, 24 Jan 2017 19:53:43 GMT  
		Size: 12.8 MB (12840061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733604049d5f02738f2e4db3249655f5e56e5c051ae375c70f785077959b26b`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 2.0 KB (2011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a902ab47dc431ddf765838c7e20b540a4f3ec76037cef42535f6bf33f2bce4`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e699a493bc711dd2eb0d5abb550f738771964dca27a1d2287eb97786635abf07`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bfa9f90f9a198713589304c6113d583f99c305b3c309a2b751dc3b0bad5bec`  
		Last Modified: Tue, 24 Jan 2017 21:18:55 GMT  
		Size: 7.0 MB (6983099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44f73907d3ab0dc7ede8d55bb7d800172438d7487ac61f90b38e9ce1e9d3f01`  
		Last Modified: Tue, 24 Jan 2017 21:18:53 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d7ce3df71e598e0d6c0cbe5b5db7e7e84ab9e324d3604a4be5c0e6686afec8`  
		Last Modified: Tue, 24 Jan 2017 21:18:59 GMT  
		Size: 12.2 MB (12152798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7.53-apache`

```console
$ docker pull drupal@sha256:3befb124068fa0e460ef83e707c8bd398b73f1e56b338e5d73fcdcc5195984c2
```

-	Platforms:
	-	linux; amd64

### `drupal:7.53-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (168032227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30d566978609ea09dbfb94f28dd2d915a7efa85e1df82e61f89af887c65564fd`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:54:13 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jan 2017 18:54:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:54:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jan 2017 18:54:40 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:00:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:00:36 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:00:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:00:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:02:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:03:00 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:03:01 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:02 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:03:02 GMT
EXPOSE 80/tcp
# Tue, 24 Jan 2017 19:03:03 GMT
CMD ["apache2-foreground"]
# Tue, 24 Jan 2017 21:09:17 GMT
RUN a2enmod rewrite
# Tue, 24 Jan 2017 21:10:26 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 24 Jan 2017 21:10:27 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 21:10:27 GMT
ENV DRUPAL_VERSION=7.53
# Tue, 24 Jan 2017 21:10:28 GMT
ENV DRUPAL_MD5=4230279ecca4f0cde652a219e10327e7
# Tue, 24 Jan 2017 21:10:30 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dce68541a55fd0fb33021383e3921145275a1f87d925f37f1246b682baf0b`  
		Last Modified: Wed, 18 Jan 2017 03:05:48 GMT  
		Size: 77.6 MB (77606810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a832068e64c0a907e1585adac98802eb69cf9fc878ba00941d59e7be57c4b93`  
		Last Modified: Wed, 18 Jan 2017 03:05:21 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da10a8382a2ca7e8f3d5ca17b081516cf0ad3a66b1f052997e8be4d441e5958b`  
		Last Modified: Tue, 24 Jan 2017 19:53:03 GMT  
		Size: 12.7 MB (12705419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0367125b7d8c7329d52d1e82c05ae1e85cbe3009c6f54f22e550ce2baed9d3d`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e0d1d8a91db49b5c444f49ff6b2d8ed40609a491b9d4552ad2a72c31a5fd13`  
		Last Modified: Tue, 24 Jan 2017 19:53:06 GMT  
		Size: 13.3 MB (13305091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5aa3e152475a0fcfb59e3204e6a96abd7d43beadf1d47d8f82207428d3629b`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b99fa36e8f92abbf66a7fdd89665d86459e1b40813a8be5b265db645db970c`  
		Last Modified: Tue, 24 Jan 2017 19:53:01 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f17a622228bf21bab6a01643513060e2ce9eacc74f4f0c07330e2c8acaa09a3`  
		Last Modified: Tue, 24 Jan 2017 21:15:01 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ad9c207311065839cef7ee3893be09cc654857ddfd2d193cd7d53be241952b`  
		Last Modified: Tue, 24 Jan 2017 21:15:03 GMT  
		Size: 6.9 MB (6910369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841997cf5ebfe766788a59ce130605bb2cb3db165711e0097251db825e474d26`  
		Last Modified: Tue, 24 Jan 2017 21:15:02 GMT  
		Size: 3.3 MB (3288210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7-apache`

```console
$ docker pull drupal@sha256:3befb124068fa0e460ef83e707c8bd398b73f1e56b338e5d73fcdcc5195984c2
```

-	Platforms:
	-	linux; amd64

### `drupal:7-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (168032227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30d566978609ea09dbfb94f28dd2d915a7efa85e1df82e61f89af887c65564fd`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:54:13 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jan 2017 18:54:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:54:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jan 2017 18:54:40 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:00:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:00:36 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:00:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:00:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:02:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:03:00 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:03:01 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:02 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:03:02 GMT
EXPOSE 80/tcp
# Tue, 24 Jan 2017 19:03:03 GMT
CMD ["apache2-foreground"]
# Tue, 24 Jan 2017 21:09:17 GMT
RUN a2enmod rewrite
# Tue, 24 Jan 2017 21:10:26 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 24 Jan 2017 21:10:27 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 21:10:27 GMT
ENV DRUPAL_VERSION=7.53
# Tue, 24 Jan 2017 21:10:28 GMT
ENV DRUPAL_MD5=4230279ecca4f0cde652a219e10327e7
# Tue, 24 Jan 2017 21:10:30 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dce68541a55fd0fb33021383e3921145275a1f87d925f37f1246b682baf0b`  
		Last Modified: Wed, 18 Jan 2017 03:05:48 GMT  
		Size: 77.6 MB (77606810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a832068e64c0a907e1585adac98802eb69cf9fc878ba00941d59e7be57c4b93`  
		Last Modified: Wed, 18 Jan 2017 03:05:21 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da10a8382a2ca7e8f3d5ca17b081516cf0ad3a66b1f052997e8be4d441e5958b`  
		Last Modified: Tue, 24 Jan 2017 19:53:03 GMT  
		Size: 12.7 MB (12705419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0367125b7d8c7329d52d1e82c05ae1e85cbe3009c6f54f22e550ce2baed9d3d`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e0d1d8a91db49b5c444f49ff6b2d8ed40609a491b9d4552ad2a72c31a5fd13`  
		Last Modified: Tue, 24 Jan 2017 19:53:06 GMT  
		Size: 13.3 MB (13305091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5aa3e152475a0fcfb59e3204e6a96abd7d43beadf1d47d8f82207428d3629b`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b99fa36e8f92abbf66a7fdd89665d86459e1b40813a8be5b265db645db970c`  
		Last Modified: Tue, 24 Jan 2017 19:53:01 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f17a622228bf21bab6a01643513060e2ce9eacc74f4f0c07330e2c8acaa09a3`  
		Last Modified: Tue, 24 Jan 2017 21:15:01 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ad9c207311065839cef7ee3893be09cc654857ddfd2d193cd7d53be241952b`  
		Last Modified: Tue, 24 Jan 2017 21:15:03 GMT  
		Size: 6.9 MB (6910369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841997cf5ebfe766788a59ce130605bb2cb3db165711e0097251db825e474d26`  
		Last Modified: Tue, 24 Jan 2017 21:15:02 GMT  
		Size: 3.3 MB (3288210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7.53`

```console
$ docker pull drupal@sha256:3befb124068fa0e460ef83e707c8bd398b73f1e56b338e5d73fcdcc5195984c2
```

-	Platforms:
	-	linux; amd64

### `drupal:7.53` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (168032227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30d566978609ea09dbfb94f28dd2d915a7efa85e1df82e61f89af887c65564fd`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:54:13 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jan 2017 18:54:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:54:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jan 2017 18:54:40 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:00:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:00:36 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:00:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:00:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:02:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:03:00 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:03:01 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:02 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:03:02 GMT
EXPOSE 80/tcp
# Tue, 24 Jan 2017 19:03:03 GMT
CMD ["apache2-foreground"]
# Tue, 24 Jan 2017 21:09:17 GMT
RUN a2enmod rewrite
# Tue, 24 Jan 2017 21:10:26 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 24 Jan 2017 21:10:27 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 21:10:27 GMT
ENV DRUPAL_VERSION=7.53
# Tue, 24 Jan 2017 21:10:28 GMT
ENV DRUPAL_MD5=4230279ecca4f0cde652a219e10327e7
# Tue, 24 Jan 2017 21:10:30 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dce68541a55fd0fb33021383e3921145275a1f87d925f37f1246b682baf0b`  
		Last Modified: Wed, 18 Jan 2017 03:05:48 GMT  
		Size: 77.6 MB (77606810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a832068e64c0a907e1585adac98802eb69cf9fc878ba00941d59e7be57c4b93`  
		Last Modified: Wed, 18 Jan 2017 03:05:21 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da10a8382a2ca7e8f3d5ca17b081516cf0ad3a66b1f052997e8be4d441e5958b`  
		Last Modified: Tue, 24 Jan 2017 19:53:03 GMT  
		Size: 12.7 MB (12705419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0367125b7d8c7329d52d1e82c05ae1e85cbe3009c6f54f22e550ce2baed9d3d`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e0d1d8a91db49b5c444f49ff6b2d8ed40609a491b9d4552ad2a72c31a5fd13`  
		Last Modified: Tue, 24 Jan 2017 19:53:06 GMT  
		Size: 13.3 MB (13305091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5aa3e152475a0fcfb59e3204e6a96abd7d43beadf1d47d8f82207428d3629b`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b99fa36e8f92abbf66a7fdd89665d86459e1b40813a8be5b265db645db970c`  
		Last Modified: Tue, 24 Jan 2017 19:53:01 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f17a622228bf21bab6a01643513060e2ce9eacc74f4f0c07330e2c8acaa09a3`  
		Last Modified: Tue, 24 Jan 2017 21:15:01 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ad9c207311065839cef7ee3893be09cc654857ddfd2d193cd7d53be241952b`  
		Last Modified: Tue, 24 Jan 2017 21:15:03 GMT  
		Size: 6.9 MB (6910369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841997cf5ebfe766788a59ce130605bb2cb3db165711e0097251db825e474d26`  
		Last Modified: Tue, 24 Jan 2017 21:15:02 GMT  
		Size: 3.3 MB (3288210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7`

```console
$ docker pull drupal@sha256:3befb124068fa0e460ef83e707c8bd398b73f1e56b338e5d73fcdcc5195984c2
```

-	Platforms:
	-	linux; amd64

### `drupal:7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (168032227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30d566978609ea09dbfb94f28dd2d915a7efa85e1df82e61f89af887c65564fd`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:54:13 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jan 2017 18:54:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:54:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jan 2017 18:54:40 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:00:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:00:36 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:00:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:00:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:02:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:03:00 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:03:01 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:02 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:03:02 GMT
EXPOSE 80/tcp
# Tue, 24 Jan 2017 19:03:03 GMT
CMD ["apache2-foreground"]
# Tue, 24 Jan 2017 21:09:17 GMT
RUN a2enmod rewrite
# Tue, 24 Jan 2017 21:10:26 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 24 Jan 2017 21:10:27 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 21:10:27 GMT
ENV DRUPAL_VERSION=7.53
# Tue, 24 Jan 2017 21:10:28 GMT
ENV DRUPAL_MD5=4230279ecca4f0cde652a219e10327e7
# Tue, 24 Jan 2017 21:10:30 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dce68541a55fd0fb33021383e3921145275a1f87d925f37f1246b682baf0b`  
		Last Modified: Wed, 18 Jan 2017 03:05:48 GMT  
		Size: 77.6 MB (77606810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a832068e64c0a907e1585adac98802eb69cf9fc878ba00941d59e7be57c4b93`  
		Last Modified: Wed, 18 Jan 2017 03:05:21 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da10a8382a2ca7e8f3d5ca17b081516cf0ad3a66b1f052997e8be4d441e5958b`  
		Last Modified: Tue, 24 Jan 2017 19:53:03 GMT  
		Size: 12.7 MB (12705419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0367125b7d8c7329d52d1e82c05ae1e85cbe3009c6f54f22e550ce2baed9d3d`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e0d1d8a91db49b5c444f49ff6b2d8ed40609a491b9d4552ad2a72c31a5fd13`  
		Last Modified: Tue, 24 Jan 2017 19:53:06 GMT  
		Size: 13.3 MB (13305091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5aa3e152475a0fcfb59e3204e6a96abd7d43beadf1d47d8f82207428d3629b`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b99fa36e8f92abbf66a7fdd89665d86459e1b40813a8be5b265db645db970c`  
		Last Modified: Tue, 24 Jan 2017 19:53:01 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f17a622228bf21bab6a01643513060e2ce9eacc74f4f0c07330e2c8acaa09a3`  
		Last Modified: Tue, 24 Jan 2017 21:15:01 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ad9c207311065839cef7ee3893be09cc654857ddfd2d193cd7d53be241952b`  
		Last Modified: Tue, 24 Jan 2017 21:15:03 GMT  
		Size: 6.9 MB (6910369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841997cf5ebfe766788a59ce130605bb2cb3db165711e0097251db825e474d26`  
		Last Modified: Tue, 24 Jan 2017 21:15:02 GMT  
		Size: 3.3 MB (3288210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7.53-fpm`

```console
$ docker pull drupal@sha256:725f367314f45f79e40f67849d9e334ea44cb1bbf0ad41494f985fadc591ac02
```

-	Platforms:
	-	linux; amd64

### `drupal:7.53-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.7 MB (164681049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee01f798abc3ca004f0a8e58cf7b14d2c395b82c8fb4e4720482f894fe0090ad`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:54:13 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jan 2017 18:54:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:54:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jan 2017 18:54:40 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jan 2017 19:00:40 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 17 Jan 2017 19:00:40 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 19:00:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 19:00:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:03:04 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:03:04 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:03:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:03:05 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:03:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:03:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:07:01 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:07:02 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:07:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:07:16 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:07:17 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 24 Jan 2017 19:07:17 GMT
EXPOSE 9000/tcp
# Tue, 24 Jan 2017 19:07:30 GMT
CMD ["php-fpm"]
# Tue, 24 Jan 2017 21:11:40 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 24 Jan 2017 21:11:41 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 21:11:41 GMT
ENV DRUPAL_VERSION=7.53
# Tue, 24 Jan 2017 21:11:42 GMT
ENV DRUPAL_MD5=4230279ecca4f0cde652a219e10327e7
# Tue, 24 Jan 2017 21:11:44 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dce68541a55fd0fb33021383e3921145275a1f87d925f37f1246b682baf0b`  
		Last Modified: Wed, 18 Jan 2017 03:05:48 GMT  
		Size: 77.6 MB (77606810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a832068e64c0a907e1585adac98802eb69cf9fc878ba00941d59e7be57c4b93`  
		Last Modified: Wed, 18 Jan 2017 03:05:21 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adc4f960d6708a157eb2e2bf309c1527d76d588812a85533b4a69be8ab2bb45`  
		Last Modified: Tue, 24 Jan 2017 19:53:43 GMT  
		Size: 12.7 MB (12686248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3362e72b86682d2606142b16bdafc1428159c3ca2c7ba66e96e46901aef511`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73c76e9dd922588dfe19869b77ecca40ea2bc56eda07fe29aec8ae1c2713b12`  
		Last Modified: Tue, 24 Jan 2017 19:53:43 GMT  
		Size: 12.8 MB (12840061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733604049d5f02738f2e4db3249655f5e56e5c051ae375c70f785077959b26b`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 2.0 KB (2011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a902ab47dc431ddf765838c7e20b540a4f3ec76037cef42535f6bf33f2bce4`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e699a493bc711dd2eb0d5abb550f738771964dca27a1d2287eb97786635abf07`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18dc0ed777254a1e6ba504baeab7c78851afdaf3be978cf7fe2deb2a3ac773ec`  
		Last Modified: Tue, 24 Jan 2017 21:16:10 GMT  
		Size: 6.9 MB (6888019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f074fd19e7eec3f5d76796718b9df11b3e411d5df6740102b0aba890e961587f`  
		Last Modified: Tue, 24 Jan 2017 21:16:10 GMT  
		Size: 3.3 MB (3288206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7-fpm`

```console
$ docker pull drupal@sha256:725f367314f45f79e40f67849d9e334ea44cb1bbf0ad41494f985fadc591ac02
```

-	Platforms:
	-	linux; amd64

### `drupal:7-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.7 MB (164681049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee01f798abc3ca004f0a8e58cf7b14d2c395b82c8fb4e4720482f894fe0090ad`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:54:13 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jan 2017 18:54:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:54:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jan 2017 18:54:40 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jan 2017 19:00:40 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 17 Jan 2017 19:00:40 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 19:00:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 19:00:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:03:04 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:03:04 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:03:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:03:05 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:03:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:03:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:07:01 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:07:02 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:07:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:07:16 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:07:17 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 24 Jan 2017 19:07:17 GMT
EXPOSE 9000/tcp
# Tue, 24 Jan 2017 19:07:30 GMT
CMD ["php-fpm"]
# Tue, 24 Jan 2017 21:11:40 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 24 Jan 2017 21:11:41 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 21:11:41 GMT
ENV DRUPAL_VERSION=7.53
# Tue, 24 Jan 2017 21:11:42 GMT
ENV DRUPAL_MD5=4230279ecca4f0cde652a219e10327e7
# Tue, 24 Jan 2017 21:11:44 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dce68541a55fd0fb33021383e3921145275a1f87d925f37f1246b682baf0b`  
		Last Modified: Wed, 18 Jan 2017 03:05:48 GMT  
		Size: 77.6 MB (77606810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a832068e64c0a907e1585adac98802eb69cf9fc878ba00941d59e7be57c4b93`  
		Last Modified: Wed, 18 Jan 2017 03:05:21 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adc4f960d6708a157eb2e2bf309c1527d76d588812a85533b4a69be8ab2bb45`  
		Last Modified: Tue, 24 Jan 2017 19:53:43 GMT  
		Size: 12.7 MB (12686248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3362e72b86682d2606142b16bdafc1428159c3ca2c7ba66e96e46901aef511`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73c76e9dd922588dfe19869b77ecca40ea2bc56eda07fe29aec8ae1c2713b12`  
		Last Modified: Tue, 24 Jan 2017 19:53:43 GMT  
		Size: 12.8 MB (12840061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733604049d5f02738f2e4db3249655f5e56e5c051ae375c70f785077959b26b`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 2.0 KB (2011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a902ab47dc431ddf765838c7e20b540a4f3ec76037cef42535f6bf33f2bce4`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e699a493bc711dd2eb0d5abb550f738771964dca27a1d2287eb97786635abf07`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18dc0ed777254a1e6ba504baeab7c78851afdaf3be978cf7fe2deb2a3ac773ec`  
		Last Modified: Tue, 24 Jan 2017 21:16:10 GMT  
		Size: 6.9 MB (6888019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f074fd19e7eec3f5d76796718b9df11b3e411d5df6740102b0aba890e961587f`  
		Last Modified: Tue, 24 Jan 2017 21:16:10 GMT  
		Size: 3.3 MB (3288206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
