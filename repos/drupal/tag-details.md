<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `drupal`

-	[`drupal:7.50-apache`](#drupal750-apache)
-	[`drupal:7-apache`](#drupal7-apache)
-	[`drupal:7.50`](#drupal750)
-	[`drupal:7`](#drupal7)
-	[`drupal:7.50-fpm`](#drupal750-fpm)
-	[`drupal:7-fpm`](#drupal7-fpm)
-	[`drupal:8.1.10-apache`](#drupal8110-apache)
-	[`drupal:8.1-apache`](#drupal81-apache)
-	[`drupal:8-apache`](#drupal8-apache)
-	[`drupal:apache`](#drupalapache)
-	[`drupal:8.1.10`](#drupal8110)
-	[`drupal:8.1`](#drupal81)
-	[`drupal:8`](#drupal8)
-	[`drupal:latest`](#drupallatest)
-	[`drupal:8.1.10-fpm`](#drupal8110-fpm)
-	[`drupal:8.1-fpm`](#drupal81-fpm)
-	[`drupal:8-fpm`](#drupal8-fpm)
-	[`drupal:fpm`](#drupalfpm)
-	[`drupal:8.2.0-rc1-apache`](#drupal820-rc1-apache)
-	[`drupal:8.2.0-apache`](#drupal820-apache)
-	[`drupal:8.2-apache`](#drupal82-apache)
-	[`drupal:8.2.0-rc1`](#drupal820-rc1)
-	[`drupal:8.2.0`](#drupal820)
-	[`drupal:8.2`](#drupal82)
-	[`drupal:8.2.0-rc1-fpm`](#drupal820-rc1-fpm)
-	[`drupal:8.2.0-fpm`](#drupal820-fpm)
-	[`drupal:8.2-fpm`](#drupal82-fpm)

## `drupal:7.50-apache`

```console
$ docker pull drupal@sha256:cd898fb662c4eae2075d36922fd160c358b8232b6cb5161b09c445e4c5524aa7
```

-	Platforms:
	-	linux; amd64

### `drupal:7.50-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175101618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:673143ef6a7e4fe2fc50f396492d8d379f82340e75adbee275b14833459b7aed`
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
# Mon, 19 Sep 2016 23:47:02 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_VERSION=7.0.11
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Mon, 19 Sep 2016 23:47:06 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Mon, 19 Sep 2016 23:47:06 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Sep 2016 23:49:49 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 23:49:50 GMT
EXPOSE 80/tcp
# Mon, 19 Sep 2016 23:49:50 GMT
CMD ["apache2-foreground"]
# Tue, 20 Sep 2016 01:12:19 GMT
RUN a2enmod rewrite
# Tue, 20 Sep 2016 01:15:12 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 20 Sep 2016 01:15:12 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 01:15:13 GMT
ENV DRUPAL_VERSION=7.50
# Tue, 20 Sep 2016 01:15:13 GMT
ENV DRUPAL_MD5=f23905b0248d76f0fc8316692cd64753
# Tue, 20 Sep 2016 01:15:15 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:8bfa485f3f80daa6741f9747148af427a4395b68ea9c82934cfbff28106a7543`  
		Last Modified: Wed, 21 Sep 2016 22:45:19 GMT  
		Size: 12.3 MB (12262931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8265c859f339e4d1e24f32dfd8ce4f6d92829d89f6aef3beae5179cae5c97d28`  
		Last Modified: Wed, 21 Sep 2016 22:45:17 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3e90f27635772eb32823e249ac472a710d167dc3d41395fd65986959acece7`  
		Last Modified: Wed, 21 Sep 2016 22:45:23 GMT  
		Size: 19.7 MB (19679967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a39f1f5e7a00103476d70e4fb0e9ec0dbfa04541cf4e347665c80e79728009`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2085d51aaf68891dd2c2be65e5e7394c00bf61328533efe3efec68d06d99d9b`  
		Last Modified: Wed, 21 Sep 2016 22:45:14 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76220d4d0848941299583bd354bbb67a0d00cd9f80cf16ab2631a26a9f218c`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e661152c827cdda4a570bcc204ee5a7b174d315b77a64c9306d264f85d1c51`  
		Last Modified: Wed, 21 Sep 2016 22:45:16 GMT  
		Size: 8.1 MB (8072676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9623882a97c66d506d2393002d1dcc389f7b7eaeccd87cfa227fe20d1fd7d5c`  
		Last Modified: Wed, 21 Sep 2016 22:45:15 GMT  
		Size: 3.3 MB (3283740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7-apache`

```console
$ docker pull drupal@sha256:cd898fb662c4eae2075d36922fd160c358b8232b6cb5161b09c445e4c5524aa7
```

-	Platforms:
	-	linux; amd64

### `drupal:7-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175101618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:673143ef6a7e4fe2fc50f396492d8d379f82340e75adbee275b14833459b7aed`
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
# Mon, 19 Sep 2016 23:47:02 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_VERSION=7.0.11
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Mon, 19 Sep 2016 23:47:06 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Mon, 19 Sep 2016 23:47:06 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Sep 2016 23:49:49 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 23:49:50 GMT
EXPOSE 80/tcp
# Mon, 19 Sep 2016 23:49:50 GMT
CMD ["apache2-foreground"]
# Tue, 20 Sep 2016 01:12:19 GMT
RUN a2enmod rewrite
# Tue, 20 Sep 2016 01:15:12 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 20 Sep 2016 01:15:12 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 01:15:13 GMT
ENV DRUPAL_VERSION=7.50
# Tue, 20 Sep 2016 01:15:13 GMT
ENV DRUPAL_MD5=f23905b0248d76f0fc8316692cd64753
# Tue, 20 Sep 2016 01:15:15 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:8bfa485f3f80daa6741f9747148af427a4395b68ea9c82934cfbff28106a7543`  
		Last Modified: Wed, 21 Sep 2016 22:45:19 GMT  
		Size: 12.3 MB (12262931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8265c859f339e4d1e24f32dfd8ce4f6d92829d89f6aef3beae5179cae5c97d28`  
		Last Modified: Wed, 21 Sep 2016 22:45:17 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3e90f27635772eb32823e249ac472a710d167dc3d41395fd65986959acece7`  
		Last Modified: Wed, 21 Sep 2016 22:45:23 GMT  
		Size: 19.7 MB (19679967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a39f1f5e7a00103476d70e4fb0e9ec0dbfa04541cf4e347665c80e79728009`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2085d51aaf68891dd2c2be65e5e7394c00bf61328533efe3efec68d06d99d9b`  
		Last Modified: Wed, 21 Sep 2016 22:45:14 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76220d4d0848941299583bd354bbb67a0d00cd9f80cf16ab2631a26a9f218c`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e661152c827cdda4a570bcc204ee5a7b174d315b77a64c9306d264f85d1c51`  
		Last Modified: Wed, 21 Sep 2016 22:45:16 GMT  
		Size: 8.1 MB (8072676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9623882a97c66d506d2393002d1dcc389f7b7eaeccd87cfa227fe20d1fd7d5c`  
		Last Modified: Wed, 21 Sep 2016 22:45:15 GMT  
		Size: 3.3 MB (3283740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7.50`

```console
$ docker pull drupal@sha256:cd898fb662c4eae2075d36922fd160c358b8232b6cb5161b09c445e4c5524aa7
```

-	Platforms:
	-	linux; amd64

### `drupal:7.50` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175101618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:673143ef6a7e4fe2fc50f396492d8d379f82340e75adbee275b14833459b7aed`
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
# Mon, 19 Sep 2016 23:47:02 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_VERSION=7.0.11
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Mon, 19 Sep 2016 23:47:06 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Mon, 19 Sep 2016 23:47:06 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Sep 2016 23:49:49 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 23:49:50 GMT
EXPOSE 80/tcp
# Mon, 19 Sep 2016 23:49:50 GMT
CMD ["apache2-foreground"]
# Tue, 20 Sep 2016 01:12:19 GMT
RUN a2enmod rewrite
# Tue, 20 Sep 2016 01:15:12 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 20 Sep 2016 01:15:12 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 01:15:13 GMT
ENV DRUPAL_VERSION=7.50
# Tue, 20 Sep 2016 01:15:13 GMT
ENV DRUPAL_MD5=f23905b0248d76f0fc8316692cd64753
# Tue, 20 Sep 2016 01:15:15 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:8bfa485f3f80daa6741f9747148af427a4395b68ea9c82934cfbff28106a7543`  
		Last Modified: Wed, 21 Sep 2016 22:45:19 GMT  
		Size: 12.3 MB (12262931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8265c859f339e4d1e24f32dfd8ce4f6d92829d89f6aef3beae5179cae5c97d28`  
		Last Modified: Wed, 21 Sep 2016 22:45:17 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3e90f27635772eb32823e249ac472a710d167dc3d41395fd65986959acece7`  
		Last Modified: Wed, 21 Sep 2016 22:45:23 GMT  
		Size: 19.7 MB (19679967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a39f1f5e7a00103476d70e4fb0e9ec0dbfa04541cf4e347665c80e79728009`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2085d51aaf68891dd2c2be65e5e7394c00bf61328533efe3efec68d06d99d9b`  
		Last Modified: Wed, 21 Sep 2016 22:45:14 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76220d4d0848941299583bd354bbb67a0d00cd9f80cf16ab2631a26a9f218c`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e661152c827cdda4a570bcc204ee5a7b174d315b77a64c9306d264f85d1c51`  
		Last Modified: Wed, 21 Sep 2016 22:45:16 GMT  
		Size: 8.1 MB (8072676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9623882a97c66d506d2393002d1dcc389f7b7eaeccd87cfa227fe20d1fd7d5c`  
		Last Modified: Wed, 21 Sep 2016 22:45:15 GMT  
		Size: 3.3 MB (3283740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7`

```console
$ docker pull drupal@sha256:cd898fb662c4eae2075d36922fd160c358b8232b6cb5161b09c445e4c5524aa7
```

-	Platforms:
	-	linux; amd64

### `drupal:7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175101618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:673143ef6a7e4fe2fc50f396492d8d379f82340e75adbee275b14833459b7aed`
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
# Mon, 19 Sep 2016 23:47:02 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_VERSION=7.0.11
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Mon, 19 Sep 2016 23:47:06 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Mon, 19 Sep 2016 23:47:06 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Sep 2016 23:49:49 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 23:49:50 GMT
EXPOSE 80/tcp
# Mon, 19 Sep 2016 23:49:50 GMT
CMD ["apache2-foreground"]
# Tue, 20 Sep 2016 01:12:19 GMT
RUN a2enmod rewrite
# Tue, 20 Sep 2016 01:15:12 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 20 Sep 2016 01:15:12 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 01:15:13 GMT
ENV DRUPAL_VERSION=7.50
# Tue, 20 Sep 2016 01:15:13 GMT
ENV DRUPAL_MD5=f23905b0248d76f0fc8316692cd64753
# Tue, 20 Sep 2016 01:15:15 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:8bfa485f3f80daa6741f9747148af427a4395b68ea9c82934cfbff28106a7543`  
		Last Modified: Wed, 21 Sep 2016 22:45:19 GMT  
		Size: 12.3 MB (12262931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8265c859f339e4d1e24f32dfd8ce4f6d92829d89f6aef3beae5179cae5c97d28`  
		Last Modified: Wed, 21 Sep 2016 22:45:17 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3e90f27635772eb32823e249ac472a710d167dc3d41395fd65986959acece7`  
		Last Modified: Wed, 21 Sep 2016 22:45:23 GMT  
		Size: 19.7 MB (19679967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a39f1f5e7a00103476d70e4fb0e9ec0dbfa04541cf4e347665c80e79728009`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2085d51aaf68891dd2c2be65e5e7394c00bf61328533efe3efec68d06d99d9b`  
		Last Modified: Wed, 21 Sep 2016 22:45:14 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76220d4d0848941299583bd354bbb67a0d00cd9f80cf16ab2631a26a9f218c`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e661152c827cdda4a570bcc204ee5a7b174d315b77a64c9306d264f85d1c51`  
		Last Modified: Wed, 21 Sep 2016 22:45:16 GMT  
		Size: 8.1 MB (8072676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9623882a97c66d506d2393002d1dcc389f7b7eaeccd87cfa227fe20d1fd7d5c`  
		Last Modified: Wed, 21 Sep 2016 22:45:15 GMT  
		Size: 3.3 MB (3283740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7.50-fpm`

```console
$ docker pull drupal@sha256:14916e4e834e0680ab285fcf18c00d2c644b97f8c963bf8549d908e2f5017881
```

-	Platforms:
	-	linux; amd64

### `drupal:7.50-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165218605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e5c18af5e5cc5dd233f29769d12f4d20b6cbb23e1a57d00e96e2a75fa33c675`
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
# Mon, 19 Sep 2016 23:49:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Mon, 19 Sep 2016 23:49:51 GMT
ENV PHP_VERSION=7.0.11
# Mon, 19 Sep 2016 23:49:51 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Mon, 19 Sep 2016 23:49:51 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Mon, 19 Sep 2016 23:49:54 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Mon, 19 Sep 2016 23:49:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:53:57 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Sep 2016 23:53:59 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:53:59 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 23:54:00 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Sep 2016 23:54:01 GMT
EXPOSE 9000/tcp
# Mon, 19 Sep 2016 23:54:01 GMT
CMD ["php-fpm"]
# Tue, 20 Sep 2016 01:21:49 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 20 Sep 2016 01:21:50 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 01:21:50 GMT
ENV DRUPAL_VERSION=7.50
# Tue, 20 Sep 2016 01:21:50 GMT
ENV DRUPAL_MD5=f23905b0248d76f0fc8316692cd64753
# Tue, 20 Sep 2016 01:21:52 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:18513cd81218199cfe47ae60a3a0e2045ab321b2e2de78c911a48d9633e380f6`  
		Last Modified: Wed, 21 Sep 2016 22:46:12 GMT  
		Size: 12.3 MB (12262933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d474f7a66f14f81218aa18dfc0739e5e1e859d7e6958364e409b62fe87ae1e78`  
		Last Modified: Wed, 21 Sep 2016 22:46:08 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a2271453a843e89a144ab496ac3bfbdc846dba17570096e1a5a7f565352dfb7`  
		Last Modified: Wed, 21 Sep 2016 22:46:13 GMT  
		Size: 12.7 MB (12663737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba104992045e9cd937b232025cc1fb4a4afcae2c7506978e67a8f9130fed73fa`  
		Last Modified: Wed, 21 Sep 2016 22:46:06 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77b82743c6076a0236228021627bca2cd927f6737200e0b8d4bbd9f53b6b6b8`  
		Last Modified: Wed, 21 Sep 2016 22:46:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3983d5272d89040fdd48d3ad4deb87834e71aab94dcec8f24efe62ded12594ad`  
		Last Modified: Wed, 21 Sep 2016 22:46:05 GMT  
		Size: 7.7 KB (7685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0724c8805abc6eef2ae358a9a375882166b5bcf4472b2caf6bd35acbfa8e34fe`  
		Last Modified: Wed, 21 Sep 2016 22:46:09 GMT  
		Size: 8.1 MB (8050291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34e2a91c8e01ccdd447a474f608fdb7228e75bdd66afa973b9bb1de25e0c45a`  
		Last Modified: Wed, 21 Sep 2016 22:46:09 GMT  
		Size: 3.3 MB (3283743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7-fpm`

```console
$ docker pull drupal@sha256:14916e4e834e0680ab285fcf18c00d2c644b97f8c963bf8549d908e2f5017881
```

-	Platforms:
	-	linux; amd64

### `drupal:7-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165218605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e5c18af5e5cc5dd233f29769d12f4d20b6cbb23e1a57d00e96e2a75fa33c675`
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
# Mon, 19 Sep 2016 23:49:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Mon, 19 Sep 2016 23:49:51 GMT
ENV PHP_VERSION=7.0.11
# Mon, 19 Sep 2016 23:49:51 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Mon, 19 Sep 2016 23:49:51 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Mon, 19 Sep 2016 23:49:54 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Mon, 19 Sep 2016 23:49:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:53:57 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Sep 2016 23:53:59 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:53:59 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 23:54:00 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Sep 2016 23:54:01 GMT
EXPOSE 9000/tcp
# Mon, 19 Sep 2016 23:54:01 GMT
CMD ["php-fpm"]
# Tue, 20 Sep 2016 01:21:49 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 20 Sep 2016 01:21:50 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 01:21:50 GMT
ENV DRUPAL_VERSION=7.50
# Tue, 20 Sep 2016 01:21:50 GMT
ENV DRUPAL_MD5=f23905b0248d76f0fc8316692cd64753
# Tue, 20 Sep 2016 01:21:52 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:18513cd81218199cfe47ae60a3a0e2045ab321b2e2de78c911a48d9633e380f6`  
		Last Modified: Wed, 21 Sep 2016 22:46:12 GMT  
		Size: 12.3 MB (12262933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d474f7a66f14f81218aa18dfc0739e5e1e859d7e6958364e409b62fe87ae1e78`  
		Last Modified: Wed, 21 Sep 2016 22:46:08 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a2271453a843e89a144ab496ac3bfbdc846dba17570096e1a5a7f565352dfb7`  
		Last Modified: Wed, 21 Sep 2016 22:46:13 GMT  
		Size: 12.7 MB (12663737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba104992045e9cd937b232025cc1fb4a4afcae2c7506978e67a8f9130fed73fa`  
		Last Modified: Wed, 21 Sep 2016 22:46:06 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77b82743c6076a0236228021627bca2cd927f6737200e0b8d4bbd9f53b6b6b8`  
		Last Modified: Wed, 21 Sep 2016 22:46:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3983d5272d89040fdd48d3ad4deb87834e71aab94dcec8f24efe62ded12594ad`  
		Last Modified: Wed, 21 Sep 2016 22:46:05 GMT  
		Size: 7.7 KB (7685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0724c8805abc6eef2ae358a9a375882166b5bcf4472b2caf6bd35acbfa8e34fe`  
		Last Modified: Wed, 21 Sep 2016 22:46:09 GMT  
		Size: 8.1 MB (8050291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34e2a91c8e01ccdd447a474f608fdb7228e75bdd66afa973b9bb1de25e0c45a`  
		Last Modified: Wed, 21 Sep 2016 22:46:09 GMT  
		Size: 3.3 MB (3283743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.1.10-apache`

```console
$ docker pull drupal@sha256:826acda66c8715cd9dc54d870d863d768a968ff0d54adca453f3e9d3c0d1d6cb
```

-	Platforms:
	-	linux; amd64

### `drupal:8.1.10-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.8 MB (184790317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e85e9effd554b533831be72167b046b45941fafabcaf9055c3b313d13ac83c`
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
# Mon, 19 Sep 2016 23:47:02 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_VERSION=7.0.11
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Mon, 19 Sep 2016 23:47:06 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Mon, 19 Sep 2016 23:47:06 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Sep 2016 23:49:49 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 23:49:50 GMT
EXPOSE 80/tcp
# Mon, 19 Sep 2016 23:49:50 GMT
CMD ["apache2-foreground"]
# Tue, 20 Sep 2016 01:12:19 GMT
RUN a2enmod rewrite
# Tue, 20 Sep 2016 01:25:01 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 20 Sep 2016 01:25:02 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 01:25:03 GMT
WORKDIR /var/www/html
# Wed, 21 Sep 2016 22:44:50 GMT
ENV DRUPAL_VERSION=8.1.10
# Wed, 21 Sep 2016 22:44:51 GMT
ENV DRUPAL_MD5=ce373a1a7a075ff9035b1c95f54170a4
# Wed, 21 Sep 2016 22:44:58 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:8bfa485f3f80daa6741f9747148af427a4395b68ea9c82934cfbff28106a7543`  
		Last Modified: Wed, 21 Sep 2016 22:45:19 GMT  
		Size: 12.3 MB (12262931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8265c859f339e4d1e24f32dfd8ce4f6d92829d89f6aef3beae5179cae5c97d28`  
		Last Modified: Wed, 21 Sep 2016 22:45:17 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3e90f27635772eb32823e249ac472a710d167dc3d41395fd65986959acece7`  
		Last Modified: Wed, 21 Sep 2016 22:45:23 GMT  
		Size: 19.7 MB (19679967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a39f1f5e7a00103476d70e4fb0e9ec0dbfa04541cf4e347665c80e79728009`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2085d51aaf68891dd2c2be65e5e7394c00bf61328533efe3efec68d06d99d9b`  
		Last Modified: Wed, 21 Sep 2016 22:45:14 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76220d4d0848941299583bd354bbb67a0d00cd9f80cf16ab2631a26a9f218c`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8821c1f03df25ed2909b06a174b146f1b977897053f59c3a3fcb3dfc1887271`  
		Last Modified: Wed, 21 Sep 2016 22:46:40 GMT  
		Size: 8.4 MB (8428877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975ffad45e5fc8800346bc474ff73fcf5c4cdcea0d7a61a4d279b19f8f486ddf`  
		Last Modified: Wed, 21 Sep 2016 22:46:36 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09ae9444f49ba89f95b24906b8f6610cebdc682b2ebef5570d2bf7672874f27`  
		Last Modified: Wed, 21 Sep 2016 22:46:42 GMT  
		Size: 12.6 MB (12615906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.1-apache`

```console
$ docker pull drupal@sha256:826acda66c8715cd9dc54d870d863d768a968ff0d54adca453f3e9d3c0d1d6cb
```

-	Platforms:
	-	linux; amd64

### `drupal:8.1-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.8 MB (184790317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e85e9effd554b533831be72167b046b45941fafabcaf9055c3b313d13ac83c`
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
# Mon, 19 Sep 2016 23:47:02 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_VERSION=7.0.11
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Mon, 19 Sep 2016 23:47:06 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Mon, 19 Sep 2016 23:47:06 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Sep 2016 23:49:49 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 23:49:50 GMT
EXPOSE 80/tcp
# Mon, 19 Sep 2016 23:49:50 GMT
CMD ["apache2-foreground"]
# Tue, 20 Sep 2016 01:12:19 GMT
RUN a2enmod rewrite
# Tue, 20 Sep 2016 01:25:01 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 20 Sep 2016 01:25:02 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 01:25:03 GMT
WORKDIR /var/www/html
# Wed, 21 Sep 2016 22:44:50 GMT
ENV DRUPAL_VERSION=8.1.10
# Wed, 21 Sep 2016 22:44:51 GMT
ENV DRUPAL_MD5=ce373a1a7a075ff9035b1c95f54170a4
# Wed, 21 Sep 2016 22:44:58 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:8bfa485f3f80daa6741f9747148af427a4395b68ea9c82934cfbff28106a7543`  
		Last Modified: Wed, 21 Sep 2016 22:45:19 GMT  
		Size: 12.3 MB (12262931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8265c859f339e4d1e24f32dfd8ce4f6d92829d89f6aef3beae5179cae5c97d28`  
		Last Modified: Wed, 21 Sep 2016 22:45:17 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3e90f27635772eb32823e249ac472a710d167dc3d41395fd65986959acece7`  
		Last Modified: Wed, 21 Sep 2016 22:45:23 GMT  
		Size: 19.7 MB (19679967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a39f1f5e7a00103476d70e4fb0e9ec0dbfa04541cf4e347665c80e79728009`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2085d51aaf68891dd2c2be65e5e7394c00bf61328533efe3efec68d06d99d9b`  
		Last Modified: Wed, 21 Sep 2016 22:45:14 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76220d4d0848941299583bd354bbb67a0d00cd9f80cf16ab2631a26a9f218c`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8821c1f03df25ed2909b06a174b146f1b977897053f59c3a3fcb3dfc1887271`  
		Last Modified: Wed, 21 Sep 2016 22:46:40 GMT  
		Size: 8.4 MB (8428877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975ffad45e5fc8800346bc474ff73fcf5c4cdcea0d7a61a4d279b19f8f486ddf`  
		Last Modified: Wed, 21 Sep 2016 22:46:36 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09ae9444f49ba89f95b24906b8f6610cebdc682b2ebef5570d2bf7672874f27`  
		Last Modified: Wed, 21 Sep 2016 22:46:42 GMT  
		Size: 12.6 MB (12615906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8-apache`

```console
$ docker pull drupal@sha256:826acda66c8715cd9dc54d870d863d768a968ff0d54adca453f3e9d3c0d1d6cb
```

-	Platforms:
	-	linux; amd64

### `drupal:8-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.8 MB (184790317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e85e9effd554b533831be72167b046b45941fafabcaf9055c3b313d13ac83c`
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
# Mon, 19 Sep 2016 23:47:02 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_VERSION=7.0.11
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Mon, 19 Sep 2016 23:47:06 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Mon, 19 Sep 2016 23:47:06 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Sep 2016 23:49:49 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 23:49:50 GMT
EXPOSE 80/tcp
# Mon, 19 Sep 2016 23:49:50 GMT
CMD ["apache2-foreground"]
# Tue, 20 Sep 2016 01:12:19 GMT
RUN a2enmod rewrite
# Tue, 20 Sep 2016 01:25:01 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 20 Sep 2016 01:25:02 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 01:25:03 GMT
WORKDIR /var/www/html
# Wed, 21 Sep 2016 22:44:50 GMT
ENV DRUPAL_VERSION=8.1.10
# Wed, 21 Sep 2016 22:44:51 GMT
ENV DRUPAL_MD5=ce373a1a7a075ff9035b1c95f54170a4
# Wed, 21 Sep 2016 22:44:58 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:8bfa485f3f80daa6741f9747148af427a4395b68ea9c82934cfbff28106a7543`  
		Last Modified: Wed, 21 Sep 2016 22:45:19 GMT  
		Size: 12.3 MB (12262931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8265c859f339e4d1e24f32dfd8ce4f6d92829d89f6aef3beae5179cae5c97d28`  
		Last Modified: Wed, 21 Sep 2016 22:45:17 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3e90f27635772eb32823e249ac472a710d167dc3d41395fd65986959acece7`  
		Last Modified: Wed, 21 Sep 2016 22:45:23 GMT  
		Size: 19.7 MB (19679967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a39f1f5e7a00103476d70e4fb0e9ec0dbfa04541cf4e347665c80e79728009`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2085d51aaf68891dd2c2be65e5e7394c00bf61328533efe3efec68d06d99d9b`  
		Last Modified: Wed, 21 Sep 2016 22:45:14 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76220d4d0848941299583bd354bbb67a0d00cd9f80cf16ab2631a26a9f218c`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8821c1f03df25ed2909b06a174b146f1b977897053f59c3a3fcb3dfc1887271`  
		Last Modified: Wed, 21 Sep 2016 22:46:40 GMT  
		Size: 8.4 MB (8428877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975ffad45e5fc8800346bc474ff73fcf5c4cdcea0d7a61a4d279b19f8f486ddf`  
		Last Modified: Wed, 21 Sep 2016 22:46:36 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09ae9444f49ba89f95b24906b8f6610cebdc682b2ebef5570d2bf7672874f27`  
		Last Modified: Wed, 21 Sep 2016 22:46:42 GMT  
		Size: 12.6 MB (12615906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:apache`

```console
$ docker pull drupal@sha256:826acda66c8715cd9dc54d870d863d768a968ff0d54adca453f3e9d3c0d1d6cb
```

-	Platforms:
	-	linux; amd64

### `drupal:apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.8 MB (184790317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e85e9effd554b533831be72167b046b45941fafabcaf9055c3b313d13ac83c`
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
# Mon, 19 Sep 2016 23:47:02 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_VERSION=7.0.11
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Mon, 19 Sep 2016 23:47:06 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Mon, 19 Sep 2016 23:47:06 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Sep 2016 23:49:49 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 23:49:50 GMT
EXPOSE 80/tcp
# Mon, 19 Sep 2016 23:49:50 GMT
CMD ["apache2-foreground"]
# Tue, 20 Sep 2016 01:12:19 GMT
RUN a2enmod rewrite
# Tue, 20 Sep 2016 01:25:01 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 20 Sep 2016 01:25:02 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 01:25:03 GMT
WORKDIR /var/www/html
# Wed, 21 Sep 2016 22:44:50 GMT
ENV DRUPAL_VERSION=8.1.10
# Wed, 21 Sep 2016 22:44:51 GMT
ENV DRUPAL_MD5=ce373a1a7a075ff9035b1c95f54170a4
# Wed, 21 Sep 2016 22:44:58 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:8bfa485f3f80daa6741f9747148af427a4395b68ea9c82934cfbff28106a7543`  
		Last Modified: Wed, 21 Sep 2016 22:45:19 GMT  
		Size: 12.3 MB (12262931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8265c859f339e4d1e24f32dfd8ce4f6d92829d89f6aef3beae5179cae5c97d28`  
		Last Modified: Wed, 21 Sep 2016 22:45:17 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3e90f27635772eb32823e249ac472a710d167dc3d41395fd65986959acece7`  
		Last Modified: Wed, 21 Sep 2016 22:45:23 GMT  
		Size: 19.7 MB (19679967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a39f1f5e7a00103476d70e4fb0e9ec0dbfa04541cf4e347665c80e79728009`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2085d51aaf68891dd2c2be65e5e7394c00bf61328533efe3efec68d06d99d9b`  
		Last Modified: Wed, 21 Sep 2016 22:45:14 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76220d4d0848941299583bd354bbb67a0d00cd9f80cf16ab2631a26a9f218c`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8821c1f03df25ed2909b06a174b146f1b977897053f59c3a3fcb3dfc1887271`  
		Last Modified: Wed, 21 Sep 2016 22:46:40 GMT  
		Size: 8.4 MB (8428877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975ffad45e5fc8800346bc474ff73fcf5c4cdcea0d7a61a4d279b19f8f486ddf`  
		Last Modified: Wed, 21 Sep 2016 22:46:36 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09ae9444f49ba89f95b24906b8f6610cebdc682b2ebef5570d2bf7672874f27`  
		Last Modified: Wed, 21 Sep 2016 22:46:42 GMT  
		Size: 12.6 MB (12615906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.1.10`

```console
$ docker pull drupal@sha256:826acda66c8715cd9dc54d870d863d768a968ff0d54adca453f3e9d3c0d1d6cb
```

-	Platforms:
	-	linux; amd64

### `drupal:8.1.10` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.8 MB (184790317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e85e9effd554b533831be72167b046b45941fafabcaf9055c3b313d13ac83c`
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
# Mon, 19 Sep 2016 23:47:02 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_VERSION=7.0.11
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Mon, 19 Sep 2016 23:47:06 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Mon, 19 Sep 2016 23:47:06 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Sep 2016 23:49:49 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 23:49:50 GMT
EXPOSE 80/tcp
# Mon, 19 Sep 2016 23:49:50 GMT
CMD ["apache2-foreground"]
# Tue, 20 Sep 2016 01:12:19 GMT
RUN a2enmod rewrite
# Tue, 20 Sep 2016 01:25:01 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 20 Sep 2016 01:25:02 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 01:25:03 GMT
WORKDIR /var/www/html
# Wed, 21 Sep 2016 22:44:50 GMT
ENV DRUPAL_VERSION=8.1.10
# Wed, 21 Sep 2016 22:44:51 GMT
ENV DRUPAL_MD5=ce373a1a7a075ff9035b1c95f54170a4
# Wed, 21 Sep 2016 22:44:58 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:8bfa485f3f80daa6741f9747148af427a4395b68ea9c82934cfbff28106a7543`  
		Last Modified: Wed, 21 Sep 2016 22:45:19 GMT  
		Size: 12.3 MB (12262931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8265c859f339e4d1e24f32dfd8ce4f6d92829d89f6aef3beae5179cae5c97d28`  
		Last Modified: Wed, 21 Sep 2016 22:45:17 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3e90f27635772eb32823e249ac472a710d167dc3d41395fd65986959acece7`  
		Last Modified: Wed, 21 Sep 2016 22:45:23 GMT  
		Size: 19.7 MB (19679967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a39f1f5e7a00103476d70e4fb0e9ec0dbfa04541cf4e347665c80e79728009`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2085d51aaf68891dd2c2be65e5e7394c00bf61328533efe3efec68d06d99d9b`  
		Last Modified: Wed, 21 Sep 2016 22:45:14 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76220d4d0848941299583bd354bbb67a0d00cd9f80cf16ab2631a26a9f218c`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8821c1f03df25ed2909b06a174b146f1b977897053f59c3a3fcb3dfc1887271`  
		Last Modified: Wed, 21 Sep 2016 22:46:40 GMT  
		Size: 8.4 MB (8428877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975ffad45e5fc8800346bc474ff73fcf5c4cdcea0d7a61a4d279b19f8f486ddf`  
		Last Modified: Wed, 21 Sep 2016 22:46:36 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09ae9444f49ba89f95b24906b8f6610cebdc682b2ebef5570d2bf7672874f27`  
		Last Modified: Wed, 21 Sep 2016 22:46:42 GMT  
		Size: 12.6 MB (12615906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.1`

```console
$ docker pull drupal@sha256:826acda66c8715cd9dc54d870d863d768a968ff0d54adca453f3e9d3c0d1d6cb
```

-	Platforms:
	-	linux; amd64

### `drupal:8.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.8 MB (184790317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e85e9effd554b533831be72167b046b45941fafabcaf9055c3b313d13ac83c`
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
# Mon, 19 Sep 2016 23:47:02 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_VERSION=7.0.11
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Mon, 19 Sep 2016 23:47:06 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Mon, 19 Sep 2016 23:47:06 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Sep 2016 23:49:49 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 23:49:50 GMT
EXPOSE 80/tcp
# Mon, 19 Sep 2016 23:49:50 GMT
CMD ["apache2-foreground"]
# Tue, 20 Sep 2016 01:12:19 GMT
RUN a2enmod rewrite
# Tue, 20 Sep 2016 01:25:01 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 20 Sep 2016 01:25:02 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 01:25:03 GMT
WORKDIR /var/www/html
# Wed, 21 Sep 2016 22:44:50 GMT
ENV DRUPAL_VERSION=8.1.10
# Wed, 21 Sep 2016 22:44:51 GMT
ENV DRUPAL_MD5=ce373a1a7a075ff9035b1c95f54170a4
# Wed, 21 Sep 2016 22:44:58 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:8bfa485f3f80daa6741f9747148af427a4395b68ea9c82934cfbff28106a7543`  
		Last Modified: Wed, 21 Sep 2016 22:45:19 GMT  
		Size: 12.3 MB (12262931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8265c859f339e4d1e24f32dfd8ce4f6d92829d89f6aef3beae5179cae5c97d28`  
		Last Modified: Wed, 21 Sep 2016 22:45:17 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3e90f27635772eb32823e249ac472a710d167dc3d41395fd65986959acece7`  
		Last Modified: Wed, 21 Sep 2016 22:45:23 GMT  
		Size: 19.7 MB (19679967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a39f1f5e7a00103476d70e4fb0e9ec0dbfa04541cf4e347665c80e79728009`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2085d51aaf68891dd2c2be65e5e7394c00bf61328533efe3efec68d06d99d9b`  
		Last Modified: Wed, 21 Sep 2016 22:45:14 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76220d4d0848941299583bd354bbb67a0d00cd9f80cf16ab2631a26a9f218c`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8821c1f03df25ed2909b06a174b146f1b977897053f59c3a3fcb3dfc1887271`  
		Last Modified: Wed, 21 Sep 2016 22:46:40 GMT  
		Size: 8.4 MB (8428877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975ffad45e5fc8800346bc474ff73fcf5c4cdcea0d7a61a4d279b19f8f486ddf`  
		Last Modified: Wed, 21 Sep 2016 22:46:36 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09ae9444f49ba89f95b24906b8f6610cebdc682b2ebef5570d2bf7672874f27`  
		Last Modified: Wed, 21 Sep 2016 22:46:42 GMT  
		Size: 12.6 MB (12615906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8`

```console
$ docker pull drupal@sha256:826acda66c8715cd9dc54d870d863d768a968ff0d54adca453f3e9d3c0d1d6cb
```

-	Platforms:
	-	linux; amd64

### `drupal:8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.8 MB (184790317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e85e9effd554b533831be72167b046b45941fafabcaf9055c3b313d13ac83c`
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
# Mon, 19 Sep 2016 23:47:02 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_VERSION=7.0.11
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Mon, 19 Sep 2016 23:47:06 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Mon, 19 Sep 2016 23:47:06 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Sep 2016 23:49:49 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 23:49:50 GMT
EXPOSE 80/tcp
# Mon, 19 Sep 2016 23:49:50 GMT
CMD ["apache2-foreground"]
# Tue, 20 Sep 2016 01:12:19 GMT
RUN a2enmod rewrite
# Tue, 20 Sep 2016 01:25:01 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 20 Sep 2016 01:25:02 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 01:25:03 GMT
WORKDIR /var/www/html
# Wed, 21 Sep 2016 22:44:50 GMT
ENV DRUPAL_VERSION=8.1.10
# Wed, 21 Sep 2016 22:44:51 GMT
ENV DRUPAL_MD5=ce373a1a7a075ff9035b1c95f54170a4
# Wed, 21 Sep 2016 22:44:58 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:8bfa485f3f80daa6741f9747148af427a4395b68ea9c82934cfbff28106a7543`  
		Last Modified: Wed, 21 Sep 2016 22:45:19 GMT  
		Size: 12.3 MB (12262931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8265c859f339e4d1e24f32dfd8ce4f6d92829d89f6aef3beae5179cae5c97d28`  
		Last Modified: Wed, 21 Sep 2016 22:45:17 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3e90f27635772eb32823e249ac472a710d167dc3d41395fd65986959acece7`  
		Last Modified: Wed, 21 Sep 2016 22:45:23 GMT  
		Size: 19.7 MB (19679967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a39f1f5e7a00103476d70e4fb0e9ec0dbfa04541cf4e347665c80e79728009`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2085d51aaf68891dd2c2be65e5e7394c00bf61328533efe3efec68d06d99d9b`  
		Last Modified: Wed, 21 Sep 2016 22:45:14 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76220d4d0848941299583bd354bbb67a0d00cd9f80cf16ab2631a26a9f218c`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8821c1f03df25ed2909b06a174b146f1b977897053f59c3a3fcb3dfc1887271`  
		Last Modified: Wed, 21 Sep 2016 22:46:40 GMT  
		Size: 8.4 MB (8428877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975ffad45e5fc8800346bc474ff73fcf5c4cdcea0d7a61a4d279b19f8f486ddf`  
		Last Modified: Wed, 21 Sep 2016 22:46:36 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09ae9444f49ba89f95b24906b8f6610cebdc682b2ebef5570d2bf7672874f27`  
		Last Modified: Wed, 21 Sep 2016 22:46:42 GMT  
		Size: 12.6 MB (12615906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:latest`

```console
$ docker pull drupal@sha256:826acda66c8715cd9dc54d870d863d768a968ff0d54adca453f3e9d3c0d1d6cb
```

-	Platforms:
	-	linux; amd64

### `drupal:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.8 MB (184790317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e85e9effd554b533831be72167b046b45941fafabcaf9055c3b313d13ac83c`
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
# Mon, 19 Sep 2016 23:47:02 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_VERSION=7.0.11
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Mon, 19 Sep 2016 23:47:06 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Mon, 19 Sep 2016 23:47:06 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Sep 2016 23:49:49 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 23:49:50 GMT
EXPOSE 80/tcp
# Mon, 19 Sep 2016 23:49:50 GMT
CMD ["apache2-foreground"]
# Tue, 20 Sep 2016 01:12:19 GMT
RUN a2enmod rewrite
# Tue, 20 Sep 2016 01:25:01 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 20 Sep 2016 01:25:02 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 01:25:03 GMT
WORKDIR /var/www/html
# Wed, 21 Sep 2016 22:44:50 GMT
ENV DRUPAL_VERSION=8.1.10
# Wed, 21 Sep 2016 22:44:51 GMT
ENV DRUPAL_MD5=ce373a1a7a075ff9035b1c95f54170a4
# Wed, 21 Sep 2016 22:44:58 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:8bfa485f3f80daa6741f9747148af427a4395b68ea9c82934cfbff28106a7543`  
		Last Modified: Wed, 21 Sep 2016 22:45:19 GMT  
		Size: 12.3 MB (12262931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8265c859f339e4d1e24f32dfd8ce4f6d92829d89f6aef3beae5179cae5c97d28`  
		Last Modified: Wed, 21 Sep 2016 22:45:17 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3e90f27635772eb32823e249ac472a710d167dc3d41395fd65986959acece7`  
		Last Modified: Wed, 21 Sep 2016 22:45:23 GMT  
		Size: 19.7 MB (19679967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a39f1f5e7a00103476d70e4fb0e9ec0dbfa04541cf4e347665c80e79728009`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2085d51aaf68891dd2c2be65e5e7394c00bf61328533efe3efec68d06d99d9b`  
		Last Modified: Wed, 21 Sep 2016 22:45:14 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76220d4d0848941299583bd354bbb67a0d00cd9f80cf16ab2631a26a9f218c`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8821c1f03df25ed2909b06a174b146f1b977897053f59c3a3fcb3dfc1887271`  
		Last Modified: Wed, 21 Sep 2016 22:46:40 GMT  
		Size: 8.4 MB (8428877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975ffad45e5fc8800346bc474ff73fcf5c4cdcea0d7a61a4d279b19f8f486ddf`  
		Last Modified: Wed, 21 Sep 2016 22:46:36 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09ae9444f49ba89f95b24906b8f6610cebdc682b2ebef5570d2bf7672874f27`  
		Last Modified: Wed, 21 Sep 2016 22:46:42 GMT  
		Size: 12.6 MB (12615906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.1.10-fpm`

```console
$ docker pull drupal@sha256:d2cf4441951a07bf4c230a3d6740fa55b3641a53df3c9a66ad9b07e82b968a83
```

-	Platforms:
	-	linux; amd64

### `drupal:8.1.10-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174907352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:835342f27add957508682457efa678112d2b7a27ba0a669cb2bd9be287ba34d1`
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
# Mon, 19 Sep 2016 23:49:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Mon, 19 Sep 2016 23:49:51 GMT
ENV PHP_VERSION=7.0.11
# Mon, 19 Sep 2016 23:49:51 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Mon, 19 Sep 2016 23:49:51 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Mon, 19 Sep 2016 23:49:54 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Mon, 19 Sep 2016 23:49:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:53:57 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Sep 2016 23:53:59 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:53:59 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 23:54:00 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Sep 2016 23:54:01 GMT
EXPOSE 9000/tcp
# Mon, 19 Sep 2016 23:54:01 GMT
CMD ["php-fpm"]
# Tue, 20 Sep 2016 01:18:44 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 20 Sep 2016 01:18:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 01:18:45 GMT
WORKDIR /var/www/html
# Wed, 21 Sep 2016 22:44:59 GMT
ENV DRUPAL_VERSION=8.1.10
# Wed, 21 Sep 2016 22:44:59 GMT
ENV DRUPAL_MD5=ce373a1a7a075ff9035b1c95f54170a4
# Wed, 21 Sep 2016 22:45:05 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:18513cd81218199cfe47ae60a3a0e2045ab321b2e2de78c911a48d9633e380f6`  
		Last Modified: Wed, 21 Sep 2016 22:46:12 GMT  
		Size: 12.3 MB (12262933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d474f7a66f14f81218aa18dfc0739e5e1e859d7e6958364e409b62fe87ae1e78`  
		Last Modified: Wed, 21 Sep 2016 22:46:08 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a2271453a843e89a144ab496ac3bfbdc846dba17570096e1a5a7f565352dfb7`  
		Last Modified: Wed, 21 Sep 2016 22:46:13 GMT  
		Size: 12.7 MB (12663737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba104992045e9cd937b232025cc1fb4a4afcae2c7506978e67a8f9130fed73fa`  
		Last Modified: Wed, 21 Sep 2016 22:46:06 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77b82743c6076a0236228021627bca2cd927f6737200e0b8d4bbd9f53b6b6b8`  
		Last Modified: Wed, 21 Sep 2016 22:46:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3983d5272d89040fdd48d3ad4deb87834e71aab94dcec8f24efe62ded12594ad`  
		Last Modified: Wed, 21 Sep 2016 22:46:05 GMT  
		Size: 7.7 KB (7685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7e723f51e94e7e523cd8b123fa15348f69a02ec2f5e2ef2cc15d18fcd6101e`  
		Last Modified: Wed, 21 Sep 2016 22:48:04 GMT  
		Size: 8.4 MB (8406578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393a27dde04fc16992e57117d285b9a8ad5ecb2da87fc3676ef7dc243a464432`  
		Last Modified: Wed, 21 Sep 2016 22:48:00 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993077fbf4e2fc5712eeaab20c565c8527d3b6765fc2ad22fa8a452b5847a082`  
		Last Modified: Wed, 21 Sep 2016 22:48:06 GMT  
		Size: 12.6 MB (12615870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.1-fpm`

```console
$ docker pull drupal@sha256:d2cf4441951a07bf4c230a3d6740fa55b3641a53df3c9a66ad9b07e82b968a83
```

-	Platforms:
	-	linux; amd64

### `drupal:8.1-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174907352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:835342f27add957508682457efa678112d2b7a27ba0a669cb2bd9be287ba34d1`
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
# Mon, 19 Sep 2016 23:49:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Mon, 19 Sep 2016 23:49:51 GMT
ENV PHP_VERSION=7.0.11
# Mon, 19 Sep 2016 23:49:51 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Mon, 19 Sep 2016 23:49:51 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Mon, 19 Sep 2016 23:49:54 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Mon, 19 Sep 2016 23:49:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:53:57 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Sep 2016 23:53:59 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:53:59 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 23:54:00 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Sep 2016 23:54:01 GMT
EXPOSE 9000/tcp
# Mon, 19 Sep 2016 23:54:01 GMT
CMD ["php-fpm"]
# Tue, 20 Sep 2016 01:18:44 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 20 Sep 2016 01:18:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 01:18:45 GMT
WORKDIR /var/www/html
# Wed, 21 Sep 2016 22:44:59 GMT
ENV DRUPAL_VERSION=8.1.10
# Wed, 21 Sep 2016 22:44:59 GMT
ENV DRUPAL_MD5=ce373a1a7a075ff9035b1c95f54170a4
# Wed, 21 Sep 2016 22:45:05 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:18513cd81218199cfe47ae60a3a0e2045ab321b2e2de78c911a48d9633e380f6`  
		Last Modified: Wed, 21 Sep 2016 22:46:12 GMT  
		Size: 12.3 MB (12262933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d474f7a66f14f81218aa18dfc0739e5e1e859d7e6958364e409b62fe87ae1e78`  
		Last Modified: Wed, 21 Sep 2016 22:46:08 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a2271453a843e89a144ab496ac3bfbdc846dba17570096e1a5a7f565352dfb7`  
		Last Modified: Wed, 21 Sep 2016 22:46:13 GMT  
		Size: 12.7 MB (12663737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba104992045e9cd937b232025cc1fb4a4afcae2c7506978e67a8f9130fed73fa`  
		Last Modified: Wed, 21 Sep 2016 22:46:06 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77b82743c6076a0236228021627bca2cd927f6737200e0b8d4bbd9f53b6b6b8`  
		Last Modified: Wed, 21 Sep 2016 22:46:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3983d5272d89040fdd48d3ad4deb87834e71aab94dcec8f24efe62ded12594ad`  
		Last Modified: Wed, 21 Sep 2016 22:46:05 GMT  
		Size: 7.7 KB (7685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7e723f51e94e7e523cd8b123fa15348f69a02ec2f5e2ef2cc15d18fcd6101e`  
		Last Modified: Wed, 21 Sep 2016 22:48:04 GMT  
		Size: 8.4 MB (8406578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393a27dde04fc16992e57117d285b9a8ad5ecb2da87fc3676ef7dc243a464432`  
		Last Modified: Wed, 21 Sep 2016 22:48:00 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993077fbf4e2fc5712eeaab20c565c8527d3b6765fc2ad22fa8a452b5847a082`  
		Last Modified: Wed, 21 Sep 2016 22:48:06 GMT  
		Size: 12.6 MB (12615870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8-fpm`

```console
$ docker pull drupal@sha256:d2cf4441951a07bf4c230a3d6740fa55b3641a53df3c9a66ad9b07e82b968a83
```

-	Platforms:
	-	linux; amd64

### `drupal:8-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174907352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:835342f27add957508682457efa678112d2b7a27ba0a669cb2bd9be287ba34d1`
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
# Mon, 19 Sep 2016 23:49:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Mon, 19 Sep 2016 23:49:51 GMT
ENV PHP_VERSION=7.0.11
# Mon, 19 Sep 2016 23:49:51 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Mon, 19 Sep 2016 23:49:51 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Mon, 19 Sep 2016 23:49:54 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Mon, 19 Sep 2016 23:49:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:53:57 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Sep 2016 23:53:59 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:53:59 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 23:54:00 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Sep 2016 23:54:01 GMT
EXPOSE 9000/tcp
# Mon, 19 Sep 2016 23:54:01 GMT
CMD ["php-fpm"]
# Tue, 20 Sep 2016 01:18:44 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 20 Sep 2016 01:18:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 01:18:45 GMT
WORKDIR /var/www/html
# Wed, 21 Sep 2016 22:44:59 GMT
ENV DRUPAL_VERSION=8.1.10
# Wed, 21 Sep 2016 22:44:59 GMT
ENV DRUPAL_MD5=ce373a1a7a075ff9035b1c95f54170a4
# Wed, 21 Sep 2016 22:45:05 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:18513cd81218199cfe47ae60a3a0e2045ab321b2e2de78c911a48d9633e380f6`  
		Last Modified: Wed, 21 Sep 2016 22:46:12 GMT  
		Size: 12.3 MB (12262933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d474f7a66f14f81218aa18dfc0739e5e1e859d7e6958364e409b62fe87ae1e78`  
		Last Modified: Wed, 21 Sep 2016 22:46:08 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a2271453a843e89a144ab496ac3bfbdc846dba17570096e1a5a7f565352dfb7`  
		Last Modified: Wed, 21 Sep 2016 22:46:13 GMT  
		Size: 12.7 MB (12663737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba104992045e9cd937b232025cc1fb4a4afcae2c7506978e67a8f9130fed73fa`  
		Last Modified: Wed, 21 Sep 2016 22:46:06 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77b82743c6076a0236228021627bca2cd927f6737200e0b8d4bbd9f53b6b6b8`  
		Last Modified: Wed, 21 Sep 2016 22:46:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3983d5272d89040fdd48d3ad4deb87834e71aab94dcec8f24efe62ded12594ad`  
		Last Modified: Wed, 21 Sep 2016 22:46:05 GMT  
		Size: 7.7 KB (7685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7e723f51e94e7e523cd8b123fa15348f69a02ec2f5e2ef2cc15d18fcd6101e`  
		Last Modified: Wed, 21 Sep 2016 22:48:04 GMT  
		Size: 8.4 MB (8406578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393a27dde04fc16992e57117d285b9a8ad5ecb2da87fc3676ef7dc243a464432`  
		Last Modified: Wed, 21 Sep 2016 22:48:00 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993077fbf4e2fc5712eeaab20c565c8527d3b6765fc2ad22fa8a452b5847a082`  
		Last Modified: Wed, 21 Sep 2016 22:48:06 GMT  
		Size: 12.6 MB (12615870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:fpm`

```console
$ docker pull drupal@sha256:d2cf4441951a07bf4c230a3d6740fa55b3641a53df3c9a66ad9b07e82b968a83
```

-	Platforms:
	-	linux; amd64

### `drupal:fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174907352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:835342f27add957508682457efa678112d2b7a27ba0a669cb2bd9be287ba34d1`
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
# Mon, 19 Sep 2016 23:49:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Mon, 19 Sep 2016 23:49:51 GMT
ENV PHP_VERSION=7.0.11
# Mon, 19 Sep 2016 23:49:51 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Mon, 19 Sep 2016 23:49:51 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Mon, 19 Sep 2016 23:49:54 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Mon, 19 Sep 2016 23:49:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:53:57 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Sep 2016 23:53:59 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:53:59 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 23:54:00 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Sep 2016 23:54:01 GMT
EXPOSE 9000/tcp
# Mon, 19 Sep 2016 23:54:01 GMT
CMD ["php-fpm"]
# Tue, 20 Sep 2016 01:18:44 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 20 Sep 2016 01:18:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 01:18:45 GMT
WORKDIR /var/www/html
# Wed, 21 Sep 2016 22:44:59 GMT
ENV DRUPAL_VERSION=8.1.10
# Wed, 21 Sep 2016 22:44:59 GMT
ENV DRUPAL_MD5=ce373a1a7a075ff9035b1c95f54170a4
# Wed, 21 Sep 2016 22:45:05 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:18513cd81218199cfe47ae60a3a0e2045ab321b2e2de78c911a48d9633e380f6`  
		Last Modified: Wed, 21 Sep 2016 22:46:12 GMT  
		Size: 12.3 MB (12262933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d474f7a66f14f81218aa18dfc0739e5e1e859d7e6958364e409b62fe87ae1e78`  
		Last Modified: Wed, 21 Sep 2016 22:46:08 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a2271453a843e89a144ab496ac3bfbdc846dba17570096e1a5a7f565352dfb7`  
		Last Modified: Wed, 21 Sep 2016 22:46:13 GMT  
		Size: 12.7 MB (12663737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba104992045e9cd937b232025cc1fb4a4afcae2c7506978e67a8f9130fed73fa`  
		Last Modified: Wed, 21 Sep 2016 22:46:06 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77b82743c6076a0236228021627bca2cd927f6737200e0b8d4bbd9f53b6b6b8`  
		Last Modified: Wed, 21 Sep 2016 22:46:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3983d5272d89040fdd48d3ad4deb87834e71aab94dcec8f24efe62ded12594ad`  
		Last Modified: Wed, 21 Sep 2016 22:46:05 GMT  
		Size: 7.7 KB (7685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7e723f51e94e7e523cd8b123fa15348f69a02ec2f5e2ef2cc15d18fcd6101e`  
		Last Modified: Wed, 21 Sep 2016 22:48:04 GMT  
		Size: 8.4 MB (8406578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393a27dde04fc16992e57117d285b9a8ad5ecb2da87fc3676ef7dc243a464432`  
		Last Modified: Wed, 21 Sep 2016 22:48:00 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993077fbf4e2fc5712eeaab20c565c8527d3b6765fc2ad22fa8a452b5847a082`  
		Last Modified: Wed, 21 Sep 2016 22:48:06 GMT  
		Size: 12.6 MB (12615870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2.0-rc1-apache`

```console
$ docker pull drupal@sha256:8f2d2c27b515ca941a5637f0ae5191ff46b4e16e0afb0d6baf571ca87d44952a
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.0-rc1-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (184995193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5961792efcf7789cf05844950940c36aacffa47dca98cccf1f08795e60ce5b0a`
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
# Mon, 19 Sep 2016 23:47:02 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_VERSION=7.0.11
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Mon, 19 Sep 2016 23:47:06 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Mon, 19 Sep 2016 23:47:06 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Sep 2016 23:49:49 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 23:49:50 GMT
EXPOSE 80/tcp
# Mon, 19 Sep 2016 23:49:50 GMT
CMD ["apache2-foreground"]
# Tue, 20 Sep 2016 01:12:19 GMT
RUN a2enmod rewrite
# Tue, 20 Sep 2016 01:25:01 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 20 Sep 2016 01:25:02 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 01:25:03 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 01:25:27 GMT
ENV DRUPAL_VERSION=8.2.0-rc1
# Tue, 20 Sep 2016 01:25:27 GMT
ENV DRUPAL_MD5=c1f7f5f0d3cf742f97799497fd56af3e
# Tue, 20 Sep 2016 01:25:38 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:8bfa485f3f80daa6741f9747148af427a4395b68ea9c82934cfbff28106a7543`  
		Last Modified: Wed, 21 Sep 2016 22:45:19 GMT  
		Size: 12.3 MB (12262931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8265c859f339e4d1e24f32dfd8ce4f6d92829d89f6aef3beae5179cae5c97d28`  
		Last Modified: Wed, 21 Sep 2016 22:45:17 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3e90f27635772eb32823e249ac472a710d167dc3d41395fd65986959acece7`  
		Last Modified: Wed, 21 Sep 2016 22:45:23 GMT  
		Size: 19.7 MB (19679967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a39f1f5e7a00103476d70e4fb0e9ec0dbfa04541cf4e347665c80e79728009`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2085d51aaf68891dd2c2be65e5e7394c00bf61328533efe3efec68d06d99d9b`  
		Last Modified: Wed, 21 Sep 2016 22:45:14 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76220d4d0848941299583bd354bbb67a0d00cd9f80cf16ab2631a26a9f218c`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8821c1f03df25ed2909b06a174b146f1b977897053f59c3a3fcb3dfc1887271`  
		Last Modified: Wed, 21 Sep 2016 22:46:40 GMT  
		Size: 8.4 MB (8428877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975ffad45e5fc8800346bc474ff73fcf5c4cdcea0d7a61a4d279b19f8f486ddf`  
		Last Modified: Wed, 21 Sep 2016 22:46:36 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb35e7b656b94f9894fd9ff1f7302312830c685ac027fa6c72101bbc8dd3630f`  
		Last Modified: Wed, 21 Sep 2016 22:48:59 GMT  
		Size: 12.8 MB (12820782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2.0-apache`

```console
$ docker pull drupal@sha256:ec15cfd21f305d3ba7cf520e51ebc6d5660cfa3fcbd1fc4b8e9dbb2c062e2082
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.0-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (184997192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8de05c204a65340b79f5738d6cfa1060e9956bb869ae29d6c80b9f646cb946ec`
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
# Wed, 31 Aug 2016 00:21:26 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 16 Sep 2016 20:10:33 GMT
ENV PHP_VERSION=7.0.11
# Fri, 16 Sep 2016 20:10:33 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 16 Sep 2016 20:10:34 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 16 Sep 2016 20:10:37 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:10:37 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:12:56 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:12:57 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:12:58 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:12:58 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:12:58 GMT
EXPOSE 80/tcp
# Fri, 16 Sep 2016 20:12:58 GMT
CMD ["apache2-foreground"]
# Fri, 16 Sep 2016 21:39:53 GMT
RUN a2enmod rewrite
# Fri, 16 Sep 2016 21:43:10 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Fri, 16 Sep 2016 21:43:11 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Sep 2016 21:43:11 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 21:43:12 GMT
ENV DRUPAL_VERSION=8.2.0-rc1
# Fri, 16 Sep 2016 21:43:12 GMT
ENV DRUPAL_MD5=c1f7f5f0d3cf742f97799497fd56af3e
# Fri, 16 Sep 2016 21:43:18 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:4f6780388c2f29f373e682fee0033da3e451ea9a2b897f61edac5041da17e27f`  
		Last Modified: Fri, 16 Sep 2016 20:57:57 GMT  
		Size: 12.3 MB (12262930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af0b463988f37f056f184669df6638bc6ef2e812b17e359c3ca31c4f440d021`  
		Last Modified: Fri, 16 Sep 2016 20:57:54 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035c54b616677db310be763fa513f5736878bfe3cf7a5d009b2b32ae1fdbd9a2`  
		Last Modified: Fri, 16 Sep 2016 20:58:01 GMT  
		Size: 19.7 MB (19680450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e46d9d737b7455c16c42328fbf726d42a3131adcd21e15f12250e4d18fbbbe2`  
		Last Modified: Fri, 16 Sep 2016 20:57:55 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d18e0362977dd44127c6f7d74b30e176b05b9f49549b2905cb15196e349c143`  
		Last Modified: Fri, 16 Sep 2016 20:57:54 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e96ae46d64c53afd1cb3223b50c2d2508ff0f530d612119bd7f93dca7e76d63`  
		Last Modified: Fri, 16 Sep 2016 21:41:11 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74018c217b2af0c455b63b7f34ea7f96b1dae955a9eb2d59697c3da729ed7a73`  
		Last Modified: Fri, 16 Sep 2016 21:43:27 GMT  
		Size: 8.4 MB (8430900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e01e44721b0ce5928c881863283102ad0a08dee9486d9dad405ae0d1ad15692`  
		Last Modified: Fri, 16 Sep 2016 21:43:25 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96dd22b1ab30d56896bacf1f1a69581aa330900427f34d2b096b198093e6c92`  
		Last Modified: Fri, 16 Sep 2016 21:43:30 GMT  
		Size: 12.8 MB (12820782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2-apache`

```console
$ docker pull drupal@sha256:ec15cfd21f305d3ba7cf520e51ebc6d5660cfa3fcbd1fc4b8e9dbb2c062e2082
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (184997192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8de05c204a65340b79f5738d6cfa1060e9956bb869ae29d6c80b9f646cb946ec`
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
# Wed, 31 Aug 2016 00:21:26 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 16 Sep 2016 20:10:33 GMT
ENV PHP_VERSION=7.0.11
# Fri, 16 Sep 2016 20:10:33 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 16 Sep 2016 20:10:34 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 16 Sep 2016 20:10:37 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:10:37 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:12:56 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:12:57 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:12:58 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:12:58 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:12:58 GMT
EXPOSE 80/tcp
# Fri, 16 Sep 2016 20:12:58 GMT
CMD ["apache2-foreground"]
# Fri, 16 Sep 2016 21:39:53 GMT
RUN a2enmod rewrite
# Fri, 16 Sep 2016 21:43:10 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Fri, 16 Sep 2016 21:43:11 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Sep 2016 21:43:11 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 21:43:12 GMT
ENV DRUPAL_VERSION=8.2.0-rc1
# Fri, 16 Sep 2016 21:43:12 GMT
ENV DRUPAL_MD5=c1f7f5f0d3cf742f97799497fd56af3e
# Fri, 16 Sep 2016 21:43:18 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:4f6780388c2f29f373e682fee0033da3e451ea9a2b897f61edac5041da17e27f`  
		Last Modified: Fri, 16 Sep 2016 20:57:57 GMT  
		Size: 12.3 MB (12262930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af0b463988f37f056f184669df6638bc6ef2e812b17e359c3ca31c4f440d021`  
		Last Modified: Fri, 16 Sep 2016 20:57:54 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035c54b616677db310be763fa513f5736878bfe3cf7a5d009b2b32ae1fdbd9a2`  
		Last Modified: Fri, 16 Sep 2016 20:58:01 GMT  
		Size: 19.7 MB (19680450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e46d9d737b7455c16c42328fbf726d42a3131adcd21e15f12250e4d18fbbbe2`  
		Last Modified: Fri, 16 Sep 2016 20:57:55 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d18e0362977dd44127c6f7d74b30e176b05b9f49549b2905cb15196e349c143`  
		Last Modified: Fri, 16 Sep 2016 20:57:54 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e96ae46d64c53afd1cb3223b50c2d2508ff0f530d612119bd7f93dca7e76d63`  
		Last Modified: Fri, 16 Sep 2016 21:41:11 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74018c217b2af0c455b63b7f34ea7f96b1dae955a9eb2d59697c3da729ed7a73`  
		Last Modified: Fri, 16 Sep 2016 21:43:27 GMT  
		Size: 8.4 MB (8430900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e01e44721b0ce5928c881863283102ad0a08dee9486d9dad405ae0d1ad15692`  
		Last Modified: Fri, 16 Sep 2016 21:43:25 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96dd22b1ab30d56896bacf1f1a69581aa330900427f34d2b096b198093e6c92`  
		Last Modified: Fri, 16 Sep 2016 21:43:30 GMT  
		Size: 12.8 MB (12820782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2.0-rc1`

```console
$ docker pull drupal@sha256:8f2d2c27b515ca941a5637f0ae5191ff46b4e16e0afb0d6baf571ca87d44952a
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.0-rc1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (184995193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5961792efcf7789cf05844950940c36aacffa47dca98cccf1f08795e60ce5b0a`
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
# Mon, 19 Sep 2016 23:47:02 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_VERSION=7.0.11
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Mon, 19 Sep 2016 23:47:03 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Mon, 19 Sep 2016 23:47:06 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Mon, 19 Sep 2016 23:47:06 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Sep 2016 23:49:49 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:49:49 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 23:49:50 GMT
EXPOSE 80/tcp
# Mon, 19 Sep 2016 23:49:50 GMT
CMD ["apache2-foreground"]
# Tue, 20 Sep 2016 01:12:19 GMT
RUN a2enmod rewrite
# Tue, 20 Sep 2016 01:25:01 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 20 Sep 2016 01:25:02 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 01:25:03 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 01:25:27 GMT
ENV DRUPAL_VERSION=8.2.0-rc1
# Tue, 20 Sep 2016 01:25:27 GMT
ENV DRUPAL_MD5=c1f7f5f0d3cf742f97799497fd56af3e
# Tue, 20 Sep 2016 01:25:38 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:8bfa485f3f80daa6741f9747148af427a4395b68ea9c82934cfbff28106a7543`  
		Last Modified: Wed, 21 Sep 2016 22:45:19 GMT  
		Size: 12.3 MB (12262931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8265c859f339e4d1e24f32dfd8ce4f6d92829d89f6aef3beae5179cae5c97d28`  
		Last Modified: Wed, 21 Sep 2016 22:45:17 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3e90f27635772eb32823e249ac472a710d167dc3d41395fd65986959acece7`  
		Last Modified: Wed, 21 Sep 2016 22:45:23 GMT  
		Size: 19.7 MB (19679967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a39f1f5e7a00103476d70e4fb0e9ec0dbfa04541cf4e347665c80e79728009`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2085d51aaf68891dd2c2be65e5e7394c00bf61328533efe3efec68d06d99d9b`  
		Last Modified: Wed, 21 Sep 2016 22:45:14 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76220d4d0848941299583bd354bbb67a0d00cd9f80cf16ab2631a26a9f218c`  
		Last Modified: Wed, 21 Sep 2016 22:45:13 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8821c1f03df25ed2909b06a174b146f1b977897053f59c3a3fcb3dfc1887271`  
		Last Modified: Wed, 21 Sep 2016 22:46:40 GMT  
		Size: 8.4 MB (8428877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975ffad45e5fc8800346bc474ff73fcf5c4cdcea0d7a61a4d279b19f8f486ddf`  
		Last Modified: Wed, 21 Sep 2016 22:46:36 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb35e7b656b94f9894fd9ff1f7302312830c685ac027fa6c72101bbc8dd3630f`  
		Last Modified: Wed, 21 Sep 2016 22:48:59 GMT  
		Size: 12.8 MB (12820782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2.0`

```console
$ docker pull drupal@sha256:ec15cfd21f305d3ba7cf520e51ebc6d5660cfa3fcbd1fc4b8e9dbb2c062e2082
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (184997192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8de05c204a65340b79f5738d6cfa1060e9956bb869ae29d6c80b9f646cb946ec`
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
# Wed, 31 Aug 2016 00:21:26 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 16 Sep 2016 20:10:33 GMT
ENV PHP_VERSION=7.0.11
# Fri, 16 Sep 2016 20:10:33 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 16 Sep 2016 20:10:34 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 16 Sep 2016 20:10:37 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:10:37 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:12:56 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:12:57 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:12:58 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:12:58 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:12:58 GMT
EXPOSE 80/tcp
# Fri, 16 Sep 2016 20:12:58 GMT
CMD ["apache2-foreground"]
# Fri, 16 Sep 2016 21:39:53 GMT
RUN a2enmod rewrite
# Fri, 16 Sep 2016 21:43:10 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Fri, 16 Sep 2016 21:43:11 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Sep 2016 21:43:11 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 21:43:12 GMT
ENV DRUPAL_VERSION=8.2.0-rc1
# Fri, 16 Sep 2016 21:43:12 GMT
ENV DRUPAL_MD5=c1f7f5f0d3cf742f97799497fd56af3e
# Fri, 16 Sep 2016 21:43:18 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:4f6780388c2f29f373e682fee0033da3e451ea9a2b897f61edac5041da17e27f`  
		Last Modified: Fri, 16 Sep 2016 20:57:57 GMT  
		Size: 12.3 MB (12262930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af0b463988f37f056f184669df6638bc6ef2e812b17e359c3ca31c4f440d021`  
		Last Modified: Fri, 16 Sep 2016 20:57:54 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035c54b616677db310be763fa513f5736878bfe3cf7a5d009b2b32ae1fdbd9a2`  
		Last Modified: Fri, 16 Sep 2016 20:58:01 GMT  
		Size: 19.7 MB (19680450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e46d9d737b7455c16c42328fbf726d42a3131adcd21e15f12250e4d18fbbbe2`  
		Last Modified: Fri, 16 Sep 2016 20:57:55 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d18e0362977dd44127c6f7d74b30e176b05b9f49549b2905cb15196e349c143`  
		Last Modified: Fri, 16 Sep 2016 20:57:54 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e96ae46d64c53afd1cb3223b50c2d2508ff0f530d612119bd7f93dca7e76d63`  
		Last Modified: Fri, 16 Sep 2016 21:41:11 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74018c217b2af0c455b63b7f34ea7f96b1dae955a9eb2d59697c3da729ed7a73`  
		Last Modified: Fri, 16 Sep 2016 21:43:27 GMT  
		Size: 8.4 MB (8430900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e01e44721b0ce5928c881863283102ad0a08dee9486d9dad405ae0d1ad15692`  
		Last Modified: Fri, 16 Sep 2016 21:43:25 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96dd22b1ab30d56896bacf1f1a69581aa330900427f34d2b096b198093e6c92`  
		Last Modified: Fri, 16 Sep 2016 21:43:30 GMT  
		Size: 12.8 MB (12820782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2`

```console
$ docker pull drupal@sha256:ec15cfd21f305d3ba7cf520e51ebc6d5660cfa3fcbd1fc4b8e9dbb2c062e2082
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (184997192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8de05c204a65340b79f5738d6cfa1060e9956bb869ae29d6c80b9f646cb946ec`
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
# Wed, 31 Aug 2016 00:21:26 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 16 Sep 2016 20:10:33 GMT
ENV PHP_VERSION=7.0.11
# Fri, 16 Sep 2016 20:10:33 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 16 Sep 2016 20:10:34 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 16 Sep 2016 20:10:37 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:10:37 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:12:56 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:12:57 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:12:58 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:12:58 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:12:58 GMT
EXPOSE 80/tcp
# Fri, 16 Sep 2016 20:12:58 GMT
CMD ["apache2-foreground"]
# Fri, 16 Sep 2016 21:39:53 GMT
RUN a2enmod rewrite
# Fri, 16 Sep 2016 21:43:10 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Fri, 16 Sep 2016 21:43:11 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Sep 2016 21:43:11 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 21:43:12 GMT
ENV DRUPAL_VERSION=8.2.0-rc1
# Fri, 16 Sep 2016 21:43:12 GMT
ENV DRUPAL_MD5=c1f7f5f0d3cf742f97799497fd56af3e
# Fri, 16 Sep 2016 21:43:18 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:4f6780388c2f29f373e682fee0033da3e451ea9a2b897f61edac5041da17e27f`  
		Last Modified: Fri, 16 Sep 2016 20:57:57 GMT  
		Size: 12.3 MB (12262930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af0b463988f37f056f184669df6638bc6ef2e812b17e359c3ca31c4f440d021`  
		Last Modified: Fri, 16 Sep 2016 20:57:54 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035c54b616677db310be763fa513f5736878bfe3cf7a5d009b2b32ae1fdbd9a2`  
		Last Modified: Fri, 16 Sep 2016 20:58:01 GMT  
		Size: 19.7 MB (19680450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e46d9d737b7455c16c42328fbf726d42a3131adcd21e15f12250e4d18fbbbe2`  
		Last Modified: Fri, 16 Sep 2016 20:57:55 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d18e0362977dd44127c6f7d74b30e176b05b9f49549b2905cb15196e349c143`  
		Last Modified: Fri, 16 Sep 2016 20:57:54 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e96ae46d64c53afd1cb3223b50c2d2508ff0f530d612119bd7f93dca7e76d63`  
		Last Modified: Fri, 16 Sep 2016 21:41:11 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74018c217b2af0c455b63b7f34ea7f96b1dae955a9eb2d59697c3da729ed7a73`  
		Last Modified: Fri, 16 Sep 2016 21:43:27 GMT  
		Size: 8.4 MB (8430900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e01e44721b0ce5928c881863283102ad0a08dee9486d9dad405ae0d1ad15692`  
		Last Modified: Fri, 16 Sep 2016 21:43:25 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96dd22b1ab30d56896bacf1f1a69581aa330900427f34d2b096b198093e6c92`  
		Last Modified: Fri, 16 Sep 2016 21:43:30 GMT  
		Size: 12.8 MB (12820782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2.0-rc1-fpm`

```console
$ docker pull drupal@sha256:6eb1cf52dee6ad80b450cc79bef6e6698bf1c16342ae3ce669a66a0ef270d207
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.0-rc1-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175112251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a784c87c20590e9bd50d27775a8ea6bd2eacb58e499a6985c99125f6b6c1926`
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
# Mon, 19 Sep 2016 23:49:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Mon, 19 Sep 2016 23:49:51 GMT
ENV PHP_VERSION=7.0.11
# Mon, 19 Sep 2016 23:49:51 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Mon, 19 Sep 2016 23:49:51 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Mon, 19 Sep 2016 23:49:54 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Mon, 19 Sep 2016 23:49:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:53:57 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Sep 2016 23:53:59 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:53:59 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 23:54:00 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Sep 2016 23:54:01 GMT
EXPOSE 9000/tcp
# Mon, 19 Sep 2016 23:54:01 GMT
CMD ["php-fpm"]
# Tue, 20 Sep 2016 01:18:44 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 20 Sep 2016 01:18:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 01:18:45 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 01:18:46 GMT
ENV DRUPAL_VERSION=8.2.0-rc1
# Tue, 20 Sep 2016 01:18:46 GMT
ENV DRUPAL_MD5=c1f7f5f0d3cf742f97799497fd56af3e
# Tue, 20 Sep 2016 01:18:57 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:18513cd81218199cfe47ae60a3a0e2045ab321b2e2de78c911a48d9633e380f6`  
		Last Modified: Wed, 21 Sep 2016 22:46:12 GMT  
		Size: 12.3 MB (12262933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d474f7a66f14f81218aa18dfc0739e5e1e859d7e6958364e409b62fe87ae1e78`  
		Last Modified: Wed, 21 Sep 2016 22:46:08 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a2271453a843e89a144ab496ac3bfbdc846dba17570096e1a5a7f565352dfb7`  
		Last Modified: Wed, 21 Sep 2016 22:46:13 GMT  
		Size: 12.7 MB (12663737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba104992045e9cd937b232025cc1fb4a4afcae2c7506978e67a8f9130fed73fa`  
		Last Modified: Wed, 21 Sep 2016 22:46:06 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77b82743c6076a0236228021627bca2cd927f6737200e0b8d4bbd9f53b6b6b8`  
		Last Modified: Wed, 21 Sep 2016 22:46:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3983d5272d89040fdd48d3ad4deb87834e71aab94dcec8f24efe62ded12594ad`  
		Last Modified: Wed, 21 Sep 2016 22:46:05 GMT  
		Size: 7.7 KB (7685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7e723f51e94e7e523cd8b123fa15348f69a02ec2f5e2ef2cc15d18fcd6101e`  
		Last Modified: Wed, 21 Sep 2016 22:48:04 GMT  
		Size: 8.4 MB (8406578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393a27dde04fc16992e57117d285b9a8ad5ecb2da87fc3676ef7dc243a464432`  
		Last Modified: Wed, 21 Sep 2016 22:48:00 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12116a7b99242856cb775a63c6009bf634376035dfb2207e16419e4ce7640b76`  
		Last Modified: Wed, 21 Sep 2016 22:50:13 GMT  
		Size: 12.8 MB (12820769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2.0-fpm`

```console
$ docker pull drupal@sha256:6eb1cf52dee6ad80b450cc79bef6e6698bf1c16342ae3ce669a66a0ef270d207
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.0-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175112251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a784c87c20590e9bd50d27775a8ea6bd2eacb58e499a6985c99125f6b6c1926`
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
# Mon, 19 Sep 2016 23:49:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Mon, 19 Sep 2016 23:49:51 GMT
ENV PHP_VERSION=7.0.11
# Mon, 19 Sep 2016 23:49:51 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Mon, 19 Sep 2016 23:49:51 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Mon, 19 Sep 2016 23:49:54 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Mon, 19 Sep 2016 23:49:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:53:57 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Sep 2016 23:53:59 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:53:59 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 23:54:00 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Sep 2016 23:54:01 GMT
EXPOSE 9000/tcp
# Mon, 19 Sep 2016 23:54:01 GMT
CMD ["php-fpm"]
# Tue, 20 Sep 2016 01:18:44 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 20 Sep 2016 01:18:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Sep 2016 01:18:45 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 01:18:46 GMT
ENV DRUPAL_VERSION=8.2.0-rc1
# Tue, 20 Sep 2016 01:18:46 GMT
ENV DRUPAL_MD5=c1f7f5f0d3cf742f97799497fd56af3e
# Tue, 20 Sep 2016 01:18:57 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:18513cd81218199cfe47ae60a3a0e2045ab321b2e2de78c911a48d9633e380f6`  
		Last Modified: Wed, 21 Sep 2016 22:46:12 GMT  
		Size: 12.3 MB (12262933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d474f7a66f14f81218aa18dfc0739e5e1e859d7e6958364e409b62fe87ae1e78`  
		Last Modified: Wed, 21 Sep 2016 22:46:08 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a2271453a843e89a144ab496ac3bfbdc846dba17570096e1a5a7f565352dfb7`  
		Last Modified: Wed, 21 Sep 2016 22:46:13 GMT  
		Size: 12.7 MB (12663737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba104992045e9cd937b232025cc1fb4a4afcae2c7506978e67a8f9130fed73fa`  
		Last Modified: Wed, 21 Sep 2016 22:46:06 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77b82743c6076a0236228021627bca2cd927f6737200e0b8d4bbd9f53b6b6b8`  
		Last Modified: Wed, 21 Sep 2016 22:46:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3983d5272d89040fdd48d3ad4deb87834e71aab94dcec8f24efe62ded12594ad`  
		Last Modified: Wed, 21 Sep 2016 22:46:05 GMT  
		Size: 7.7 KB (7685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7e723f51e94e7e523cd8b123fa15348f69a02ec2f5e2ef2cc15d18fcd6101e`  
		Last Modified: Wed, 21 Sep 2016 22:48:04 GMT  
		Size: 8.4 MB (8406578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393a27dde04fc16992e57117d285b9a8ad5ecb2da87fc3676ef7dc243a464432`  
		Last Modified: Wed, 21 Sep 2016 22:48:00 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12116a7b99242856cb775a63c6009bf634376035dfb2207e16419e4ce7640b76`  
		Last Modified: Wed, 21 Sep 2016 22:50:13 GMT  
		Size: 12.8 MB (12820769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2-fpm`

```console
$ docker pull drupal@sha256:f90eea4c905473c7f28adfd541b29cc404fc4f26f67799cef0b688bd56883f85
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175116487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a47a034de75c3809f041359d5945f0a3761497c5bed58ead64497b4de117d6e0`
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
# Wed, 31 Aug 2016 00:23:57 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 16 Sep 2016 20:12:59 GMT
ENV PHP_VERSION=7.0.11
# Fri, 16 Sep 2016 20:12:59 GMT
ENV PHP_FILENAME=php-7.0.11.tar.xz
# Fri, 16 Sep 2016 20:12:59 GMT
ENV PHP_SHA256=d4cccea8da1d27c11b89386f8b8e95692ad3356610d571253d00ca67d524c735
# Fri, 16 Sep 2016 20:13:02 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:13:03 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:16:35 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:16:36 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:16:36 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:16:37 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 16 Sep 2016 20:16:37 GMT
EXPOSE 9000/tcp
# Fri, 16 Sep 2016 20:16:38 GMT
CMD ["php-fpm"]
# Fri, 16 Sep 2016 21:45:41 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Fri, 16 Sep 2016 21:45:42 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Sep 2016 21:45:42 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 21:45:43 GMT
ENV DRUPAL_VERSION=8.2.0-rc1
# Fri, 16 Sep 2016 21:45:43 GMT
ENV DRUPAL_MD5=c1f7f5f0d3cf742f97799497fd56af3e
# Fri, 16 Sep 2016 21:45:49 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:624e766219f907f5499bf78882219a4b025fa6935f6e4e52c97c37efaa8cc05d`  
		Last Modified: Fri, 16 Sep 2016 20:58:45 GMT  
		Size: 12.3 MB (12262926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2d4c3c5b2e0f03ec800a4e7fccb9b78c5b799c08a094bb5cf23758bf467ac1`  
		Last Modified: Fri, 16 Sep 2016 20:58:41 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89d7e7ab53e2c84ab613261bdbc3913a4f2cd9a5f225feafa3eea2e644076c1`  
		Last Modified: Fri, 16 Sep 2016 20:58:43 GMT  
		Size: 12.7 MB (12664234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f966903a2738337fefa8f5f5363526a15c352939cfdfa9e908ae1ff9fed9c5`  
		Last Modified: Fri, 16 Sep 2016 20:58:39 GMT  
		Size: 1.8 KB (1834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0021b1668feb44e009dfb75c5fd47a78a4666c9f0d8e2b06452f019df44c97bb`  
		Last Modified: Fri, 16 Sep 2016 20:58:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03980b5ab0816f19ef830db8137009db5221ac423eb3ea61376d7a90b7799b8c`  
		Last Modified: Fri, 16 Sep 2016 20:58:39 GMT  
		Size: 7.7 KB (7689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10aaa85609f1bcdf90bb947bde69fbcb7e79074553a25e598ab2a5ac6be84534`  
		Last Modified: Fri, 16 Sep 2016 21:45:59 GMT  
		Size: 8.4 MB (8408601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c5213db60405bbfbe6993d39036341e752f9614d2bf3131e9e42aa3b97d0925`  
		Last Modified: Fri, 16 Sep 2016 21:45:56 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3715c21be5504d34eb9f1f5f23636377570c254d850b918b4fde38f9ea811750`  
		Last Modified: Fri, 16 Sep 2016 21:46:01 GMT  
		Size: 12.8 MB (12820781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
