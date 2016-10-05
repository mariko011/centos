<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `drupal`

-	[`drupal:8.2.0-apache`](#drupal820-apache)
-	[`drupal:8.2-apache`](#drupal82-apache)
-	[`drupal:8-apache`](#drupal8-apache)
-	[`drupal:apache`](#drupalapache)
-	[`drupal:8.2.0`](#drupal820)
-	[`drupal:8.2`](#drupal82)
-	[`drupal:8`](#drupal8)
-	[`drupal:latest`](#drupallatest)
-	[`drupal:8.2.0-fpm`](#drupal820-fpm)
-	[`drupal:8.2-fpm`](#drupal82-fpm)
-	[`drupal:8-fpm`](#drupal8-fpm)
-	[`drupal:fpm`](#drupalfpm)
-	[`drupal:8.1.10-apache`](#drupal8110-apache)
-	[`drupal:8.1-apache`](#drupal81-apache)
-	[`drupal:8.1.10`](#drupal8110)
-	[`drupal:8.1`](#drupal81)
-	[`drupal:8.1.10-fpm`](#drupal8110-fpm)
-	[`drupal:8.1-fpm`](#drupal81-fpm)
-	[`drupal:7.50-apache`](#drupal750-apache)
-	[`drupal:7-apache`](#drupal7-apache)
-	[`drupal:7.50`](#drupal750)
-	[`drupal:7`](#drupal7)
-	[`drupal:7.50-fpm`](#drupal750-fpm)
-	[`drupal:7-fpm`](#drupal7-fpm)

## `drupal:8.2.0-apache`

```console
$ docker pull drupal@sha256:ef8db0a7d92688b88107edf7151991e9e7b3d415c93ab18b166e73935ea57644
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.0-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (185001877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90a0b3a86b96100398f9e5902f5a1cae8cac2d7f324a84a575baa51f8c21ff77`
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
# Fri, 23 Sep 2016 21:41:20 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_VERSION=7.0.11
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 23 Sep 2016 21:41:21 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 23 Sep 2016 21:41:24 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:41:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:47 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:43:48 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:43:50 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 21:43:50 GMT
CMD ["apache2-foreground"]
# Fri, 23 Sep 2016 23:05:45 GMT
RUN a2enmod rewrite
# Fri, 23 Sep 2016 23:09:47 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Fri, 23 Sep 2016 23:09:48 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 23 Sep 2016 23:09:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 23:11:29 GMT
ENV DRUPAL_VERSION=8.2.0-rc2
# Fri, 23 Sep 2016 23:11:30 GMT
ENV DRUPAL_MD5=e6e7d9bb669fd82a8dd730ef0e47377d
# Fri, 23 Sep 2016 23:11:36 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:6751f3f725f2b13a4cc86f06befba305c5e06ac6687111ac906a812a9128cec4`  
		Last Modified: Fri, 23 Sep 2016 21:44:02 GMT  
		Size: 12.3 MB (12262929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6758e49a828ac368d4f8a87cab4e81959cf36b7ea4d85e711756b9c3a3e42eff`  
		Last Modified: Fri, 23 Sep 2016 21:43:57 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42fa526044804663807981a103c25ef719d29733d46f37f44a54e55405ddf9a`  
		Last Modified: Fri, 23 Sep 2016 21:44:04 GMT  
		Size: 19.7 MB (19680026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c6727862495c0ae0362678181119f50a81a62464dd278e2d29e5aad92edbf9`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81e8d8f9f0b619a09fac6c6a5e1d2fad2020762aa01b15a25d4b62db44d6b7d`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e7f36f51dcc6309cedd716d60937de95b90bbdfddb4804863be44c26a95317`  
		Last Modified: Fri, 23 Sep 2016 23:11:57 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cffc31d869ce7833de716b9b82841e66b7c65a30b67ced73ecfd423ff0af2f80`  
		Last Modified: Fri, 23 Sep 2016 23:13:17 GMT  
		Size: 8.4 MB (8429999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810cc96bbf9b1b99ea1e433120dead03e0e81565033605bad8fdbcdc1d2194dc`  
		Last Modified: Fri, 23 Sep 2016 23:13:13 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3d8776c43e49da955bf657146251351c2ef5c13c6e1813135d67e0e7023a92`  
		Last Modified: Fri, 23 Sep 2016 23:15:43 GMT  
		Size: 12.8 MB (12827241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2-apache`

```console
$ docker pull drupal@sha256:ef8db0a7d92688b88107edf7151991e9e7b3d415c93ab18b166e73935ea57644
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (185001877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90a0b3a86b96100398f9e5902f5a1cae8cac2d7f324a84a575baa51f8c21ff77`
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
# Fri, 23 Sep 2016 21:41:20 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_VERSION=7.0.11
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 23 Sep 2016 21:41:21 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 23 Sep 2016 21:41:24 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:41:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:47 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:43:48 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:43:50 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 21:43:50 GMT
CMD ["apache2-foreground"]
# Fri, 23 Sep 2016 23:05:45 GMT
RUN a2enmod rewrite
# Fri, 23 Sep 2016 23:09:47 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Fri, 23 Sep 2016 23:09:48 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 23 Sep 2016 23:09:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 23:11:29 GMT
ENV DRUPAL_VERSION=8.2.0-rc2
# Fri, 23 Sep 2016 23:11:30 GMT
ENV DRUPAL_MD5=e6e7d9bb669fd82a8dd730ef0e47377d
# Fri, 23 Sep 2016 23:11:36 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:6751f3f725f2b13a4cc86f06befba305c5e06ac6687111ac906a812a9128cec4`  
		Last Modified: Fri, 23 Sep 2016 21:44:02 GMT  
		Size: 12.3 MB (12262929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6758e49a828ac368d4f8a87cab4e81959cf36b7ea4d85e711756b9c3a3e42eff`  
		Last Modified: Fri, 23 Sep 2016 21:43:57 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42fa526044804663807981a103c25ef719d29733d46f37f44a54e55405ddf9a`  
		Last Modified: Fri, 23 Sep 2016 21:44:04 GMT  
		Size: 19.7 MB (19680026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c6727862495c0ae0362678181119f50a81a62464dd278e2d29e5aad92edbf9`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81e8d8f9f0b619a09fac6c6a5e1d2fad2020762aa01b15a25d4b62db44d6b7d`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e7f36f51dcc6309cedd716d60937de95b90bbdfddb4804863be44c26a95317`  
		Last Modified: Fri, 23 Sep 2016 23:11:57 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cffc31d869ce7833de716b9b82841e66b7c65a30b67ced73ecfd423ff0af2f80`  
		Last Modified: Fri, 23 Sep 2016 23:13:17 GMT  
		Size: 8.4 MB (8429999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810cc96bbf9b1b99ea1e433120dead03e0e81565033605bad8fdbcdc1d2194dc`  
		Last Modified: Fri, 23 Sep 2016 23:13:13 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3d8776c43e49da955bf657146251351c2ef5c13c6e1813135d67e0e7023a92`  
		Last Modified: Fri, 23 Sep 2016 23:15:43 GMT  
		Size: 12.8 MB (12827241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8-apache`

```console
$ docker pull drupal@sha256:a5137c4910969949bb4ed49980b57faa0c0265502a2a9558ad8bb3d046ae9544
```

-	Platforms:
	-	linux; amd64

### `drupal:8-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.8 MB (184790544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d00417847df63fc0105c3b1b1168f0da2892987b9e95e5f8fa3263d390336e12`
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
# Fri, 23 Sep 2016 21:41:20 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_VERSION=7.0.11
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 23 Sep 2016 21:41:21 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 23 Sep 2016 21:41:24 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:41:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:47 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:43:48 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:43:50 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 21:43:50 GMT
CMD ["apache2-foreground"]
# Fri, 23 Sep 2016 23:05:45 GMT
RUN a2enmod rewrite
# Fri, 23 Sep 2016 23:09:47 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Fri, 23 Sep 2016 23:09:48 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 23 Sep 2016 23:09:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 23:09:49 GMT
ENV DRUPAL_VERSION=8.1.10
# Fri, 23 Sep 2016 23:09:49 GMT
ENV DRUPAL_MD5=ce373a1a7a075ff9035b1c95f54170a4
# Fri, 23 Sep 2016 23:09:56 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:6751f3f725f2b13a4cc86f06befba305c5e06ac6687111ac906a812a9128cec4`  
		Last Modified: Fri, 23 Sep 2016 21:44:02 GMT  
		Size: 12.3 MB (12262929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6758e49a828ac368d4f8a87cab4e81959cf36b7ea4d85e711756b9c3a3e42eff`  
		Last Modified: Fri, 23 Sep 2016 21:43:57 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42fa526044804663807981a103c25ef719d29733d46f37f44a54e55405ddf9a`  
		Last Modified: Fri, 23 Sep 2016 21:44:04 GMT  
		Size: 19.7 MB (19680026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c6727862495c0ae0362678181119f50a81a62464dd278e2d29e5aad92edbf9`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81e8d8f9f0b619a09fac6c6a5e1d2fad2020762aa01b15a25d4b62db44d6b7d`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e7f36f51dcc6309cedd716d60937de95b90bbdfddb4804863be44c26a95317`  
		Last Modified: Fri, 23 Sep 2016 23:11:57 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cffc31d869ce7833de716b9b82841e66b7c65a30b67ced73ecfd423ff0af2f80`  
		Last Modified: Fri, 23 Sep 2016 23:13:17 GMT  
		Size: 8.4 MB (8429999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810cc96bbf9b1b99ea1e433120dead03e0e81565033605bad8fdbcdc1d2194dc`  
		Last Modified: Fri, 23 Sep 2016 23:13:13 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b74625e2bdd1ef6afd58b6f3d5dd7c2d1b184ceb0bb917ec634879876a268d`  
		Last Modified: Fri, 23 Sep 2016 23:13:22 GMT  
		Size: 12.6 MB (12615908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:apache`

```console
$ docker pull drupal@sha256:a5137c4910969949bb4ed49980b57faa0c0265502a2a9558ad8bb3d046ae9544
```

-	Platforms:
	-	linux; amd64

### `drupal:apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.8 MB (184790544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d00417847df63fc0105c3b1b1168f0da2892987b9e95e5f8fa3263d390336e12`
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
# Fri, 23 Sep 2016 21:41:20 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_VERSION=7.0.11
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 23 Sep 2016 21:41:21 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 23 Sep 2016 21:41:24 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:41:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:47 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:43:48 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:43:50 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 21:43:50 GMT
CMD ["apache2-foreground"]
# Fri, 23 Sep 2016 23:05:45 GMT
RUN a2enmod rewrite
# Fri, 23 Sep 2016 23:09:47 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Fri, 23 Sep 2016 23:09:48 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 23 Sep 2016 23:09:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 23:09:49 GMT
ENV DRUPAL_VERSION=8.1.10
# Fri, 23 Sep 2016 23:09:49 GMT
ENV DRUPAL_MD5=ce373a1a7a075ff9035b1c95f54170a4
# Fri, 23 Sep 2016 23:09:56 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:6751f3f725f2b13a4cc86f06befba305c5e06ac6687111ac906a812a9128cec4`  
		Last Modified: Fri, 23 Sep 2016 21:44:02 GMT  
		Size: 12.3 MB (12262929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6758e49a828ac368d4f8a87cab4e81959cf36b7ea4d85e711756b9c3a3e42eff`  
		Last Modified: Fri, 23 Sep 2016 21:43:57 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42fa526044804663807981a103c25ef719d29733d46f37f44a54e55405ddf9a`  
		Last Modified: Fri, 23 Sep 2016 21:44:04 GMT  
		Size: 19.7 MB (19680026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c6727862495c0ae0362678181119f50a81a62464dd278e2d29e5aad92edbf9`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81e8d8f9f0b619a09fac6c6a5e1d2fad2020762aa01b15a25d4b62db44d6b7d`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e7f36f51dcc6309cedd716d60937de95b90bbdfddb4804863be44c26a95317`  
		Last Modified: Fri, 23 Sep 2016 23:11:57 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cffc31d869ce7833de716b9b82841e66b7c65a30b67ced73ecfd423ff0af2f80`  
		Last Modified: Fri, 23 Sep 2016 23:13:17 GMT  
		Size: 8.4 MB (8429999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810cc96bbf9b1b99ea1e433120dead03e0e81565033605bad8fdbcdc1d2194dc`  
		Last Modified: Fri, 23 Sep 2016 23:13:13 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b74625e2bdd1ef6afd58b6f3d5dd7c2d1b184ceb0bb917ec634879876a268d`  
		Last Modified: Fri, 23 Sep 2016 23:13:22 GMT  
		Size: 12.6 MB (12615908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2.0`

```console
$ docker pull drupal@sha256:ef8db0a7d92688b88107edf7151991e9e7b3d415c93ab18b166e73935ea57644
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (185001877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90a0b3a86b96100398f9e5902f5a1cae8cac2d7f324a84a575baa51f8c21ff77`
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
# Fri, 23 Sep 2016 21:41:20 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_VERSION=7.0.11
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 23 Sep 2016 21:41:21 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 23 Sep 2016 21:41:24 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:41:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:47 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:43:48 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:43:50 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 21:43:50 GMT
CMD ["apache2-foreground"]
# Fri, 23 Sep 2016 23:05:45 GMT
RUN a2enmod rewrite
# Fri, 23 Sep 2016 23:09:47 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Fri, 23 Sep 2016 23:09:48 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 23 Sep 2016 23:09:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 23:11:29 GMT
ENV DRUPAL_VERSION=8.2.0-rc2
# Fri, 23 Sep 2016 23:11:30 GMT
ENV DRUPAL_MD5=e6e7d9bb669fd82a8dd730ef0e47377d
# Fri, 23 Sep 2016 23:11:36 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:6751f3f725f2b13a4cc86f06befba305c5e06ac6687111ac906a812a9128cec4`  
		Last Modified: Fri, 23 Sep 2016 21:44:02 GMT  
		Size: 12.3 MB (12262929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6758e49a828ac368d4f8a87cab4e81959cf36b7ea4d85e711756b9c3a3e42eff`  
		Last Modified: Fri, 23 Sep 2016 21:43:57 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42fa526044804663807981a103c25ef719d29733d46f37f44a54e55405ddf9a`  
		Last Modified: Fri, 23 Sep 2016 21:44:04 GMT  
		Size: 19.7 MB (19680026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c6727862495c0ae0362678181119f50a81a62464dd278e2d29e5aad92edbf9`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81e8d8f9f0b619a09fac6c6a5e1d2fad2020762aa01b15a25d4b62db44d6b7d`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e7f36f51dcc6309cedd716d60937de95b90bbdfddb4804863be44c26a95317`  
		Last Modified: Fri, 23 Sep 2016 23:11:57 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cffc31d869ce7833de716b9b82841e66b7c65a30b67ced73ecfd423ff0af2f80`  
		Last Modified: Fri, 23 Sep 2016 23:13:17 GMT  
		Size: 8.4 MB (8429999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810cc96bbf9b1b99ea1e433120dead03e0e81565033605bad8fdbcdc1d2194dc`  
		Last Modified: Fri, 23 Sep 2016 23:13:13 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3d8776c43e49da955bf657146251351c2ef5c13c6e1813135d67e0e7023a92`  
		Last Modified: Fri, 23 Sep 2016 23:15:43 GMT  
		Size: 12.8 MB (12827241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2`

```console
$ docker pull drupal@sha256:ef8db0a7d92688b88107edf7151991e9e7b3d415c93ab18b166e73935ea57644
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (185001877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90a0b3a86b96100398f9e5902f5a1cae8cac2d7f324a84a575baa51f8c21ff77`
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
# Fri, 23 Sep 2016 21:41:20 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_VERSION=7.0.11
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 23 Sep 2016 21:41:21 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 23 Sep 2016 21:41:24 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:41:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:47 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:43:48 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:43:50 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 21:43:50 GMT
CMD ["apache2-foreground"]
# Fri, 23 Sep 2016 23:05:45 GMT
RUN a2enmod rewrite
# Fri, 23 Sep 2016 23:09:47 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Fri, 23 Sep 2016 23:09:48 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 23 Sep 2016 23:09:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 23:11:29 GMT
ENV DRUPAL_VERSION=8.2.0-rc2
# Fri, 23 Sep 2016 23:11:30 GMT
ENV DRUPAL_MD5=e6e7d9bb669fd82a8dd730ef0e47377d
# Fri, 23 Sep 2016 23:11:36 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:6751f3f725f2b13a4cc86f06befba305c5e06ac6687111ac906a812a9128cec4`  
		Last Modified: Fri, 23 Sep 2016 21:44:02 GMT  
		Size: 12.3 MB (12262929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6758e49a828ac368d4f8a87cab4e81959cf36b7ea4d85e711756b9c3a3e42eff`  
		Last Modified: Fri, 23 Sep 2016 21:43:57 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42fa526044804663807981a103c25ef719d29733d46f37f44a54e55405ddf9a`  
		Last Modified: Fri, 23 Sep 2016 21:44:04 GMT  
		Size: 19.7 MB (19680026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c6727862495c0ae0362678181119f50a81a62464dd278e2d29e5aad92edbf9`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81e8d8f9f0b619a09fac6c6a5e1d2fad2020762aa01b15a25d4b62db44d6b7d`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e7f36f51dcc6309cedd716d60937de95b90bbdfddb4804863be44c26a95317`  
		Last Modified: Fri, 23 Sep 2016 23:11:57 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cffc31d869ce7833de716b9b82841e66b7c65a30b67ced73ecfd423ff0af2f80`  
		Last Modified: Fri, 23 Sep 2016 23:13:17 GMT  
		Size: 8.4 MB (8429999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810cc96bbf9b1b99ea1e433120dead03e0e81565033605bad8fdbcdc1d2194dc`  
		Last Modified: Fri, 23 Sep 2016 23:13:13 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3d8776c43e49da955bf657146251351c2ef5c13c6e1813135d67e0e7023a92`  
		Last Modified: Fri, 23 Sep 2016 23:15:43 GMT  
		Size: 12.8 MB (12827241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8`

```console
$ docker pull drupal@sha256:a5137c4910969949bb4ed49980b57faa0c0265502a2a9558ad8bb3d046ae9544
```

-	Platforms:
	-	linux; amd64

### `drupal:8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.8 MB (184790544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d00417847df63fc0105c3b1b1168f0da2892987b9e95e5f8fa3263d390336e12`
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
# Fri, 23 Sep 2016 21:41:20 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_VERSION=7.0.11
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 23 Sep 2016 21:41:21 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 23 Sep 2016 21:41:24 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:41:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:47 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:43:48 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:43:50 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 21:43:50 GMT
CMD ["apache2-foreground"]
# Fri, 23 Sep 2016 23:05:45 GMT
RUN a2enmod rewrite
# Fri, 23 Sep 2016 23:09:47 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Fri, 23 Sep 2016 23:09:48 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 23 Sep 2016 23:09:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 23:09:49 GMT
ENV DRUPAL_VERSION=8.1.10
# Fri, 23 Sep 2016 23:09:49 GMT
ENV DRUPAL_MD5=ce373a1a7a075ff9035b1c95f54170a4
# Fri, 23 Sep 2016 23:09:56 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:6751f3f725f2b13a4cc86f06befba305c5e06ac6687111ac906a812a9128cec4`  
		Last Modified: Fri, 23 Sep 2016 21:44:02 GMT  
		Size: 12.3 MB (12262929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6758e49a828ac368d4f8a87cab4e81959cf36b7ea4d85e711756b9c3a3e42eff`  
		Last Modified: Fri, 23 Sep 2016 21:43:57 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42fa526044804663807981a103c25ef719d29733d46f37f44a54e55405ddf9a`  
		Last Modified: Fri, 23 Sep 2016 21:44:04 GMT  
		Size: 19.7 MB (19680026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c6727862495c0ae0362678181119f50a81a62464dd278e2d29e5aad92edbf9`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81e8d8f9f0b619a09fac6c6a5e1d2fad2020762aa01b15a25d4b62db44d6b7d`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e7f36f51dcc6309cedd716d60937de95b90bbdfddb4804863be44c26a95317`  
		Last Modified: Fri, 23 Sep 2016 23:11:57 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cffc31d869ce7833de716b9b82841e66b7c65a30b67ced73ecfd423ff0af2f80`  
		Last Modified: Fri, 23 Sep 2016 23:13:17 GMT  
		Size: 8.4 MB (8429999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810cc96bbf9b1b99ea1e433120dead03e0e81565033605bad8fdbcdc1d2194dc`  
		Last Modified: Fri, 23 Sep 2016 23:13:13 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b74625e2bdd1ef6afd58b6f3d5dd7c2d1b184ceb0bb917ec634879876a268d`  
		Last Modified: Fri, 23 Sep 2016 23:13:22 GMT  
		Size: 12.6 MB (12615908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:latest`

```console
$ docker pull drupal@sha256:a5137c4910969949bb4ed49980b57faa0c0265502a2a9558ad8bb3d046ae9544
```

-	Platforms:
	-	linux; amd64

### `drupal:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.8 MB (184790544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d00417847df63fc0105c3b1b1168f0da2892987b9e95e5f8fa3263d390336e12`
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
# Fri, 23 Sep 2016 21:41:20 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_VERSION=7.0.11
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 23 Sep 2016 21:41:21 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 23 Sep 2016 21:41:24 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:41:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:47 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:43:48 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:43:50 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 21:43:50 GMT
CMD ["apache2-foreground"]
# Fri, 23 Sep 2016 23:05:45 GMT
RUN a2enmod rewrite
# Fri, 23 Sep 2016 23:09:47 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Fri, 23 Sep 2016 23:09:48 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 23 Sep 2016 23:09:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 23:09:49 GMT
ENV DRUPAL_VERSION=8.1.10
# Fri, 23 Sep 2016 23:09:49 GMT
ENV DRUPAL_MD5=ce373a1a7a075ff9035b1c95f54170a4
# Fri, 23 Sep 2016 23:09:56 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:6751f3f725f2b13a4cc86f06befba305c5e06ac6687111ac906a812a9128cec4`  
		Last Modified: Fri, 23 Sep 2016 21:44:02 GMT  
		Size: 12.3 MB (12262929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6758e49a828ac368d4f8a87cab4e81959cf36b7ea4d85e711756b9c3a3e42eff`  
		Last Modified: Fri, 23 Sep 2016 21:43:57 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42fa526044804663807981a103c25ef719d29733d46f37f44a54e55405ddf9a`  
		Last Modified: Fri, 23 Sep 2016 21:44:04 GMT  
		Size: 19.7 MB (19680026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c6727862495c0ae0362678181119f50a81a62464dd278e2d29e5aad92edbf9`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81e8d8f9f0b619a09fac6c6a5e1d2fad2020762aa01b15a25d4b62db44d6b7d`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e7f36f51dcc6309cedd716d60937de95b90bbdfddb4804863be44c26a95317`  
		Last Modified: Fri, 23 Sep 2016 23:11:57 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cffc31d869ce7833de716b9b82841e66b7c65a30b67ced73ecfd423ff0af2f80`  
		Last Modified: Fri, 23 Sep 2016 23:13:17 GMT  
		Size: 8.4 MB (8429999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810cc96bbf9b1b99ea1e433120dead03e0e81565033605bad8fdbcdc1d2194dc`  
		Last Modified: Fri, 23 Sep 2016 23:13:13 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b74625e2bdd1ef6afd58b6f3d5dd7c2d1b184ceb0bb917ec634879876a268d`  
		Last Modified: Fri, 23 Sep 2016 23:13:22 GMT  
		Size: 12.6 MB (12615908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2.0-fpm`

```console
$ docker pull drupal@sha256:8eba188760d4f75bae952c15dc7bcddba071b6520e5d2743369174bd7f87ab5e
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.0-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175118756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a3f1f159f4b0190df27842e801aea09808d23e0f06615bb3e3ea52a937b8cd3`
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
# Fri, 23 Sep 2016 21:44:51 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 23 Sep 2016 21:44:51 GMT
ENV PHP_VERSION=7.0.11
# Fri, 23 Sep 2016 21:44:52 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 23 Sep 2016 21:44:52 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 23 Sep 2016 21:44:55 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:44:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:48:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:48:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:48:28 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:48:29 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 23 Sep 2016 21:48:29 GMT
EXPOSE 9000/tcp
# Fri, 23 Sep 2016 21:48:30 GMT
CMD ["php-fpm"]
# Fri, 23 Sep 2016 23:11:20 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Fri, 23 Sep 2016 23:11:21 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 23 Sep 2016 23:11:21 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 23:11:37 GMT
ENV DRUPAL_VERSION=8.2.0-rc2
# Fri, 23 Sep 2016 23:11:38 GMT
ENV DRUPAL_MD5=e6e7d9bb669fd82a8dd730ef0e47377d
# Fri, 23 Sep 2016 23:11:45 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:c591c61adc6e6aaa0d5bf0bf41485a81362c590963266a677915c6b59368555a`  
		Last Modified: Fri, 23 Sep 2016 21:48:42 GMT  
		Size: 12.3 MB (12262929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9786831efdb44f60f691896cbea692a9061bcc133861454d4d5bd7a3a1f72c2`  
		Last Modified: Fri, 23 Sep 2016 21:48:38 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2a28039006561503f41b1aafba936898727109e3190e765a8422a69bf62c0c`  
		Last Modified: Fri, 23 Sep 2016 21:48:42 GMT  
		Size: 12.7 MB (12663731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605d865c381c543b2b516f7d21523052b51d6c2a4ed09ca74425569a5ca2c7af`  
		Last Modified: Fri, 23 Sep 2016 21:48:37 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5e9bfe8b982f3c56ab4f5f97e79a6bc71ae69bde0b61cd1a8b1e7ffdd0c7bf`  
		Last Modified: Fri, 23 Sep 2016 21:48:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2553e0b0e6cb8de6885be94a82053fa0fdf040cf07da74c74f37a3c8966798`  
		Last Modified: Fri, 23 Sep 2016 21:48:37 GMT  
		Size: 7.7 KB (7685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e640126a22cabdfc56a8108eedb6857b6acc370d4556ffb3adbad0a604866837`  
		Last Modified: Fri, 23 Sep 2016 23:14:49 GMT  
		Size: 8.4 MB (8407719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8c2a55bede2ca330baa60d9bdc37481f4032e2c899cb83602da7f3c518d112`  
		Last Modified: Fri, 23 Sep 2016 23:14:46 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3c40a34917072ee4c10e790c627269344765d1c03942196402dca0e38cfd2d`  
		Last Modified: Fri, 23 Sep 2016 23:16:59 GMT  
		Size: 12.8 MB (12827226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2-fpm`

```console
$ docker pull drupal@sha256:8eba188760d4f75bae952c15dc7bcddba071b6520e5d2743369174bd7f87ab5e
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175118756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a3f1f159f4b0190df27842e801aea09808d23e0f06615bb3e3ea52a937b8cd3`
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
# Fri, 23 Sep 2016 21:44:51 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 23 Sep 2016 21:44:51 GMT
ENV PHP_VERSION=7.0.11
# Fri, 23 Sep 2016 21:44:52 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 23 Sep 2016 21:44:52 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 23 Sep 2016 21:44:55 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:44:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:48:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:48:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:48:28 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:48:29 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 23 Sep 2016 21:48:29 GMT
EXPOSE 9000/tcp
# Fri, 23 Sep 2016 21:48:30 GMT
CMD ["php-fpm"]
# Fri, 23 Sep 2016 23:11:20 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Fri, 23 Sep 2016 23:11:21 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 23 Sep 2016 23:11:21 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 23:11:37 GMT
ENV DRUPAL_VERSION=8.2.0-rc2
# Fri, 23 Sep 2016 23:11:38 GMT
ENV DRUPAL_MD5=e6e7d9bb669fd82a8dd730ef0e47377d
# Fri, 23 Sep 2016 23:11:45 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:c591c61adc6e6aaa0d5bf0bf41485a81362c590963266a677915c6b59368555a`  
		Last Modified: Fri, 23 Sep 2016 21:48:42 GMT  
		Size: 12.3 MB (12262929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9786831efdb44f60f691896cbea692a9061bcc133861454d4d5bd7a3a1f72c2`  
		Last Modified: Fri, 23 Sep 2016 21:48:38 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2a28039006561503f41b1aafba936898727109e3190e765a8422a69bf62c0c`  
		Last Modified: Fri, 23 Sep 2016 21:48:42 GMT  
		Size: 12.7 MB (12663731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605d865c381c543b2b516f7d21523052b51d6c2a4ed09ca74425569a5ca2c7af`  
		Last Modified: Fri, 23 Sep 2016 21:48:37 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5e9bfe8b982f3c56ab4f5f97e79a6bc71ae69bde0b61cd1a8b1e7ffdd0c7bf`  
		Last Modified: Fri, 23 Sep 2016 21:48:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2553e0b0e6cb8de6885be94a82053fa0fdf040cf07da74c74f37a3c8966798`  
		Last Modified: Fri, 23 Sep 2016 21:48:37 GMT  
		Size: 7.7 KB (7685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e640126a22cabdfc56a8108eedb6857b6acc370d4556ffb3adbad0a604866837`  
		Last Modified: Fri, 23 Sep 2016 23:14:49 GMT  
		Size: 8.4 MB (8407719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8c2a55bede2ca330baa60d9bdc37481f4032e2c899cb83602da7f3c518d112`  
		Last Modified: Fri, 23 Sep 2016 23:14:46 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3c40a34917072ee4c10e790c627269344765d1c03942196402dca0e38cfd2d`  
		Last Modified: Fri, 23 Sep 2016 23:16:59 GMT  
		Size: 12.8 MB (12827226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8-fpm`

```console
$ docker pull drupal@sha256:071ad61473293f451195f0cafca69a9e4b137ef93e542c942b652faf8a1c17db
```

-	Platforms:
	-	linux; amd64

### `drupal:8-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174907415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6069877db25e4a42a0441369ccba7080c80cfe1678e6f9431347a58295e603ef`
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
# Fri, 23 Sep 2016 21:44:51 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 23 Sep 2016 21:44:51 GMT
ENV PHP_VERSION=7.0.11
# Fri, 23 Sep 2016 21:44:52 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 23 Sep 2016 21:44:52 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 23 Sep 2016 21:44:55 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:44:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:48:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:48:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:48:28 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:48:29 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 23 Sep 2016 21:48:29 GMT
EXPOSE 9000/tcp
# Fri, 23 Sep 2016 21:48:30 GMT
CMD ["php-fpm"]
# Fri, 23 Sep 2016 23:11:20 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Fri, 23 Sep 2016 23:11:21 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 23 Sep 2016 23:11:21 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 23:11:21 GMT
ENV DRUPAL_VERSION=8.1.10
# Fri, 23 Sep 2016 23:11:22 GMT
ENV DRUPAL_MD5=ce373a1a7a075ff9035b1c95f54170a4
# Fri, 23 Sep 2016 23:11:28 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:c591c61adc6e6aaa0d5bf0bf41485a81362c590963266a677915c6b59368555a`  
		Last Modified: Fri, 23 Sep 2016 21:48:42 GMT  
		Size: 12.3 MB (12262929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9786831efdb44f60f691896cbea692a9061bcc133861454d4d5bd7a3a1f72c2`  
		Last Modified: Fri, 23 Sep 2016 21:48:38 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2a28039006561503f41b1aafba936898727109e3190e765a8422a69bf62c0c`  
		Last Modified: Fri, 23 Sep 2016 21:48:42 GMT  
		Size: 12.7 MB (12663731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605d865c381c543b2b516f7d21523052b51d6c2a4ed09ca74425569a5ca2c7af`  
		Last Modified: Fri, 23 Sep 2016 21:48:37 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5e9bfe8b982f3c56ab4f5f97e79a6bc71ae69bde0b61cd1a8b1e7ffdd0c7bf`  
		Last Modified: Fri, 23 Sep 2016 21:48:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2553e0b0e6cb8de6885be94a82053fa0fdf040cf07da74c74f37a3c8966798`  
		Last Modified: Fri, 23 Sep 2016 21:48:37 GMT  
		Size: 7.7 KB (7685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e640126a22cabdfc56a8108eedb6857b6acc370d4556ffb3adbad0a604866837`  
		Last Modified: Fri, 23 Sep 2016 23:14:49 GMT  
		Size: 8.4 MB (8407719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8c2a55bede2ca330baa60d9bdc37481f4032e2c899cb83602da7f3c518d112`  
		Last Modified: Fri, 23 Sep 2016 23:14:46 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a180186bfe6e965c24fc87b9e5bc610a6e51114a808e0e72d3c3840e0bcfe3c`  
		Last Modified: Fri, 23 Sep 2016 23:14:52 GMT  
		Size: 12.6 MB (12615885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:fpm`

```console
$ docker pull drupal@sha256:071ad61473293f451195f0cafca69a9e4b137ef93e542c942b652faf8a1c17db
```

-	Platforms:
	-	linux; amd64

### `drupal:fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174907415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6069877db25e4a42a0441369ccba7080c80cfe1678e6f9431347a58295e603ef`
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
# Fri, 23 Sep 2016 21:44:51 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 23 Sep 2016 21:44:51 GMT
ENV PHP_VERSION=7.0.11
# Fri, 23 Sep 2016 21:44:52 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 23 Sep 2016 21:44:52 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 23 Sep 2016 21:44:55 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:44:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:48:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:48:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:48:28 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:48:29 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 23 Sep 2016 21:48:29 GMT
EXPOSE 9000/tcp
# Fri, 23 Sep 2016 21:48:30 GMT
CMD ["php-fpm"]
# Fri, 23 Sep 2016 23:11:20 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Fri, 23 Sep 2016 23:11:21 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 23 Sep 2016 23:11:21 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 23:11:21 GMT
ENV DRUPAL_VERSION=8.1.10
# Fri, 23 Sep 2016 23:11:22 GMT
ENV DRUPAL_MD5=ce373a1a7a075ff9035b1c95f54170a4
# Fri, 23 Sep 2016 23:11:28 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:c591c61adc6e6aaa0d5bf0bf41485a81362c590963266a677915c6b59368555a`  
		Last Modified: Fri, 23 Sep 2016 21:48:42 GMT  
		Size: 12.3 MB (12262929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9786831efdb44f60f691896cbea692a9061bcc133861454d4d5bd7a3a1f72c2`  
		Last Modified: Fri, 23 Sep 2016 21:48:38 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2a28039006561503f41b1aafba936898727109e3190e765a8422a69bf62c0c`  
		Last Modified: Fri, 23 Sep 2016 21:48:42 GMT  
		Size: 12.7 MB (12663731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605d865c381c543b2b516f7d21523052b51d6c2a4ed09ca74425569a5ca2c7af`  
		Last Modified: Fri, 23 Sep 2016 21:48:37 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5e9bfe8b982f3c56ab4f5f97e79a6bc71ae69bde0b61cd1a8b1e7ffdd0c7bf`  
		Last Modified: Fri, 23 Sep 2016 21:48:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2553e0b0e6cb8de6885be94a82053fa0fdf040cf07da74c74f37a3c8966798`  
		Last Modified: Fri, 23 Sep 2016 21:48:37 GMT  
		Size: 7.7 KB (7685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e640126a22cabdfc56a8108eedb6857b6acc370d4556ffb3adbad0a604866837`  
		Last Modified: Fri, 23 Sep 2016 23:14:49 GMT  
		Size: 8.4 MB (8407719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8c2a55bede2ca330baa60d9bdc37481f4032e2c899cb83602da7f3c518d112`  
		Last Modified: Fri, 23 Sep 2016 23:14:46 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a180186bfe6e965c24fc87b9e5bc610a6e51114a808e0e72d3c3840e0bcfe3c`  
		Last Modified: Fri, 23 Sep 2016 23:14:52 GMT  
		Size: 12.6 MB (12615885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.1.10-apache`

```console
$ docker pull drupal@sha256:a5137c4910969949bb4ed49980b57faa0c0265502a2a9558ad8bb3d046ae9544
```

-	Platforms:
	-	linux; amd64

### `drupal:8.1.10-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.8 MB (184790544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d00417847df63fc0105c3b1b1168f0da2892987b9e95e5f8fa3263d390336e12`
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
# Fri, 23 Sep 2016 21:41:20 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_VERSION=7.0.11
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 23 Sep 2016 21:41:21 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 23 Sep 2016 21:41:24 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:41:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:47 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:43:48 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:43:50 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 21:43:50 GMT
CMD ["apache2-foreground"]
# Fri, 23 Sep 2016 23:05:45 GMT
RUN a2enmod rewrite
# Fri, 23 Sep 2016 23:09:47 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Fri, 23 Sep 2016 23:09:48 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 23 Sep 2016 23:09:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 23:09:49 GMT
ENV DRUPAL_VERSION=8.1.10
# Fri, 23 Sep 2016 23:09:49 GMT
ENV DRUPAL_MD5=ce373a1a7a075ff9035b1c95f54170a4
# Fri, 23 Sep 2016 23:09:56 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:6751f3f725f2b13a4cc86f06befba305c5e06ac6687111ac906a812a9128cec4`  
		Last Modified: Fri, 23 Sep 2016 21:44:02 GMT  
		Size: 12.3 MB (12262929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6758e49a828ac368d4f8a87cab4e81959cf36b7ea4d85e711756b9c3a3e42eff`  
		Last Modified: Fri, 23 Sep 2016 21:43:57 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42fa526044804663807981a103c25ef719d29733d46f37f44a54e55405ddf9a`  
		Last Modified: Fri, 23 Sep 2016 21:44:04 GMT  
		Size: 19.7 MB (19680026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c6727862495c0ae0362678181119f50a81a62464dd278e2d29e5aad92edbf9`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81e8d8f9f0b619a09fac6c6a5e1d2fad2020762aa01b15a25d4b62db44d6b7d`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e7f36f51dcc6309cedd716d60937de95b90bbdfddb4804863be44c26a95317`  
		Last Modified: Fri, 23 Sep 2016 23:11:57 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cffc31d869ce7833de716b9b82841e66b7c65a30b67ced73ecfd423ff0af2f80`  
		Last Modified: Fri, 23 Sep 2016 23:13:17 GMT  
		Size: 8.4 MB (8429999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810cc96bbf9b1b99ea1e433120dead03e0e81565033605bad8fdbcdc1d2194dc`  
		Last Modified: Fri, 23 Sep 2016 23:13:13 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b74625e2bdd1ef6afd58b6f3d5dd7c2d1b184ceb0bb917ec634879876a268d`  
		Last Modified: Fri, 23 Sep 2016 23:13:22 GMT  
		Size: 12.6 MB (12615908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.1-apache`

```console
$ docker pull drupal@sha256:a5137c4910969949bb4ed49980b57faa0c0265502a2a9558ad8bb3d046ae9544
```

-	Platforms:
	-	linux; amd64

### `drupal:8.1-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.8 MB (184790544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d00417847df63fc0105c3b1b1168f0da2892987b9e95e5f8fa3263d390336e12`
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
# Fri, 23 Sep 2016 21:41:20 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_VERSION=7.0.11
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 23 Sep 2016 21:41:21 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 23 Sep 2016 21:41:24 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:41:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:47 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:43:48 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:43:50 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 21:43:50 GMT
CMD ["apache2-foreground"]
# Fri, 23 Sep 2016 23:05:45 GMT
RUN a2enmod rewrite
# Fri, 23 Sep 2016 23:09:47 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Fri, 23 Sep 2016 23:09:48 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 23 Sep 2016 23:09:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 23:09:49 GMT
ENV DRUPAL_VERSION=8.1.10
# Fri, 23 Sep 2016 23:09:49 GMT
ENV DRUPAL_MD5=ce373a1a7a075ff9035b1c95f54170a4
# Fri, 23 Sep 2016 23:09:56 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:6751f3f725f2b13a4cc86f06befba305c5e06ac6687111ac906a812a9128cec4`  
		Last Modified: Fri, 23 Sep 2016 21:44:02 GMT  
		Size: 12.3 MB (12262929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6758e49a828ac368d4f8a87cab4e81959cf36b7ea4d85e711756b9c3a3e42eff`  
		Last Modified: Fri, 23 Sep 2016 21:43:57 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42fa526044804663807981a103c25ef719d29733d46f37f44a54e55405ddf9a`  
		Last Modified: Fri, 23 Sep 2016 21:44:04 GMT  
		Size: 19.7 MB (19680026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c6727862495c0ae0362678181119f50a81a62464dd278e2d29e5aad92edbf9`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81e8d8f9f0b619a09fac6c6a5e1d2fad2020762aa01b15a25d4b62db44d6b7d`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e7f36f51dcc6309cedd716d60937de95b90bbdfddb4804863be44c26a95317`  
		Last Modified: Fri, 23 Sep 2016 23:11:57 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cffc31d869ce7833de716b9b82841e66b7c65a30b67ced73ecfd423ff0af2f80`  
		Last Modified: Fri, 23 Sep 2016 23:13:17 GMT  
		Size: 8.4 MB (8429999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810cc96bbf9b1b99ea1e433120dead03e0e81565033605bad8fdbcdc1d2194dc`  
		Last Modified: Fri, 23 Sep 2016 23:13:13 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b74625e2bdd1ef6afd58b6f3d5dd7c2d1b184ceb0bb917ec634879876a268d`  
		Last Modified: Fri, 23 Sep 2016 23:13:22 GMT  
		Size: 12.6 MB (12615908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.1.10`

```console
$ docker pull drupal@sha256:a5137c4910969949bb4ed49980b57faa0c0265502a2a9558ad8bb3d046ae9544
```

-	Platforms:
	-	linux; amd64

### `drupal:8.1.10` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.8 MB (184790544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d00417847df63fc0105c3b1b1168f0da2892987b9e95e5f8fa3263d390336e12`
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
# Fri, 23 Sep 2016 21:41:20 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_VERSION=7.0.11
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 23 Sep 2016 21:41:21 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 23 Sep 2016 21:41:24 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:41:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:47 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:43:48 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:43:50 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 21:43:50 GMT
CMD ["apache2-foreground"]
# Fri, 23 Sep 2016 23:05:45 GMT
RUN a2enmod rewrite
# Fri, 23 Sep 2016 23:09:47 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Fri, 23 Sep 2016 23:09:48 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 23 Sep 2016 23:09:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 23:09:49 GMT
ENV DRUPAL_VERSION=8.1.10
# Fri, 23 Sep 2016 23:09:49 GMT
ENV DRUPAL_MD5=ce373a1a7a075ff9035b1c95f54170a4
# Fri, 23 Sep 2016 23:09:56 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:6751f3f725f2b13a4cc86f06befba305c5e06ac6687111ac906a812a9128cec4`  
		Last Modified: Fri, 23 Sep 2016 21:44:02 GMT  
		Size: 12.3 MB (12262929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6758e49a828ac368d4f8a87cab4e81959cf36b7ea4d85e711756b9c3a3e42eff`  
		Last Modified: Fri, 23 Sep 2016 21:43:57 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42fa526044804663807981a103c25ef719d29733d46f37f44a54e55405ddf9a`  
		Last Modified: Fri, 23 Sep 2016 21:44:04 GMT  
		Size: 19.7 MB (19680026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c6727862495c0ae0362678181119f50a81a62464dd278e2d29e5aad92edbf9`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81e8d8f9f0b619a09fac6c6a5e1d2fad2020762aa01b15a25d4b62db44d6b7d`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e7f36f51dcc6309cedd716d60937de95b90bbdfddb4804863be44c26a95317`  
		Last Modified: Fri, 23 Sep 2016 23:11:57 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cffc31d869ce7833de716b9b82841e66b7c65a30b67ced73ecfd423ff0af2f80`  
		Last Modified: Fri, 23 Sep 2016 23:13:17 GMT  
		Size: 8.4 MB (8429999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810cc96bbf9b1b99ea1e433120dead03e0e81565033605bad8fdbcdc1d2194dc`  
		Last Modified: Fri, 23 Sep 2016 23:13:13 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b74625e2bdd1ef6afd58b6f3d5dd7c2d1b184ceb0bb917ec634879876a268d`  
		Last Modified: Fri, 23 Sep 2016 23:13:22 GMT  
		Size: 12.6 MB (12615908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.1`

```console
$ docker pull drupal@sha256:a5137c4910969949bb4ed49980b57faa0c0265502a2a9558ad8bb3d046ae9544
```

-	Platforms:
	-	linux; amd64

### `drupal:8.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.8 MB (184790544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d00417847df63fc0105c3b1b1168f0da2892987b9e95e5f8fa3263d390336e12`
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
# Fri, 23 Sep 2016 21:41:20 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_VERSION=7.0.11
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 23 Sep 2016 21:41:21 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 23 Sep 2016 21:41:24 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:41:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:47 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:43:48 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:43:50 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 21:43:50 GMT
CMD ["apache2-foreground"]
# Fri, 23 Sep 2016 23:05:45 GMT
RUN a2enmod rewrite
# Fri, 23 Sep 2016 23:09:47 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Fri, 23 Sep 2016 23:09:48 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 23 Sep 2016 23:09:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 23:09:49 GMT
ENV DRUPAL_VERSION=8.1.10
# Fri, 23 Sep 2016 23:09:49 GMT
ENV DRUPAL_MD5=ce373a1a7a075ff9035b1c95f54170a4
# Fri, 23 Sep 2016 23:09:56 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:6751f3f725f2b13a4cc86f06befba305c5e06ac6687111ac906a812a9128cec4`  
		Last Modified: Fri, 23 Sep 2016 21:44:02 GMT  
		Size: 12.3 MB (12262929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6758e49a828ac368d4f8a87cab4e81959cf36b7ea4d85e711756b9c3a3e42eff`  
		Last Modified: Fri, 23 Sep 2016 21:43:57 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42fa526044804663807981a103c25ef719d29733d46f37f44a54e55405ddf9a`  
		Last Modified: Fri, 23 Sep 2016 21:44:04 GMT  
		Size: 19.7 MB (19680026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c6727862495c0ae0362678181119f50a81a62464dd278e2d29e5aad92edbf9`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81e8d8f9f0b619a09fac6c6a5e1d2fad2020762aa01b15a25d4b62db44d6b7d`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e7f36f51dcc6309cedd716d60937de95b90bbdfddb4804863be44c26a95317`  
		Last Modified: Fri, 23 Sep 2016 23:11:57 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cffc31d869ce7833de716b9b82841e66b7c65a30b67ced73ecfd423ff0af2f80`  
		Last Modified: Fri, 23 Sep 2016 23:13:17 GMT  
		Size: 8.4 MB (8429999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810cc96bbf9b1b99ea1e433120dead03e0e81565033605bad8fdbcdc1d2194dc`  
		Last Modified: Fri, 23 Sep 2016 23:13:13 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b74625e2bdd1ef6afd58b6f3d5dd7c2d1b184ceb0bb917ec634879876a268d`  
		Last Modified: Fri, 23 Sep 2016 23:13:22 GMT  
		Size: 12.6 MB (12615908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.1.10-fpm`

```console
$ docker pull drupal@sha256:071ad61473293f451195f0cafca69a9e4b137ef93e542c942b652faf8a1c17db
```

-	Platforms:
	-	linux; amd64

### `drupal:8.1.10-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174907415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6069877db25e4a42a0441369ccba7080c80cfe1678e6f9431347a58295e603ef`
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
# Fri, 23 Sep 2016 21:44:51 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 23 Sep 2016 21:44:51 GMT
ENV PHP_VERSION=7.0.11
# Fri, 23 Sep 2016 21:44:52 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 23 Sep 2016 21:44:52 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 23 Sep 2016 21:44:55 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:44:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:48:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:48:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:48:28 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:48:29 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 23 Sep 2016 21:48:29 GMT
EXPOSE 9000/tcp
# Fri, 23 Sep 2016 21:48:30 GMT
CMD ["php-fpm"]
# Fri, 23 Sep 2016 23:11:20 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Fri, 23 Sep 2016 23:11:21 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 23 Sep 2016 23:11:21 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 23:11:21 GMT
ENV DRUPAL_VERSION=8.1.10
# Fri, 23 Sep 2016 23:11:22 GMT
ENV DRUPAL_MD5=ce373a1a7a075ff9035b1c95f54170a4
# Fri, 23 Sep 2016 23:11:28 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:c591c61adc6e6aaa0d5bf0bf41485a81362c590963266a677915c6b59368555a`  
		Last Modified: Fri, 23 Sep 2016 21:48:42 GMT  
		Size: 12.3 MB (12262929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9786831efdb44f60f691896cbea692a9061bcc133861454d4d5bd7a3a1f72c2`  
		Last Modified: Fri, 23 Sep 2016 21:48:38 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2a28039006561503f41b1aafba936898727109e3190e765a8422a69bf62c0c`  
		Last Modified: Fri, 23 Sep 2016 21:48:42 GMT  
		Size: 12.7 MB (12663731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605d865c381c543b2b516f7d21523052b51d6c2a4ed09ca74425569a5ca2c7af`  
		Last Modified: Fri, 23 Sep 2016 21:48:37 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5e9bfe8b982f3c56ab4f5f97e79a6bc71ae69bde0b61cd1a8b1e7ffdd0c7bf`  
		Last Modified: Fri, 23 Sep 2016 21:48:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2553e0b0e6cb8de6885be94a82053fa0fdf040cf07da74c74f37a3c8966798`  
		Last Modified: Fri, 23 Sep 2016 21:48:37 GMT  
		Size: 7.7 KB (7685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e640126a22cabdfc56a8108eedb6857b6acc370d4556ffb3adbad0a604866837`  
		Last Modified: Fri, 23 Sep 2016 23:14:49 GMT  
		Size: 8.4 MB (8407719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8c2a55bede2ca330baa60d9bdc37481f4032e2c899cb83602da7f3c518d112`  
		Last Modified: Fri, 23 Sep 2016 23:14:46 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a180186bfe6e965c24fc87b9e5bc610a6e51114a808e0e72d3c3840e0bcfe3c`  
		Last Modified: Fri, 23 Sep 2016 23:14:52 GMT  
		Size: 12.6 MB (12615885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.1-fpm`

```console
$ docker pull drupal@sha256:071ad61473293f451195f0cafca69a9e4b137ef93e542c942b652faf8a1c17db
```

-	Platforms:
	-	linux; amd64

### `drupal:8.1-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174907415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6069877db25e4a42a0441369ccba7080c80cfe1678e6f9431347a58295e603ef`
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
# Fri, 23 Sep 2016 21:44:51 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 23 Sep 2016 21:44:51 GMT
ENV PHP_VERSION=7.0.11
# Fri, 23 Sep 2016 21:44:52 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 23 Sep 2016 21:44:52 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 23 Sep 2016 21:44:55 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:44:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:48:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:48:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:48:28 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:48:29 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 23 Sep 2016 21:48:29 GMT
EXPOSE 9000/tcp
# Fri, 23 Sep 2016 21:48:30 GMT
CMD ["php-fpm"]
# Fri, 23 Sep 2016 23:11:20 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Fri, 23 Sep 2016 23:11:21 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 23 Sep 2016 23:11:21 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 23:11:21 GMT
ENV DRUPAL_VERSION=8.1.10
# Fri, 23 Sep 2016 23:11:22 GMT
ENV DRUPAL_MD5=ce373a1a7a075ff9035b1c95f54170a4
# Fri, 23 Sep 2016 23:11:28 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:c591c61adc6e6aaa0d5bf0bf41485a81362c590963266a677915c6b59368555a`  
		Last Modified: Fri, 23 Sep 2016 21:48:42 GMT  
		Size: 12.3 MB (12262929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9786831efdb44f60f691896cbea692a9061bcc133861454d4d5bd7a3a1f72c2`  
		Last Modified: Fri, 23 Sep 2016 21:48:38 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2a28039006561503f41b1aafba936898727109e3190e765a8422a69bf62c0c`  
		Last Modified: Fri, 23 Sep 2016 21:48:42 GMT  
		Size: 12.7 MB (12663731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605d865c381c543b2b516f7d21523052b51d6c2a4ed09ca74425569a5ca2c7af`  
		Last Modified: Fri, 23 Sep 2016 21:48:37 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5e9bfe8b982f3c56ab4f5f97e79a6bc71ae69bde0b61cd1a8b1e7ffdd0c7bf`  
		Last Modified: Fri, 23 Sep 2016 21:48:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2553e0b0e6cb8de6885be94a82053fa0fdf040cf07da74c74f37a3c8966798`  
		Last Modified: Fri, 23 Sep 2016 21:48:37 GMT  
		Size: 7.7 KB (7685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e640126a22cabdfc56a8108eedb6857b6acc370d4556ffb3adbad0a604866837`  
		Last Modified: Fri, 23 Sep 2016 23:14:49 GMT  
		Size: 8.4 MB (8407719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8c2a55bede2ca330baa60d9bdc37481f4032e2c899cb83602da7f3c518d112`  
		Last Modified: Fri, 23 Sep 2016 23:14:46 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a180186bfe6e965c24fc87b9e5bc610a6e51114a808e0e72d3c3840e0bcfe3c`  
		Last Modified: Fri, 23 Sep 2016 23:14:52 GMT  
		Size: 12.6 MB (12615885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7.50-apache`

```console
$ docker pull drupal@sha256:5e50e2822ffa4d29032557b8db16a067c26e3d4cd7e1163abd9833171defef20
```

-	Platforms:
	-	linux; amd64

### `drupal:7.50-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175101791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1de3fb1a4e9d50db803c3b6dabab311adee3d0f8a93d1a887055b19d9fbc9316`
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
# Fri, 23 Sep 2016 21:41:20 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_VERSION=7.0.11
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 23 Sep 2016 21:41:21 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 23 Sep 2016 21:41:24 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:41:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:47 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:43:48 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:43:50 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 21:43:50 GMT
CMD ["apache2-foreground"]
# Fri, 23 Sep 2016 23:05:45 GMT
RUN a2enmod rewrite
# Fri, 23 Sep 2016 23:07:01 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Fri, 23 Sep 2016 23:07:02 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 23:07:02 GMT
ENV DRUPAL_VERSION=7.50
# Fri, 23 Sep 2016 23:07:02 GMT
ENV DRUPAL_MD5=f23905b0248d76f0fc8316692cd64753
# Fri, 23 Sep 2016 23:07:04 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:6751f3f725f2b13a4cc86f06befba305c5e06ac6687111ac906a812a9128cec4`  
		Last Modified: Fri, 23 Sep 2016 21:44:02 GMT  
		Size: 12.3 MB (12262929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6758e49a828ac368d4f8a87cab4e81959cf36b7ea4d85e711756b9c3a3e42eff`  
		Last Modified: Fri, 23 Sep 2016 21:43:57 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42fa526044804663807981a103c25ef719d29733d46f37f44a54e55405ddf9a`  
		Last Modified: Fri, 23 Sep 2016 21:44:04 GMT  
		Size: 19.7 MB (19680026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c6727862495c0ae0362678181119f50a81a62464dd278e2d29e5aad92edbf9`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81e8d8f9f0b619a09fac6c6a5e1d2fad2020762aa01b15a25d4b62db44d6b7d`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e7f36f51dcc6309cedd716d60937de95b90bbdfddb4804863be44c26a95317`  
		Last Modified: Fri, 23 Sep 2016 23:11:57 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f1c5dcc34b6f0e325206ee2997d4e3876a707f0405b18546e2846739a387f9`  
		Last Modified: Fri, 23 Sep 2016 23:11:59 GMT  
		Size: 8.1 MB (8073747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4117acb6cd97d71f06633b3bc455d728f15fd1e0003f67a6a4b00feed7226b`  
		Last Modified: Fri, 23 Sep 2016 23:11:57 GMT  
		Size: 3.3 MB (3283740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7-apache`

```console
$ docker pull drupal@sha256:5e50e2822ffa4d29032557b8db16a067c26e3d4cd7e1163abd9833171defef20
```

-	Platforms:
	-	linux; amd64

### `drupal:7-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175101791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1de3fb1a4e9d50db803c3b6dabab311adee3d0f8a93d1a887055b19d9fbc9316`
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
# Fri, 23 Sep 2016 21:41:20 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_VERSION=7.0.11
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 23 Sep 2016 21:41:21 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 23 Sep 2016 21:41:24 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:41:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:47 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:43:48 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:43:50 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 21:43:50 GMT
CMD ["apache2-foreground"]
# Fri, 23 Sep 2016 23:05:45 GMT
RUN a2enmod rewrite
# Fri, 23 Sep 2016 23:07:01 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Fri, 23 Sep 2016 23:07:02 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 23:07:02 GMT
ENV DRUPAL_VERSION=7.50
# Fri, 23 Sep 2016 23:07:02 GMT
ENV DRUPAL_MD5=f23905b0248d76f0fc8316692cd64753
# Fri, 23 Sep 2016 23:07:04 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:6751f3f725f2b13a4cc86f06befba305c5e06ac6687111ac906a812a9128cec4`  
		Last Modified: Fri, 23 Sep 2016 21:44:02 GMT  
		Size: 12.3 MB (12262929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6758e49a828ac368d4f8a87cab4e81959cf36b7ea4d85e711756b9c3a3e42eff`  
		Last Modified: Fri, 23 Sep 2016 21:43:57 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42fa526044804663807981a103c25ef719d29733d46f37f44a54e55405ddf9a`  
		Last Modified: Fri, 23 Sep 2016 21:44:04 GMT  
		Size: 19.7 MB (19680026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c6727862495c0ae0362678181119f50a81a62464dd278e2d29e5aad92edbf9`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81e8d8f9f0b619a09fac6c6a5e1d2fad2020762aa01b15a25d4b62db44d6b7d`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e7f36f51dcc6309cedd716d60937de95b90bbdfddb4804863be44c26a95317`  
		Last Modified: Fri, 23 Sep 2016 23:11:57 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f1c5dcc34b6f0e325206ee2997d4e3876a707f0405b18546e2846739a387f9`  
		Last Modified: Fri, 23 Sep 2016 23:11:59 GMT  
		Size: 8.1 MB (8073747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4117acb6cd97d71f06633b3bc455d728f15fd1e0003f67a6a4b00feed7226b`  
		Last Modified: Fri, 23 Sep 2016 23:11:57 GMT  
		Size: 3.3 MB (3283740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7.50`

```console
$ docker pull drupal@sha256:5e50e2822ffa4d29032557b8db16a067c26e3d4cd7e1163abd9833171defef20
```

-	Platforms:
	-	linux; amd64

### `drupal:7.50` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175101791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1de3fb1a4e9d50db803c3b6dabab311adee3d0f8a93d1a887055b19d9fbc9316`
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
# Fri, 23 Sep 2016 21:41:20 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_VERSION=7.0.11
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 23 Sep 2016 21:41:21 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 23 Sep 2016 21:41:24 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:41:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:47 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:43:48 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:43:50 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 21:43:50 GMT
CMD ["apache2-foreground"]
# Fri, 23 Sep 2016 23:05:45 GMT
RUN a2enmod rewrite
# Fri, 23 Sep 2016 23:07:01 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Fri, 23 Sep 2016 23:07:02 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 23:07:02 GMT
ENV DRUPAL_VERSION=7.50
# Fri, 23 Sep 2016 23:07:02 GMT
ENV DRUPAL_MD5=f23905b0248d76f0fc8316692cd64753
# Fri, 23 Sep 2016 23:07:04 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:6751f3f725f2b13a4cc86f06befba305c5e06ac6687111ac906a812a9128cec4`  
		Last Modified: Fri, 23 Sep 2016 21:44:02 GMT  
		Size: 12.3 MB (12262929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6758e49a828ac368d4f8a87cab4e81959cf36b7ea4d85e711756b9c3a3e42eff`  
		Last Modified: Fri, 23 Sep 2016 21:43:57 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42fa526044804663807981a103c25ef719d29733d46f37f44a54e55405ddf9a`  
		Last Modified: Fri, 23 Sep 2016 21:44:04 GMT  
		Size: 19.7 MB (19680026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c6727862495c0ae0362678181119f50a81a62464dd278e2d29e5aad92edbf9`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81e8d8f9f0b619a09fac6c6a5e1d2fad2020762aa01b15a25d4b62db44d6b7d`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e7f36f51dcc6309cedd716d60937de95b90bbdfddb4804863be44c26a95317`  
		Last Modified: Fri, 23 Sep 2016 23:11:57 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f1c5dcc34b6f0e325206ee2997d4e3876a707f0405b18546e2846739a387f9`  
		Last Modified: Fri, 23 Sep 2016 23:11:59 GMT  
		Size: 8.1 MB (8073747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4117acb6cd97d71f06633b3bc455d728f15fd1e0003f67a6a4b00feed7226b`  
		Last Modified: Fri, 23 Sep 2016 23:11:57 GMT  
		Size: 3.3 MB (3283740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7`

```console
$ docker pull drupal@sha256:5e50e2822ffa4d29032557b8db16a067c26e3d4cd7e1163abd9833171defef20
```

-	Platforms:
	-	linux; amd64

### `drupal:7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175101791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1de3fb1a4e9d50db803c3b6dabab311adee3d0f8a93d1a887055b19d9fbc9316`
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
# Fri, 23 Sep 2016 21:41:20 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_VERSION=7.0.11
# Fri, 23 Sep 2016 21:41:20 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 23 Sep 2016 21:41:21 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 23 Sep 2016 21:41:24 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:41:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:47 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:43:48 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:43:49 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:43:50 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 21:43:50 GMT
CMD ["apache2-foreground"]
# Fri, 23 Sep 2016 23:05:45 GMT
RUN a2enmod rewrite
# Fri, 23 Sep 2016 23:07:01 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Fri, 23 Sep 2016 23:07:02 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 23:07:02 GMT
ENV DRUPAL_VERSION=7.50
# Fri, 23 Sep 2016 23:07:02 GMT
ENV DRUPAL_MD5=f23905b0248d76f0fc8316692cd64753
# Fri, 23 Sep 2016 23:07:04 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:6751f3f725f2b13a4cc86f06befba305c5e06ac6687111ac906a812a9128cec4`  
		Last Modified: Fri, 23 Sep 2016 21:44:02 GMT  
		Size: 12.3 MB (12262929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6758e49a828ac368d4f8a87cab4e81959cf36b7ea4d85e711756b9c3a3e42eff`  
		Last Modified: Fri, 23 Sep 2016 21:43:57 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42fa526044804663807981a103c25ef719d29733d46f37f44a54e55405ddf9a`  
		Last Modified: Fri, 23 Sep 2016 21:44:04 GMT  
		Size: 19.7 MB (19680026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c6727862495c0ae0362678181119f50a81a62464dd278e2d29e5aad92edbf9`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81e8d8f9f0b619a09fac6c6a5e1d2fad2020762aa01b15a25d4b62db44d6b7d`  
		Last Modified: Fri, 23 Sep 2016 21:43:58 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e7f36f51dcc6309cedd716d60937de95b90bbdfddb4804863be44c26a95317`  
		Last Modified: Fri, 23 Sep 2016 23:11:57 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f1c5dcc34b6f0e325206ee2997d4e3876a707f0405b18546e2846739a387f9`  
		Last Modified: Fri, 23 Sep 2016 23:11:59 GMT  
		Size: 8.1 MB (8073747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4117acb6cd97d71f06633b3bc455d728f15fd1e0003f67a6a4b00feed7226b`  
		Last Modified: Fri, 23 Sep 2016 23:11:57 GMT  
		Size: 3.3 MB (3283740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7.50-fpm`

```console
$ docker pull drupal@sha256:dd0f2399407ac38864a4bbed3cc04ecf3d397a9b7c42af152d5fd639c6fab3c6
```

-	Platforms:
	-	linux; amd64

### `drupal:7.50-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165218657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d6d185ac2b6a12f541aaad3da4c4d401e8f4bb2d3caa31a4bd797332baf4588`
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
# Fri, 23 Sep 2016 21:44:51 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 23 Sep 2016 21:44:51 GMT
ENV PHP_VERSION=7.0.11
# Fri, 23 Sep 2016 21:44:52 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 23 Sep 2016 21:44:52 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 23 Sep 2016 21:44:55 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:44:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:48:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:48:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:48:28 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:48:29 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 23 Sep 2016 21:48:29 GMT
EXPOSE 9000/tcp
# Fri, 23 Sep 2016 21:48:30 GMT
CMD ["php-fpm"]
# Fri, 23 Sep 2016 23:08:19 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Fri, 23 Sep 2016 23:08:20 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 23:08:20 GMT
ENV DRUPAL_VERSION=7.50
# Fri, 23 Sep 2016 23:08:20 GMT
ENV DRUPAL_MD5=f23905b0248d76f0fc8316692cd64753
# Fri, 23 Sep 2016 23:08:22 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:c591c61adc6e6aaa0d5bf0bf41485a81362c590963266a677915c6b59368555a`  
		Last Modified: Fri, 23 Sep 2016 21:48:42 GMT  
		Size: 12.3 MB (12262929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9786831efdb44f60f691896cbea692a9061bcc133861454d4d5bd7a3a1f72c2`  
		Last Modified: Fri, 23 Sep 2016 21:48:38 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2a28039006561503f41b1aafba936898727109e3190e765a8422a69bf62c0c`  
		Last Modified: Fri, 23 Sep 2016 21:48:42 GMT  
		Size: 12.7 MB (12663731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605d865c381c543b2b516f7d21523052b51d6c2a4ed09ca74425569a5ca2c7af`  
		Last Modified: Fri, 23 Sep 2016 21:48:37 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5e9bfe8b982f3c56ab4f5f97e79a6bc71ae69bde0b61cd1a8b1e7ffdd0c7bf`  
		Last Modified: Fri, 23 Sep 2016 21:48:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2553e0b0e6cb8de6885be94a82053fa0fdf040cf07da74c74f37a3c8966798`  
		Last Modified: Fri, 23 Sep 2016 21:48:37 GMT  
		Size: 7.7 KB (7685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abca5b9516dc7e1b1da4406fc87a628d5a2194c6e7cdc40b995af5a3b4e41d36`  
		Last Modified: Fri, 23 Sep 2016 23:12:50 GMT  
		Size: 8.1 MB (8051436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05018475b0aa1d9e6eefa23dfbe628140fda88dd50dcaac7bd2013de5943d88d`  
		Last Modified: Fri, 23 Sep 2016 23:12:49 GMT  
		Size: 3.3 MB (3283741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7-fpm`

```console
$ docker pull drupal@sha256:dd0f2399407ac38864a4bbed3cc04ecf3d397a9b7c42af152d5fd639c6fab3c6
```

-	Platforms:
	-	linux; amd64

### `drupal:7-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165218657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d6d185ac2b6a12f541aaad3da4c4d401e8f4bb2d3caa31a4bd797332baf4588`
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
# Fri, 23 Sep 2016 21:44:51 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 23 Sep 2016 21:44:51 GMT
ENV PHP_VERSION=7.0.11
# Fri, 23 Sep 2016 21:44:52 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 23 Sep 2016 21:44:52 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 23 Sep 2016 21:44:55 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 23 Sep 2016 21:44:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:48:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 23 Sep 2016 21:48:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 23 Sep 2016 21:48:28 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 21:48:29 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 23 Sep 2016 21:48:29 GMT
EXPOSE 9000/tcp
# Fri, 23 Sep 2016 21:48:30 GMT
CMD ["php-fpm"]
# Fri, 23 Sep 2016 23:08:19 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Fri, 23 Sep 2016 23:08:20 GMT
WORKDIR /var/www/html
# Fri, 23 Sep 2016 23:08:20 GMT
ENV DRUPAL_VERSION=7.50
# Fri, 23 Sep 2016 23:08:20 GMT
ENV DRUPAL_MD5=f23905b0248d76f0fc8316692cd64753
# Fri, 23 Sep 2016 23:08:22 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:c591c61adc6e6aaa0d5bf0bf41485a81362c590963266a677915c6b59368555a`  
		Last Modified: Fri, 23 Sep 2016 21:48:42 GMT  
		Size: 12.3 MB (12262929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9786831efdb44f60f691896cbea692a9061bcc133861454d4d5bd7a3a1f72c2`  
		Last Modified: Fri, 23 Sep 2016 21:48:38 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2a28039006561503f41b1aafba936898727109e3190e765a8422a69bf62c0c`  
		Last Modified: Fri, 23 Sep 2016 21:48:42 GMT  
		Size: 12.7 MB (12663731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605d865c381c543b2b516f7d21523052b51d6c2a4ed09ca74425569a5ca2c7af`  
		Last Modified: Fri, 23 Sep 2016 21:48:37 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5e9bfe8b982f3c56ab4f5f97e79a6bc71ae69bde0b61cd1a8b1e7ffdd0c7bf`  
		Last Modified: Fri, 23 Sep 2016 21:48:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2553e0b0e6cb8de6885be94a82053fa0fdf040cf07da74c74f37a3c8966798`  
		Last Modified: Fri, 23 Sep 2016 21:48:37 GMT  
		Size: 7.7 KB (7685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abca5b9516dc7e1b1da4406fc87a628d5a2194c6e7cdc40b995af5a3b4e41d36`  
		Last Modified: Fri, 23 Sep 2016 23:12:50 GMT  
		Size: 8.1 MB (8051436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05018475b0aa1d9e6eefa23dfbe628140fda88dd50dcaac7bd2013de5943d88d`  
		Last Modified: Fri, 23 Sep 2016 23:12:49 GMT  
		Size: 3.3 MB (3283741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
