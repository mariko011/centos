<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `owncloud`

-	[`owncloud:8.0.14-apache`](#owncloud8014-apache)
-	[`owncloud:8.0-apache`](#owncloud80-apache)
-	[`owncloud:8.0.14`](#owncloud8014)
-	[`owncloud:8.0`](#owncloud80)
-	[`owncloud:8.0.14-fpm`](#owncloud8014-fpm)
-	[`owncloud:8.0-fpm`](#owncloud80-fpm)
-	[`owncloud:8.1.9-apache`](#owncloud819-apache)
-	[`owncloud:8.1-apache`](#owncloud81-apache)
-	[`owncloud:8.1.9`](#owncloud819)
-	[`owncloud:8.1`](#owncloud81)
-	[`owncloud:8.1.9-fpm`](#owncloud819-fpm)
-	[`owncloud:8.1-fpm`](#owncloud81-fpm)
-	[`owncloud:8.2.7-apache`](#owncloud827-apache)
-	[`owncloud:8.2-apache`](#owncloud82-apache)
-	[`owncloud:8-apache`](#owncloud8-apache)
-	[`owncloud:8.2.7`](#owncloud827)
-	[`owncloud:8.2`](#owncloud82)
-	[`owncloud:8`](#owncloud8)
-	[`owncloud:8.2.7-fpm`](#owncloud827-fpm)
-	[`owncloud:8.2-fpm`](#owncloud82-fpm)
-	[`owncloud:8-fpm`](#owncloud8-fpm)
-	[`owncloud:9.0.4-apache`](#owncloud904-apache)
-	[`owncloud:9.0-apache`](#owncloud90-apache)
-	[`owncloud:9-apache`](#owncloud9-apache)
-	[`owncloud:apache`](#owncloudapache)
-	[`owncloud:9.0.4`](#owncloud904)
-	[`owncloud:9.0`](#owncloud90)
-	[`owncloud:9`](#owncloud9)
-	[`owncloud:latest`](#owncloudlatest)
-	[`owncloud:9.0.4-fpm`](#owncloud904-fpm)
-	[`owncloud:9.0-fpm`](#owncloud90-fpm)
-	[`owncloud:9-fpm`](#owncloud9-fpm)
-	[`owncloud:fpm`](#owncloudfpm)

## `owncloud:8.0.14-apache`

```console
$ docker pull owncloud@sha256:2760b3f47a82436e7bd8480b432443db6c6e433ac74f81c6c310b61cc1857910
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.0.14-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (224037992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e3b2680eb3459becaaa1fd15f697ae0a168d35b582ad1bf4c878c57d844441`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 19:20:22 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:27:50 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:27:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:27:56 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 19:28:23 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& docker-php-ext-enable apcu
# Thu, 11 Aug 2016 19:28:25 GMT
ENV OWNCLOUD_VERSION=8.0.14
# Thu, 11 Aug 2016 19:28:26 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:28:58 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:29:01 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:29:02 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:29:03 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:cac8898ff2591514aa1f6fb42f8ae28d7a7dc1abc7be902fa96c4a824dc4e2e2`  
		Last Modified: Thu, 11 Aug 2016 19:29:34 GMT  
		Size: 33.5 MB (33470428 bytes)
	-	`sha256:79ce92c067b8d3b39b4513800bbaa43129f14d0351b3d9d091a752a39381811c`  
		Last Modified: Thu, 11 Aug 2016 19:29:23 GMT  
		Size: 3.7 MB (3735500 bytes)
	-	`sha256:6926c7118f6a0d1890b4b9706c103e780b1813ede6cde78db931bd1026112aec`  
		Last Modified: Thu, 11 Aug 2016 19:29:18 GMT  
		Size: 332.0 B
	-	`sha256:c81d643651d4be394a50972b9285057785fe3fef214ec32d1ddb43e86c156a89`  
		Last Modified: Thu, 11 Aug 2016 19:29:18 GMT  
		Size: 296.0 B
	-	`sha256:8ecd6de491078f029f94ef79d66ffbd497521efa10251fdb96c786146c1ef1cf`  
		Last Modified: Thu, 11 Aug 2016 19:29:19 GMT  
		Size: 363.7 KB (363657 bytes)
	-	`sha256:fcc74af51139c75a98b9888671910f045a1ec2dc167e48505fde10ca65dd2966`  
		Last Modified: Thu, 11 Aug 2016 19:29:29 GMT  
		Size: 25.9 MB (25884485 bytes)
	-	`sha256:24b7010ae8b644f0d4f17dc92cbeccbb31bfd0216de1d5b9aad7bfebfb6ea9ba`  
		Last Modified: Thu, 11 Aug 2016 19:29:18 GMT  
		Size: 245.0 B

## `owncloud:8.0-apache`

```console
$ docker pull owncloud@sha256:2760b3f47a82436e7bd8480b432443db6c6e433ac74f81c6c310b61cc1857910
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.0-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (224037992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e3b2680eb3459becaaa1fd15f697ae0a168d35b582ad1bf4c878c57d844441`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 19:20:22 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:27:50 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:27:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:27:56 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 19:28:23 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& docker-php-ext-enable apcu
# Thu, 11 Aug 2016 19:28:25 GMT
ENV OWNCLOUD_VERSION=8.0.14
# Thu, 11 Aug 2016 19:28:26 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:28:58 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:29:01 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:29:02 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:29:03 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:cac8898ff2591514aa1f6fb42f8ae28d7a7dc1abc7be902fa96c4a824dc4e2e2`  
		Last Modified: Thu, 11 Aug 2016 19:29:34 GMT  
		Size: 33.5 MB (33470428 bytes)
	-	`sha256:79ce92c067b8d3b39b4513800bbaa43129f14d0351b3d9d091a752a39381811c`  
		Last Modified: Thu, 11 Aug 2016 19:29:23 GMT  
		Size: 3.7 MB (3735500 bytes)
	-	`sha256:6926c7118f6a0d1890b4b9706c103e780b1813ede6cde78db931bd1026112aec`  
		Last Modified: Thu, 11 Aug 2016 19:29:18 GMT  
		Size: 332.0 B
	-	`sha256:c81d643651d4be394a50972b9285057785fe3fef214ec32d1ddb43e86c156a89`  
		Last Modified: Thu, 11 Aug 2016 19:29:18 GMT  
		Size: 296.0 B
	-	`sha256:8ecd6de491078f029f94ef79d66ffbd497521efa10251fdb96c786146c1ef1cf`  
		Last Modified: Thu, 11 Aug 2016 19:29:19 GMT  
		Size: 363.7 KB (363657 bytes)
	-	`sha256:fcc74af51139c75a98b9888671910f045a1ec2dc167e48505fde10ca65dd2966`  
		Last Modified: Thu, 11 Aug 2016 19:29:29 GMT  
		Size: 25.9 MB (25884485 bytes)
	-	`sha256:24b7010ae8b644f0d4f17dc92cbeccbb31bfd0216de1d5b9aad7bfebfb6ea9ba`  
		Last Modified: Thu, 11 Aug 2016 19:29:18 GMT  
		Size: 245.0 B

## `owncloud:8.0.14`

```console
$ docker pull owncloud@sha256:2760b3f47a82436e7bd8480b432443db6c6e433ac74f81c6c310b61cc1857910
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.0.14` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (224037992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e3b2680eb3459becaaa1fd15f697ae0a168d35b582ad1bf4c878c57d844441`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 19:20:22 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:27:50 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:27:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:27:56 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 19:28:23 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& docker-php-ext-enable apcu
# Thu, 11 Aug 2016 19:28:25 GMT
ENV OWNCLOUD_VERSION=8.0.14
# Thu, 11 Aug 2016 19:28:26 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:28:58 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:29:01 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:29:02 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:29:03 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:cac8898ff2591514aa1f6fb42f8ae28d7a7dc1abc7be902fa96c4a824dc4e2e2`  
		Last Modified: Thu, 11 Aug 2016 19:29:34 GMT  
		Size: 33.5 MB (33470428 bytes)
	-	`sha256:79ce92c067b8d3b39b4513800bbaa43129f14d0351b3d9d091a752a39381811c`  
		Last Modified: Thu, 11 Aug 2016 19:29:23 GMT  
		Size: 3.7 MB (3735500 bytes)
	-	`sha256:6926c7118f6a0d1890b4b9706c103e780b1813ede6cde78db931bd1026112aec`  
		Last Modified: Thu, 11 Aug 2016 19:29:18 GMT  
		Size: 332.0 B
	-	`sha256:c81d643651d4be394a50972b9285057785fe3fef214ec32d1ddb43e86c156a89`  
		Last Modified: Thu, 11 Aug 2016 19:29:18 GMT  
		Size: 296.0 B
	-	`sha256:8ecd6de491078f029f94ef79d66ffbd497521efa10251fdb96c786146c1ef1cf`  
		Last Modified: Thu, 11 Aug 2016 19:29:19 GMT  
		Size: 363.7 KB (363657 bytes)
	-	`sha256:fcc74af51139c75a98b9888671910f045a1ec2dc167e48505fde10ca65dd2966`  
		Last Modified: Thu, 11 Aug 2016 19:29:29 GMT  
		Size: 25.9 MB (25884485 bytes)
	-	`sha256:24b7010ae8b644f0d4f17dc92cbeccbb31bfd0216de1d5b9aad7bfebfb6ea9ba`  
		Last Modified: Thu, 11 Aug 2016 19:29:18 GMT  
		Size: 245.0 B

## `owncloud:8.0`

```console
$ docker pull owncloud@sha256:2760b3f47a82436e7bd8480b432443db6c6e433ac74f81c6c310b61cc1857910
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (224037992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e3b2680eb3459becaaa1fd15f697ae0a168d35b582ad1bf4c878c57d844441`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 19:20:22 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:27:50 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:27:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:27:56 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 19:28:23 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& docker-php-ext-enable apcu
# Thu, 11 Aug 2016 19:28:25 GMT
ENV OWNCLOUD_VERSION=8.0.14
# Thu, 11 Aug 2016 19:28:26 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:28:58 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:29:01 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:29:02 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:29:03 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:cac8898ff2591514aa1f6fb42f8ae28d7a7dc1abc7be902fa96c4a824dc4e2e2`  
		Last Modified: Thu, 11 Aug 2016 19:29:34 GMT  
		Size: 33.5 MB (33470428 bytes)
	-	`sha256:79ce92c067b8d3b39b4513800bbaa43129f14d0351b3d9d091a752a39381811c`  
		Last Modified: Thu, 11 Aug 2016 19:29:23 GMT  
		Size: 3.7 MB (3735500 bytes)
	-	`sha256:6926c7118f6a0d1890b4b9706c103e780b1813ede6cde78db931bd1026112aec`  
		Last Modified: Thu, 11 Aug 2016 19:29:18 GMT  
		Size: 332.0 B
	-	`sha256:c81d643651d4be394a50972b9285057785fe3fef214ec32d1ddb43e86c156a89`  
		Last Modified: Thu, 11 Aug 2016 19:29:18 GMT  
		Size: 296.0 B
	-	`sha256:8ecd6de491078f029f94ef79d66ffbd497521efa10251fdb96c786146c1ef1cf`  
		Last Modified: Thu, 11 Aug 2016 19:29:19 GMT  
		Size: 363.7 KB (363657 bytes)
	-	`sha256:fcc74af51139c75a98b9888671910f045a1ec2dc167e48505fde10ca65dd2966`  
		Last Modified: Thu, 11 Aug 2016 19:29:29 GMT  
		Size: 25.9 MB (25884485 bytes)
	-	`sha256:24b7010ae8b644f0d4f17dc92cbeccbb31bfd0216de1d5b9aad7bfebfb6ea9ba`  
		Last Modified: Thu, 11 Aug 2016 19:29:18 GMT  
		Size: 245.0 B

## `owncloud:8.0.14-fpm`

```console
$ docker pull owncloud@sha256:f2821225b081b780317a283bd8caa0e40a7ddbe42345c03d7dce0592cb78b97d
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.0.14-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.1 MB (214122246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eecb24f61eb984845f29459eb8973fdaae8c718b48107384f9d8071f0d916bf7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:55:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 29 Jul 2016 21:39:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_VERSION=5.6.24
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:23:19 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:23:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:29:50 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:50 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:29:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 20:29:52 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 20:29:52 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 19:50:48 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:54:38 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:54:40 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:54:55 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& docker-php-ext-enable apcu
# Thu, 11 Aug 2016 19:54:56 GMT
ENV OWNCLOUD_VERSION=8.0.14
# Thu, 11 Aug 2016 19:54:57 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:55:13 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:55:15 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:55:15 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:55:16 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:1a0ed20d7752971350ab581861731d7d71a6eb560b93d48382b5cc2aa07fed8b`  
		Last Modified: Wed, 10 Aug 2016 21:38:50 GMT  
		Size: 12.4 MB (12399120 bytes)
	-	`sha256:d17456fd86bcf1eb916ff4c4b4909dd6ad98736369cff4e5ee9c79e02782fc67`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 490.0 B
	-	`sha256:c8bd75b8802c8ce64c4a28486fbfb4bde4247b27f5f8363dd8a8469ac89b1e85`  
		Last Modified: Wed, 10 Aug 2016 21:38:48 GMT  
		Size: 9.3 MB (9333467 bytes)
	-	`sha256:0054f99dc6ca14454002cd76f78264c84cdfd9c57cea265ea0a6f601dab80158`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 1.8 KB (1829 bytes)
	-	`sha256:1c8ec71281514f1d63f59000b5fd9082baa8a6d34e7e591d7cd22928879a5d18`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 129.0 B
	-	`sha256:fa513925a4eb93b436ccdb48c9b0edca88237b4abdebea3245da69a6b37deaf9`  
		Last Modified: Wed, 10 Aug 2016 21:38:46 GMT  
		Size: 7.6 KB (7629 bytes)
	-	`sha256:9b8850b9b06e4a8d39993f30acf1b88b0ccee91e2f0b75b5590f5f5542ec9be6`  
		Last Modified: Thu, 11 Aug 2016 19:55:39 GMT  
		Size: 33.4 MB (33448023 bytes)
	-	`sha256:db3d58fc2acd0fb4994107e50bd67cc867a02f72d9d69424a65df2b92a4773ca`  
		Last Modified: Thu, 11 Aug 2016 19:55:28 GMT  
		Size: 3.7 MB (3735762 bytes)
	-	`sha256:41a66f7689d4dfde53276df0e6d1a02f7c60173df834167dbf0c733bc8f40925`  
		Last Modified: Thu, 11 Aug 2016 19:55:27 GMT  
		Size: 333.0 B
	-	`sha256:2e1d9389b3258bec1fb8dbc00690c0158a0897236914b49f1fe9697d5661a8ef`  
		Last Modified: Thu, 11 Aug 2016 19:55:28 GMT  
		Size: 363.6 KB (363635 bytes)
	-	`sha256:de7670324ad763689a3f7569947f76355ef323a1ae2a91a503a35f77ae8d5f07`  
		Last Modified: Thu, 11 Aug 2016 19:55:35 GMT  
		Size: 25.9 MB (25884487 bytes)
	-	`sha256:a47a21c397995a733d6c25fd677fa891a17ec815adec7d2a6281038d3587ac43`  
		Last Modified: Thu, 11 Aug 2016 19:55:26 GMT  
		Size: 244.0 B

## `owncloud:8.0-fpm`

```console
$ docker pull owncloud@sha256:f2821225b081b780317a283bd8caa0e40a7ddbe42345c03d7dce0592cb78b97d
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.0-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.1 MB (214122246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eecb24f61eb984845f29459eb8973fdaae8c718b48107384f9d8071f0d916bf7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:55:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 29 Jul 2016 21:39:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_VERSION=5.6.24
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:23:19 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:23:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:29:50 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:50 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:29:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 20:29:52 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 20:29:52 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 19:50:48 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:54:38 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:54:40 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:54:55 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& docker-php-ext-enable apcu
# Thu, 11 Aug 2016 19:54:56 GMT
ENV OWNCLOUD_VERSION=8.0.14
# Thu, 11 Aug 2016 19:54:57 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:55:13 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:55:15 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:55:15 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:55:16 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:1a0ed20d7752971350ab581861731d7d71a6eb560b93d48382b5cc2aa07fed8b`  
		Last Modified: Wed, 10 Aug 2016 21:38:50 GMT  
		Size: 12.4 MB (12399120 bytes)
	-	`sha256:d17456fd86bcf1eb916ff4c4b4909dd6ad98736369cff4e5ee9c79e02782fc67`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 490.0 B
	-	`sha256:c8bd75b8802c8ce64c4a28486fbfb4bde4247b27f5f8363dd8a8469ac89b1e85`  
		Last Modified: Wed, 10 Aug 2016 21:38:48 GMT  
		Size: 9.3 MB (9333467 bytes)
	-	`sha256:0054f99dc6ca14454002cd76f78264c84cdfd9c57cea265ea0a6f601dab80158`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 1.8 KB (1829 bytes)
	-	`sha256:1c8ec71281514f1d63f59000b5fd9082baa8a6d34e7e591d7cd22928879a5d18`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 129.0 B
	-	`sha256:fa513925a4eb93b436ccdb48c9b0edca88237b4abdebea3245da69a6b37deaf9`  
		Last Modified: Wed, 10 Aug 2016 21:38:46 GMT  
		Size: 7.6 KB (7629 bytes)
	-	`sha256:9b8850b9b06e4a8d39993f30acf1b88b0ccee91e2f0b75b5590f5f5542ec9be6`  
		Last Modified: Thu, 11 Aug 2016 19:55:39 GMT  
		Size: 33.4 MB (33448023 bytes)
	-	`sha256:db3d58fc2acd0fb4994107e50bd67cc867a02f72d9d69424a65df2b92a4773ca`  
		Last Modified: Thu, 11 Aug 2016 19:55:28 GMT  
		Size: 3.7 MB (3735762 bytes)
	-	`sha256:41a66f7689d4dfde53276df0e6d1a02f7c60173df834167dbf0c733bc8f40925`  
		Last Modified: Thu, 11 Aug 2016 19:55:27 GMT  
		Size: 333.0 B
	-	`sha256:2e1d9389b3258bec1fb8dbc00690c0158a0897236914b49f1fe9697d5661a8ef`  
		Last Modified: Thu, 11 Aug 2016 19:55:28 GMT  
		Size: 363.6 KB (363635 bytes)
	-	`sha256:de7670324ad763689a3f7569947f76355ef323a1ae2a91a503a35f77ae8d5f07`  
		Last Modified: Thu, 11 Aug 2016 19:55:35 GMT  
		Size: 25.9 MB (25884487 bytes)
	-	`sha256:a47a21c397995a733d6c25fd677fa891a17ec815adec7d2a6281038d3587ac43`  
		Last Modified: Thu, 11 Aug 2016 19:55:26 GMT  
		Size: 244.0 B

## `owncloud:8.1.9-apache`

```console
$ docker pull owncloud@sha256:6c9f4a6ed633b52bf7a77ed75e53bc305acca11f5eaf258fd44ba0eff584b5a3
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.1.9-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.8 MB (226817350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0502479fbe77052e0136434f843f7aac38466e134f90ba11c0e8235e85f9b850`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 19:40:17 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:44:21 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:44:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:44:25 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 19:45:12 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Thu, 11 Aug 2016 19:56:00 GMT
ENV OWNCLOUD_VERSION=8.1.9
# Thu, 11 Aug 2016 19:56:01 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:56:27 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:56:29 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:56:30 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:56:31 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:b486b4dba63edbb3698efdc9d49c726ee9485f492208b1c58243546e551b401e`  
		Last Modified: Thu, 11 Aug 2016 19:46:10 GMT  
		Size: 34.3 MB (34332251 bytes)
	-	`sha256:7cd3a3ec048bc1083af9b206381543bba7ba4e95ef59231092a744c329062c81`  
		Last Modified: Thu, 11 Aug 2016 19:45:59 GMT  
		Size: 3.7 MB (3735503 bytes)
	-	`sha256:50258fe8ebeff9f923454ee2d5462f93bce2af2119205c94bcf5afc0f6300b4f`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 334.0 B
	-	`sha256:e7300e935dc63b74a3ae9d06b2444580b01ddbb4164ba81ff4ed9e2ef5a17c32`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 296.0 B
	-	`sha256:e46394307f8ef729f5c0bc9b8d750811bbbc5e38d3e94536eea1be3dd4e88c44`  
		Last Modified: Thu, 11 Aug 2016 19:45:55 GMT  
		Size: 1.3 MB (1329855 bytes)
	-	`sha256:3fa5e99d32625ab1a1ac84bfdd8cbadee6593a0eebc2263e44b67bee671fd501`  
		Last Modified: Thu, 11 Aug 2016 19:56:49 GMT  
		Size: 26.8 MB (26835817 bytes)
	-	`sha256:ebf12d12f1530bff558aa13b69efe64182a3a76ea5ddc5fed6f5b2a8d22e1428`  
		Last Modified: Thu, 11 Aug 2016 19:56:42 GMT  
		Size: 245.0 B

## `owncloud:8.1-apache`

```console
$ docker pull owncloud@sha256:6c9f4a6ed633b52bf7a77ed75e53bc305acca11f5eaf258fd44ba0eff584b5a3
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.1-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.8 MB (226817350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0502479fbe77052e0136434f843f7aac38466e134f90ba11c0e8235e85f9b850`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 19:40:17 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:44:21 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:44:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:44:25 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 19:45:12 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Thu, 11 Aug 2016 19:56:00 GMT
ENV OWNCLOUD_VERSION=8.1.9
# Thu, 11 Aug 2016 19:56:01 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:56:27 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:56:29 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:56:30 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:56:31 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:b486b4dba63edbb3698efdc9d49c726ee9485f492208b1c58243546e551b401e`  
		Last Modified: Thu, 11 Aug 2016 19:46:10 GMT  
		Size: 34.3 MB (34332251 bytes)
	-	`sha256:7cd3a3ec048bc1083af9b206381543bba7ba4e95ef59231092a744c329062c81`  
		Last Modified: Thu, 11 Aug 2016 19:45:59 GMT  
		Size: 3.7 MB (3735503 bytes)
	-	`sha256:50258fe8ebeff9f923454ee2d5462f93bce2af2119205c94bcf5afc0f6300b4f`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 334.0 B
	-	`sha256:e7300e935dc63b74a3ae9d06b2444580b01ddbb4164ba81ff4ed9e2ef5a17c32`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 296.0 B
	-	`sha256:e46394307f8ef729f5c0bc9b8d750811bbbc5e38d3e94536eea1be3dd4e88c44`  
		Last Modified: Thu, 11 Aug 2016 19:45:55 GMT  
		Size: 1.3 MB (1329855 bytes)
	-	`sha256:3fa5e99d32625ab1a1ac84bfdd8cbadee6593a0eebc2263e44b67bee671fd501`  
		Last Modified: Thu, 11 Aug 2016 19:56:49 GMT  
		Size: 26.8 MB (26835817 bytes)
	-	`sha256:ebf12d12f1530bff558aa13b69efe64182a3a76ea5ddc5fed6f5b2a8d22e1428`  
		Last Modified: Thu, 11 Aug 2016 19:56:42 GMT  
		Size: 245.0 B

## `owncloud:8.1.9`

```console
$ docker pull owncloud@sha256:6c9f4a6ed633b52bf7a77ed75e53bc305acca11f5eaf258fd44ba0eff584b5a3
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.1.9` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.8 MB (226817350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0502479fbe77052e0136434f843f7aac38466e134f90ba11c0e8235e85f9b850`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 19:40:17 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:44:21 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:44:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:44:25 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 19:45:12 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Thu, 11 Aug 2016 19:56:00 GMT
ENV OWNCLOUD_VERSION=8.1.9
# Thu, 11 Aug 2016 19:56:01 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:56:27 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:56:29 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:56:30 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:56:31 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:b486b4dba63edbb3698efdc9d49c726ee9485f492208b1c58243546e551b401e`  
		Last Modified: Thu, 11 Aug 2016 19:46:10 GMT  
		Size: 34.3 MB (34332251 bytes)
	-	`sha256:7cd3a3ec048bc1083af9b206381543bba7ba4e95ef59231092a744c329062c81`  
		Last Modified: Thu, 11 Aug 2016 19:45:59 GMT  
		Size: 3.7 MB (3735503 bytes)
	-	`sha256:50258fe8ebeff9f923454ee2d5462f93bce2af2119205c94bcf5afc0f6300b4f`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 334.0 B
	-	`sha256:e7300e935dc63b74a3ae9d06b2444580b01ddbb4164ba81ff4ed9e2ef5a17c32`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 296.0 B
	-	`sha256:e46394307f8ef729f5c0bc9b8d750811bbbc5e38d3e94536eea1be3dd4e88c44`  
		Last Modified: Thu, 11 Aug 2016 19:45:55 GMT  
		Size: 1.3 MB (1329855 bytes)
	-	`sha256:3fa5e99d32625ab1a1ac84bfdd8cbadee6593a0eebc2263e44b67bee671fd501`  
		Last Modified: Thu, 11 Aug 2016 19:56:49 GMT  
		Size: 26.8 MB (26835817 bytes)
	-	`sha256:ebf12d12f1530bff558aa13b69efe64182a3a76ea5ddc5fed6f5b2a8d22e1428`  
		Last Modified: Thu, 11 Aug 2016 19:56:42 GMT  
		Size: 245.0 B

## `owncloud:8.1`

```console
$ docker pull owncloud@sha256:6c9f4a6ed633b52bf7a77ed75e53bc305acca11f5eaf258fd44ba0eff584b5a3
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.8 MB (226817350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0502479fbe77052e0136434f843f7aac38466e134f90ba11c0e8235e85f9b850`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 19:40:17 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:44:21 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:44:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:44:25 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 19:45:12 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Thu, 11 Aug 2016 19:56:00 GMT
ENV OWNCLOUD_VERSION=8.1.9
# Thu, 11 Aug 2016 19:56:01 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:56:27 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:56:29 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:56:30 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:56:31 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:b486b4dba63edbb3698efdc9d49c726ee9485f492208b1c58243546e551b401e`  
		Last Modified: Thu, 11 Aug 2016 19:46:10 GMT  
		Size: 34.3 MB (34332251 bytes)
	-	`sha256:7cd3a3ec048bc1083af9b206381543bba7ba4e95ef59231092a744c329062c81`  
		Last Modified: Thu, 11 Aug 2016 19:45:59 GMT  
		Size: 3.7 MB (3735503 bytes)
	-	`sha256:50258fe8ebeff9f923454ee2d5462f93bce2af2119205c94bcf5afc0f6300b4f`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 334.0 B
	-	`sha256:e7300e935dc63b74a3ae9d06b2444580b01ddbb4164ba81ff4ed9e2ef5a17c32`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 296.0 B
	-	`sha256:e46394307f8ef729f5c0bc9b8d750811bbbc5e38d3e94536eea1be3dd4e88c44`  
		Last Modified: Thu, 11 Aug 2016 19:45:55 GMT  
		Size: 1.3 MB (1329855 bytes)
	-	`sha256:3fa5e99d32625ab1a1ac84bfdd8cbadee6593a0eebc2263e44b67bee671fd501`  
		Last Modified: Thu, 11 Aug 2016 19:56:49 GMT  
		Size: 26.8 MB (26835817 bytes)
	-	`sha256:ebf12d12f1530bff558aa13b69efe64182a3a76ea5ddc5fed6f5b2a8d22e1428`  
		Last Modified: Thu, 11 Aug 2016 19:56:42 GMT  
		Size: 245.0 B

## `owncloud:8.1.9-fpm`

```console
$ docker pull owncloud@sha256:3f1d4064d601ee21ac0debcbafe39973b85607cdac0f20a8988c9b6c8143d122
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.1.9-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.9 MB (216901339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d35a0aa703bb04f95d6d3f141d30dcc5ea9681a016f77863cd9dd17bbc1d5ad2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:55:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 29 Jul 2016 21:39:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_VERSION=5.6.24
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:23:19 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:23:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:29:50 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:50 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:29:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 20:29:52 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 20:29:52 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 19:31:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:36:32 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:36:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:37:23 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Thu, 11 Aug 2016 19:57:32 GMT
ENV OWNCLOUD_VERSION=8.1.9
# Thu, 11 Aug 2016 19:57:33 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:57:49 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:57:51 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:57:52 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:57:53 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:1a0ed20d7752971350ab581861731d7d71a6eb560b93d48382b5cc2aa07fed8b`  
		Last Modified: Wed, 10 Aug 2016 21:38:50 GMT  
		Size: 12.4 MB (12399120 bytes)
	-	`sha256:d17456fd86bcf1eb916ff4c4b4909dd6ad98736369cff4e5ee9c79e02782fc67`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 490.0 B
	-	`sha256:c8bd75b8802c8ce64c4a28486fbfb4bde4247b27f5f8363dd8a8469ac89b1e85`  
		Last Modified: Wed, 10 Aug 2016 21:38:48 GMT  
		Size: 9.3 MB (9333467 bytes)
	-	`sha256:0054f99dc6ca14454002cd76f78264c84cdfd9c57cea265ea0a6f601dab80158`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 1.8 KB (1829 bytes)
	-	`sha256:1c8ec71281514f1d63f59000b5fd9082baa8a6d34e7e591d7cd22928879a5d18`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 129.0 B
	-	`sha256:fa513925a4eb93b436ccdb48c9b0edca88237b4abdebea3245da69a6b37deaf9`  
		Last Modified: Wed, 10 Aug 2016 21:38:46 GMT  
		Size: 7.6 KB (7629 bytes)
	-	`sha256:f5e918f5eeceb98e228adf3ed45e9590823935fc6a4d203903b7633e64e2f6b7`  
		Last Modified: Thu, 11 Aug 2016 19:38:23 GMT  
		Size: 34.3 MB (34309595 bytes)
	-	`sha256:4a0645c74d2abc109131690d3f71a3c42fe544272d58e7a2151d4a4be4509977`  
		Last Modified: Thu, 11 Aug 2016 19:38:09 GMT  
		Size: 3.7 MB (3735762 bytes)
	-	`sha256:9cfa7715b90cc83e5009c512050ac4f5c46adfa52997773a68c02ca21063a543`  
		Last Modified: Thu, 11 Aug 2016 19:38:07 GMT  
		Size: 333.0 B
	-	`sha256:77fb23212070caee8cc379413904c7da38bee3cb9e17d3c039dea71c46e44bc3`  
		Last Modified: Thu, 11 Aug 2016 19:38:07 GMT  
		Size: 1.3 MB (1329833 bytes)
	-	`sha256:0486658508f3a688311200f4c6c9f7fc49950341ff657aca2e9363fea14bd868`  
		Last Modified: Thu, 11 Aug 2016 19:58:10 GMT  
		Size: 26.8 MB (26835809 bytes)
	-	`sha256:3434f4f66e0a50e7106de1d604bc995312069096e281c1bde0ed53becd9b8a4d`  
		Last Modified: Thu, 11 Aug 2016 19:58:04 GMT  
		Size: 245.0 B

## `owncloud:8.1-fpm`

```console
$ docker pull owncloud@sha256:3f1d4064d601ee21ac0debcbafe39973b85607cdac0f20a8988c9b6c8143d122
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.1-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.9 MB (216901339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d35a0aa703bb04f95d6d3f141d30dcc5ea9681a016f77863cd9dd17bbc1d5ad2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:55:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 29 Jul 2016 21:39:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_VERSION=5.6.24
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:23:19 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:23:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:29:50 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:50 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:29:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 20:29:52 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 20:29:52 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 19:31:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:36:32 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:36:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:37:23 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Thu, 11 Aug 2016 19:57:32 GMT
ENV OWNCLOUD_VERSION=8.1.9
# Thu, 11 Aug 2016 19:57:33 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:57:49 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:57:51 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:57:52 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:57:53 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:1a0ed20d7752971350ab581861731d7d71a6eb560b93d48382b5cc2aa07fed8b`  
		Last Modified: Wed, 10 Aug 2016 21:38:50 GMT  
		Size: 12.4 MB (12399120 bytes)
	-	`sha256:d17456fd86bcf1eb916ff4c4b4909dd6ad98736369cff4e5ee9c79e02782fc67`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 490.0 B
	-	`sha256:c8bd75b8802c8ce64c4a28486fbfb4bde4247b27f5f8363dd8a8469ac89b1e85`  
		Last Modified: Wed, 10 Aug 2016 21:38:48 GMT  
		Size: 9.3 MB (9333467 bytes)
	-	`sha256:0054f99dc6ca14454002cd76f78264c84cdfd9c57cea265ea0a6f601dab80158`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 1.8 KB (1829 bytes)
	-	`sha256:1c8ec71281514f1d63f59000b5fd9082baa8a6d34e7e591d7cd22928879a5d18`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 129.0 B
	-	`sha256:fa513925a4eb93b436ccdb48c9b0edca88237b4abdebea3245da69a6b37deaf9`  
		Last Modified: Wed, 10 Aug 2016 21:38:46 GMT  
		Size: 7.6 KB (7629 bytes)
	-	`sha256:f5e918f5eeceb98e228adf3ed45e9590823935fc6a4d203903b7633e64e2f6b7`  
		Last Modified: Thu, 11 Aug 2016 19:38:23 GMT  
		Size: 34.3 MB (34309595 bytes)
	-	`sha256:4a0645c74d2abc109131690d3f71a3c42fe544272d58e7a2151d4a4be4509977`  
		Last Modified: Thu, 11 Aug 2016 19:38:09 GMT  
		Size: 3.7 MB (3735762 bytes)
	-	`sha256:9cfa7715b90cc83e5009c512050ac4f5c46adfa52997773a68c02ca21063a543`  
		Last Modified: Thu, 11 Aug 2016 19:38:07 GMT  
		Size: 333.0 B
	-	`sha256:77fb23212070caee8cc379413904c7da38bee3cb9e17d3c039dea71c46e44bc3`  
		Last Modified: Thu, 11 Aug 2016 19:38:07 GMT  
		Size: 1.3 MB (1329833 bytes)
	-	`sha256:0486658508f3a688311200f4c6c9f7fc49950341ff657aca2e9363fea14bd868`  
		Last Modified: Thu, 11 Aug 2016 19:58:10 GMT  
		Size: 26.8 MB (26835809 bytes)
	-	`sha256:3434f4f66e0a50e7106de1d604bc995312069096e281c1bde0ed53becd9b8a4d`  
		Last Modified: Thu, 11 Aug 2016 19:58:04 GMT  
		Size: 245.0 B

## `owncloud:8.2.7-apache`

```console
$ docker pull owncloud@sha256:becfd58ee11bf599a2e1888fc31b08b09dae4d860b5de4a813e0cae05e130bb9
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.2.7-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 MB (230303269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76e11704034adec81c3788b9d1dea8416dc0e4a0d8d1afcbd352d0a0fac5bc36`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 19:40:17 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:44:21 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:44:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:44:25 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 19:45:12 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Thu, 11 Aug 2016 19:58:30 GMT
ENV OWNCLOUD_VERSION=8.2.7
# Thu, 11 Aug 2016 19:58:31 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:58:51 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:58:53 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:58:54 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:58:55 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:b486b4dba63edbb3698efdc9d49c726ee9485f492208b1c58243546e551b401e`  
		Last Modified: Thu, 11 Aug 2016 19:46:10 GMT  
		Size: 34.3 MB (34332251 bytes)
	-	`sha256:7cd3a3ec048bc1083af9b206381543bba7ba4e95ef59231092a744c329062c81`  
		Last Modified: Thu, 11 Aug 2016 19:45:59 GMT  
		Size: 3.7 MB (3735503 bytes)
	-	`sha256:50258fe8ebeff9f923454ee2d5462f93bce2af2119205c94bcf5afc0f6300b4f`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 334.0 B
	-	`sha256:e7300e935dc63b74a3ae9d06b2444580b01ddbb4164ba81ff4ed9e2ef5a17c32`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 296.0 B
	-	`sha256:e46394307f8ef729f5c0bc9b8d750811bbbc5e38d3e94536eea1be3dd4e88c44`  
		Last Modified: Thu, 11 Aug 2016 19:45:55 GMT  
		Size: 1.3 MB (1329855 bytes)
	-	`sha256:f0b0e3cbd6bf13d9490d6f52a315997926d98124725ed3e967f06e49bfa795ec`  
		Last Modified: Thu, 11 Aug 2016 19:59:13 GMT  
		Size: 30.3 MB (30321735 bytes)
	-	`sha256:d9d0adcc47a4e37e568c742c09a304b3629c8261aaa9070b11b21b1fca1728eb`  
		Last Modified: Thu, 11 Aug 2016 19:59:06 GMT  
		Size: 246.0 B

## `owncloud:8.2-apache`

```console
$ docker pull owncloud@sha256:becfd58ee11bf599a2e1888fc31b08b09dae4d860b5de4a813e0cae05e130bb9
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.2-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 MB (230303269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76e11704034adec81c3788b9d1dea8416dc0e4a0d8d1afcbd352d0a0fac5bc36`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 19:40:17 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:44:21 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:44:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:44:25 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 19:45:12 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Thu, 11 Aug 2016 19:58:30 GMT
ENV OWNCLOUD_VERSION=8.2.7
# Thu, 11 Aug 2016 19:58:31 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:58:51 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:58:53 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:58:54 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:58:55 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:b486b4dba63edbb3698efdc9d49c726ee9485f492208b1c58243546e551b401e`  
		Last Modified: Thu, 11 Aug 2016 19:46:10 GMT  
		Size: 34.3 MB (34332251 bytes)
	-	`sha256:7cd3a3ec048bc1083af9b206381543bba7ba4e95ef59231092a744c329062c81`  
		Last Modified: Thu, 11 Aug 2016 19:45:59 GMT  
		Size: 3.7 MB (3735503 bytes)
	-	`sha256:50258fe8ebeff9f923454ee2d5462f93bce2af2119205c94bcf5afc0f6300b4f`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 334.0 B
	-	`sha256:e7300e935dc63b74a3ae9d06b2444580b01ddbb4164ba81ff4ed9e2ef5a17c32`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 296.0 B
	-	`sha256:e46394307f8ef729f5c0bc9b8d750811bbbc5e38d3e94536eea1be3dd4e88c44`  
		Last Modified: Thu, 11 Aug 2016 19:45:55 GMT  
		Size: 1.3 MB (1329855 bytes)
	-	`sha256:f0b0e3cbd6bf13d9490d6f52a315997926d98124725ed3e967f06e49bfa795ec`  
		Last Modified: Thu, 11 Aug 2016 19:59:13 GMT  
		Size: 30.3 MB (30321735 bytes)
	-	`sha256:d9d0adcc47a4e37e568c742c09a304b3629c8261aaa9070b11b21b1fca1728eb`  
		Last Modified: Thu, 11 Aug 2016 19:59:06 GMT  
		Size: 246.0 B

## `owncloud:8-apache`

```console
$ docker pull owncloud@sha256:becfd58ee11bf599a2e1888fc31b08b09dae4d860b5de4a813e0cae05e130bb9
```

-	Platforms:
	-	linux; amd64

### `owncloud:8-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 MB (230303269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76e11704034adec81c3788b9d1dea8416dc0e4a0d8d1afcbd352d0a0fac5bc36`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 19:40:17 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:44:21 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:44:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:44:25 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 19:45:12 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Thu, 11 Aug 2016 19:58:30 GMT
ENV OWNCLOUD_VERSION=8.2.7
# Thu, 11 Aug 2016 19:58:31 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:58:51 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:58:53 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:58:54 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:58:55 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:b486b4dba63edbb3698efdc9d49c726ee9485f492208b1c58243546e551b401e`  
		Last Modified: Thu, 11 Aug 2016 19:46:10 GMT  
		Size: 34.3 MB (34332251 bytes)
	-	`sha256:7cd3a3ec048bc1083af9b206381543bba7ba4e95ef59231092a744c329062c81`  
		Last Modified: Thu, 11 Aug 2016 19:45:59 GMT  
		Size: 3.7 MB (3735503 bytes)
	-	`sha256:50258fe8ebeff9f923454ee2d5462f93bce2af2119205c94bcf5afc0f6300b4f`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 334.0 B
	-	`sha256:e7300e935dc63b74a3ae9d06b2444580b01ddbb4164ba81ff4ed9e2ef5a17c32`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 296.0 B
	-	`sha256:e46394307f8ef729f5c0bc9b8d750811bbbc5e38d3e94536eea1be3dd4e88c44`  
		Last Modified: Thu, 11 Aug 2016 19:45:55 GMT  
		Size: 1.3 MB (1329855 bytes)
	-	`sha256:f0b0e3cbd6bf13d9490d6f52a315997926d98124725ed3e967f06e49bfa795ec`  
		Last Modified: Thu, 11 Aug 2016 19:59:13 GMT  
		Size: 30.3 MB (30321735 bytes)
	-	`sha256:d9d0adcc47a4e37e568c742c09a304b3629c8261aaa9070b11b21b1fca1728eb`  
		Last Modified: Thu, 11 Aug 2016 19:59:06 GMT  
		Size: 246.0 B

## `owncloud:8.2.7`

```console
$ docker pull owncloud@sha256:becfd58ee11bf599a2e1888fc31b08b09dae4d860b5de4a813e0cae05e130bb9
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.2.7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 MB (230303269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76e11704034adec81c3788b9d1dea8416dc0e4a0d8d1afcbd352d0a0fac5bc36`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 19:40:17 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:44:21 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:44:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:44:25 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 19:45:12 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Thu, 11 Aug 2016 19:58:30 GMT
ENV OWNCLOUD_VERSION=8.2.7
# Thu, 11 Aug 2016 19:58:31 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:58:51 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:58:53 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:58:54 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:58:55 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:b486b4dba63edbb3698efdc9d49c726ee9485f492208b1c58243546e551b401e`  
		Last Modified: Thu, 11 Aug 2016 19:46:10 GMT  
		Size: 34.3 MB (34332251 bytes)
	-	`sha256:7cd3a3ec048bc1083af9b206381543bba7ba4e95ef59231092a744c329062c81`  
		Last Modified: Thu, 11 Aug 2016 19:45:59 GMT  
		Size: 3.7 MB (3735503 bytes)
	-	`sha256:50258fe8ebeff9f923454ee2d5462f93bce2af2119205c94bcf5afc0f6300b4f`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 334.0 B
	-	`sha256:e7300e935dc63b74a3ae9d06b2444580b01ddbb4164ba81ff4ed9e2ef5a17c32`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 296.0 B
	-	`sha256:e46394307f8ef729f5c0bc9b8d750811bbbc5e38d3e94536eea1be3dd4e88c44`  
		Last Modified: Thu, 11 Aug 2016 19:45:55 GMT  
		Size: 1.3 MB (1329855 bytes)
	-	`sha256:f0b0e3cbd6bf13d9490d6f52a315997926d98124725ed3e967f06e49bfa795ec`  
		Last Modified: Thu, 11 Aug 2016 19:59:13 GMT  
		Size: 30.3 MB (30321735 bytes)
	-	`sha256:d9d0adcc47a4e37e568c742c09a304b3629c8261aaa9070b11b21b1fca1728eb`  
		Last Modified: Thu, 11 Aug 2016 19:59:06 GMT  
		Size: 246.0 B

## `owncloud:8.2`

```console
$ docker pull owncloud@sha256:becfd58ee11bf599a2e1888fc31b08b09dae4d860b5de4a813e0cae05e130bb9
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 MB (230303269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76e11704034adec81c3788b9d1dea8416dc0e4a0d8d1afcbd352d0a0fac5bc36`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 19:40:17 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:44:21 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:44:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:44:25 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 19:45:12 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Thu, 11 Aug 2016 19:58:30 GMT
ENV OWNCLOUD_VERSION=8.2.7
# Thu, 11 Aug 2016 19:58:31 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:58:51 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:58:53 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:58:54 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:58:55 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:b486b4dba63edbb3698efdc9d49c726ee9485f492208b1c58243546e551b401e`  
		Last Modified: Thu, 11 Aug 2016 19:46:10 GMT  
		Size: 34.3 MB (34332251 bytes)
	-	`sha256:7cd3a3ec048bc1083af9b206381543bba7ba4e95ef59231092a744c329062c81`  
		Last Modified: Thu, 11 Aug 2016 19:45:59 GMT  
		Size: 3.7 MB (3735503 bytes)
	-	`sha256:50258fe8ebeff9f923454ee2d5462f93bce2af2119205c94bcf5afc0f6300b4f`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 334.0 B
	-	`sha256:e7300e935dc63b74a3ae9d06b2444580b01ddbb4164ba81ff4ed9e2ef5a17c32`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 296.0 B
	-	`sha256:e46394307f8ef729f5c0bc9b8d750811bbbc5e38d3e94536eea1be3dd4e88c44`  
		Last Modified: Thu, 11 Aug 2016 19:45:55 GMT  
		Size: 1.3 MB (1329855 bytes)
	-	`sha256:f0b0e3cbd6bf13d9490d6f52a315997926d98124725ed3e967f06e49bfa795ec`  
		Last Modified: Thu, 11 Aug 2016 19:59:13 GMT  
		Size: 30.3 MB (30321735 bytes)
	-	`sha256:d9d0adcc47a4e37e568c742c09a304b3629c8261aaa9070b11b21b1fca1728eb`  
		Last Modified: Thu, 11 Aug 2016 19:59:06 GMT  
		Size: 246.0 B

## `owncloud:8`

```console
$ docker pull owncloud@sha256:becfd58ee11bf599a2e1888fc31b08b09dae4d860b5de4a813e0cae05e130bb9
```

-	Platforms:
	-	linux; amd64

### `owncloud:8` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 MB (230303269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76e11704034adec81c3788b9d1dea8416dc0e4a0d8d1afcbd352d0a0fac5bc36`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 19:40:17 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:44:21 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:44:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:44:25 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 19:45:12 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Thu, 11 Aug 2016 19:58:30 GMT
ENV OWNCLOUD_VERSION=8.2.7
# Thu, 11 Aug 2016 19:58:31 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:58:51 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:58:53 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:58:54 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:58:55 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:b486b4dba63edbb3698efdc9d49c726ee9485f492208b1c58243546e551b401e`  
		Last Modified: Thu, 11 Aug 2016 19:46:10 GMT  
		Size: 34.3 MB (34332251 bytes)
	-	`sha256:7cd3a3ec048bc1083af9b206381543bba7ba4e95ef59231092a744c329062c81`  
		Last Modified: Thu, 11 Aug 2016 19:45:59 GMT  
		Size: 3.7 MB (3735503 bytes)
	-	`sha256:50258fe8ebeff9f923454ee2d5462f93bce2af2119205c94bcf5afc0f6300b4f`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 334.0 B
	-	`sha256:e7300e935dc63b74a3ae9d06b2444580b01ddbb4164ba81ff4ed9e2ef5a17c32`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 296.0 B
	-	`sha256:e46394307f8ef729f5c0bc9b8d750811bbbc5e38d3e94536eea1be3dd4e88c44`  
		Last Modified: Thu, 11 Aug 2016 19:45:55 GMT  
		Size: 1.3 MB (1329855 bytes)
	-	`sha256:f0b0e3cbd6bf13d9490d6f52a315997926d98124725ed3e967f06e49bfa795ec`  
		Last Modified: Thu, 11 Aug 2016 19:59:13 GMT  
		Size: 30.3 MB (30321735 bytes)
	-	`sha256:d9d0adcc47a4e37e568c742c09a304b3629c8261aaa9070b11b21b1fca1728eb`  
		Last Modified: Thu, 11 Aug 2016 19:59:06 GMT  
		Size: 246.0 B

## `owncloud:8.2.7-fpm`

```console
$ docker pull owncloud@sha256:f28132e261c7cbe385d8eac5f61adf449cbdaf8332fc8232675b32001bbb0375
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.2.7-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.4 MB (220387265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:684d6612b92b3f2c9180a5e9c1cfd1b0dda6b673f2e8edbcbb0abc872b730a92`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:55:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 29 Jul 2016 21:39:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_VERSION=5.6.24
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:23:19 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:23:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:29:50 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:50 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:29:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 20:29:52 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 20:29:52 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 19:31:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:36:32 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:36:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:37:23 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Thu, 11 Aug 2016 19:37:24 GMT
ENV OWNCLOUD_VERSION=8.2.7
# Thu, 11 Aug 2016 19:37:25 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:37:44 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:37:46 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:37:47 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:37:56 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:1a0ed20d7752971350ab581861731d7d71a6eb560b93d48382b5cc2aa07fed8b`  
		Last Modified: Wed, 10 Aug 2016 21:38:50 GMT  
		Size: 12.4 MB (12399120 bytes)
	-	`sha256:d17456fd86bcf1eb916ff4c4b4909dd6ad98736369cff4e5ee9c79e02782fc67`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 490.0 B
	-	`sha256:c8bd75b8802c8ce64c4a28486fbfb4bde4247b27f5f8363dd8a8469ac89b1e85`  
		Last Modified: Wed, 10 Aug 2016 21:38:48 GMT  
		Size: 9.3 MB (9333467 bytes)
	-	`sha256:0054f99dc6ca14454002cd76f78264c84cdfd9c57cea265ea0a6f601dab80158`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 1.8 KB (1829 bytes)
	-	`sha256:1c8ec71281514f1d63f59000b5fd9082baa8a6d34e7e591d7cd22928879a5d18`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 129.0 B
	-	`sha256:fa513925a4eb93b436ccdb48c9b0edca88237b4abdebea3245da69a6b37deaf9`  
		Last Modified: Wed, 10 Aug 2016 21:38:46 GMT  
		Size: 7.6 KB (7629 bytes)
	-	`sha256:f5e918f5eeceb98e228adf3ed45e9590823935fc6a4d203903b7633e64e2f6b7`  
		Last Modified: Thu, 11 Aug 2016 19:38:23 GMT  
		Size: 34.3 MB (34309595 bytes)
	-	`sha256:4a0645c74d2abc109131690d3f71a3c42fe544272d58e7a2151d4a4be4509977`  
		Last Modified: Thu, 11 Aug 2016 19:38:09 GMT  
		Size: 3.7 MB (3735762 bytes)
	-	`sha256:9cfa7715b90cc83e5009c512050ac4f5c46adfa52997773a68c02ca21063a543`  
		Last Modified: Thu, 11 Aug 2016 19:38:07 GMT  
		Size: 333.0 B
	-	`sha256:77fb23212070caee8cc379413904c7da38bee3cb9e17d3c039dea71c46e44bc3`  
		Last Modified: Thu, 11 Aug 2016 19:38:07 GMT  
		Size: 1.3 MB (1329833 bytes)
	-	`sha256:8340b5f91f7b51525e412f608ad5dead3fbaec7a4f1ce72f96ee1f3c816058fe`  
		Last Modified: Thu, 11 Aug 2016 19:38:18 GMT  
		Size: 30.3 MB (30321737 bytes)
	-	`sha256:1ab65c67b7ef46a28e5af70e23029f5d39f07221f1cf02a64456678eff2b41d3`  
		Last Modified: Thu, 11 Aug 2016 19:38:07 GMT  
		Size: 243.0 B

## `owncloud:8.2-fpm`

```console
$ docker pull owncloud@sha256:f28132e261c7cbe385d8eac5f61adf449cbdaf8332fc8232675b32001bbb0375
```

-	Platforms:
	-	linux; amd64

### `owncloud:8.2-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.4 MB (220387265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:684d6612b92b3f2c9180a5e9c1cfd1b0dda6b673f2e8edbcbb0abc872b730a92`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:55:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 29 Jul 2016 21:39:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_VERSION=5.6.24
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:23:19 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:23:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:29:50 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:50 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:29:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 20:29:52 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 20:29:52 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 19:31:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:36:32 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:36:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:37:23 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Thu, 11 Aug 2016 19:37:24 GMT
ENV OWNCLOUD_VERSION=8.2.7
# Thu, 11 Aug 2016 19:37:25 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:37:44 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:37:46 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:37:47 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:37:56 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:1a0ed20d7752971350ab581861731d7d71a6eb560b93d48382b5cc2aa07fed8b`  
		Last Modified: Wed, 10 Aug 2016 21:38:50 GMT  
		Size: 12.4 MB (12399120 bytes)
	-	`sha256:d17456fd86bcf1eb916ff4c4b4909dd6ad98736369cff4e5ee9c79e02782fc67`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 490.0 B
	-	`sha256:c8bd75b8802c8ce64c4a28486fbfb4bde4247b27f5f8363dd8a8469ac89b1e85`  
		Last Modified: Wed, 10 Aug 2016 21:38:48 GMT  
		Size: 9.3 MB (9333467 bytes)
	-	`sha256:0054f99dc6ca14454002cd76f78264c84cdfd9c57cea265ea0a6f601dab80158`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 1.8 KB (1829 bytes)
	-	`sha256:1c8ec71281514f1d63f59000b5fd9082baa8a6d34e7e591d7cd22928879a5d18`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 129.0 B
	-	`sha256:fa513925a4eb93b436ccdb48c9b0edca88237b4abdebea3245da69a6b37deaf9`  
		Last Modified: Wed, 10 Aug 2016 21:38:46 GMT  
		Size: 7.6 KB (7629 bytes)
	-	`sha256:f5e918f5eeceb98e228adf3ed45e9590823935fc6a4d203903b7633e64e2f6b7`  
		Last Modified: Thu, 11 Aug 2016 19:38:23 GMT  
		Size: 34.3 MB (34309595 bytes)
	-	`sha256:4a0645c74d2abc109131690d3f71a3c42fe544272d58e7a2151d4a4be4509977`  
		Last Modified: Thu, 11 Aug 2016 19:38:09 GMT  
		Size: 3.7 MB (3735762 bytes)
	-	`sha256:9cfa7715b90cc83e5009c512050ac4f5c46adfa52997773a68c02ca21063a543`  
		Last Modified: Thu, 11 Aug 2016 19:38:07 GMT  
		Size: 333.0 B
	-	`sha256:77fb23212070caee8cc379413904c7da38bee3cb9e17d3c039dea71c46e44bc3`  
		Last Modified: Thu, 11 Aug 2016 19:38:07 GMT  
		Size: 1.3 MB (1329833 bytes)
	-	`sha256:8340b5f91f7b51525e412f608ad5dead3fbaec7a4f1ce72f96ee1f3c816058fe`  
		Last Modified: Thu, 11 Aug 2016 19:38:18 GMT  
		Size: 30.3 MB (30321737 bytes)
	-	`sha256:1ab65c67b7ef46a28e5af70e23029f5d39f07221f1cf02a64456678eff2b41d3`  
		Last Modified: Thu, 11 Aug 2016 19:38:07 GMT  
		Size: 243.0 B

## `owncloud:8-fpm`

```console
$ docker pull owncloud@sha256:f28132e261c7cbe385d8eac5f61adf449cbdaf8332fc8232675b32001bbb0375
```

-	Platforms:
	-	linux; amd64

### `owncloud:8-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.4 MB (220387265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:684d6612b92b3f2c9180a5e9c1cfd1b0dda6b673f2e8edbcbb0abc872b730a92`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:55:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 29 Jul 2016 21:39:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_VERSION=5.6.24
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:23:19 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:23:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:29:50 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:50 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:29:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 20:29:52 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 20:29:52 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 19:31:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:36:32 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:36:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:37:23 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Thu, 11 Aug 2016 19:37:24 GMT
ENV OWNCLOUD_VERSION=8.2.7
# Thu, 11 Aug 2016 19:37:25 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:37:44 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:37:46 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:37:47 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:37:56 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:1a0ed20d7752971350ab581861731d7d71a6eb560b93d48382b5cc2aa07fed8b`  
		Last Modified: Wed, 10 Aug 2016 21:38:50 GMT  
		Size: 12.4 MB (12399120 bytes)
	-	`sha256:d17456fd86bcf1eb916ff4c4b4909dd6ad98736369cff4e5ee9c79e02782fc67`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 490.0 B
	-	`sha256:c8bd75b8802c8ce64c4a28486fbfb4bde4247b27f5f8363dd8a8469ac89b1e85`  
		Last Modified: Wed, 10 Aug 2016 21:38:48 GMT  
		Size: 9.3 MB (9333467 bytes)
	-	`sha256:0054f99dc6ca14454002cd76f78264c84cdfd9c57cea265ea0a6f601dab80158`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 1.8 KB (1829 bytes)
	-	`sha256:1c8ec71281514f1d63f59000b5fd9082baa8a6d34e7e591d7cd22928879a5d18`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 129.0 B
	-	`sha256:fa513925a4eb93b436ccdb48c9b0edca88237b4abdebea3245da69a6b37deaf9`  
		Last Modified: Wed, 10 Aug 2016 21:38:46 GMT  
		Size: 7.6 KB (7629 bytes)
	-	`sha256:f5e918f5eeceb98e228adf3ed45e9590823935fc6a4d203903b7633e64e2f6b7`  
		Last Modified: Thu, 11 Aug 2016 19:38:23 GMT  
		Size: 34.3 MB (34309595 bytes)
	-	`sha256:4a0645c74d2abc109131690d3f71a3c42fe544272d58e7a2151d4a4be4509977`  
		Last Modified: Thu, 11 Aug 2016 19:38:09 GMT  
		Size: 3.7 MB (3735762 bytes)
	-	`sha256:9cfa7715b90cc83e5009c512050ac4f5c46adfa52997773a68c02ca21063a543`  
		Last Modified: Thu, 11 Aug 2016 19:38:07 GMT  
		Size: 333.0 B
	-	`sha256:77fb23212070caee8cc379413904c7da38bee3cb9e17d3c039dea71c46e44bc3`  
		Last Modified: Thu, 11 Aug 2016 19:38:07 GMT  
		Size: 1.3 MB (1329833 bytes)
	-	`sha256:8340b5f91f7b51525e412f608ad5dead3fbaec7a4f1ce72f96ee1f3c816058fe`  
		Last Modified: Thu, 11 Aug 2016 19:38:18 GMT  
		Size: 30.3 MB (30321737 bytes)
	-	`sha256:1ab65c67b7ef46a28e5af70e23029f5d39f07221f1cf02a64456678eff2b41d3`  
		Last Modified: Thu, 11 Aug 2016 19:38:07 GMT  
		Size: 243.0 B

## `owncloud:9.0.4-apache`

```console
$ docker pull owncloud@sha256:a3a889676d675da3c98312eda91b9611917a7c11ce896b88436cc216fa44e34d
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.0.4-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.1 MB (231068087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e78cd630ccbd07ec738a9ca39fe211433301f035e16f534b66053e41a8ca521`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 19:40:17 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:44:21 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:44:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:44:25 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 19:45:12 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Thu, 11 Aug 2016 19:45:13 GMT
ENV OWNCLOUD_VERSION=9.0.4
# Thu, 11 Aug 2016 19:45:14 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:45:40 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:45:42 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:45:43 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:45:43 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:b486b4dba63edbb3698efdc9d49c726ee9485f492208b1c58243546e551b401e`  
		Last Modified: Thu, 11 Aug 2016 19:46:10 GMT  
		Size: 34.3 MB (34332251 bytes)
	-	`sha256:7cd3a3ec048bc1083af9b206381543bba7ba4e95ef59231092a744c329062c81`  
		Last Modified: Thu, 11 Aug 2016 19:45:59 GMT  
		Size: 3.7 MB (3735503 bytes)
	-	`sha256:50258fe8ebeff9f923454ee2d5462f93bce2af2119205c94bcf5afc0f6300b4f`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 334.0 B
	-	`sha256:e7300e935dc63b74a3ae9d06b2444580b01ddbb4164ba81ff4ed9e2ef5a17c32`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 296.0 B
	-	`sha256:e46394307f8ef729f5c0bc9b8d750811bbbc5e38d3e94536eea1be3dd4e88c44`  
		Last Modified: Thu, 11 Aug 2016 19:45:55 GMT  
		Size: 1.3 MB (1329855 bytes)
	-	`sha256:19acb871f096f1cf8e3d8b9bcd5eb781089c14ff76cc25fe0e7e301df84c8363`  
		Last Modified: Thu, 11 Aug 2016 19:46:06 GMT  
		Size: 31.1 MB (31086556 bytes)
	-	`sha256:6dadc0f2c0b9bcb7a204888c0e91adb457ca2252f2e3608b27d21ffe753376ee`  
		Last Modified: Thu, 11 Aug 2016 19:45:55 GMT  
		Size: 243.0 B

## `owncloud:9.0-apache`

```console
$ docker pull owncloud@sha256:a3a889676d675da3c98312eda91b9611917a7c11ce896b88436cc216fa44e34d
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.0-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.1 MB (231068087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e78cd630ccbd07ec738a9ca39fe211433301f035e16f534b66053e41a8ca521`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 19:40:17 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:44:21 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:44:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:44:25 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 19:45:12 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Thu, 11 Aug 2016 19:45:13 GMT
ENV OWNCLOUD_VERSION=9.0.4
# Thu, 11 Aug 2016 19:45:14 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:45:40 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:45:42 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:45:43 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:45:43 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:b486b4dba63edbb3698efdc9d49c726ee9485f492208b1c58243546e551b401e`  
		Last Modified: Thu, 11 Aug 2016 19:46:10 GMT  
		Size: 34.3 MB (34332251 bytes)
	-	`sha256:7cd3a3ec048bc1083af9b206381543bba7ba4e95ef59231092a744c329062c81`  
		Last Modified: Thu, 11 Aug 2016 19:45:59 GMT  
		Size: 3.7 MB (3735503 bytes)
	-	`sha256:50258fe8ebeff9f923454ee2d5462f93bce2af2119205c94bcf5afc0f6300b4f`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 334.0 B
	-	`sha256:e7300e935dc63b74a3ae9d06b2444580b01ddbb4164ba81ff4ed9e2ef5a17c32`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 296.0 B
	-	`sha256:e46394307f8ef729f5c0bc9b8d750811bbbc5e38d3e94536eea1be3dd4e88c44`  
		Last Modified: Thu, 11 Aug 2016 19:45:55 GMT  
		Size: 1.3 MB (1329855 bytes)
	-	`sha256:19acb871f096f1cf8e3d8b9bcd5eb781089c14ff76cc25fe0e7e301df84c8363`  
		Last Modified: Thu, 11 Aug 2016 19:46:06 GMT  
		Size: 31.1 MB (31086556 bytes)
	-	`sha256:6dadc0f2c0b9bcb7a204888c0e91adb457ca2252f2e3608b27d21ffe753376ee`  
		Last Modified: Thu, 11 Aug 2016 19:45:55 GMT  
		Size: 243.0 B

## `owncloud:9-apache`

```console
$ docker pull owncloud@sha256:a3a889676d675da3c98312eda91b9611917a7c11ce896b88436cc216fa44e34d
```

-	Platforms:
	-	linux; amd64

### `owncloud:9-apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.1 MB (231068087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e78cd630ccbd07ec738a9ca39fe211433301f035e16f534b66053e41a8ca521`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 19:40:17 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:44:21 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:44:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:44:25 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 19:45:12 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Thu, 11 Aug 2016 19:45:13 GMT
ENV OWNCLOUD_VERSION=9.0.4
# Thu, 11 Aug 2016 19:45:14 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:45:40 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:45:42 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:45:43 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:45:43 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:b486b4dba63edbb3698efdc9d49c726ee9485f492208b1c58243546e551b401e`  
		Last Modified: Thu, 11 Aug 2016 19:46:10 GMT  
		Size: 34.3 MB (34332251 bytes)
	-	`sha256:7cd3a3ec048bc1083af9b206381543bba7ba4e95ef59231092a744c329062c81`  
		Last Modified: Thu, 11 Aug 2016 19:45:59 GMT  
		Size: 3.7 MB (3735503 bytes)
	-	`sha256:50258fe8ebeff9f923454ee2d5462f93bce2af2119205c94bcf5afc0f6300b4f`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 334.0 B
	-	`sha256:e7300e935dc63b74a3ae9d06b2444580b01ddbb4164ba81ff4ed9e2ef5a17c32`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 296.0 B
	-	`sha256:e46394307f8ef729f5c0bc9b8d750811bbbc5e38d3e94536eea1be3dd4e88c44`  
		Last Modified: Thu, 11 Aug 2016 19:45:55 GMT  
		Size: 1.3 MB (1329855 bytes)
	-	`sha256:19acb871f096f1cf8e3d8b9bcd5eb781089c14ff76cc25fe0e7e301df84c8363`  
		Last Modified: Thu, 11 Aug 2016 19:46:06 GMT  
		Size: 31.1 MB (31086556 bytes)
	-	`sha256:6dadc0f2c0b9bcb7a204888c0e91adb457ca2252f2e3608b27d21ffe753376ee`  
		Last Modified: Thu, 11 Aug 2016 19:45:55 GMT  
		Size: 243.0 B

## `owncloud:apache`

```console
$ docker pull owncloud@sha256:a3a889676d675da3c98312eda91b9611917a7c11ce896b88436cc216fa44e34d
```

-	Platforms:
	-	linux; amd64

### `owncloud:apache` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.1 MB (231068087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e78cd630ccbd07ec738a9ca39fe211433301f035e16f534b66053e41a8ca521`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 19:40:17 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:44:21 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:44:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:44:25 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 19:45:12 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Thu, 11 Aug 2016 19:45:13 GMT
ENV OWNCLOUD_VERSION=9.0.4
# Thu, 11 Aug 2016 19:45:14 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:45:40 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:45:42 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:45:43 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:45:43 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:b486b4dba63edbb3698efdc9d49c726ee9485f492208b1c58243546e551b401e`  
		Last Modified: Thu, 11 Aug 2016 19:46:10 GMT  
		Size: 34.3 MB (34332251 bytes)
	-	`sha256:7cd3a3ec048bc1083af9b206381543bba7ba4e95ef59231092a744c329062c81`  
		Last Modified: Thu, 11 Aug 2016 19:45:59 GMT  
		Size: 3.7 MB (3735503 bytes)
	-	`sha256:50258fe8ebeff9f923454ee2d5462f93bce2af2119205c94bcf5afc0f6300b4f`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 334.0 B
	-	`sha256:e7300e935dc63b74a3ae9d06b2444580b01ddbb4164ba81ff4ed9e2ef5a17c32`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 296.0 B
	-	`sha256:e46394307f8ef729f5c0bc9b8d750811bbbc5e38d3e94536eea1be3dd4e88c44`  
		Last Modified: Thu, 11 Aug 2016 19:45:55 GMT  
		Size: 1.3 MB (1329855 bytes)
	-	`sha256:19acb871f096f1cf8e3d8b9bcd5eb781089c14ff76cc25fe0e7e301df84c8363`  
		Last Modified: Thu, 11 Aug 2016 19:46:06 GMT  
		Size: 31.1 MB (31086556 bytes)
	-	`sha256:6dadc0f2c0b9bcb7a204888c0e91adb457ca2252f2e3608b27d21ffe753376ee`  
		Last Modified: Thu, 11 Aug 2016 19:45:55 GMT  
		Size: 243.0 B

## `owncloud:9.0.4`

```console
$ docker pull owncloud@sha256:a3a889676d675da3c98312eda91b9611917a7c11ce896b88436cc216fa44e34d
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.0.4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.1 MB (231068087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e78cd630ccbd07ec738a9ca39fe211433301f035e16f534b66053e41a8ca521`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 19:40:17 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:44:21 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:44:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:44:25 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 19:45:12 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Thu, 11 Aug 2016 19:45:13 GMT
ENV OWNCLOUD_VERSION=9.0.4
# Thu, 11 Aug 2016 19:45:14 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:45:40 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:45:42 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:45:43 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:45:43 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:b486b4dba63edbb3698efdc9d49c726ee9485f492208b1c58243546e551b401e`  
		Last Modified: Thu, 11 Aug 2016 19:46:10 GMT  
		Size: 34.3 MB (34332251 bytes)
	-	`sha256:7cd3a3ec048bc1083af9b206381543bba7ba4e95ef59231092a744c329062c81`  
		Last Modified: Thu, 11 Aug 2016 19:45:59 GMT  
		Size: 3.7 MB (3735503 bytes)
	-	`sha256:50258fe8ebeff9f923454ee2d5462f93bce2af2119205c94bcf5afc0f6300b4f`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 334.0 B
	-	`sha256:e7300e935dc63b74a3ae9d06b2444580b01ddbb4164ba81ff4ed9e2ef5a17c32`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 296.0 B
	-	`sha256:e46394307f8ef729f5c0bc9b8d750811bbbc5e38d3e94536eea1be3dd4e88c44`  
		Last Modified: Thu, 11 Aug 2016 19:45:55 GMT  
		Size: 1.3 MB (1329855 bytes)
	-	`sha256:19acb871f096f1cf8e3d8b9bcd5eb781089c14ff76cc25fe0e7e301df84c8363`  
		Last Modified: Thu, 11 Aug 2016 19:46:06 GMT  
		Size: 31.1 MB (31086556 bytes)
	-	`sha256:6dadc0f2c0b9bcb7a204888c0e91adb457ca2252f2e3608b27d21ffe753376ee`  
		Last Modified: Thu, 11 Aug 2016 19:45:55 GMT  
		Size: 243.0 B

## `owncloud:9.0`

```console
$ docker pull owncloud@sha256:a3a889676d675da3c98312eda91b9611917a7c11ce896b88436cc216fa44e34d
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.1 MB (231068087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e78cd630ccbd07ec738a9ca39fe211433301f035e16f534b66053e41a8ca521`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 19:40:17 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:44:21 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:44:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:44:25 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 19:45:12 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Thu, 11 Aug 2016 19:45:13 GMT
ENV OWNCLOUD_VERSION=9.0.4
# Thu, 11 Aug 2016 19:45:14 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:45:40 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:45:42 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:45:43 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:45:43 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:b486b4dba63edbb3698efdc9d49c726ee9485f492208b1c58243546e551b401e`  
		Last Modified: Thu, 11 Aug 2016 19:46:10 GMT  
		Size: 34.3 MB (34332251 bytes)
	-	`sha256:7cd3a3ec048bc1083af9b206381543bba7ba4e95ef59231092a744c329062c81`  
		Last Modified: Thu, 11 Aug 2016 19:45:59 GMT  
		Size: 3.7 MB (3735503 bytes)
	-	`sha256:50258fe8ebeff9f923454ee2d5462f93bce2af2119205c94bcf5afc0f6300b4f`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 334.0 B
	-	`sha256:e7300e935dc63b74a3ae9d06b2444580b01ddbb4164ba81ff4ed9e2ef5a17c32`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 296.0 B
	-	`sha256:e46394307f8ef729f5c0bc9b8d750811bbbc5e38d3e94536eea1be3dd4e88c44`  
		Last Modified: Thu, 11 Aug 2016 19:45:55 GMT  
		Size: 1.3 MB (1329855 bytes)
	-	`sha256:19acb871f096f1cf8e3d8b9bcd5eb781089c14ff76cc25fe0e7e301df84c8363`  
		Last Modified: Thu, 11 Aug 2016 19:46:06 GMT  
		Size: 31.1 MB (31086556 bytes)
	-	`sha256:6dadc0f2c0b9bcb7a204888c0e91adb457ca2252f2e3608b27d21ffe753376ee`  
		Last Modified: Thu, 11 Aug 2016 19:45:55 GMT  
		Size: 243.0 B

## `owncloud:9`

```console
$ docker pull owncloud@sha256:a3a889676d675da3c98312eda91b9611917a7c11ce896b88436cc216fa44e34d
```

-	Platforms:
	-	linux; amd64

### `owncloud:9` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.1 MB (231068087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e78cd630ccbd07ec738a9ca39fe211433301f035e16f534b66053e41a8ca521`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 19:40:17 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:44:21 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:44:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:44:25 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 19:45:12 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Thu, 11 Aug 2016 19:45:13 GMT
ENV OWNCLOUD_VERSION=9.0.4
# Thu, 11 Aug 2016 19:45:14 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:45:40 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:45:42 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:45:43 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:45:43 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:b486b4dba63edbb3698efdc9d49c726ee9485f492208b1c58243546e551b401e`  
		Last Modified: Thu, 11 Aug 2016 19:46:10 GMT  
		Size: 34.3 MB (34332251 bytes)
	-	`sha256:7cd3a3ec048bc1083af9b206381543bba7ba4e95ef59231092a744c329062c81`  
		Last Modified: Thu, 11 Aug 2016 19:45:59 GMT  
		Size: 3.7 MB (3735503 bytes)
	-	`sha256:50258fe8ebeff9f923454ee2d5462f93bce2af2119205c94bcf5afc0f6300b4f`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 334.0 B
	-	`sha256:e7300e935dc63b74a3ae9d06b2444580b01ddbb4164ba81ff4ed9e2ef5a17c32`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 296.0 B
	-	`sha256:e46394307f8ef729f5c0bc9b8d750811bbbc5e38d3e94536eea1be3dd4e88c44`  
		Last Modified: Thu, 11 Aug 2016 19:45:55 GMT  
		Size: 1.3 MB (1329855 bytes)
	-	`sha256:19acb871f096f1cf8e3d8b9bcd5eb781089c14ff76cc25fe0e7e301df84c8363`  
		Last Modified: Thu, 11 Aug 2016 19:46:06 GMT  
		Size: 31.1 MB (31086556 bytes)
	-	`sha256:6dadc0f2c0b9bcb7a204888c0e91adb457ca2252f2e3608b27d21ffe753376ee`  
		Last Modified: Thu, 11 Aug 2016 19:45:55 GMT  
		Size: 243.0 B

## `owncloud:latest`

```console
$ docker pull owncloud@sha256:a3a889676d675da3c98312eda91b9611917a7c11ce896b88436cc216fa44e34d
```

-	Platforms:
	-	linux; amd64

### `owncloud:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.1 MB (231068087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e78cd630ccbd07ec738a9ca39fe211433301f035e16f534b66053e41a8ca521`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:49:43 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:49:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 29 Jul 2016 20:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 10 Aug 2016 19:34:50 GMT
RUN set -ex 		&& sed -r 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 10 Aug 2016 19:34:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 10 Aug 2016 19:34:53 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 10 Aug 2016 19:34:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 10 Aug 2016 19:34:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 10 Aug 2016 19:34:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 10 Aug 2016 20:17:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 Aug 2016 20:17:04 GMT
ENV PHP_VERSION=5.6.24
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Wed, 10 Aug 2016 20:17:05 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:18:08 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:18:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:23:14 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:14 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/
# Wed, 10 Aug 2016 20:23:15 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:23:15 GMT
EXPOSE 80/tcp
# Wed, 10 Aug 2016 20:23:16 GMT
CMD ["apache2-foreground"]
# Thu, 11 Aug 2016 19:40:17 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:44:21 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:44:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:44:25 GMT
RUN a2enmod rewrite
# Thu, 11 Aug 2016 19:45:12 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Thu, 11 Aug 2016 19:45:13 GMT
ENV OWNCLOUD_VERSION=9.0.4
# Thu, 11 Aug 2016 19:45:14 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:45:40 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:45:42 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:45:43 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:45:43 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:b4ae91aad5222bbe7ca67b9c2b69e54fd29989bea1eec3d8a9aca56b011c303c`  
		Last Modified: Fri, 29 Jul 2016 22:49:17 GMT  
		Size: 2.8 MB (2846544 bytes)
	-	`sha256:66e1c1a53c958663cb6a8d19f5993b36bfaf8e334d476c5ed30d6766c8db1f9a`  
		Last Modified: Wed, 10 Aug 2016 21:31:30 GMT  
		Size: 270.0 B
	-	`sha256:5d1f306a891255c05b40e49a8d1dd76efb713792e0aa200386ab0e269faa49dc`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 432.0 B
	-	`sha256:37733078a51e3cf33ba985f69be1dda278d529bb87184a83c71037cade3170b4`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 223.0 B
	-	`sha256:c5351b4d6bee8cc2fc09f2af750fa4627dfdd37b44b651f3f3289260783d3b38`  
		Last Modified: Wed, 10 Aug 2016 21:31:28 GMT  
		Size: 475.0 B
	-	`sha256:68fab1fd02dce6a758d7907eaf173747d5504e714bc9dcf77bc0086bb8f98420`  
		Last Modified: Wed, 10 Aug 2016 21:38:00 GMT  
		Size: 12.4 MB (12399124 bytes)
	-	`sha256:d63c862a4e8a8fe6642f7954b97624cd307b5b913f999697835d9dede0674595`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 492.0 B
	-	`sha256:a1f41798510b1dfa029f4cd846d723cca3566637cceedc3aba17cf117605e4fe`  
		Last Modified: Wed, 10 Aug 2016 21:38:07 GMT  
		Size: 16.4 MB (16385973 bytes)
	-	`sha256:a1cb79de526642a0956598b60e75c5c3d73693e4a6e41aa4666c3377d84fdb07`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 1.8 KB (1835 bytes)
	-	`sha256:0ad59c7db086709fbfe994d1ed28d4818952b4981147090c9dd27c00c1665f13`  
		Last Modified: Wed, 10 Aug 2016 21:37:59 GMT  
		Size: 583.0 B
	-	`sha256:b486b4dba63edbb3698efdc9d49c726ee9485f492208b1c58243546e551b401e`  
		Last Modified: Thu, 11 Aug 2016 19:46:10 GMT  
		Size: 34.3 MB (34332251 bytes)
	-	`sha256:7cd3a3ec048bc1083af9b206381543bba7ba4e95ef59231092a744c329062c81`  
		Last Modified: Thu, 11 Aug 2016 19:45:59 GMT  
		Size: 3.7 MB (3735503 bytes)
	-	`sha256:50258fe8ebeff9f923454ee2d5462f93bce2af2119205c94bcf5afc0f6300b4f`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 334.0 B
	-	`sha256:e7300e935dc63b74a3ae9d06b2444580b01ddbb4164ba81ff4ed9e2ef5a17c32`  
		Last Modified: Thu, 11 Aug 2016 19:45:54 GMT  
		Size: 296.0 B
	-	`sha256:e46394307f8ef729f5c0bc9b8d750811bbbc5e38d3e94536eea1be3dd4e88c44`  
		Last Modified: Thu, 11 Aug 2016 19:45:55 GMT  
		Size: 1.3 MB (1329855 bytes)
	-	`sha256:19acb871f096f1cf8e3d8b9bcd5eb781089c14ff76cc25fe0e7e301df84c8363`  
		Last Modified: Thu, 11 Aug 2016 19:46:06 GMT  
		Size: 31.1 MB (31086556 bytes)
	-	`sha256:6dadc0f2c0b9bcb7a204888c0e91adb457ca2252f2e3608b27d21ffe753376ee`  
		Last Modified: Thu, 11 Aug 2016 19:45:55 GMT  
		Size: 243.0 B

## `owncloud:9.0.4-fpm`

```console
$ docker pull owncloud@sha256:74d1be8039c346dafe3081713c2317e10e6b456993c0c0e8d39c5430efac36dc
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.0.4-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.2 MB (221152076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a54d9f2e8a999bd9b8a4437e64105985bcf11efbd6e409353f794137e1ff9d9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:55:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 29 Jul 2016 21:39:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_VERSION=5.6.24
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:23:19 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:23:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:29:50 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:50 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:29:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 20:29:52 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 20:29:52 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 19:31:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:36:32 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:36:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:37:23 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Thu, 11 Aug 2016 19:47:51 GMT
ENV OWNCLOUD_VERSION=9.0.4
# Thu, 11 Aug 2016 19:47:51 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:48:19 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:48:26 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:48:27 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:48:28 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:1a0ed20d7752971350ab581861731d7d71a6eb560b93d48382b5cc2aa07fed8b`  
		Last Modified: Wed, 10 Aug 2016 21:38:50 GMT  
		Size: 12.4 MB (12399120 bytes)
	-	`sha256:d17456fd86bcf1eb916ff4c4b4909dd6ad98736369cff4e5ee9c79e02782fc67`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 490.0 B
	-	`sha256:c8bd75b8802c8ce64c4a28486fbfb4bde4247b27f5f8363dd8a8469ac89b1e85`  
		Last Modified: Wed, 10 Aug 2016 21:38:48 GMT  
		Size: 9.3 MB (9333467 bytes)
	-	`sha256:0054f99dc6ca14454002cd76f78264c84cdfd9c57cea265ea0a6f601dab80158`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 1.8 KB (1829 bytes)
	-	`sha256:1c8ec71281514f1d63f59000b5fd9082baa8a6d34e7e591d7cd22928879a5d18`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 129.0 B
	-	`sha256:fa513925a4eb93b436ccdb48c9b0edca88237b4abdebea3245da69a6b37deaf9`  
		Last Modified: Wed, 10 Aug 2016 21:38:46 GMT  
		Size: 7.6 KB (7629 bytes)
	-	`sha256:f5e918f5eeceb98e228adf3ed45e9590823935fc6a4d203903b7633e64e2f6b7`  
		Last Modified: Thu, 11 Aug 2016 19:38:23 GMT  
		Size: 34.3 MB (34309595 bytes)
	-	`sha256:4a0645c74d2abc109131690d3f71a3c42fe544272d58e7a2151d4a4be4509977`  
		Last Modified: Thu, 11 Aug 2016 19:38:09 GMT  
		Size: 3.7 MB (3735762 bytes)
	-	`sha256:9cfa7715b90cc83e5009c512050ac4f5c46adfa52997773a68c02ca21063a543`  
		Last Modified: Thu, 11 Aug 2016 19:38:07 GMT  
		Size: 333.0 B
	-	`sha256:77fb23212070caee8cc379413904c7da38bee3cb9e17d3c039dea71c46e44bc3`  
		Last Modified: Thu, 11 Aug 2016 19:38:07 GMT  
		Size: 1.3 MB (1329833 bytes)
	-	`sha256:15adee7f1f22ba431fdf3e4d228fcba6c6c45d30d019441b533468dcbc599f49`  
		Last Modified: Thu, 11 Aug 2016 19:48:50 GMT  
		Size: 31.1 MB (31086547 bytes)
	-	`sha256:e65580133a82c5c7dc3391d2ade765c7b5542329a8c8e7eebf059ba4886ab293`  
		Last Modified: Thu, 11 Aug 2016 19:48:40 GMT  
		Size: 244.0 B

## `owncloud:9.0-fpm`

```console
$ docker pull owncloud@sha256:74d1be8039c346dafe3081713c2317e10e6b456993c0c0e8d39c5430efac36dc
```

-	Platforms:
	-	linux; amd64

### `owncloud:9.0-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.2 MB (221152076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a54d9f2e8a999bd9b8a4437e64105985bcf11efbd6e409353f794137e1ff9d9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:55:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 29 Jul 2016 21:39:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_VERSION=5.6.24
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:23:19 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:23:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:29:50 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:50 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:29:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 20:29:52 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 20:29:52 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 19:31:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:36:32 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:36:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:37:23 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Thu, 11 Aug 2016 19:47:51 GMT
ENV OWNCLOUD_VERSION=9.0.4
# Thu, 11 Aug 2016 19:47:51 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:48:19 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:48:26 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:48:27 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:48:28 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:1a0ed20d7752971350ab581861731d7d71a6eb560b93d48382b5cc2aa07fed8b`  
		Last Modified: Wed, 10 Aug 2016 21:38:50 GMT  
		Size: 12.4 MB (12399120 bytes)
	-	`sha256:d17456fd86bcf1eb916ff4c4b4909dd6ad98736369cff4e5ee9c79e02782fc67`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 490.0 B
	-	`sha256:c8bd75b8802c8ce64c4a28486fbfb4bde4247b27f5f8363dd8a8469ac89b1e85`  
		Last Modified: Wed, 10 Aug 2016 21:38:48 GMT  
		Size: 9.3 MB (9333467 bytes)
	-	`sha256:0054f99dc6ca14454002cd76f78264c84cdfd9c57cea265ea0a6f601dab80158`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 1.8 KB (1829 bytes)
	-	`sha256:1c8ec71281514f1d63f59000b5fd9082baa8a6d34e7e591d7cd22928879a5d18`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 129.0 B
	-	`sha256:fa513925a4eb93b436ccdb48c9b0edca88237b4abdebea3245da69a6b37deaf9`  
		Last Modified: Wed, 10 Aug 2016 21:38:46 GMT  
		Size: 7.6 KB (7629 bytes)
	-	`sha256:f5e918f5eeceb98e228adf3ed45e9590823935fc6a4d203903b7633e64e2f6b7`  
		Last Modified: Thu, 11 Aug 2016 19:38:23 GMT  
		Size: 34.3 MB (34309595 bytes)
	-	`sha256:4a0645c74d2abc109131690d3f71a3c42fe544272d58e7a2151d4a4be4509977`  
		Last Modified: Thu, 11 Aug 2016 19:38:09 GMT  
		Size: 3.7 MB (3735762 bytes)
	-	`sha256:9cfa7715b90cc83e5009c512050ac4f5c46adfa52997773a68c02ca21063a543`  
		Last Modified: Thu, 11 Aug 2016 19:38:07 GMT  
		Size: 333.0 B
	-	`sha256:77fb23212070caee8cc379413904c7da38bee3cb9e17d3c039dea71c46e44bc3`  
		Last Modified: Thu, 11 Aug 2016 19:38:07 GMT  
		Size: 1.3 MB (1329833 bytes)
	-	`sha256:15adee7f1f22ba431fdf3e4d228fcba6c6c45d30d019441b533468dcbc599f49`  
		Last Modified: Thu, 11 Aug 2016 19:48:50 GMT  
		Size: 31.1 MB (31086547 bytes)
	-	`sha256:e65580133a82c5c7dc3391d2ade765c7b5542329a8c8e7eebf059ba4886ab293`  
		Last Modified: Thu, 11 Aug 2016 19:48:40 GMT  
		Size: 244.0 B

## `owncloud:9-fpm`

```console
$ docker pull owncloud@sha256:74d1be8039c346dafe3081713c2317e10e6b456993c0c0e8d39c5430efac36dc
```

-	Platforms:
	-	linux; amd64

### `owncloud:9-fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.2 MB (221152076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a54d9f2e8a999bd9b8a4437e64105985bcf11efbd6e409353f794137e1ff9d9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:55:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 29 Jul 2016 21:39:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_VERSION=5.6.24
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:23:19 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:23:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:29:50 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:50 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:29:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 20:29:52 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 20:29:52 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 19:31:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:36:32 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:36:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:37:23 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Thu, 11 Aug 2016 19:47:51 GMT
ENV OWNCLOUD_VERSION=9.0.4
# Thu, 11 Aug 2016 19:47:51 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:48:19 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:48:26 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:48:27 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:48:28 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:1a0ed20d7752971350ab581861731d7d71a6eb560b93d48382b5cc2aa07fed8b`  
		Last Modified: Wed, 10 Aug 2016 21:38:50 GMT  
		Size: 12.4 MB (12399120 bytes)
	-	`sha256:d17456fd86bcf1eb916ff4c4b4909dd6ad98736369cff4e5ee9c79e02782fc67`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 490.0 B
	-	`sha256:c8bd75b8802c8ce64c4a28486fbfb4bde4247b27f5f8363dd8a8469ac89b1e85`  
		Last Modified: Wed, 10 Aug 2016 21:38:48 GMT  
		Size: 9.3 MB (9333467 bytes)
	-	`sha256:0054f99dc6ca14454002cd76f78264c84cdfd9c57cea265ea0a6f601dab80158`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 1.8 KB (1829 bytes)
	-	`sha256:1c8ec71281514f1d63f59000b5fd9082baa8a6d34e7e591d7cd22928879a5d18`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 129.0 B
	-	`sha256:fa513925a4eb93b436ccdb48c9b0edca88237b4abdebea3245da69a6b37deaf9`  
		Last Modified: Wed, 10 Aug 2016 21:38:46 GMT  
		Size: 7.6 KB (7629 bytes)
	-	`sha256:f5e918f5eeceb98e228adf3ed45e9590823935fc6a4d203903b7633e64e2f6b7`  
		Last Modified: Thu, 11 Aug 2016 19:38:23 GMT  
		Size: 34.3 MB (34309595 bytes)
	-	`sha256:4a0645c74d2abc109131690d3f71a3c42fe544272d58e7a2151d4a4be4509977`  
		Last Modified: Thu, 11 Aug 2016 19:38:09 GMT  
		Size: 3.7 MB (3735762 bytes)
	-	`sha256:9cfa7715b90cc83e5009c512050ac4f5c46adfa52997773a68c02ca21063a543`  
		Last Modified: Thu, 11 Aug 2016 19:38:07 GMT  
		Size: 333.0 B
	-	`sha256:77fb23212070caee8cc379413904c7da38bee3cb9e17d3c039dea71c46e44bc3`  
		Last Modified: Thu, 11 Aug 2016 19:38:07 GMT  
		Size: 1.3 MB (1329833 bytes)
	-	`sha256:15adee7f1f22ba431fdf3e4d228fcba6c6c45d30d019441b533468dcbc599f49`  
		Last Modified: Thu, 11 Aug 2016 19:48:50 GMT  
		Size: 31.1 MB (31086547 bytes)
	-	`sha256:e65580133a82c5c7dc3391d2ade765c7b5542329a8c8e7eebf059ba4886ab293`  
		Last Modified: Thu, 11 Aug 2016 19:48:40 GMT  
		Size: 244.0 B

## `owncloud:fpm`

```console
$ docker pull owncloud@sha256:74d1be8039c346dafe3081713c2317e10e6b456993c0c0e8d39c5430efac36dc
```

-	Platforms:
	-	linux; amd64

### `owncloud:fpm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.2 MB (221152076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a54d9f2e8a999bd9b8a4437e64105985bcf11efbd6e409353f794137e1ff9d9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:55:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 29 Jul 2016 21:39:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_VERSION=5.6.24
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:23:19 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:23:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:29:50 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:50 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:29:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 20:29:52 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 20:29:52 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 19:31:58 GMT
RUN apt-get update && apt-get install -y 	bzip2 	libcurl4-openssl-dev 	libfreetype6-dev 	libicu-dev 	libjpeg-dev 	libldap2-dev 	libmcrypt-dev 	libmemcached-dev 	libpng12-dev 	libpq-dev 	libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:36:32 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 	&& docker-php-ext-install exif gd intl ldap mbstring mcrypt mysql opcache pdo_mysql pdo_pgsql pgsql zip
# Thu, 11 Aug 2016 19:36:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 Aug 2016 19:37:23 GMT
RUN set -ex 	&& pecl install APCu-4.0.10 	&& pecl install memcached-2.2.0 	&& pecl install redis-2.2.8 	&& docker-php-ext-enable apcu memcached redis
# Thu, 11 Aug 2016 19:47:51 GMT
ENV OWNCLOUD_VERSION=9.0.4
# Thu, 11 Aug 2016 19:47:51 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 19:48:19 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Thu, 11 Aug 2016 19:48:26 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /entrypoint.sh
# Thu, 11 Aug 2016 19:48:27 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 19:48:28 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:1a0ed20d7752971350ab581861731d7d71a6eb560b93d48382b5cc2aa07fed8b`  
		Last Modified: Wed, 10 Aug 2016 21:38:50 GMT  
		Size: 12.4 MB (12399120 bytes)
	-	`sha256:d17456fd86bcf1eb916ff4c4b4909dd6ad98736369cff4e5ee9c79e02782fc67`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 490.0 B
	-	`sha256:c8bd75b8802c8ce64c4a28486fbfb4bde4247b27f5f8363dd8a8469ac89b1e85`  
		Last Modified: Wed, 10 Aug 2016 21:38:48 GMT  
		Size: 9.3 MB (9333467 bytes)
	-	`sha256:0054f99dc6ca14454002cd76f78264c84cdfd9c57cea265ea0a6f601dab80158`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 1.8 KB (1829 bytes)
	-	`sha256:1c8ec71281514f1d63f59000b5fd9082baa8a6d34e7e591d7cd22928879a5d18`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 129.0 B
	-	`sha256:fa513925a4eb93b436ccdb48c9b0edca88237b4abdebea3245da69a6b37deaf9`  
		Last Modified: Wed, 10 Aug 2016 21:38:46 GMT  
		Size: 7.6 KB (7629 bytes)
	-	`sha256:f5e918f5eeceb98e228adf3ed45e9590823935fc6a4d203903b7633e64e2f6b7`  
		Last Modified: Thu, 11 Aug 2016 19:38:23 GMT  
		Size: 34.3 MB (34309595 bytes)
	-	`sha256:4a0645c74d2abc109131690d3f71a3c42fe544272d58e7a2151d4a4be4509977`  
		Last Modified: Thu, 11 Aug 2016 19:38:09 GMT  
		Size: 3.7 MB (3735762 bytes)
	-	`sha256:9cfa7715b90cc83e5009c512050ac4f5c46adfa52997773a68c02ca21063a543`  
		Last Modified: Thu, 11 Aug 2016 19:38:07 GMT  
		Size: 333.0 B
	-	`sha256:77fb23212070caee8cc379413904c7da38bee3cb9e17d3c039dea71c46e44bc3`  
		Last Modified: Thu, 11 Aug 2016 19:38:07 GMT  
		Size: 1.3 MB (1329833 bytes)
	-	`sha256:15adee7f1f22ba431fdf3e4d228fcba6c6c45d30d019441b533468dcbc599f49`  
		Last Modified: Thu, 11 Aug 2016 19:48:50 GMT  
		Size: 31.1 MB (31086547 bytes)
	-	`sha256:e65580133a82c5c7dc3391d2ade765c7b5542329a8c8e7eebf059ba4886ab293`  
		Last Modified: Thu, 11 Aug 2016 19:48:40 GMT  
		Size: 244.0 B
