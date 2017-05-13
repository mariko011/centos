<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `drupal`

-	[`drupal:8.3.2-apache`](#drupal832-apache)
-	[`drupal:8.3-apache`](#drupal83-apache)
-	[`drupal:8-apache`](#drupal8-apache)
-	[`drupal:apache`](#drupalapache)
-	[`drupal:8.3.2`](#drupal832)
-	[`drupal:8.3`](#drupal83)
-	[`drupal:8`](#drupal8)
-	[`drupal:latest`](#drupallatest)
-	[`drupal:8.3.2-fpm`](#drupal832-fpm)
-	[`drupal:8.3-fpm`](#drupal83-fpm)
-	[`drupal:8-fpm`](#drupal8-fpm)
-	[`drupal:fpm`](#drupalfpm)
-	[`drupal:8.3.2-fpm-alpine`](#drupal832-fpm-alpine)
-	[`drupal:8.3-fpm-alpine`](#drupal83-fpm-alpine)
-	[`drupal:8-fpm-alpine`](#drupal8-fpm-alpine)
-	[`drupal:fpm-alpine`](#drupalfpm-alpine)
-	[`drupal:8.2.8-apache`](#drupal828-apache)
-	[`drupal:8.2-apache`](#drupal82-apache)
-	[`drupal:8.2.8`](#drupal828)
-	[`drupal:8.2`](#drupal82)
-	[`drupal:8.2.8-fpm`](#drupal828-fpm)
-	[`drupal:8.2-fpm`](#drupal82-fpm)
-	[`drupal:8.2.8-fpm-alpine`](#drupal828-fpm-alpine)
-	[`drupal:8.2-fpm-alpine`](#drupal82-fpm-alpine)
-	[`drupal:7.54-apache`](#drupal754-apache)
-	[`drupal:7-apache`](#drupal7-apache)
-	[`drupal:7.54`](#drupal754)
-	[`drupal:7`](#drupal7)
-	[`drupal:7.54-fpm`](#drupal754-fpm)
-	[`drupal:7-fpm`](#drupal7-fpm)
-	[`drupal:7.54-fpm-alpine`](#drupal754-fpm-alpine)
-	[`drupal:7-fpm-alpine`](#drupal7-fpm-alpine)

## `drupal:8.3.2-apache`

```console
$ docker pull drupal@sha256:8148cca93eb5dedad4a2ff26e9f4fb503207b946aa46265bee9bfa89061e8311
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3.2-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (179017306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a8e333cfedd040e79fd7e1b23dbbfd4e8d34cc9552218e0a7ae70e71cb74d03`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Fri, 12 May 2017 23:58:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 12 May 2017 23:58:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 12 May 2017 23:58:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 12 May 2017 23:59:00 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 13 May 2017 00:10:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 13 May 2017 00:10:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 13 May 2017 00:10:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 13 May 2017 00:10:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 13 May 2017 00:10:46 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 13 May 2017 00:10:47 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 13 May 2017 00:10:48 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 13 May 2017 00:10:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 00:10:51 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Sat, 13 May 2017 00:10:52 GMT
ENV PHP_VERSION=7.1.5
# Sat, 13 May 2017 00:10:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 00:10:53 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Sat, 13 May 2017 00:11:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 13 May 2017 00:11:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:43 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Sat, 13 May 2017 00:13:45 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 13 May 2017 00:13:47 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:48 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 00:13:49 GMT
EXPOSE 80/tcp
# Sat, 13 May 2017 00:13:49 GMT
CMD ["apache2-foreground"]
# Sat, 13 May 2017 03:14:10 GMT
RUN a2enmod rewrite
# Sat, 13 May 2017 03:15:13 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 13 May 2017 03:15:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 13 May 2017 03:15:15 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 03:18:38 GMT
ENV DRUPAL_VERSION=8.3.2
# Sat, 13 May 2017 03:18:39 GMT
ENV DRUPAL_MD5=d1fce1ec78ca1bcde4a346f4c06531b4
# Sat, 13 May 2017 03:18:45 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370377701f89cff89a25897f719848740ad95b97828c7ffdf8444bdafef6436b`  
		Last Modified: Sat, 13 May 2017 01:37:32 GMT  
		Size: 82.5 MB (82498638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455c73a122bc8a30bbb47aacf289778a636517eb5d841408435625ec4394a9c7`  
		Last Modified: Sat, 13 May 2017 01:37:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb71bac61c47a0055de7152b653793de87fd4714cc299f481f1c203cb68fc9ea`  
		Last Modified: Sat, 13 May 2017 01:42:16 GMT  
		Size: 2.8 MB (2788864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a1d91ad4e347bdc4a030b9c7b0890e16ab9c944ede92833fe561242bbb0e7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e0256ba4b0dcbb46fb72849d19a1dd78acf09f79d4e4cd69851c516940cbb7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14fbe7a9dfbfa8ee0219fece98b46a36980c4c426f125b2d7f39d0ebbf1f97b`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f36dd91c0ab80629aba5f3a2285c02127aedaec768787bc0a8a3ad9513b62ff`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e4a1f87acca582dd6b3b85d29178fc58396357465c3c6decf5d753e4791b7a`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 12.9 MB (12930707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5541ee478ff0dd2b1fcad9cdf437cc50455376e53164fbf6a64bad8aa31066`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb657ecb3703177a88c03504c9c5a7440d60fc19b8a323840c3c738577affe4`  
		Last Modified: Sat, 13 May 2017 01:42:14 GMT  
		Size: 13.5 MB (13524605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8769771ac5f46d86ef701fcc49a9f34fd982e14e1d81159f45dd1123bc9160cf`  
		Last Modified: Sat, 13 May 2017 01:42:11 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08c0f680a7abc14c907d83b5514ce3d9ea958e85fcde9790800c511f9161cc5`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed88a13946159ef0b85b45c9420aff54dafbd2d8787515574133bdbbb4d02ed6`  
		Last Modified: Sat, 13 May 2017 03:23:33 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d4806d2c645e78964983c0876dbfdf5f4a1b60f8d608a08e8ad9e9ea23246a`  
		Last Modified: Sat, 13 May 2017 03:23:35 GMT  
		Size: 1.9 MB (1881132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea278863e0e1b6bf66f5d8d6b95211da2425420cda9e0869ed9f75a16a21e4eb`  
		Last Modified: Sat, 13 May 2017 03:23:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec293572caaf2c118fd57fef3a8e918b43e9ef2e700445c45c0bb077cc97cf4f`  
		Last Modified: Sat, 13 May 2017 03:27:03 GMT  
		Size: 12.8 MB (12802662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.3-apache`

```console
$ docker pull drupal@sha256:8148cca93eb5dedad4a2ff26e9f4fb503207b946aa46265bee9bfa89061e8311
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (179017306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a8e333cfedd040e79fd7e1b23dbbfd4e8d34cc9552218e0a7ae70e71cb74d03`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Fri, 12 May 2017 23:58:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 12 May 2017 23:58:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 12 May 2017 23:58:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 12 May 2017 23:59:00 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 13 May 2017 00:10:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 13 May 2017 00:10:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 13 May 2017 00:10:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 13 May 2017 00:10:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 13 May 2017 00:10:46 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 13 May 2017 00:10:47 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 13 May 2017 00:10:48 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 13 May 2017 00:10:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 00:10:51 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Sat, 13 May 2017 00:10:52 GMT
ENV PHP_VERSION=7.1.5
# Sat, 13 May 2017 00:10:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 00:10:53 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Sat, 13 May 2017 00:11:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 13 May 2017 00:11:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:43 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Sat, 13 May 2017 00:13:45 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 13 May 2017 00:13:47 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:48 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 00:13:49 GMT
EXPOSE 80/tcp
# Sat, 13 May 2017 00:13:49 GMT
CMD ["apache2-foreground"]
# Sat, 13 May 2017 03:14:10 GMT
RUN a2enmod rewrite
# Sat, 13 May 2017 03:15:13 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 13 May 2017 03:15:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 13 May 2017 03:15:15 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 03:18:38 GMT
ENV DRUPAL_VERSION=8.3.2
# Sat, 13 May 2017 03:18:39 GMT
ENV DRUPAL_MD5=d1fce1ec78ca1bcde4a346f4c06531b4
# Sat, 13 May 2017 03:18:45 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370377701f89cff89a25897f719848740ad95b97828c7ffdf8444bdafef6436b`  
		Last Modified: Sat, 13 May 2017 01:37:32 GMT  
		Size: 82.5 MB (82498638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455c73a122bc8a30bbb47aacf289778a636517eb5d841408435625ec4394a9c7`  
		Last Modified: Sat, 13 May 2017 01:37:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb71bac61c47a0055de7152b653793de87fd4714cc299f481f1c203cb68fc9ea`  
		Last Modified: Sat, 13 May 2017 01:42:16 GMT  
		Size: 2.8 MB (2788864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a1d91ad4e347bdc4a030b9c7b0890e16ab9c944ede92833fe561242bbb0e7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e0256ba4b0dcbb46fb72849d19a1dd78acf09f79d4e4cd69851c516940cbb7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14fbe7a9dfbfa8ee0219fece98b46a36980c4c426f125b2d7f39d0ebbf1f97b`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f36dd91c0ab80629aba5f3a2285c02127aedaec768787bc0a8a3ad9513b62ff`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e4a1f87acca582dd6b3b85d29178fc58396357465c3c6decf5d753e4791b7a`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 12.9 MB (12930707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5541ee478ff0dd2b1fcad9cdf437cc50455376e53164fbf6a64bad8aa31066`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb657ecb3703177a88c03504c9c5a7440d60fc19b8a323840c3c738577affe4`  
		Last Modified: Sat, 13 May 2017 01:42:14 GMT  
		Size: 13.5 MB (13524605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8769771ac5f46d86ef701fcc49a9f34fd982e14e1d81159f45dd1123bc9160cf`  
		Last Modified: Sat, 13 May 2017 01:42:11 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08c0f680a7abc14c907d83b5514ce3d9ea958e85fcde9790800c511f9161cc5`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed88a13946159ef0b85b45c9420aff54dafbd2d8787515574133bdbbb4d02ed6`  
		Last Modified: Sat, 13 May 2017 03:23:33 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d4806d2c645e78964983c0876dbfdf5f4a1b60f8d608a08e8ad9e9ea23246a`  
		Last Modified: Sat, 13 May 2017 03:23:35 GMT  
		Size: 1.9 MB (1881132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea278863e0e1b6bf66f5d8d6b95211da2425420cda9e0869ed9f75a16a21e4eb`  
		Last Modified: Sat, 13 May 2017 03:23:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec293572caaf2c118fd57fef3a8e918b43e9ef2e700445c45c0bb077cc97cf4f`  
		Last Modified: Sat, 13 May 2017 03:27:03 GMT  
		Size: 12.8 MB (12802662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8-apache`

```console
$ docker pull drupal@sha256:8148cca93eb5dedad4a2ff26e9f4fb503207b946aa46265bee9bfa89061e8311
```

-	Platforms:
	-	linux; amd64

### `drupal:8-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (179017306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a8e333cfedd040e79fd7e1b23dbbfd4e8d34cc9552218e0a7ae70e71cb74d03`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Fri, 12 May 2017 23:58:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 12 May 2017 23:58:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 12 May 2017 23:58:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 12 May 2017 23:59:00 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 13 May 2017 00:10:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 13 May 2017 00:10:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 13 May 2017 00:10:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 13 May 2017 00:10:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 13 May 2017 00:10:46 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 13 May 2017 00:10:47 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 13 May 2017 00:10:48 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 13 May 2017 00:10:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 00:10:51 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Sat, 13 May 2017 00:10:52 GMT
ENV PHP_VERSION=7.1.5
# Sat, 13 May 2017 00:10:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 00:10:53 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Sat, 13 May 2017 00:11:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 13 May 2017 00:11:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:43 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Sat, 13 May 2017 00:13:45 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 13 May 2017 00:13:47 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:48 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 00:13:49 GMT
EXPOSE 80/tcp
# Sat, 13 May 2017 00:13:49 GMT
CMD ["apache2-foreground"]
# Sat, 13 May 2017 03:14:10 GMT
RUN a2enmod rewrite
# Sat, 13 May 2017 03:15:13 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 13 May 2017 03:15:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 13 May 2017 03:15:15 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 03:18:38 GMT
ENV DRUPAL_VERSION=8.3.2
# Sat, 13 May 2017 03:18:39 GMT
ENV DRUPAL_MD5=d1fce1ec78ca1bcde4a346f4c06531b4
# Sat, 13 May 2017 03:18:45 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370377701f89cff89a25897f719848740ad95b97828c7ffdf8444bdafef6436b`  
		Last Modified: Sat, 13 May 2017 01:37:32 GMT  
		Size: 82.5 MB (82498638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455c73a122bc8a30bbb47aacf289778a636517eb5d841408435625ec4394a9c7`  
		Last Modified: Sat, 13 May 2017 01:37:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb71bac61c47a0055de7152b653793de87fd4714cc299f481f1c203cb68fc9ea`  
		Last Modified: Sat, 13 May 2017 01:42:16 GMT  
		Size: 2.8 MB (2788864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a1d91ad4e347bdc4a030b9c7b0890e16ab9c944ede92833fe561242bbb0e7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e0256ba4b0dcbb46fb72849d19a1dd78acf09f79d4e4cd69851c516940cbb7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14fbe7a9dfbfa8ee0219fece98b46a36980c4c426f125b2d7f39d0ebbf1f97b`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f36dd91c0ab80629aba5f3a2285c02127aedaec768787bc0a8a3ad9513b62ff`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e4a1f87acca582dd6b3b85d29178fc58396357465c3c6decf5d753e4791b7a`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 12.9 MB (12930707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5541ee478ff0dd2b1fcad9cdf437cc50455376e53164fbf6a64bad8aa31066`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb657ecb3703177a88c03504c9c5a7440d60fc19b8a323840c3c738577affe4`  
		Last Modified: Sat, 13 May 2017 01:42:14 GMT  
		Size: 13.5 MB (13524605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8769771ac5f46d86ef701fcc49a9f34fd982e14e1d81159f45dd1123bc9160cf`  
		Last Modified: Sat, 13 May 2017 01:42:11 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08c0f680a7abc14c907d83b5514ce3d9ea958e85fcde9790800c511f9161cc5`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed88a13946159ef0b85b45c9420aff54dafbd2d8787515574133bdbbb4d02ed6`  
		Last Modified: Sat, 13 May 2017 03:23:33 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d4806d2c645e78964983c0876dbfdf5f4a1b60f8d608a08e8ad9e9ea23246a`  
		Last Modified: Sat, 13 May 2017 03:23:35 GMT  
		Size: 1.9 MB (1881132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea278863e0e1b6bf66f5d8d6b95211da2425420cda9e0869ed9f75a16a21e4eb`  
		Last Modified: Sat, 13 May 2017 03:23:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec293572caaf2c118fd57fef3a8e918b43e9ef2e700445c45c0bb077cc97cf4f`  
		Last Modified: Sat, 13 May 2017 03:27:03 GMT  
		Size: 12.8 MB (12802662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:apache`

```console
$ docker pull drupal@sha256:8148cca93eb5dedad4a2ff26e9f4fb503207b946aa46265bee9bfa89061e8311
```

-	Platforms:
	-	linux; amd64

### `drupal:apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (179017306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a8e333cfedd040e79fd7e1b23dbbfd4e8d34cc9552218e0a7ae70e71cb74d03`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Fri, 12 May 2017 23:58:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 12 May 2017 23:58:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 12 May 2017 23:58:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 12 May 2017 23:59:00 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 13 May 2017 00:10:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 13 May 2017 00:10:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 13 May 2017 00:10:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 13 May 2017 00:10:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 13 May 2017 00:10:46 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 13 May 2017 00:10:47 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 13 May 2017 00:10:48 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 13 May 2017 00:10:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 00:10:51 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Sat, 13 May 2017 00:10:52 GMT
ENV PHP_VERSION=7.1.5
# Sat, 13 May 2017 00:10:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 00:10:53 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Sat, 13 May 2017 00:11:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 13 May 2017 00:11:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:43 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Sat, 13 May 2017 00:13:45 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 13 May 2017 00:13:47 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:48 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 00:13:49 GMT
EXPOSE 80/tcp
# Sat, 13 May 2017 00:13:49 GMT
CMD ["apache2-foreground"]
# Sat, 13 May 2017 03:14:10 GMT
RUN a2enmod rewrite
# Sat, 13 May 2017 03:15:13 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 13 May 2017 03:15:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 13 May 2017 03:15:15 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 03:18:38 GMT
ENV DRUPAL_VERSION=8.3.2
# Sat, 13 May 2017 03:18:39 GMT
ENV DRUPAL_MD5=d1fce1ec78ca1bcde4a346f4c06531b4
# Sat, 13 May 2017 03:18:45 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370377701f89cff89a25897f719848740ad95b97828c7ffdf8444bdafef6436b`  
		Last Modified: Sat, 13 May 2017 01:37:32 GMT  
		Size: 82.5 MB (82498638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455c73a122bc8a30bbb47aacf289778a636517eb5d841408435625ec4394a9c7`  
		Last Modified: Sat, 13 May 2017 01:37:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb71bac61c47a0055de7152b653793de87fd4714cc299f481f1c203cb68fc9ea`  
		Last Modified: Sat, 13 May 2017 01:42:16 GMT  
		Size: 2.8 MB (2788864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a1d91ad4e347bdc4a030b9c7b0890e16ab9c944ede92833fe561242bbb0e7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e0256ba4b0dcbb46fb72849d19a1dd78acf09f79d4e4cd69851c516940cbb7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14fbe7a9dfbfa8ee0219fece98b46a36980c4c426f125b2d7f39d0ebbf1f97b`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f36dd91c0ab80629aba5f3a2285c02127aedaec768787bc0a8a3ad9513b62ff`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e4a1f87acca582dd6b3b85d29178fc58396357465c3c6decf5d753e4791b7a`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 12.9 MB (12930707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5541ee478ff0dd2b1fcad9cdf437cc50455376e53164fbf6a64bad8aa31066`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb657ecb3703177a88c03504c9c5a7440d60fc19b8a323840c3c738577affe4`  
		Last Modified: Sat, 13 May 2017 01:42:14 GMT  
		Size: 13.5 MB (13524605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8769771ac5f46d86ef701fcc49a9f34fd982e14e1d81159f45dd1123bc9160cf`  
		Last Modified: Sat, 13 May 2017 01:42:11 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08c0f680a7abc14c907d83b5514ce3d9ea958e85fcde9790800c511f9161cc5`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed88a13946159ef0b85b45c9420aff54dafbd2d8787515574133bdbbb4d02ed6`  
		Last Modified: Sat, 13 May 2017 03:23:33 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d4806d2c645e78964983c0876dbfdf5f4a1b60f8d608a08e8ad9e9ea23246a`  
		Last Modified: Sat, 13 May 2017 03:23:35 GMT  
		Size: 1.9 MB (1881132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea278863e0e1b6bf66f5d8d6b95211da2425420cda9e0869ed9f75a16a21e4eb`  
		Last Modified: Sat, 13 May 2017 03:23:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec293572caaf2c118fd57fef3a8e918b43e9ef2e700445c45c0bb077cc97cf4f`  
		Last Modified: Sat, 13 May 2017 03:27:03 GMT  
		Size: 12.8 MB (12802662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.3.2`

```console
$ docker pull drupal@sha256:8148cca93eb5dedad4a2ff26e9f4fb503207b946aa46265bee9bfa89061e8311
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (179017306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a8e333cfedd040e79fd7e1b23dbbfd4e8d34cc9552218e0a7ae70e71cb74d03`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Fri, 12 May 2017 23:58:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 12 May 2017 23:58:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 12 May 2017 23:58:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 12 May 2017 23:59:00 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 13 May 2017 00:10:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 13 May 2017 00:10:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 13 May 2017 00:10:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 13 May 2017 00:10:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 13 May 2017 00:10:46 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 13 May 2017 00:10:47 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 13 May 2017 00:10:48 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 13 May 2017 00:10:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 00:10:51 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Sat, 13 May 2017 00:10:52 GMT
ENV PHP_VERSION=7.1.5
# Sat, 13 May 2017 00:10:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 00:10:53 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Sat, 13 May 2017 00:11:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 13 May 2017 00:11:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:43 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Sat, 13 May 2017 00:13:45 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 13 May 2017 00:13:47 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:48 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 00:13:49 GMT
EXPOSE 80/tcp
# Sat, 13 May 2017 00:13:49 GMT
CMD ["apache2-foreground"]
# Sat, 13 May 2017 03:14:10 GMT
RUN a2enmod rewrite
# Sat, 13 May 2017 03:15:13 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 13 May 2017 03:15:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 13 May 2017 03:15:15 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 03:18:38 GMT
ENV DRUPAL_VERSION=8.3.2
# Sat, 13 May 2017 03:18:39 GMT
ENV DRUPAL_MD5=d1fce1ec78ca1bcde4a346f4c06531b4
# Sat, 13 May 2017 03:18:45 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370377701f89cff89a25897f719848740ad95b97828c7ffdf8444bdafef6436b`  
		Last Modified: Sat, 13 May 2017 01:37:32 GMT  
		Size: 82.5 MB (82498638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455c73a122bc8a30bbb47aacf289778a636517eb5d841408435625ec4394a9c7`  
		Last Modified: Sat, 13 May 2017 01:37:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb71bac61c47a0055de7152b653793de87fd4714cc299f481f1c203cb68fc9ea`  
		Last Modified: Sat, 13 May 2017 01:42:16 GMT  
		Size: 2.8 MB (2788864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a1d91ad4e347bdc4a030b9c7b0890e16ab9c944ede92833fe561242bbb0e7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e0256ba4b0dcbb46fb72849d19a1dd78acf09f79d4e4cd69851c516940cbb7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14fbe7a9dfbfa8ee0219fece98b46a36980c4c426f125b2d7f39d0ebbf1f97b`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f36dd91c0ab80629aba5f3a2285c02127aedaec768787bc0a8a3ad9513b62ff`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e4a1f87acca582dd6b3b85d29178fc58396357465c3c6decf5d753e4791b7a`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 12.9 MB (12930707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5541ee478ff0dd2b1fcad9cdf437cc50455376e53164fbf6a64bad8aa31066`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb657ecb3703177a88c03504c9c5a7440d60fc19b8a323840c3c738577affe4`  
		Last Modified: Sat, 13 May 2017 01:42:14 GMT  
		Size: 13.5 MB (13524605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8769771ac5f46d86ef701fcc49a9f34fd982e14e1d81159f45dd1123bc9160cf`  
		Last Modified: Sat, 13 May 2017 01:42:11 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08c0f680a7abc14c907d83b5514ce3d9ea958e85fcde9790800c511f9161cc5`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed88a13946159ef0b85b45c9420aff54dafbd2d8787515574133bdbbb4d02ed6`  
		Last Modified: Sat, 13 May 2017 03:23:33 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d4806d2c645e78964983c0876dbfdf5f4a1b60f8d608a08e8ad9e9ea23246a`  
		Last Modified: Sat, 13 May 2017 03:23:35 GMT  
		Size: 1.9 MB (1881132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea278863e0e1b6bf66f5d8d6b95211da2425420cda9e0869ed9f75a16a21e4eb`  
		Last Modified: Sat, 13 May 2017 03:23:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec293572caaf2c118fd57fef3a8e918b43e9ef2e700445c45c0bb077cc97cf4f`  
		Last Modified: Sat, 13 May 2017 03:27:03 GMT  
		Size: 12.8 MB (12802662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.3`

```console
$ docker pull drupal@sha256:8148cca93eb5dedad4a2ff26e9f4fb503207b946aa46265bee9bfa89061e8311
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (179017306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a8e333cfedd040e79fd7e1b23dbbfd4e8d34cc9552218e0a7ae70e71cb74d03`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Fri, 12 May 2017 23:58:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 12 May 2017 23:58:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 12 May 2017 23:58:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 12 May 2017 23:59:00 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 13 May 2017 00:10:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 13 May 2017 00:10:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 13 May 2017 00:10:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 13 May 2017 00:10:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 13 May 2017 00:10:46 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 13 May 2017 00:10:47 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 13 May 2017 00:10:48 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 13 May 2017 00:10:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 00:10:51 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Sat, 13 May 2017 00:10:52 GMT
ENV PHP_VERSION=7.1.5
# Sat, 13 May 2017 00:10:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 00:10:53 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Sat, 13 May 2017 00:11:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 13 May 2017 00:11:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:43 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Sat, 13 May 2017 00:13:45 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 13 May 2017 00:13:47 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:48 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 00:13:49 GMT
EXPOSE 80/tcp
# Sat, 13 May 2017 00:13:49 GMT
CMD ["apache2-foreground"]
# Sat, 13 May 2017 03:14:10 GMT
RUN a2enmod rewrite
# Sat, 13 May 2017 03:15:13 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 13 May 2017 03:15:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 13 May 2017 03:15:15 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 03:18:38 GMT
ENV DRUPAL_VERSION=8.3.2
# Sat, 13 May 2017 03:18:39 GMT
ENV DRUPAL_MD5=d1fce1ec78ca1bcde4a346f4c06531b4
# Sat, 13 May 2017 03:18:45 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370377701f89cff89a25897f719848740ad95b97828c7ffdf8444bdafef6436b`  
		Last Modified: Sat, 13 May 2017 01:37:32 GMT  
		Size: 82.5 MB (82498638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455c73a122bc8a30bbb47aacf289778a636517eb5d841408435625ec4394a9c7`  
		Last Modified: Sat, 13 May 2017 01:37:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb71bac61c47a0055de7152b653793de87fd4714cc299f481f1c203cb68fc9ea`  
		Last Modified: Sat, 13 May 2017 01:42:16 GMT  
		Size: 2.8 MB (2788864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a1d91ad4e347bdc4a030b9c7b0890e16ab9c944ede92833fe561242bbb0e7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e0256ba4b0dcbb46fb72849d19a1dd78acf09f79d4e4cd69851c516940cbb7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14fbe7a9dfbfa8ee0219fece98b46a36980c4c426f125b2d7f39d0ebbf1f97b`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f36dd91c0ab80629aba5f3a2285c02127aedaec768787bc0a8a3ad9513b62ff`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e4a1f87acca582dd6b3b85d29178fc58396357465c3c6decf5d753e4791b7a`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 12.9 MB (12930707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5541ee478ff0dd2b1fcad9cdf437cc50455376e53164fbf6a64bad8aa31066`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb657ecb3703177a88c03504c9c5a7440d60fc19b8a323840c3c738577affe4`  
		Last Modified: Sat, 13 May 2017 01:42:14 GMT  
		Size: 13.5 MB (13524605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8769771ac5f46d86ef701fcc49a9f34fd982e14e1d81159f45dd1123bc9160cf`  
		Last Modified: Sat, 13 May 2017 01:42:11 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08c0f680a7abc14c907d83b5514ce3d9ea958e85fcde9790800c511f9161cc5`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed88a13946159ef0b85b45c9420aff54dafbd2d8787515574133bdbbb4d02ed6`  
		Last Modified: Sat, 13 May 2017 03:23:33 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d4806d2c645e78964983c0876dbfdf5f4a1b60f8d608a08e8ad9e9ea23246a`  
		Last Modified: Sat, 13 May 2017 03:23:35 GMT  
		Size: 1.9 MB (1881132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea278863e0e1b6bf66f5d8d6b95211da2425420cda9e0869ed9f75a16a21e4eb`  
		Last Modified: Sat, 13 May 2017 03:23:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec293572caaf2c118fd57fef3a8e918b43e9ef2e700445c45c0bb077cc97cf4f`  
		Last Modified: Sat, 13 May 2017 03:27:03 GMT  
		Size: 12.8 MB (12802662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8`

```console
$ docker pull drupal@sha256:8148cca93eb5dedad4a2ff26e9f4fb503207b946aa46265bee9bfa89061e8311
```

-	Platforms:
	-	linux; amd64

### `drupal:8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (179017306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a8e333cfedd040e79fd7e1b23dbbfd4e8d34cc9552218e0a7ae70e71cb74d03`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Fri, 12 May 2017 23:58:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 12 May 2017 23:58:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 12 May 2017 23:58:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 12 May 2017 23:59:00 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 13 May 2017 00:10:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 13 May 2017 00:10:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 13 May 2017 00:10:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 13 May 2017 00:10:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 13 May 2017 00:10:46 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 13 May 2017 00:10:47 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 13 May 2017 00:10:48 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 13 May 2017 00:10:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 00:10:51 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Sat, 13 May 2017 00:10:52 GMT
ENV PHP_VERSION=7.1.5
# Sat, 13 May 2017 00:10:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 00:10:53 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Sat, 13 May 2017 00:11:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 13 May 2017 00:11:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:43 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Sat, 13 May 2017 00:13:45 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 13 May 2017 00:13:47 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:48 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 00:13:49 GMT
EXPOSE 80/tcp
# Sat, 13 May 2017 00:13:49 GMT
CMD ["apache2-foreground"]
# Sat, 13 May 2017 03:14:10 GMT
RUN a2enmod rewrite
# Sat, 13 May 2017 03:15:13 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 13 May 2017 03:15:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 13 May 2017 03:15:15 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 03:18:38 GMT
ENV DRUPAL_VERSION=8.3.2
# Sat, 13 May 2017 03:18:39 GMT
ENV DRUPAL_MD5=d1fce1ec78ca1bcde4a346f4c06531b4
# Sat, 13 May 2017 03:18:45 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370377701f89cff89a25897f719848740ad95b97828c7ffdf8444bdafef6436b`  
		Last Modified: Sat, 13 May 2017 01:37:32 GMT  
		Size: 82.5 MB (82498638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455c73a122bc8a30bbb47aacf289778a636517eb5d841408435625ec4394a9c7`  
		Last Modified: Sat, 13 May 2017 01:37:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb71bac61c47a0055de7152b653793de87fd4714cc299f481f1c203cb68fc9ea`  
		Last Modified: Sat, 13 May 2017 01:42:16 GMT  
		Size: 2.8 MB (2788864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a1d91ad4e347bdc4a030b9c7b0890e16ab9c944ede92833fe561242bbb0e7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e0256ba4b0dcbb46fb72849d19a1dd78acf09f79d4e4cd69851c516940cbb7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14fbe7a9dfbfa8ee0219fece98b46a36980c4c426f125b2d7f39d0ebbf1f97b`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f36dd91c0ab80629aba5f3a2285c02127aedaec768787bc0a8a3ad9513b62ff`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e4a1f87acca582dd6b3b85d29178fc58396357465c3c6decf5d753e4791b7a`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 12.9 MB (12930707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5541ee478ff0dd2b1fcad9cdf437cc50455376e53164fbf6a64bad8aa31066`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb657ecb3703177a88c03504c9c5a7440d60fc19b8a323840c3c738577affe4`  
		Last Modified: Sat, 13 May 2017 01:42:14 GMT  
		Size: 13.5 MB (13524605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8769771ac5f46d86ef701fcc49a9f34fd982e14e1d81159f45dd1123bc9160cf`  
		Last Modified: Sat, 13 May 2017 01:42:11 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08c0f680a7abc14c907d83b5514ce3d9ea958e85fcde9790800c511f9161cc5`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed88a13946159ef0b85b45c9420aff54dafbd2d8787515574133bdbbb4d02ed6`  
		Last Modified: Sat, 13 May 2017 03:23:33 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d4806d2c645e78964983c0876dbfdf5f4a1b60f8d608a08e8ad9e9ea23246a`  
		Last Modified: Sat, 13 May 2017 03:23:35 GMT  
		Size: 1.9 MB (1881132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea278863e0e1b6bf66f5d8d6b95211da2425420cda9e0869ed9f75a16a21e4eb`  
		Last Modified: Sat, 13 May 2017 03:23:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec293572caaf2c118fd57fef3a8e918b43e9ef2e700445c45c0bb077cc97cf4f`  
		Last Modified: Sat, 13 May 2017 03:27:03 GMT  
		Size: 12.8 MB (12802662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:latest`

```console
$ docker pull drupal@sha256:32fddaa7ce89ec3009c3f0e9a980e728461d6191dffa28d0e9b63a085c3902a2
```

-	Platforms:
	-	linux; amd64

### `drupal:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.0 MB (176001415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d65bea49789e892c120cb767036b809618b5500a7f504c3306ef46f7cf6a587d`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 18:26:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 09 May 2017 18:27:28 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 09 May 2017 18:27:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 09 May 2017 18:27:30 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 09 May 2017 18:32:04 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 18:32:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 09 May 2017 18:32:05 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 09 May 2017 18:32:07 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 09 May 2017 18:32:08 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 09 May 2017 18:32:10 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 09 May 2017 18:32:11 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 09 May 2017 18:32:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 09 May 2017 18:32:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 09 May 2017 18:32:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 09 May 2017 18:32:14 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 09 May 2017 18:32:14 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 09 May 2017 18:32:15 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 09 May 2017 18:32:15 GMT
ENV PHP_VERSION=7.1.4
# Tue, 09 May 2017 18:32:16 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.4.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.4.tar.xz.asc/from/this/mirror
# Tue, 09 May 2017 18:32:16 GMT
ENV PHP_SHA256=71514386adf3e963df087c2044a0b3747900b8b1fc8da3a99f0a0ae9180d300b PHP_MD5=a74c13f8779349872b365e6732e8c98e
# Tue, 09 May 2017 18:32:29 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 May 2017 18:32:30 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 09 May 2017 18:35:00 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 09 May 2017 18:35:01 GMT
COPY multi:2322553de3ca67507508fc2dce30f88e38a62b59394dc81c4180177a850ae993 in /usr/local/bin/ 
# Tue, 09 May 2017 18:35:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 09 May 2017 18:35:03 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 09 May 2017 18:35:04 GMT
WORKDIR /var/www/html
# Tue, 09 May 2017 18:35:04 GMT
EXPOSE 80/tcp
# Tue, 09 May 2017 18:35:05 GMT
CMD ["apache2-foreground"]
# Thu, 11 May 2017 00:20:08 GMT
RUN a2enmod rewrite
# Thu, 11 May 2017 00:21:10 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 00:21:11 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 May 2017 00:21:12 GMT
WORKDIR /var/www/html
# Thu, 11 May 2017 00:21:13 GMT
ENV DRUPAL_VERSION=8.3.2
# Thu, 11 May 2017 00:21:13 GMT
ENV DRUPAL_MD5=d1fce1ec78ca1bcde4a346f4c06531b4
# Thu, 11 May 2017 00:21:19 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1e8fcfc9d2aa08b74d21fce36b6a3c0b0dc77ccbf7ce578e33151eb6ae2d14`  
		Last Modified: Wed, 10 May 2017 02:14:36 GMT  
		Size: 78.9 MB (78862515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703b0ccc9dc53c4184de6e414865c779acf7af6fd5fefa6f92bab7504b3a1a8d`  
		Last Modified: Wed, 10 May 2017 02:14:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b0404fe6bb314bb43ae62c3f1fcf95509957e9c75306df631d648d168b1a0c`  
		Last Modified: Wed, 10 May 2017 02:19:06 GMT  
		Size: 2.9 MB (2911565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372c7f7ee4148a5f2b4423761a656f583b4ee6691158b7f4bf73d1e81950363c`  
		Last Modified: Wed, 10 May 2017 02:19:04 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31c75727d8a1a5e7f13573aa1bbb613c2327dfe3906e75ba194352dc3952b3d`  
		Last Modified: Wed, 10 May 2017 02:19:05 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56b1857a7ce48c3bae454bd31df26feb9c26dc1cf3bf6a889b26d99c4424b68`  
		Last Modified: Wed, 10 May 2017 02:19:04 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357a87ca9f1fcffde683b77e52b980a1879275c732d1f00fa959df9551422024`  
		Last Modified: Wed, 10 May 2017 02:19:02 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70073eff27065d20f7036e282551e0c2b93bd500b819aceeaee0b1ecdd77921`  
		Last Modified: Wed, 10 May 2017 02:19:04 GMT  
		Size: 12.9 MB (12923935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1f0c848401d2756b2e9590fe3d7c4637e11d8d6aebf2cc17c2c8a325507b5f`  
		Last Modified: Wed, 10 May 2017 02:19:02 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd8d7c7af09f575dc55806ef5ad634e1c74ce67905f2e539a2c9a57b6f46d4b`  
		Last Modified: Wed, 10 May 2017 02:19:06 GMT  
		Size: 14.0 MB (14032396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a6165ffa7b08f7f0fee68ab109ea9ca29a252e367d2a2214e47ea1caeda67d`  
		Last Modified: Wed, 10 May 2017 02:19:02 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14df7b319797f94a8cbcf58700a0ba7789603e87a55051e0fd813a4b411c96f0`  
		Last Modified: Wed, 10 May 2017 02:19:02 GMT  
		Size: 890.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12648890b22648ce447cb018f3b5faeb1169563c453cc0f782fc049932fa614`  
		Last Modified: Thu, 11 May 2017 15:20:11 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b15445a8f7c4ec6ca3c01ad8490c5842b1226c5a7bb81ccea8dc723522c523e1`  
		Last Modified: Thu, 11 May 2017 15:20:13 GMT  
		Size: 1.9 MB (1877736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04fa9b579097dd88b1342f27a94509b2344f2e2d698d99f4b344f535a291bdc3`  
		Last Modified: Thu, 11 May 2017 15:20:14 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd15e35d2d29be4153e9a7aec087b94e2476415f5c411d3f20dc0c5f3afaa7b`  
		Last Modified: Thu, 11 May 2017 15:24:10 GMT  
		Size: 12.8 MB (12802654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.3.2-fpm`

```console
$ docker pull drupal@sha256:e34d54fb1da893399fd114c1f46839b4fe09c989abf92f8a6b6560967fba0008
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3.2-fpm` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.6 MB (172610565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c86b88b592680c7bff9f3f2c205bc3e3cd0c8d25277915ecc8ec66283e8eb3e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 18:26:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 09 May 2017 18:27:28 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 09 May 2017 18:27:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 09 May 2017 18:27:30 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 09 May 2017 18:35:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 09 May 2017 18:35:25 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 09 May 2017 18:35:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 09 May 2017 18:35:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 09 May 2017 18:35:27 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 09 May 2017 18:35:27 GMT
ENV PHP_VERSION=7.1.4
# Tue, 09 May 2017 18:35:28 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.4.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.4.tar.xz.asc/from/this/mirror
# Tue, 09 May 2017 18:35:29 GMT
ENV PHP_SHA256=71514386adf3e963df087c2044a0b3747900b8b1fc8da3a99f0a0ae9180d300b PHP_MD5=a74c13f8779349872b365e6732e8c98e
# Tue, 09 May 2017 18:35:40 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 May 2017 18:35:41 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 09 May 2017 18:39:23 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 09 May 2017 18:39:24 GMT
COPY multi:6f0472135e558ecb6e8d4994f3ad7153def074d5ddc522114a95b3132d9e14ae in /usr/local/bin/ 
# Tue, 09 May 2017 18:39:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 09 May 2017 18:39:26 GMT
WORKDIR /var/www/html
# Tue, 09 May 2017 18:39:27 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 09 May 2017 18:39:28 GMT
EXPOSE 9000/tcp
# Tue, 09 May 2017 18:39:28 GMT
CMD ["php-fpm"]
# Thu, 11 May 2017 00:22:44 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 00:22:46 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 May 2017 00:22:47 GMT
WORKDIR /var/www/html
# Thu, 11 May 2017 00:22:47 GMT
ENV DRUPAL_VERSION=8.3.2
# Thu, 11 May 2017 00:22:48 GMT
ENV DRUPAL_MD5=d1fce1ec78ca1bcde4a346f4c06531b4
# Thu, 11 May 2017 00:22:55 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1e8fcfc9d2aa08b74d21fce36b6a3c0b0dc77ccbf7ce578e33151eb6ae2d14`  
		Last Modified: Wed, 10 May 2017 02:14:36 GMT  
		Size: 78.9 MB (78862515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703b0ccc9dc53c4184de6e414865c779acf7af6fd5fefa6f92bab7504b3a1a8d`  
		Last Modified: Wed, 10 May 2017 02:14:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dbb1916873b23acc40b4b352f237058db83d65110b94ce5dc326980ecb151cd`  
		Last Modified: Wed, 10 May 2017 02:20:38 GMT  
		Size: 12.9 MB (12904603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a44a3f0efa9c280d2b3cd280a50657ba0e99575eeb6a8cd898b9113e683a21`  
		Last Modified: Wed, 10 May 2017 02:20:33 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afcf25b0988913e7baa3290374cbb31a31248cee3c1b086bb5318fe70c0c26e9`  
		Last Modified: Wed, 10 May 2017 02:20:37 GMT  
		Size: 13.6 MB (13590429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f81f2cb1a35e5bd48b9c649843aba40f2d124c093eb706a221abd986b5493fc`  
		Last Modified: Wed, 10 May 2017 02:20:33 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6464090c8374c4f1d8344a81265e105253af0222aec79bbbbe184cbd088288f2`  
		Last Modified: Wed, 10 May 2017 02:20:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f93b889f0c9cab8896ca0d5af79fdb9995a5ea504458b3e0c4db079a18c81af`  
		Last Modified: Wed, 10 May 2017 02:20:33 GMT  
		Size: 7.7 KB (7675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22dc729adfebdc3f2514f8911c31a333e212ea964d71f56fb9d8a5fd3b7dd6ce`  
		Last Modified: Thu, 11 May 2017 15:21:59 GMT  
		Size: 1.9 MB (1855499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247fc9b091f8312d395be590b9066e04f10cc2de1b70c18a510f396f4364bbec`  
		Last Modified: Thu, 11 May 2017 15:21:59 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293dd65623e662c3989717e83d2ba76854bcd94105f1f8f1ddbb19bf8fdf4704`  
		Last Modified: Thu, 11 May 2017 15:27:25 GMT  
		Size: 12.8 MB (12802650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.3-fpm`

```console
$ docker pull drupal@sha256:e34d54fb1da893399fd114c1f46839b4fe09c989abf92f8a6b6560967fba0008
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3-fpm` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.6 MB (172610565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c86b88b592680c7bff9f3f2c205bc3e3cd0c8d25277915ecc8ec66283e8eb3e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 18:26:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 09 May 2017 18:27:28 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 09 May 2017 18:27:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 09 May 2017 18:27:30 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 09 May 2017 18:35:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 09 May 2017 18:35:25 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 09 May 2017 18:35:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 09 May 2017 18:35:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 09 May 2017 18:35:27 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 09 May 2017 18:35:27 GMT
ENV PHP_VERSION=7.1.4
# Tue, 09 May 2017 18:35:28 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.4.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.4.tar.xz.asc/from/this/mirror
# Tue, 09 May 2017 18:35:29 GMT
ENV PHP_SHA256=71514386adf3e963df087c2044a0b3747900b8b1fc8da3a99f0a0ae9180d300b PHP_MD5=a74c13f8779349872b365e6732e8c98e
# Tue, 09 May 2017 18:35:40 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 May 2017 18:35:41 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 09 May 2017 18:39:23 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 09 May 2017 18:39:24 GMT
COPY multi:6f0472135e558ecb6e8d4994f3ad7153def074d5ddc522114a95b3132d9e14ae in /usr/local/bin/ 
# Tue, 09 May 2017 18:39:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 09 May 2017 18:39:26 GMT
WORKDIR /var/www/html
# Tue, 09 May 2017 18:39:27 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 09 May 2017 18:39:28 GMT
EXPOSE 9000/tcp
# Tue, 09 May 2017 18:39:28 GMT
CMD ["php-fpm"]
# Thu, 11 May 2017 00:22:44 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 00:22:46 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 May 2017 00:22:47 GMT
WORKDIR /var/www/html
# Thu, 11 May 2017 00:22:47 GMT
ENV DRUPAL_VERSION=8.3.2
# Thu, 11 May 2017 00:22:48 GMT
ENV DRUPAL_MD5=d1fce1ec78ca1bcde4a346f4c06531b4
# Thu, 11 May 2017 00:22:55 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1e8fcfc9d2aa08b74d21fce36b6a3c0b0dc77ccbf7ce578e33151eb6ae2d14`  
		Last Modified: Wed, 10 May 2017 02:14:36 GMT  
		Size: 78.9 MB (78862515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703b0ccc9dc53c4184de6e414865c779acf7af6fd5fefa6f92bab7504b3a1a8d`  
		Last Modified: Wed, 10 May 2017 02:14:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dbb1916873b23acc40b4b352f237058db83d65110b94ce5dc326980ecb151cd`  
		Last Modified: Wed, 10 May 2017 02:20:38 GMT  
		Size: 12.9 MB (12904603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a44a3f0efa9c280d2b3cd280a50657ba0e99575eeb6a8cd898b9113e683a21`  
		Last Modified: Wed, 10 May 2017 02:20:33 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afcf25b0988913e7baa3290374cbb31a31248cee3c1b086bb5318fe70c0c26e9`  
		Last Modified: Wed, 10 May 2017 02:20:37 GMT  
		Size: 13.6 MB (13590429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f81f2cb1a35e5bd48b9c649843aba40f2d124c093eb706a221abd986b5493fc`  
		Last Modified: Wed, 10 May 2017 02:20:33 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6464090c8374c4f1d8344a81265e105253af0222aec79bbbbe184cbd088288f2`  
		Last Modified: Wed, 10 May 2017 02:20:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f93b889f0c9cab8896ca0d5af79fdb9995a5ea504458b3e0c4db079a18c81af`  
		Last Modified: Wed, 10 May 2017 02:20:33 GMT  
		Size: 7.7 KB (7675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22dc729adfebdc3f2514f8911c31a333e212ea964d71f56fb9d8a5fd3b7dd6ce`  
		Last Modified: Thu, 11 May 2017 15:21:59 GMT  
		Size: 1.9 MB (1855499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247fc9b091f8312d395be590b9066e04f10cc2de1b70c18a510f396f4364bbec`  
		Last Modified: Thu, 11 May 2017 15:21:59 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293dd65623e662c3989717e83d2ba76854bcd94105f1f8f1ddbb19bf8fdf4704`  
		Last Modified: Thu, 11 May 2017 15:27:25 GMT  
		Size: 12.8 MB (12802650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8-fpm`

```console
$ docker pull drupal@sha256:e34d54fb1da893399fd114c1f46839b4fe09c989abf92f8a6b6560967fba0008
```

-	Platforms:
	-	linux; amd64

### `drupal:8-fpm` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.6 MB (172610565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c86b88b592680c7bff9f3f2c205bc3e3cd0c8d25277915ecc8ec66283e8eb3e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 18:26:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 09 May 2017 18:27:28 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 09 May 2017 18:27:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 09 May 2017 18:27:30 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 09 May 2017 18:35:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 09 May 2017 18:35:25 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 09 May 2017 18:35:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 09 May 2017 18:35:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 09 May 2017 18:35:27 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 09 May 2017 18:35:27 GMT
ENV PHP_VERSION=7.1.4
# Tue, 09 May 2017 18:35:28 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.4.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.4.tar.xz.asc/from/this/mirror
# Tue, 09 May 2017 18:35:29 GMT
ENV PHP_SHA256=71514386adf3e963df087c2044a0b3747900b8b1fc8da3a99f0a0ae9180d300b PHP_MD5=a74c13f8779349872b365e6732e8c98e
# Tue, 09 May 2017 18:35:40 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 May 2017 18:35:41 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 09 May 2017 18:39:23 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 09 May 2017 18:39:24 GMT
COPY multi:6f0472135e558ecb6e8d4994f3ad7153def074d5ddc522114a95b3132d9e14ae in /usr/local/bin/ 
# Tue, 09 May 2017 18:39:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 09 May 2017 18:39:26 GMT
WORKDIR /var/www/html
# Tue, 09 May 2017 18:39:27 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 09 May 2017 18:39:28 GMT
EXPOSE 9000/tcp
# Tue, 09 May 2017 18:39:28 GMT
CMD ["php-fpm"]
# Thu, 11 May 2017 00:22:44 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 00:22:46 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 May 2017 00:22:47 GMT
WORKDIR /var/www/html
# Thu, 11 May 2017 00:22:47 GMT
ENV DRUPAL_VERSION=8.3.2
# Thu, 11 May 2017 00:22:48 GMT
ENV DRUPAL_MD5=d1fce1ec78ca1bcde4a346f4c06531b4
# Thu, 11 May 2017 00:22:55 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1e8fcfc9d2aa08b74d21fce36b6a3c0b0dc77ccbf7ce578e33151eb6ae2d14`  
		Last Modified: Wed, 10 May 2017 02:14:36 GMT  
		Size: 78.9 MB (78862515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703b0ccc9dc53c4184de6e414865c779acf7af6fd5fefa6f92bab7504b3a1a8d`  
		Last Modified: Wed, 10 May 2017 02:14:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dbb1916873b23acc40b4b352f237058db83d65110b94ce5dc326980ecb151cd`  
		Last Modified: Wed, 10 May 2017 02:20:38 GMT  
		Size: 12.9 MB (12904603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a44a3f0efa9c280d2b3cd280a50657ba0e99575eeb6a8cd898b9113e683a21`  
		Last Modified: Wed, 10 May 2017 02:20:33 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afcf25b0988913e7baa3290374cbb31a31248cee3c1b086bb5318fe70c0c26e9`  
		Last Modified: Wed, 10 May 2017 02:20:37 GMT  
		Size: 13.6 MB (13590429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f81f2cb1a35e5bd48b9c649843aba40f2d124c093eb706a221abd986b5493fc`  
		Last Modified: Wed, 10 May 2017 02:20:33 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6464090c8374c4f1d8344a81265e105253af0222aec79bbbbe184cbd088288f2`  
		Last Modified: Wed, 10 May 2017 02:20:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f93b889f0c9cab8896ca0d5af79fdb9995a5ea504458b3e0c4db079a18c81af`  
		Last Modified: Wed, 10 May 2017 02:20:33 GMT  
		Size: 7.7 KB (7675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22dc729adfebdc3f2514f8911c31a333e212ea964d71f56fb9d8a5fd3b7dd6ce`  
		Last Modified: Thu, 11 May 2017 15:21:59 GMT  
		Size: 1.9 MB (1855499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247fc9b091f8312d395be590b9066e04f10cc2de1b70c18a510f396f4364bbec`  
		Last Modified: Thu, 11 May 2017 15:21:59 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293dd65623e662c3989717e83d2ba76854bcd94105f1f8f1ddbb19bf8fdf4704`  
		Last Modified: Thu, 11 May 2017 15:27:25 GMT  
		Size: 12.8 MB (12802650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:fpm`

```console
$ docker pull drupal@sha256:e34d54fb1da893399fd114c1f46839b4fe09c989abf92f8a6b6560967fba0008
```

-	Platforms:
	-	linux; amd64

### `drupal:fpm` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.6 MB (172610565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c86b88b592680c7bff9f3f2c205bc3e3cd0c8d25277915ecc8ec66283e8eb3e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 18:26:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 09 May 2017 18:27:28 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 09 May 2017 18:27:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 09 May 2017 18:27:30 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 09 May 2017 18:35:25 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 09 May 2017 18:35:25 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 09 May 2017 18:35:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 09 May 2017 18:35:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 09 May 2017 18:35:27 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 09 May 2017 18:35:27 GMT
ENV PHP_VERSION=7.1.4
# Tue, 09 May 2017 18:35:28 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.4.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.4.tar.xz.asc/from/this/mirror
# Tue, 09 May 2017 18:35:29 GMT
ENV PHP_SHA256=71514386adf3e963df087c2044a0b3747900b8b1fc8da3a99f0a0ae9180d300b PHP_MD5=a74c13f8779349872b365e6732e8c98e
# Tue, 09 May 2017 18:35:40 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 May 2017 18:35:41 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 09 May 2017 18:39:23 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 09 May 2017 18:39:24 GMT
COPY multi:6f0472135e558ecb6e8d4994f3ad7153def074d5ddc522114a95b3132d9e14ae in /usr/local/bin/ 
# Tue, 09 May 2017 18:39:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 09 May 2017 18:39:26 GMT
WORKDIR /var/www/html
# Tue, 09 May 2017 18:39:27 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 09 May 2017 18:39:28 GMT
EXPOSE 9000/tcp
# Tue, 09 May 2017 18:39:28 GMT
CMD ["php-fpm"]
# Thu, 11 May 2017 00:22:44 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 00:22:46 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 May 2017 00:22:47 GMT
WORKDIR /var/www/html
# Thu, 11 May 2017 00:22:47 GMT
ENV DRUPAL_VERSION=8.3.2
# Thu, 11 May 2017 00:22:48 GMT
ENV DRUPAL_MD5=d1fce1ec78ca1bcde4a346f4c06531b4
# Thu, 11 May 2017 00:22:55 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1e8fcfc9d2aa08b74d21fce36b6a3c0b0dc77ccbf7ce578e33151eb6ae2d14`  
		Last Modified: Wed, 10 May 2017 02:14:36 GMT  
		Size: 78.9 MB (78862515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703b0ccc9dc53c4184de6e414865c779acf7af6fd5fefa6f92bab7504b3a1a8d`  
		Last Modified: Wed, 10 May 2017 02:14:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dbb1916873b23acc40b4b352f237058db83d65110b94ce5dc326980ecb151cd`  
		Last Modified: Wed, 10 May 2017 02:20:38 GMT  
		Size: 12.9 MB (12904603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a44a3f0efa9c280d2b3cd280a50657ba0e99575eeb6a8cd898b9113e683a21`  
		Last Modified: Wed, 10 May 2017 02:20:33 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afcf25b0988913e7baa3290374cbb31a31248cee3c1b086bb5318fe70c0c26e9`  
		Last Modified: Wed, 10 May 2017 02:20:37 GMT  
		Size: 13.6 MB (13590429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f81f2cb1a35e5bd48b9c649843aba40f2d124c093eb706a221abd986b5493fc`  
		Last Modified: Wed, 10 May 2017 02:20:33 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6464090c8374c4f1d8344a81265e105253af0222aec79bbbbe184cbd088288f2`  
		Last Modified: Wed, 10 May 2017 02:20:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f93b889f0c9cab8896ca0d5af79fdb9995a5ea504458b3e0c4db079a18c81af`  
		Last Modified: Wed, 10 May 2017 02:20:33 GMT  
		Size: 7.7 KB (7675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22dc729adfebdc3f2514f8911c31a333e212ea964d71f56fb9d8a5fd3b7dd6ce`  
		Last Modified: Thu, 11 May 2017 15:21:59 GMT  
		Size: 1.9 MB (1855499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247fc9b091f8312d395be590b9066e04f10cc2de1b70c18a510f396f4364bbec`  
		Last Modified: Thu, 11 May 2017 15:21:59 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293dd65623e662c3989717e83d2ba76854bcd94105f1f8f1ddbb19bf8fdf4704`  
		Last Modified: Thu, 11 May 2017 15:27:25 GMT  
		Size: 12.8 MB (12802650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.3.2-fpm-alpine`

```console
$ docker pull drupal@sha256:0abc92d0914aecf6dc4e20007f01bcb74d193093447c61ff0c9cc07b2af94855
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3.2-fpm-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47225107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d944bcbeac9b3aef264f9956f928b18c615ef9d50ccaf3cda171c6045e7412`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 17:05:49 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 10 May 2017 17:05:52 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Wed, 10 May 2017 17:05:55 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 May 2017 17:05:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 10 May 2017 17:05:59 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 10 May 2017 17:12:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 10 May 2017 17:13:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:13:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:13:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 May 2017 17:13:02 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 10 May 2017 17:13:03 GMT
ENV PHP_VERSION=7.1.4
# Wed, 10 May 2017 17:13:04 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.4.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.4.tar.xz.asc/from/this/mirror
# Wed, 10 May 2017 17:13:04 GMT
ENV PHP_SHA256=71514386adf3e963df087c2044a0b3747900b8b1fc8da3a99f0a0ae9180d300b PHP_MD5=a74c13f8779349872b365e6732e8c98e
# Wed, 10 May 2017 17:13:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 10 May 2017 17:13:13 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 10 May 2017 17:19:18 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Wed, 10 May 2017 17:37:34 GMT
COPY multi:6f0472135e558ecb6e8d4994f3ad7153def074d5ddc522114a95b3132d9e14ae in /usr/local/bin/ 
# Wed, 10 May 2017 17:37:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 10 May 2017 17:38:33 GMT
WORKDIR /var/www/html
# Wed, 10 May 2017 17:38:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 May 2017 17:38:37 GMT
EXPOSE 9000/tcp
# Wed, 10 May 2017 17:38:37 GMT
CMD ["php-fpm"]
# Thu, 11 May 2017 00:24:03 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Thu, 11 May 2017 00:24:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 May 2017 00:24:06 GMT
WORKDIR /var/www/html
# Thu, 11 May 2017 00:24:06 GMT
ENV DRUPAL_VERSION=8.3.2
# Thu, 11 May 2017 00:24:07 GMT
ENV DRUPAL_MD5=d1fce1ec78ca1bcde4a346f4c06531b4
# Thu, 11 May 2017 00:24:13 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8542ac106e5f245acc49badae773303b3477c2ae382f0e0574f9f554d31b5d77`  
		Last Modified: Wed, 10 May 2017 18:59:56 GMT  
		Size: 1.1 MB (1081294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d07d3c34873b50d13491e454cc6fe6fdce8d46b120083ea5c9661e54494b26a`  
		Last Modified: Wed, 10 May 2017 18:59:53 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53823f85d007cce828881cd3dc2afdb28251eddb1b73a965511bdf2f9fb955f3`  
		Last Modified: Wed, 10 May 2017 18:59:54 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35962b9dff49aa4a05d596e6683456d2c1a0977d94b1d529881e84ce91928b83`  
		Last Modified: Wed, 10 May 2017 19:11:53 GMT  
		Size: 13.0 MB (12967399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a64972fb3d0bd1204717a4c877d2793715f7912ff55169abd8fbe744c22dff`  
		Last Modified: Wed, 10 May 2017 19:11:51 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ae8e057fded7da981d78c2f4e450850c509d14aada871598bc0c2a0ed3d7c3`  
		Last Modified: Wed, 10 May 2017 19:11:57 GMT  
		Size: 14.8 MB (14816084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56912301abb554cb11fea3055ece13e8ba27cacff4292662513f577109a1759c`  
		Last Modified: Wed, 10 May 2017 19:11:51 GMT  
		Size: 2.0 KB (2030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00055b0228d9d9f139cffa9866ae93cda4b8d04f720c5e4fe1985e4cbdd9895f`  
		Last Modified: Wed, 10 May 2017 19:11:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7292d643c958d02b1a99ab920a1341bd4c80c2ae68e12cd3be92587b66aa9e0`  
		Last Modified: Wed, 10 May 2017 19:11:52 GMT  
		Size: 7.7 KB (7662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0265660889a9c6759f2ae32ccaed68ff52ca0639f4642db249abd1a3ba8bdf`  
		Last Modified: Thu, 11 May 2017 15:22:59 GMT  
		Size: 3.2 MB (3162577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a502b986b70f2c83f5d456efa815d5267c56232bbf652d4926efecbabd5c401`  
		Last Modified: Thu, 11 May 2017 15:22:58 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6129057e8ce09b2270990ba4b01de2fcd7978e17dbade6750ffc92f0aeaee87f`  
		Last Modified: Thu, 11 May 2017 15:29:10 GMT  
		Size: 12.8 MB (12802654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.3-fpm-alpine`

```console
$ docker pull drupal@sha256:0abc92d0914aecf6dc4e20007f01bcb74d193093447c61ff0c9cc07b2af94855
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3-fpm-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47225107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d944bcbeac9b3aef264f9956f928b18c615ef9d50ccaf3cda171c6045e7412`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 17:05:49 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 10 May 2017 17:05:52 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Wed, 10 May 2017 17:05:55 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 May 2017 17:05:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 10 May 2017 17:05:59 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 10 May 2017 17:12:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 10 May 2017 17:13:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:13:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:13:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 May 2017 17:13:02 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 10 May 2017 17:13:03 GMT
ENV PHP_VERSION=7.1.4
# Wed, 10 May 2017 17:13:04 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.4.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.4.tar.xz.asc/from/this/mirror
# Wed, 10 May 2017 17:13:04 GMT
ENV PHP_SHA256=71514386adf3e963df087c2044a0b3747900b8b1fc8da3a99f0a0ae9180d300b PHP_MD5=a74c13f8779349872b365e6732e8c98e
# Wed, 10 May 2017 17:13:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 10 May 2017 17:13:13 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 10 May 2017 17:19:18 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Wed, 10 May 2017 17:37:34 GMT
COPY multi:6f0472135e558ecb6e8d4994f3ad7153def074d5ddc522114a95b3132d9e14ae in /usr/local/bin/ 
# Wed, 10 May 2017 17:37:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 10 May 2017 17:38:33 GMT
WORKDIR /var/www/html
# Wed, 10 May 2017 17:38:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 May 2017 17:38:37 GMT
EXPOSE 9000/tcp
# Wed, 10 May 2017 17:38:37 GMT
CMD ["php-fpm"]
# Thu, 11 May 2017 00:24:03 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Thu, 11 May 2017 00:24:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 May 2017 00:24:06 GMT
WORKDIR /var/www/html
# Thu, 11 May 2017 00:24:06 GMT
ENV DRUPAL_VERSION=8.3.2
# Thu, 11 May 2017 00:24:07 GMT
ENV DRUPAL_MD5=d1fce1ec78ca1bcde4a346f4c06531b4
# Thu, 11 May 2017 00:24:13 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8542ac106e5f245acc49badae773303b3477c2ae382f0e0574f9f554d31b5d77`  
		Last Modified: Wed, 10 May 2017 18:59:56 GMT  
		Size: 1.1 MB (1081294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d07d3c34873b50d13491e454cc6fe6fdce8d46b120083ea5c9661e54494b26a`  
		Last Modified: Wed, 10 May 2017 18:59:53 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53823f85d007cce828881cd3dc2afdb28251eddb1b73a965511bdf2f9fb955f3`  
		Last Modified: Wed, 10 May 2017 18:59:54 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35962b9dff49aa4a05d596e6683456d2c1a0977d94b1d529881e84ce91928b83`  
		Last Modified: Wed, 10 May 2017 19:11:53 GMT  
		Size: 13.0 MB (12967399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a64972fb3d0bd1204717a4c877d2793715f7912ff55169abd8fbe744c22dff`  
		Last Modified: Wed, 10 May 2017 19:11:51 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ae8e057fded7da981d78c2f4e450850c509d14aada871598bc0c2a0ed3d7c3`  
		Last Modified: Wed, 10 May 2017 19:11:57 GMT  
		Size: 14.8 MB (14816084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56912301abb554cb11fea3055ece13e8ba27cacff4292662513f577109a1759c`  
		Last Modified: Wed, 10 May 2017 19:11:51 GMT  
		Size: 2.0 KB (2030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00055b0228d9d9f139cffa9866ae93cda4b8d04f720c5e4fe1985e4cbdd9895f`  
		Last Modified: Wed, 10 May 2017 19:11:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7292d643c958d02b1a99ab920a1341bd4c80c2ae68e12cd3be92587b66aa9e0`  
		Last Modified: Wed, 10 May 2017 19:11:52 GMT  
		Size: 7.7 KB (7662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0265660889a9c6759f2ae32ccaed68ff52ca0639f4642db249abd1a3ba8bdf`  
		Last Modified: Thu, 11 May 2017 15:22:59 GMT  
		Size: 3.2 MB (3162577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a502b986b70f2c83f5d456efa815d5267c56232bbf652d4926efecbabd5c401`  
		Last Modified: Thu, 11 May 2017 15:22:58 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6129057e8ce09b2270990ba4b01de2fcd7978e17dbade6750ffc92f0aeaee87f`  
		Last Modified: Thu, 11 May 2017 15:29:10 GMT  
		Size: 12.8 MB (12802654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8-fpm-alpine`

```console
$ docker pull drupal@sha256:0abc92d0914aecf6dc4e20007f01bcb74d193093447c61ff0c9cc07b2af94855
```

-	Platforms:
	-	linux; amd64

### `drupal:8-fpm-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47225107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d944bcbeac9b3aef264f9956f928b18c615ef9d50ccaf3cda171c6045e7412`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 17:05:49 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 10 May 2017 17:05:52 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Wed, 10 May 2017 17:05:55 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 May 2017 17:05:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 10 May 2017 17:05:59 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 10 May 2017 17:12:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 10 May 2017 17:13:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:13:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:13:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 May 2017 17:13:02 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 10 May 2017 17:13:03 GMT
ENV PHP_VERSION=7.1.4
# Wed, 10 May 2017 17:13:04 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.4.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.4.tar.xz.asc/from/this/mirror
# Wed, 10 May 2017 17:13:04 GMT
ENV PHP_SHA256=71514386adf3e963df087c2044a0b3747900b8b1fc8da3a99f0a0ae9180d300b PHP_MD5=a74c13f8779349872b365e6732e8c98e
# Wed, 10 May 2017 17:13:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 10 May 2017 17:13:13 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 10 May 2017 17:19:18 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Wed, 10 May 2017 17:37:34 GMT
COPY multi:6f0472135e558ecb6e8d4994f3ad7153def074d5ddc522114a95b3132d9e14ae in /usr/local/bin/ 
# Wed, 10 May 2017 17:37:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 10 May 2017 17:38:33 GMT
WORKDIR /var/www/html
# Wed, 10 May 2017 17:38:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 May 2017 17:38:37 GMT
EXPOSE 9000/tcp
# Wed, 10 May 2017 17:38:37 GMT
CMD ["php-fpm"]
# Thu, 11 May 2017 00:24:03 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Thu, 11 May 2017 00:24:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 May 2017 00:24:06 GMT
WORKDIR /var/www/html
# Thu, 11 May 2017 00:24:06 GMT
ENV DRUPAL_VERSION=8.3.2
# Thu, 11 May 2017 00:24:07 GMT
ENV DRUPAL_MD5=d1fce1ec78ca1bcde4a346f4c06531b4
# Thu, 11 May 2017 00:24:13 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8542ac106e5f245acc49badae773303b3477c2ae382f0e0574f9f554d31b5d77`  
		Last Modified: Wed, 10 May 2017 18:59:56 GMT  
		Size: 1.1 MB (1081294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d07d3c34873b50d13491e454cc6fe6fdce8d46b120083ea5c9661e54494b26a`  
		Last Modified: Wed, 10 May 2017 18:59:53 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53823f85d007cce828881cd3dc2afdb28251eddb1b73a965511bdf2f9fb955f3`  
		Last Modified: Wed, 10 May 2017 18:59:54 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35962b9dff49aa4a05d596e6683456d2c1a0977d94b1d529881e84ce91928b83`  
		Last Modified: Wed, 10 May 2017 19:11:53 GMT  
		Size: 13.0 MB (12967399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a64972fb3d0bd1204717a4c877d2793715f7912ff55169abd8fbe744c22dff`  
		Last Modified: Wed, 10 May 2017 19:11:51 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ae8e057fded7da981d78c2f4e450850c509d14aada871598bc0c2a0ed3d7c3`  
		Last Modified: Wed, 10 May 2017 19:11:57 GMT  
		Size: 14.8 MB (14816084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56912301abb554cb11fea3055ece13e8ba27cacff4292662513f577109a1759c`  
		Last Modified: Wed, 10 May 2017 19:11:51 GMT  
		Size: 2.0 KB (2030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00055b0228d9d9f139cffa9866ae93cda4b8d04f720c5e4fe1985e4cbdd9895f`  
		Last Modified: Wed, 10 May 2017 19:11:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7292d643c958d02b1a99ab920a1341bd4c80c2ae68e12cd3be92587b66aa9e0`  
		Last Modified: Wed, 10 May 2017 19:11:52 GMT  
		Size: 7.7 KB (7662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0265660889a9c6759f2ae32ccaed68ff52ca0639f4642db249abd1a3ba8bdf`  
		Last Modified: Thu, 11 May 2017 15:22:59 GMT  
		Size: 3.2 MB (3162577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a502b986b70f2c83f5d456efa815d5267c56232bbf652d4926efecbabd5c401`  
		Last Modified: Thu, 11 May 2017 15:22:58 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6129057e8ce09b2270990ba4b01de2fcd7978e17dbade6750ffc92f0aeaee87f`  
		Last Modified: Thu, 11 May 2017 15:29:10 GMT  
		Size: 12.8 MB (12802654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:fpm-alpine`

```console
$ docker pull drupal@sha256:0abc92d0914aecf6dc4e20007f01bcb74d193093447c61ff0c9cc07b2af94855
```

-	Platforms:
	-	linux; amd64

### `drupal:fpm-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47225107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d944bcbeac9b3aef264f9956f928b18c615ef9d50ccaf3cda171c6045e7412`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 17:05:49 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 10 May 2017 17:05:52 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Wed, 10 May 2017 17:05:55 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 May 2017 17:05:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 10 May 2017 17:05:59 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 10 May 2017 17:12:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 10 May 2017 17:13:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:13:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:13:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 May 2017 17:13:02 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 10 May 2017 17:13:03 GMT
ENV PHP_VERSION=7.1.4
# Wed, 10 May 2017 17:13:04 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.4.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.4.tar.xz.asc/from/this/mirror
# Wed, 10 May 2017 17:13:04 GMT
ENV PHP_SHA256=71514386adf3e963df087c2044a0b3747900b8b1fc8da3a99f0a0ae9180d300b PHP_MD5=a74c13f8779349872b365e6732e8c98e
# Wed, 10 May 2017 17:13:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 10 May 2017 17:13:13 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 10 May 2017 17:19:18 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Wed, 10 May 2017 17:37:34 GMT
COPY multi:6f0472135e558ecb6e8d4994f3ad7153def074d5ddc522114a95b3132d9e14ae in /usr/local/bin/ 
# Wed, 10 May 2017 17:37:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 10 May 2017 17:38:33 GMT
WORKDIR /var/www/html
# Wed, 10 May 2017 17:38:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 May 2017 17:38:37 GMT
EXPOSE 9000/tcp
# Wed, 10 May 2017 17:38:37 GMT
CMD ["php-fpm"]
# Thu, 11 May 2017 00:24:03 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Thu, 11 May 2017 00:24:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 11 May 2017 00:24:06 GMT
WORKDIR /var/www/html
# Thu, 11 May 2017 00:24:06 GMT
ENV DRUPAL_VERSION=8.3.2
# Thu, 11 May 2017 00:24:07 GMT
ENV DRUPAL_MD5=d1fce1ec78ca1bcde4a346f4c06531b4
# Thu, 11 May 2017 00:24:13 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8542ac106e5f245acc49badae773303b3477c2ae382f0e0574f9f554d31b5d77`  
		Last Modified: Wed, 10 May 2017 18:59:56 GMT  
		Size: 1.1 MB (1081294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d07d3c34873b50d13491e454cc6fe6fdce8d46b120083ea5c9661e54494b26a`  
		Last Modified: Wed, 10 May 2017 18:59:53 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53823f85d007cce828881cd3dc2afdb28251eddb1b73a965511bdf2f9fb955f3`  
		Last Modified: Wed, 10 May 2017 18:59:54 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35962b9dff49aa4a05d596e6683456d2c1a0977d94b1d529881e84ce91928b83`  
		Last Modified: Wed, 10 May 2017 19:11:53 GMT  
		Size: 13.0 MB (12967399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a64972fb3d0bd1204717a4c877d2793715f7912ff55169abd8fbe744c22dff`  
		Last Modified: Wed, 10 May 2017 19:11:51 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ae8e057fded7da981d78c2f4e450850c509d14aada871598bc0c2a0ed3d7c3`  
		Last Modified: Wed, 10 May 2017 19:11:57 GMT  
		Size: 14.8 MB (14816084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56912301abb554cb11fea3055ece13e8ba27cacff4292662513f577109a1759c`  
		Last Modified: Wed, 10 May 2017 19:11:51 GMT  
		Size: 2.0 KB (2030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00055b0228d9d9f139cffa9866ae93cda4b8d04f720c5e4fe1985e4cbdd9895f`  
		Last Modified: Wed, 10 May 2017 19:11:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7292d643c958d02b1a99ab920a1341bd4c80c2ae68e12cd3be92587b66aa9e0`  
		Last Modified: Wed, 10 May 2017 19:11:52 GMT  
		Size: 7.7 KB (7662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0265660889a9c6759f2ae32ccaed68ff52ca0639f4642db249abd1a3ba8bdf`  
		Last Modified: Thu, 11 May 2017 15:22:59 GMT  
		Size: 3.2 MB (3162577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a502b986b70f2c83f5d456efa815d5267c56232bbf652d4926efecbabd5c401`  
		Last Modified: Thu, 11 May 2017 15:22:58 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6129057e8ce09b2270990ba4b01de2fcd7978e17dbade6750ffc92f0aeaee87f`  
		Last Modified: Thu, 11 May 2017 15:29:10 GMT  
		Size: 12.8 MB (12802654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2.8-apache`

```console
$ docker pull drupal@sha256:dcb1a0656054c4cf8e1676a465388cc97b4e3ccf442a0f81dbb03c717c62d3b4
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.8-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.4 MB (178405260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e7c9263b71711f39314ce527e172fc99d9ba0e94cbb6918e3340a2a4837958c`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Fri, 12 May 2017 23:58:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 12 May 2017 23:58:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 12 May 2017 23:58:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 12 May 2017 23:59:00 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 13 May 2017 00:10:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 13 May 2017 00:10:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 13 May 2017 00:10:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 13 May 2017 00:10:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 13 May 2017 00:10:46 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 13 May 2017 00:10:47 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 13 May 2017 00:10:48 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 13 May 2017 00:10:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 00:10:51 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Sat, 13 May 2017 00:10:52 GMT
ENV PHP_VERSION=7.1.5
# Sat, 13 May 2017 00:10:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 00:10:53 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Sat, 13 May 2017 00:11:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 13 May 2017 00:11:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:43 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Sat, 13 May 2017 00:13:45 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 13 May 2017 00:13:47 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:48 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 00:13:49 GMT
EXPOSE 80/tcp
# Sat, 13 May 2017 00:13:49 GMT
CMD ["apache2-foreground"]
# Sat, 13 May 2017 03:14:10 GMT
RUN a2enmod rewrite
# Sat, 13 May 2017 03:15:13 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 13 May 2017 03:15:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 13 May 2017 03:15:15 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 03:15:16 GMT
ENV DRUPAL_VERSION=8.2.8
# Sat, 13 May 2017 03:15:17 GMT
ENV DRUPAL_MD5=039507247f3712c3fb022805eb13faf4
# Sat, 13 May 2017 03:15:23 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370377701f89cff89a25897f719848740ad95b97828c7ffdf8444bdafef6436b`  
		Last Modified: Sat, 13 May 2017 01:37:32 GMT  
		Size: 82.5 MB (82498638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455c73a122bc8a30bbb47aacf289778a636517eb5d841408435625ec4394a9c7`  
		Last Modified: Sat, 13 May 2017 01:37:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb71bac61c47a0055de7152b653793de87fd4714cc299f481f1c203cb68fc9ea`  
		Last Modified: Sat, 13 May 2017 01:42:16 GMT  
		Size: 2.8 MB (2788864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a1d91ad4e347bdc4a030b9c7b0890e16ab9c944ede92833fe561242bbb0e7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e0256ba4b0dcbb46fb72849d19a1dd78acf09f79d4e4cd69851c516940cbb7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14fbe7a9dfbfa8ee0219fece98b46a36980c4c426f125b2d7f39d0ebbf1f97b`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f36dd91c0ab80629aba5f3a2285c02127aedaec768787bc0a8a3ad9513b62ff`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e4a1f87acca582dd6b3b85d29178fc58396357465c3c6decf5d753e4791b7a`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 12.9 MB (12930707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5541ee478ff0dd2b1fcad9cdf437cc50455376e53164fbf6a64bad8aa31066`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb657ecb3703177a88c03504c9c5a7440d60fc19b8a323840c3c738577affe4`  
		Last Modified: Sat, 13 May 2017 01:42:14 GMT  
		Size: 13.5 MB (13524605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8769771ac5f46d86ef701fcc49a9f34fd982e14e1d81159f45dd1123bc9160cf`  
		Last Modified: Sat, 13 May 2017 01:42:11 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08c0f680a7abc14c907d83b5514ce3d9ea958e85fcde9790800c511f9161cc5`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed88a13946159ef0b85b45c9420aff54dafbd2d8787515574133bdbbb4d02ed6`  
		Last Modified: Sat, 13 May 2017 03:23:33 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d4806d2c645e78964983c0876dbfdf5f4a1b60f8d608a08e8ad9e9ea23246a`  
		Last Modified: Sat, 13 May 2017 03:23:35 GMT  
		Size: 1.9 MB (1881132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea278863e0e1b6bf66f5d8d6b95211da2425420cda9e0869ed9f75a16a21e4eb`  
		Last Modified: Sat, 13 May 2017 03:23:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280c7fc613f3f41353f900f6a754e33d0acd97518871c3d159d80e85c65648d9`  
		Last Modified: Sat, 13 May 2017 03:23:38 GMT  
		Size: 12.2 MB (12190616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2-apache`

```console
$ docker pull drupal@sha256:dcb1a0656054c4cf8e1676a465388cc97b4e3ccf442a0f81dbb03c717c62d3b4
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.4 MB (178405260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e7c9263b71711f39314ce527e172fc99d9ba0e94cbb6918e3340a2a4837958c`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Fri, 12 May 2017 23:58:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 12 May 2017 23:58:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 12 May 2017 23:58:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 12 May 2017 23:59:00 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 13 May 2017 00:10:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 13 May 2017 00:10:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 13 May 2017 00:10:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 13 May 2017 00:10:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 13 May 2017 00:10:46 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 13 May 2017 00:10:47 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 13 May 2017 00:10:48 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 13 May 2017 00:10:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 00:10:51 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Sat, 13 May 2017 00:10:52 GMT
ENV PHP_VERSION=7.1.5
# Sat, 13 May 2017 00:10:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 00:10:53 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Sat, 13 May 2017 00:11:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 13 May 2017 00:11:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:43 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Sat, 13 May 2017 00:13:45 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 13 May 2017 00:13:47 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:48 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 00:13:49 GMT
EXPOSE 80/tcp
# Sat, 13 May 2017 00:13:49 GMT
CMD ["apache2-foreground"]
# Sat, 13 May 2017 03:14:10 GMT
RUN a2enmod rewrite
# Sat, 13 May 2017 03:15:13 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 13 May 2017 03:15:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 13 May 2017 03:15:15 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 03:15:16 GMT
ENV DRUPAL_VERSION=8.2.8
# Sat, 13 May 2017 03:15:17 GMT
ENV DRUPAL_MD5=039507247f3712c3fb022805eb13faf4
# Sat, 13 May 2017 03:15:23 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370377701f89cff89a25897f719848740ad95b97828c7ffdf8444bdafef6436b`  
		Last Modified: Sat, 13 May 2017 01:37:32 GMT  
		Size: 82.5 MB (82498638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455c73a122bc8a30bbb47aacf289778a636517eb5d841408435625ec4394a9c7`  
		Last Modified: Sat, 13 May 2017 01:37:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb71bac61c47a0055de7152b653793de87fd4714cc299f481f1c203cb68fc9ea`  
		Last Modified: Sat, 13 May 2017 01:42:16 GMT  
		Size: 2.8 MB (2788864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a1d91ad4e347bdc4a030b9c7b0890e16ab9c944ede92833fe561242bbb0e7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e0256ba4b0dcbb46fb72849d19a1dd78acf09f79d4e4cd69851c516940cbb7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14fbe7a9dfbfa8ee0219fece98b46a36980c4c426f125b2d7f39d0ebbf1f97b`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f36dd91c0ab80629aba5f3a2285c02127aedaec768787bc0a8a3ad9513b62ff`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e4a1f87acca582dd6b3b85d29178fc58396357465c3c6decf5d753e4791b7a`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 12.9 MB (12930707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5541ee478ff0dd2b1fcad9cdf437cc50455376e53164fbf6a64bad8aa31066`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb657ecb3703177a88c03504c9c5a7440d60fc19b8a323840c3c738577affe4`  
		Last Modified: Sat, 13 May 2017 01:42:14 GMT  
		Size: 13.5 MB (13524605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8769771ac5f46d86ef701fcc49a9f34fd982e14e1d81159f45dd1123bc9160cf`  
		Last Modified: Sat, 13 May 2017 01:42:11 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08c0f680a7abc14c907d83b5514ce3d9ea958e85fcde9790800c511f9161cc5`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed88a13946159ef0b85b45c9420aff54dafbd2d8787515574133bdbbb4d02ed6`  
		Last Modified: Sat, 13 May 2017 03:23:33 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d4806d2c645e78964983c0876dbfdf5f4a1b60f8d608a08e8ad9e9ea23246a`  
		Last Modified: Sat, 13 May 2017 03:23:35 GMT  
		Size: 1.9 MB (1881132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea278863e0e1b6bf66f5d8d6b95211da2425420cda9e0869ed9f75a16a21e4eb`  
		Last Modified: Sat, 13 May 2017 03:23:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280c7fc613f3f41353f900f6a754e33d0acd97518871c3d159d80e85c65648d9`  
		Last Modified: Sat, 13 May 2017 03:23:38 GMT  
		Size: 12.2 MB (12190616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2.8`

```console
$ docker pull drupal@sha256:dcb1a0656054c4cf8e1676a465388cc97b4e3ccf442a0f81dbb03c717c62d3b4
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.4 MB (178405260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e7c9263b71711f39314ce527e172fc99d9ba0e94cbb6918e3340a2a4837958c`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Fri, 12 May 2017 23:58:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 12 May 2017 23:58:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 12 May 2017 23:58:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 12 May 2017 23:59:00 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 13 May 2017 00:10:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 13 May 2017 00:10:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 13 May 2017 00:10:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 13 May 2017 00:10:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 13 May 2017 00:10:46 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 13 May 2017 00:10:47 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 13 May 2017 00:10:48 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 13 May 2017 00:10:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 00:10:51 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Sat, 13 May 2017 00:10:52 GMT
ENV PHP_VERSION=7.1.5
# Sat, 13 May 2017 00:10:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 00:10:53 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Sat, 13 May 2017 00:11:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 13 May 2017 00:11:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:43 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Sat, 13 May 2017 00:13:45 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 13 May 2017 00:13:47 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:48 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 00:13:49 GMT
EXPOSE 80/tcp
# Sat, 13 May 2017 00:13:49 GMT
CMD ["apache2-foreground"]
# Sat, 13 May 2017 03:14:10 GMT
RUN a2enmod rewrite
# Sat, 13 May 2017 03:15:13 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 13 May 2017 03:15:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 13 May 2017 03:15:15 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 03:15:16 GMT
ENV DRUPAL_VERSION=8.2.8
# Sat, 13 May 2017 03:15:17 GMT
ENV DRUPAL_MD5=039507247f3712c3fb022805eb13faf4
# Sat, 13 May 2017 03:15:23 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370377701f89cff89a25897f719848740ad95b97828c7ffdf8444bdafef6436b`  
		Last Modified: Sat, 13 May 2017 01:37:32 GMT  
		Size: 82.5 MB (82498638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455c73a122bc8a30bbb47aacf289778a636517eb5d841408435625ec4394a9c7`  
		Last Modified: Sat, 13 May 2017 01:37:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb71bac61c47a0055de7152b653793de87fd4714cc299f481f1c203cb68fc9ea`  
		Last Modified: Sat, 13 May 2017 01:42:16 GMT  
		Size: 2.8 MB (2788864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a1d91ad4e347bdc4a030b9c7b0890e16ab9c944ede92833fe561242bbb0e7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e0256ba4b0dcbb46fb72849d19a1dd78acf09f79d4e4cd69851c516940cbb7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14fbe7a9dfbfa8ee0219fece98b46a36980c4c426f125b2d7f39d0ebbf1f97b`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f36dd91c0ab80629aba5f3a2285c02127aedaec768787bc0a8a3ad9513b62ff`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e4a1f87acca582dd6b3b85d29178fc58396357465c3c6decf5d753e4791b7a`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 12.9 MB (12930707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5541ee478ff0dd2b1fcad9cdf437cc50455376e53164fbf6a64bad8aa31066`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb657ecb3703177a88c03504c9c5a7440d60fc19b8a323840c3c738577affe4`  
		Last Modified: Sat, 13 May 2017 01:42:14 GMT  
		Size: 13.5 MB (13524605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8769771ac5f46d86ef701fcc49a9f34fd982e14e1d81159f45dd1123bc9160cf`  
		Last Modified: Sat, 13 May 2017 01:42:11 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08c0f680a7abc14c907d83b5514ce3d9ea958e85fcde9790800c511f9161cc5`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed88a13946159ef0b85b45c9420aff54dafbd2d8787515574133bdbbb4d02ed6`  
		Last Modified: Sat, 13 May 2017 03:23:33 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d4806d2c645e78964983c0876dbfdf5f4a1b60f8d608a08e8ad9e9ea23246a`  
		Last Modified: Sat, 13 May 2017 03:23:35 GMT  
		Size: 1.9 MB (1881132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea278863e0e1b6bf66f5d8d6b95211da2425420cda9e0869ed9f75a16a21e4eb`  
		Last Modified: Sat, 13 May 2017 03:23:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280c7fc613f3f41353f900f6a754e33d0acd97518871c3d159d80e85c65648d9`  
		Last Modified: Sat, 13 May 2017 03:23:38 GMT  
		Size: 12.2 MB (12190616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2`

```console
$ docker pull drupal@sha256:dcb1a0656054c4cf8e1676a465388cc97b4e3ccf442a0f81dbb03c717c62d3b4
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.4 MB (178405260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e7c9263b71711f39314ce527e172fc99d9ba0e94cbb6918e3340a2a4837958c`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Fri, 12 May 2017 23:58:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 12 May 2017 23:58:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 12 May 2017 23:58:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 12 May 2017 23:59:00 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 13 May 2017 00:10:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 13 May 2017 00:10:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 13 May 2017 00:10:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 13 May 2017 00:10:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 13 May 2017 00:10:46 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 13 May 2017 00:10:47 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 13 May 2017 00:10:48 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 13 May 2017 00:10:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 00:10:51 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Sat, 13 May 2017 00:10:52 GMT
ENV PHP_VERSION=7.1.5
# Sat, 13 May 2017 00:10:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 00:10:53 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Sat, 13 May 2017 00:11:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 13 May 2017 00:11:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:43 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Sat, 13 May 2017 00:13:45 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 13 May 2017 00:13:47 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 13 May 2017 00:13:48 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 00:13:49 GMT
EXPOSE 80/tcp
# Sat, 13 May 2017 00:13:49 GMT
CMD ["apache2-foreground"]
# Sat, 13 May 2017 03:14:10 GMT
RUN a2enmod rewrite
# Sat, 13 May 2017 03:15:13 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 13 May 2017 03:15:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 13 May 2017 03:15:15 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 03:15:16 GMT
ENV DRUPAL_VERSION=8.2.8
# Sat, 13 May 2017 03:15:17 GMT
ENV DRUPAL_MD5=039507247f3712c3fb022805eb13faf4
# Sat, 13 May 2017 03:15:23 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370377701f89cff89a25897f719848740ad95b97828c7ffdf8444bdafef6436b`  
		Last Modified: Sat, 13 May 2017 01:37:32 GMT  
		Size: 82.5 MB (82498638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455c73a122bc8a30bbb47aacf289778a636517eb5d841408435625ec4394a9c7`  
		Last Modified: Sat, 13 May 2017 01:37:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb71bac61c47a0055de7152b653793de87fd4714cc299f481f1c203cb68fc9ea`  
		Last Modified: Sat, 13 May 2017 01:42:16 GMT  
		Size: 2.8 MB (2788864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a1d91ad4e347bdc4a030b9c7b0890e16ab9c944ede92833fe561242bbb0e7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e0256ba4b0dcbb46fb72849d19a1dd78acf09f79d4e4cd69851c516940cbb7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14fbe7a9dfbfa8ee0219fece98b46a36980c4c426f125b2d7f39d0ebbf1f97b`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f36dd91c0ab80629aba5f3a2285c02127aedaec768787bc0a8a3ad9513b62ff`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e4a1f87acca582dd6b3b85d29178fc58396357465c3c6decf5d753e4791b7a`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 12.9 MB (12930707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5541ee478ff0dd2b1fcad9cdf437cc50455376e53164fbf6a64bad8aa31066`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb657ecb3703177a88c03504c9c5a7440d60fc19b8a323840c3c738577affe4`  
		Last Modified: Sat, 13 May 2017 01:42:14 GMT  
		Size: 13.5 MB (13524605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8769771ac5f46d86ef701fcc49a9f34fd982e14e1d81159f45dd1123bc9160cf`  
		Last Modified: Sat, 13 May 2017 01:42:11 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08c0f680a7abc14c907d83b5514ce3d9ea958e85fcde9790800c511f9161cc5`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed88a13946159ef0b85b45c9420aff54dafbd2d8787515574133bdbbb4d02ed6`  
		Last Modified: Sat, 13 May 2017 03:23:33 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d4806d2c645e78964983c0876dbfdf5f4a1b60f8d608a08e8ad9e9ea23246a`  
		Last Modified: Sat, 13 May 2017 03:23:35 GMT  
		Size: 1.9 MB (1881132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea278863e0e1b6bf66f5d8d6b95211da2425420cda9e0869ed9f75a16a21e4eb`  
		Last Modified: Sat, 13 May 2017 03:23:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280c7fc613f3f41353f900f6a754e33d0acd97518871c3d159d80e85c65648d9`  
		Last Modified: Sat, 13 May 2017 03:23:38 GMT  
		Size: 12.2 MB (12190616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2.8-fpm`

```console
$ docker pull drupal@sha256:a7af653641671b0da22325ec42dd053ae277b3bdb91817b4b5a29276e4ad194f
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.8-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175143999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e1b41202d75d09527ae1d7e6c7d2b085dea919fda96696e70681ed55fe748be`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Fri, 12 May 2017 23:58:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 12 May 2017 23:58:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 12 May 2017 23:58:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 12 May 2017 23:59:00 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 13 May 2017 00:14:10 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Sat, 13 May 2017 00:14:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:14:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:14:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 00:14:13 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Sat, 13 May 2017 00:14:14 GMT
ENV PHP_VERSION=7.1.5
# Sat, 13 May 2017 00:14:15 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 00:14:15 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Sat, 13 May 2017 00:14:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 13 May 2017 00:14:30 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 13 May 2017 00:19:09 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Sat, 13 May 2017 00:22:29 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Sat, 13 May 2017 00:22:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 13 May 2017 00:22:31 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 00:22:32 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 13 May 2017 00:22:33 GMT
EXPOSE 9000/tcp
# Sat, 13 May 2017 00:22:33 GMT
CMD ["php-fpm"]
# Sat, 13 May 2017 03:16:46 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 13 May 2017 03:16:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 13 May 2017 03:16:48 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 03:16:49 GMT
ENV DRUPAL_VERSION=8.2.8
# Sat, 13 May 2017 03:16:49 GMT
ENV DRUPAL_MD5=039507247f3712c3fb022805eb13faf4
# Sat, 13 May 2017 03:16:55 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370377701f89cff89a25897f719848740ad95b97828c7ffdf8444bdafef6436b`  
		Last Modified: Sat, 13 May 2017 01:37:32 GMT  
		Size: 82.5 MB (82498638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455c73a122bc8a30bbb47aacf289778a636517eb5d841408435625ec4394a9c7`  
		Last Modified: Sat, 13 May 2017 01:37:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de62618f93d50c187f3fa16e661dd214bcc83e95d34f98c46669734535d47ff2`  
		Last Modified: Sat, 13 May 2017 01:43:52 GMT  
		Size: 12.9 MB (12913551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f22fecc61ccaf1b5d5184c1f47c6acb21af6bc70a5e1a20c4fce079140e6a8`  
		Last Modified: Sat, 13 May 2017 01:43:50 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84248d5c48b4fed0a9d0aba767cb6ba4c98a57d7c2cb599b9c65017aaede44c7`  
		Last Modified: Sat, 13 May 2017 01:43:55 GMT  
		Size: 13.1 MB (13084935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74fbccbaebee51d27b623a0dd2680f0a981515f4e6ea05077e540b879a772cae`  
		Last Modified: Sat, 13 May 2017 01:43:50 GMT  
		Size: 2.1 KB (2121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fda988f2cb5d166ce10c6feddde6267edf2575ec505e3e5f40463e579ed20a7`  
		Last Modified: Sat, 13 May 2017 01:43:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3824726faa232c622d233e921a6ba4fd3d2bdf28023197dc46d8dd95b411e40d`  
		Last Modified: Sat, 13 May 2017 01:43:52 GMT  
		Size: 7.7 KB (7675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ea8d439970f1c4a29e31352cef93d109b81ef20661f7b72c14c065ebac1a01`  
		Last Modified: Sat, 13 May 2017 03:25:14 GMT  
		Size: 1.9 MB (1861335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06cc656ba3911dbf99a8223d3136b854cbc32000a979641d7151f2e889c16534`  
		Last Modified: Sat, 13 May 2017 03:25:13 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c58c0aa7dd9812510b1b03a0120fef7a415d72e8c8a61620f392e01c3ed6230`  
		Last Modified: Sat, 13 May 2017 03:25:16 GMT  
		Size: 12.2 MB (12190594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2-fpm`

```console
$ docker pull drupal@sha256:a7af653641671b0da22325ec42dd053ae277b3bdb91817b4b5a29276e4ad194f
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175143999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e1b41202d75d09527ae1d7e6c7d2b085dea919fda96696e70681ed55fe748be`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Fri, 12 May 2017 23:58:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 12 May 2017 23:58:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 12 May 2017 23:58:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 12 May 2017 23:59:00 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 13 May 2017 00:14:10 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Sat, 13 May 2017 00:14:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:14:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:14:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 00:14:13 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Sat, 13 May 2017 00:14:14 GMT
ENV PHP_VERSION=7.1.5
# Sat, 13 May 2017 00:14:15 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 00:14:15 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Sat, 13 May 2017 00:14:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 13 May 2017 00:14:30 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 13 May 2017 00:19:09 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Sat, 13 May 2017 00:22:29 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Sat, 13 May 2017 00:22:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 13 May 2017 00:22:31 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 00:22:32 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 13 May 2017 00:22:33 GMT
EXPOSE 9000/tcp
# Sat, 13 May 2017 00:22:33 GMT
CMD ["php-fpm"]
# Sat, 13 May 2017 03:16:46 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 13 May 2017 03:16:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 13 May 2017 03:16:48 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 03:16:49 GMT
ENV DRUPAL_VERSION=8.2.8
# Sat, 13 May 2017 03:16:49 GMT
ENV DRUPAL_MD5=039507247f3712c3fb022805eb13faf4
# Sat, 13 May 2017 03:16:55 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370377701f89cff89a25897f719848740ad95b97828c7ffdf8444bdafef6436b`  
		Last Modified: Sat, 13 May 2017 01:37:32 GMT  
		Size: 82.5 MB (82498638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455c73a122bc8a30bbb47aacf289778a636517eb5d841408435625ec4394a9c7`  
		Last Modified: Sat, 13 May 2017 01:37:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de62618f93d50c187f3fa16e661dd214bcc83e95d34f98c46669734535d47ff2`  
		Last Modified: Sat, 13 May 2017 01:43:52 GMT  
		Size: 12.9 MB (12913551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f22fecc61ccaf1b5d5184c1f47c6acb21af6bc70a5e1a20c4fce079140e6a8`  
		Last Modified: Sat, 13 May 2017 01:43:50 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84248d5c48b4fed0a9d0aba767cb6ba4c98a57d7c2cb599b9c65017aaede44c7`  
		Last Modified: Sat, 13 May 2017 01:43:55 GMT  
		Size: 13.1 MB (13084935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74fbccbaebee51d27b623a0dd2680f0a981515f4e6ea05077e540b879a772cae`  
		Last Modified: Sat, 13 May 2017 01:43:50 GMT  
		Size: 2.1 KB (2121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fda988f2cb5d166ce10c6feddde6267edf2575ec505e3e5f40463e579ed20a7`  
		Last Modified: Sat, 13 May 2017 01:43:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3824726faa232c622d233e921a6ba4fd3d2bdf28023197dc46d8dd95b411e40d`  
		Last Modified: Sat, 13 May 2017 01:43:52 GMT  
		Size: 7.7 KB (7675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ea8d439970f1c4a29e31352cef93d109b81ef20661f7b72c14c065ebac1a01`  
		Last Modified: Sat, 13 May 2017 03:25:14 GMT  
		Size: 1.9 MB (1861335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06cc656ba3911dbf99a8223d3136b854cbc32000a979641d7151f2e889c16534`  
		Last Modified: Sat, 13 May 2017 03:25:13 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c58c0aa7dd9812510b1b03a0120fef7a415d72e8c8a61620f392e01c3ed6230`  
		Last Modified: Sat, 13 May 2017 03:25:16 GMT  
		Size: 12.2 MB (12190594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2.8-fpm-alpine`

```console
$ docker pull drupal@sha256:2108fc4131f848d24c8ed974348782939ff924f625465cbea5f93347e8d96db4
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.8-fpm-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 MB (46259960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebfbaac115d9e4252754417049036b4235c8f1122552473e9c3bd39eba034c59`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Sat, 13 May 2017 00:05:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Sat, 13 May 2017 00:05:40 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Sat, 13 May 2017 00:05:43 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Sat, 13 May 2017 00:05:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 13 May 2017 00:05:45 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 13 May 2017 00:22:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Sat, 13 May 2017 00:22:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:22:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:22:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 00:22:58 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Sat, 13 May 2017 00:22:58 GMT
ENV PHP_VERSION=7.1.5
# Sat, 13 May 2017 00:23:18 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 00:23:19 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Sat, 13 May 2017 00:23:27 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 13 May 2017 00:23:41 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 13 May 2017 00:28:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Sat, 13 May 2017 00:28:33 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Sat, 13 May 2017 00:28:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 13 May 2017 00:28:35 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 00:28:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 13 May 2017 00:28:37 GMT
EXPOSE 9000/tcp
# Sat, 13 May 2017 00:28:38 GMT
CMD ["php-fpm"]
# Sat, 13 May 2017 03:18:08 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Sat, 13 May 2017 03:18:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 13 May 2017 03:18:10 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 03:18:11 GMT
ENV DRUPAL_VERSION=8.2.8
# Sat, 13 May 2017 03:18:11 GMT
ENV DRUPAL_MD5=039507247f3712c3fb022805eb13faf4
# Sat, 13 May 2017 03:18:17 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f0bf25c22e185588f5556af1e7b9d67bdc2879f6173fd516350f73a2deb29f`  
		Last Modified: Sat, 13 May 2017 01:40:36 GMT  
		Size: 1.1 MB (1081302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80549166a18f9060850abdc57136a60481cb83b1fa5dd7b8816907cb5bb7b611`  
		Last Modified: Sat, 13 May 2017 01:40:32 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a30cf12edf726e91cf3093d0c7aa86497903a99d4b0aca5589b746aeffeed3`  
		Last Modified: Sat, 13 May 2017 01:40:34 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f3053bbc47d03e871d20a181813a8f6e32110edbad8324580c3a045976e0f6`  
		Last Modified: Sat, 13 May 2017 01:45:29 GMT  
		Size: 13.0 MB (12971388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2c8f32c14e368521327c06a6925ef9d33ff95326aa624f4bf5851b558573c8`  
		Last Modified: Sat, 13 May 2017 01:45:27 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59564ac097aada27e7131e387472acabb2b4293e7e662c1b12930105d9a3ce9`  
		Last Modified: Sat, 13 May 2017 01:45:32 GMT  
		Size: 14.5 MB (14458068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a14bd02c93eea987036c0ce5a4911bfb8e4c28dda18e8fd7dcb016d13646a4`  
		Last Modified: Sat, 13 May 2017 01:45:27 GMT  
		Size: 2.1 KB (2111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384d9bdef1e7c125ae1982dbdbf518a64bd38a5271d09b372bca6cea30c81f1a`  
		Last Modified: Sat, 13 May 2017 01:45:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b6f6bb17c6267440ebbc7d11d876da15e0653e76d7a0780a2d0b80ea9e37a7`  
		Last Modified: Sat, 13 May 2017 01:45:27 GMT  
		Size: 7.7 KB (7661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a81458edb6e21679c471664b1a39e3828d60170457dbba06d621ec467d3d858`  
		Last Modified: Sat, 13 May 2017 03:26:08 GMT  
		Size: 3.2 MB (3163415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dc3f10516671ef7470bf20ad1b53cf15b03fe4f32fa26d8457b22caf2bc8df`  
		Last Modified: Sat, 13 May 2017 03:26:07 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9be107268e3ba5af6e0cfb688c749f5ebd5d1a49369ee997c55050efce92e0b`  
		Last Modified: Sat, 13 May 2017 03:26:11 GMT  
		Size: 12.2 MB (12190599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2-fpm-alpine`

```console
$ docker pull drupal@sha256:2108fc4131f848d24c8ed974348782939ff924f625465cbea5f93347e8d96db4
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2-fpm-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 MB (46259960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebfbaac115d9e4252754417049036b4235c8f1122552473e9c3bd39eba034c59`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Sat, 13 May 2017 00:05:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Sat, 13 May 2017 00:05:40 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Sat, 13 May 2017 00:05:43 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Sat, 13 May 2017 00:05:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 13 May 2017 00:05:45 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 13 May 2017 00:22:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Sat, 13 May 2017 00:22:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:22:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:22:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 00:22:58 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Sat, 13 May 2017 00:22:58 GMT
ENV PHP_VERSION=7.1.5
# Sat, 13 May 2017 00:23:18 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 00:23:19 GMT
ENV PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac PHP_MD5=fb0702321c7aceac68c82b8c7a10d196
# Sat, 13 May 2017 00:23:27 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 13 May 2017 00:23:41 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 13 May 2017 00:28:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Sat, 13 May 2017 00:28:33 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Sat, 13 May 2017 00:28:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 13 May 2017 00:28:35 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 00:28:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 13 May 2017 00:28:37 GMT
EXPOSE 9000/tcp
# Sat, 13 May 2017 00:28:38 GMT
CMD ["php-fpm"]
# Sat, 13 May 2017 03:18:08 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Sat, 13 May 2017 03:18:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 13 May 2017 03:18:10 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 03:18:11 GMT
ENV DRUPAL_VERSION=8.2.8
# Sat, 13 May 2017 03:18:11 GMT
ENV DRUPAL_MD5=039507247f3712c3fb022805eb13faf4
# Sat, 13 May 2017 03:18:17 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f0bf25c22e185588f5556af1e7b9d67bdc2879f6173fd516350f73a2deb29f`  
		Last Modified: Sat, 13 May 2017 01:40:36 GMT  
		Size: 1.1 MB (1081302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80549166a18f9060850abdc57136a60481cb83b1fa5dd7b8816907cb5bb7b611`  
		Last Modified: Sat, 13 May 2017 01:40:32 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a30cf12edf726e91cf3093d0c7aa86497903a99d4b0aca5589b746aeffeed3`  
		Last Modified: Sat, 13 May 2017 01:40:34 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f3053bbc47d03e871d20a181813a8f6e32110edbad8324580c3a045976e0f6`  
		Last Modified: Sat, 13 May 2017 01:45:29 GMT  
		Size: 13.0 MB (12971388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2c8f32c14e368521327c06a6925ef9d33ff95326aa624f4bf5851b558573c8`  
		Last Modified: Sat, 13 May 2017 01:45:27 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59564ac097aada27e7131e387472acabb2b4293e7e662c1b12930105d9a3ce9`  
		Last Modified: Sat, 13 May 2017 01:45:32 GMT  
		Size: 14.5 MB (14458068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a14bd02c93eea987036c0ce5a4911bfb8e4c28dda18e8fd7dcb016d13646a4`  
		Last Modified: Sat, 13 May 2017 01:45:27 GMT  
		Size: 2.1 KB (2111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384d9bdef1e7c125ae1982dbdbf518a64bd38a5271d09b372bca6cea30c81f1a`  
		Last Modified: Sat, 13 May 2017 01:45:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b6f6bb17c6267440ebbc7d11d876da15e0653e76d7a0780a2d0b80ea9e37a7`  
		Last Modified: Sat, 13 May 2017 01:45:27 GMT  
		Size: 7.7 KB (7661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a81458edb6e21679c471664b1a39e3828d60170457dbba06d621ec467d3d858`  
		Last Modified: Sat, 13 May 2017 03:26:08 GMT  
		Size: 3.2 MB (3163415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dc3f10516671ef7470bf20ad1b53cf15b03fe4f32fa26d8457b22caf2bc8df`  
		Last Modified: Sat, 13 May 2017 03:26:07 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9be107268e3ba5af6e0cfb688c749f5ebd5d1a49369ee997c55050efce92e0b`  
		Last Modified: Sat, 13 May 2017 03:26:11 GMT  
		Size: 12.2 MB (12190599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7.54-apache`

```console
$ docker pull drupal@sha256:eb790f9a13f0e73877738bad3ac0ba38ebcf88d86b8f38ade99b2623a3a94ecb
```

-	Platforms:
	-	linux; amd64

### `drupal:7.54-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168815366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b043a3371484c224cd1bcd1b5ce602a4e2fcabe15e46d38b3542a7d78993b380`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Fri, 12 May 2017 23:58:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 12 May 2017 23:58:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 12 May 2017 23:58:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 12 May 2017 23:59:00 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 13 May 2017 00:10:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 13 May 2017 00:10:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 13 May 2017 00:10:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 13 May 2017 00:10:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 13 May 2017 00:10:46 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 13 May 2017 00:10:47 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 13 May 2017 00:10:48 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 13 May 2017 00:10:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 00:52:31 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 13 May 2017 00:52:32 GMT
ENV PHP_VERSION=7.0.19
# Sat, 13 May 2017 00:52:33 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.19.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.19.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 00:52:34 GMT
ENV PHP_SHA256=640e5e3377d15a6d19adce2b94a9d876eeddabdb862d154a5e347987f4225ef6 PHP_MD5=1a17e45c8be9ce28f036d884563e8ae7
# Sat, 13 May 2017 00:52:45 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 13 May 2017 00:52:46 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 13 May 2017 00:55:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Sat, 13 May 2017 00:55:10 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Sat, 13 May 2017 00:55:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 13 May 2017 00:55:11 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 13 May 2017 00:55:12 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 00:55:13 GMT
EXPOSE 80/tcp
# Sat, 13 May 2017 00:55:14 GMT
CMD ["apache2-foreground"]
# Sat, 13 May 2017 03:10:34 GMT
RUN a2enmod rewrite
# Sat, 13 May 2017 03:11:25 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 13 May 2017 03:11:26 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 03:11:26 GMT
ENV DRUPAL_VERSION=7.54
# Sat, 13 May 2017 03:11:27 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Sat, 13 May 2017 03:11:29 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370377701f89cff89a25897f719848740ad95b97828c7ffdf8444bdafef6436b`  
		Last Modified: Sat, 13 May 2017 01:37:32 GMT  
		Size: 82.5 MB (82498638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455c73a122bc8a30bbb47aacf289778a636517eb5d841408435625ec4394a9c7`  
		Last Modified: Sat, 13 May 2017 01:37:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb71bac61c47a0055de7152b653793de87fd4714cc299f481f1c203cb68fc9ea`  
		Last Modified: Sat, 13 May 2017 01:42:16 GMT  
		Size: 2.8 MB (2788864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a1d91ad4e347bdc4a030b9c7b0890e16ab9c944ede92833fe561242bbb0e7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e0256ba4b0dcbb46fb72849d19a1dd78acf09f79d4e4cd69851c516940cbb7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14fbe7a9dfbfa8ee0219fece98b46a36980c4c426f125b2d7f39d0ebbf1f97b`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f36dd91c0ab80629aba5f3a2285c02127aedaec768787bc0a8a3ad9513b62ff`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4d938396abfd11ad29dad05f8ed40df976ddbe3bc682abaf8417f4d4d68841`  
		Last Modified: Sat, 13 May 2017 01:52:48 GMT  
		Size: 12.7 MB (12727358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e5f6ef63c37c59c00ac1f4f24da1d99198e15420232ec91a0745d6b9dca772`  
		Last Modified: Sat, 13 May 2017 01:52:47 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aecbd237b32468bd637be55aa8b61a27d1d57a49eb19412c36aa5d9c602dfbd`  
		Last Modified: Sat, 13 May 2017 01:52:49 GMT  
		Size: 13.2 MB (13213403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b4b986d794586a556be22876053d9a61b92b619f00f630bbe5c7ed21cdff2f`  
		Last Modified: Sat, 13 May 2017 01:52:46 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9a245edba86a77326983836fd3e81028b9d2c40008d6d2275a6773aa4f6559`  
		Last Modified: Sat, 13 May 2017 01:52:48 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc59858f0f291f0286646912a376effd34205c337f8a9ae7d70a8ed1776c39b2`  
		Last Modified: Sat, 13 May 2017 03:20:10 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e24ebc8b37d4320559d9afe959c4e91b6e0b27e73c40e8e44da47c2cbc1a4b`  
		Last Modified: Sat, 13 May 2017 03:20:11 GMT  
		Size: 1.7 MB (1697277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe856da4c478f49f5215e442d0cdc24633d583f432b8c8fbf3afd599ca6fb95`  
		Last Modified: Sat, 13 May 2017 03:20:12 GMT  
		Size: 3.3 MB (3299459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7-apache`

```console
$ docker pull drupal@sha256:eb790f9a13f0e73877738bad3ac0ba38ebcf88d86b8f38ade99b2623a3a94ecb
```

-	Platforms:
	-	linux; amd64

### `drupal:7-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168815366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b043a3371484c224cd1bcd1b5ce602a4e2fcabe15e46d38b3542a7d78993b380`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Fri, 12 May 2017 23:58:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 12 May 2017 23:58:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 12 May 2017 23:58:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 12 May 2017 23:59:00 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 13 May 2017 00:10:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 13 May 2017 00:10:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 13 May 2017 00:10:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 13 May 2017 00:10:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 13 May 2017 00:10:46 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 13 May 2017 00:10:47 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 13 May 2017 00:10:48 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 13 May 2017 00:10:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 00:52:31 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 13 May 2017 00:52:32 GMT
ENV PHP_VERSION=7.0.19
# Sat, 13 May 2017 00:52:33 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.19.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.19.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 00:52:34 GMT
ENV PHP_SHA256=640e5e3377d15a6d19adce2b94a9d876eeddabdb862d154a5e347987f4225ef6 PHP_MD5=1a17e45c8be9ce28f036d884563e8ae7
# Sat, 13 May 2017 00:52:45 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 13 May 2017 00:52:46 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 13 May 2017 00:55:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Sat, 13 May 2017 00:55:10 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Sat, 13 May 2017 00:55:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 13 May 2017 00:55:11 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 13 May 2017 00:55:12 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 00:55:13 GMT
EXPOSE 80/tcp
# Sat, 13 May 2017 00:55:14 GMT
CMD ["apache2-foreground"]
# Sat, 13 May 2017 03:10:34 GMT
RUN a2enmod rewrite
# Sat, 13 May 2017 03:11:25 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 13 May 2017 03:11:26 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 03:11:26 GMT
ENV DRUPAL_VERSION=7.54
# Sat, 13 May 2017 03:11:27 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Sat, 13 May 2017 03:11:29 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370377701f89cff89a25897f719848740ad95b97828c7ffdf8444bdafef6436b`  
		Last Modified: Sat, 13 May 2017 01:37:32 GMT  
		Size: 82.5 MB (82498638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455c73a122bc8a30bbb47aacf289778a636517eb5d841408435625ec4394a9c7`  
		Last Modified: Sat, 13 May 2017 01:37:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb71bac61c47a0055de7152b653793de87fd4714cc299f481f1c203cb68fc9ea`  
		Last Modified: Sat, 13 May 2017 01:42:16 GMT  
		Size: 2.8 MB (2788864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a1d91ad4e347bdc4a030b9c7b0890e16ab9c944ede92833fe561242bbb0e7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e0256ba4b0dcbb46fb72849d19a1dd78acf09f79d4e4cd69851c516940cbb7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14fbe7a9dfbfa8ee0219fece98b46a36980c4c426f125b2d7f39d0ebbf1f97b`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f36dd91c0ab80629aba5f3a2285c02127aedaec768787bc0a8a3ad9513b62ff`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4d938396abfd11ad29dad05f8ed40df976ddbe3bc682abaf8417f4d4d68841`  
		Last Modified: Sat, 13 May 2017 01:52:48 GMT  
		Size: 12.7 MB (12727358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e5f6ef63c37c59c00ac1f4f24da1d99198e15420232ec91a0745d6b9dca772`  
		Last Modified: Sat, 13 May 2017 01:52:47 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aecbd237b32468bd637be55aa8b61a27d1d57a49eb19412c36aa5d9c602dfbd`  
		Last Modified: Sat, 13 May 2017 01:52:49 GMT  
		Size: 13.2 MB (13213403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b4b986d794586a556be22876053d9a61b92b619f00f630bbe5c7ed21cdff2f`  
		Last Modified: Sat, 13 May 2017 01:52:46 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9a245edba86a77326983836fd3e81028b9d2c40008d6d2275a6773aa4f6559`  
		Last Modified: Sat, 13 May 2017 01:52:48 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc59858f0f291f0286646912a376effd34205c337f8a9ae7d70a8ed1776c39b2`  
		Last Modified: Sat, 13 May 2017 03:20:10 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e24ebc8b37d4320559d9afe959c4e91b6e0b27e73c40e8e44da47c2cbc1a4b`  
		Last Modified: Sat, 13 May 2017 03:20:11 GMT  
		Size: 1.7 MB (1697277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe856da4c478f49f5215e442d0cdc24633d583f432b8c8fbf3afd599ca6fb95`  
		Last Modified: Sat, 13 May 2017 03:20:12 GMT  
		Size: 3.3 MB (3299459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7.54`

```console
$ docker pull drupal@sha256:eb790f9a13f0e73877738bad3ac0ba38ebcf88d86b8f38ade99b2623a3a94ecb
```

-	Platforms:
	-	linux; amd64

### `drupal:7.54` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168815366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b043a3371484c224cd1bcd1b5ce602a4e2fcabe15e46d38b3542a7d78993b380`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Fri, 12 May 2017 23:58:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 12 May 2017 23:58:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 12 May 2017 23:58:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 12 May 2017 23:59:00 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 13 May 2017 00:10:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 13 May 2017 00:10:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 13 May 2017 00:10:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 13 May 2017 00:10:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 13 May 2017 00:10:46 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 13 May 2017 00:10:47 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 13 May 2017 00:10:48 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 13 May 2017 00:10:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 00:52:31 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 13 May 2017 00:52:32 GMT
ENV PHP_VERSION=7.0.19
# Sat, 13 May 2017 00:52:33 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.19.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.19.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 00:52:34 GMT
ENV PHP_SHA256=640e5e3377d15a6d19adce2b94a9d876eeddabdb862d154a5e347987f4225ef6 PHP_MD5=1a17e45c8be9ce28f036d884563e8ae7
# Sat, 13 May 2017 00:52:45 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 13 May 2017 00:52:46 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 13 May 2017 00:55:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Sat, 13 May 2017 00:55:10 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Sat, 13 May 2017 00:55:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 13 May 2017 00:55:11 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 13 May 2017 00:55:12 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 00:55:13 GMT
EXPOSE 80/tcp
# Sat, 13 May 2017 00:55:14 GMT
CMD ["apache2-foreground"]
# Sat, 13 May 2017 03:10:34 GMT
RUN a2enmod rewrite
# Sat, 13 May 2017 03:11:25 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 13 May 2017 03:11:26 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 03:11:26 GMT
ENV DRUPAL_VERSION=7.54
# Sat, 13 May 2017 03:11:27 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Sat, 13 May 2017 03:11:29 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370377701f89cff89a25897f719848740ad95b97828c7ffdf8444bdafef6436b`  
		Last Modified: Sat, 13 May 2017 01:37:32 GMT  
		Size: 82.5 MB (82498638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455c73a122bc8a30bbb47aacf289778a636517eb5d841408435625ec4394a9c7`  
		Last Modified: Sat, 13 May 2017 01:37:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb71bac61c47a0055de7152b653793de87fd4714cc299f481f1c203cb68fc9ea`  
		Last Modified: Sat, 13 May 2017 01:42:16 GMT  
		Size: 2.8 MB (2788864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a1d91ad4e347bdc4a030b9c7b0890e16ab9c944ede92833fe561242bbb0e7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e0256ba4b0dcbb46fb72849d19a1dd78acf09f79d4e4cd69851c516940cbb7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14fbe7a9dfbfa8ee0219fece98b46a36980c4c426f125b2d7f39d0ebbf1f97b`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f36dd91c0ab80629aba5f3a2285c02127aedaec768787bc0a8a3ad9513b62ff`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4d938396abfd11ad29dad05f8ed40df976ddbe3bc682abaf8417f4d4d68841`  
		Last Modified: Sat, 13 May 2017 01:52:48 GMT  
		Size: 12.7 MB (12727358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e5f6ef63c37c59c00ac1f4f24da1d99198e15420232ec91a0745d6b9dca772`  
		Last Modified: Sat, 13 May 2017 01:52:47 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aecbd237b32468bd637be55aa8b61a27d1d57a49eb19412c36aa5d9c602dfbd`  
		Last Modified: Sat, 13 May 2017 01:52:49 GMT  
		Size: 13.2 MB (13213403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b4b986d794586a556be22876053d9a61b92b619f00f630bbe5c7ed21cdff2f`  
		Last Modified: Sat, 13 May 2017 01:52:46 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9a245edba86a77326983836fd3e81028b9d2c40008d6d2275a6773aa4f6559`  
		Last Modified: Sat, 13 May 2017 01:52:48 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc59858f0f291f0286646912a376effd34205c337f8a9ae7d70a8ed1776c39b2`  
		Last Modified: Sat, 13 May 2017 03:20:10 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e24ebc8b37d4320559d9afe959c4e91b6e0b27e73c40e8e44da47c2cbc1a4b`  
		Last Modified: Sat, 13 May 2017 03:20:11 GMT  
		Size: 1.7 MB (1697277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe856da4c478f49f5215e442d0cdc24633d583f432b8c8fbf3afd599ca6fb95`  
		Last Modified: Sat, 13 May 2017 03:20:12 GMT  
		Size: 3.3 MB (3299459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7`

```console
$ docker pull drupal@sha256:eb790f9a13f0e73877738bad3ac0ba38ebcf88d86b8f38ade99b2623a3a94ecb
```

-	Platforms:
	-	linux; amd64

### `drupal:7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168815366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b043a3371484c224cd1bcd1b5ce602a4e2fcabe15e46d38b3542a7d78993b380`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Fri, 12 May 2017 23:58:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 12 May 2017 23:58:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 12 May 2017 23:58:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 12 May 2017 23:59:00 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 13 May 2017 00:10:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 13 May 2017 00:10:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 13 May 2017 00:10:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 13 May 2017 00:10:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 13 May 2017 00:10:46 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 13 May 2017 00:10:47 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 13 May 2017 00:10:48 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 13 May 2017 00:10:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 00:52:31 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 13 May 2017 00:52:32 GMT
ENV PHP_VERSION=7.0.19
# Sat, 13 May 2017 00:52:33 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.19.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.19.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 00:52:34 GMT
ENV PHP_SHA256=640e5e3377d15a6d19adce2b94a9d876eeddabdb862d154a5e347987f4225ef6 PHP_MD5=1a17e45c8be9ce28f036d884563e8ae7
# Sat, 13 May 2017 00:52:45 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 13 May 2017 00:52:46 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 13 May 2017 00:55:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Sat, 13 May 2017 00:55:10 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Sat, 13 May 2017 00:55:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 13 May 2017 00:55:11 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 13 May 2017 00:55:12 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 00:55:13 GMT
EXPOSE 80/tcp
# Sat, 13 May 2017 00:55:14 GMT
CMD ["apache2-foreground"]
# Sat, 13 May 2017 03:10:34 GMT
RUN a2enmod rewrite
# Sat, 13 May 2017 03:11:25 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 13 May 2017 03:11:26 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 03:11:26 GMT
ENV DRUPAL_VERSION=7.54
# Sat, 13 May 2017 03:11:27 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Sat, 13 May 2017 03:11:29 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370377701f89cff89a25897f719848740ad95b97828c7ffdf8444bdafef6436b`  
		Last Modified: Sat, 13 May 2017 01:37:32 GMT  
		Size: 82.5 MB (82498638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455c73a122bc8a30bbb47aacf289778a636517eb5d841408435625ec4394a9c7`  
		Last Modified: Sat, 13 May 2017 01:37:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb71bac61c47a0055de7152b653793de87fd4714cc299f481f1c203cb68fc9ea`  
		Last Modified: Sat, 13 May 2017 01:42:16 GMT  
		Size: 2.8 MB (2788864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a1d91ad4e347bdc4a030b9c7b0890e16ab9c944ede92833fe561242bbb0e7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e0256ba4b0dcbb46fb72849d19a1dd78acf09f79d4e4cd69851c516940cbb7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14fbe7a9dfbfa8ee0219fece98b46a36980c4c426f125b2d7f39d0ebbf1f97b`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f36dd91c0ab80629aba5f3a2285c02127aedaec768787bc0a8a3ad9513b62ff`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4d938396abfd11ad29dad05f8ed40df976ddbe3bc682abaf8417f4d4d68841`  
		Last Modified: Sat, 13 May 2017 01:52:48 GMT  
		Size: 12.7 MB (12727358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e5f6ef63c37c59c00ac1f4f24da1d99198e15420232ec91a0745d6b9dca772`  
		Last Modified: Sat, 13 May 2017 01:52:47 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aecbd237b32468bd637be55aa8b61a27d1d57a49eb19412c36aa5d9c602dfbd`  
		Last Modified: Sat, 13 May 2017 01:52:49 GMT  
		Size: 13.2 MB (13213403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b4b986d794586a556be22876053d9a61b92b619f00f630bbe5c7ed21cdff2f`  
		Last Modified: Sat, 13 May 2017 01:52:46 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9a245edba86a77326983836fd3e81028b9d2c40008d6d2275a6773aa4f6559`  
		Last Modified: Sat, 13 May 2017 01:52:48 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc59858f0f291f0286646912a376effd34205c337f8a9ae7d70a8ed1776c39b2`  
		Last Modified: Sat, 13 May 2017 03:20:10 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e24ebc8b37d4320559d9afe959c4e91b6e0b27e73c40e8e44da47c2cbc1a4b`  
		Last Modified: Sat, 13 May 2017 03:20:11 GMT  
		Size: 1.7 MB (1697277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe856da4c478f49f5215e442d0cdc24633d583f432b8c8fbf3afd599ca6fb95`  
		Last Modified: Sat, 13 May 2017 03:20:12 GMT  
		Size: 3.3 MB (3299459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7.54-fpm`

```console
$ docker pull drupal@sha256:b47b6b2ef60b5c92a7bf10ec41343c62f76d1b4632497078ae008e5d93a6eb39
```

-	Platforms:
	-	linux; amd64

### `drupal:7.54-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.5 MB (165461117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49bc6612910d0977b29b44a08b590c7366b32043fd3ec0914dc07f437c2811ee`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Fri, 12 May 2017 23:58:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 12 May 2017 23:58:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 12 May 2017 23:58:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 12 May 2017 23:59:00 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 13 May 2017 00:14:10 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Sat, 13 May 2017 00:14:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:14:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:14:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 00:55:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 13 May 2017 00:55:35 GMT
ENV PHP_VERSION=7.0.19
# Sat, 13 May 2017 00:55:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.19.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.19.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 00:55:36 GMT
ENV PHP_SHA256=640e5e3377d15a6d19adce2b94a9d876eeddabdb862d154a5e347987f4225ef6 PHP_MD5=1a17e45c8be9ce28f036d884563e8ae7
# Sat, 13 May 2017 00:55:49 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 13 May 2017 00:55:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 13 May 2017 00:59:11 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Sat, 13 May 2017 00:59:13 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Sat, 13 May 2017 00:59:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 13 May 2017 00:59:15 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 00:59:16 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 13 May 2017 00:59:17 GMT
EXPOSE 9000/tcp
# Sat, 13 May 2017 00:59:17 GMT
CMD ["php-fpm"]
# Sat, 13 May 2017 03:12:40 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 13 May 2017 03:12:41 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 03:12:42 GMT
ENV DRUPAL_VERSION=7.54
# Sat, 13 May 2017 03:12:42 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Sat, 13 May 2017 03:12:44 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370377701f89cff89a25897f719848740ad95b97828c7ffdf8444bdafef6436b`  
		Last Modified: Sat, 13 May 2017 01:37:32 GMT  
		Size: 82.5 MB (82498638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455c73a122bc8a30bbb47aacf289778a636517eb5d841408435625ec4394a9c7`  
		Last Modified: Sat, 13 May 2017 01:37:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb8cd9b9338a8aec28aed725ad5a939dfe5bddb88c2775a05520a4bf68c93da`  
		Last Modified: Sat, 13 May 2017 01:53:41 GMT  
		Size: 12.7 MB (12710080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3bd971f099dd2a54b1162fbcacd14ecae997df383b24abe0f610264c1b5d66`  
		Last Modified: Sat, 13 May 2017 01:53:40 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cdcffeb92b96cafa395daff69a490f10f28ed56c1eb2acbbecf0288e1efb59`  
		Last Modified: Sat, 13 May 2017 01:53:44 GMT  
		Size: 12.7 MB (12680785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97cfd9a0d26da7fd962483852db32dc38bf444e4cdc824c31fb01856a57bc885`  
		Last Modified: Sat, 13 May 2017 01:53:40 GMT  
		Size: 2.1 KB (2121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4014832152ebf117150fcfa5f03b0289b24d0f7549a6fcf13c8bacc191a71908`  
		Last Modified: Sat, 13 May 2017 01:53:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff822fef0e1da70a7d96978e78dec861cc68bbfb849576d8e2cf19cdf9ac7b02`  
		Last Modified: Sat, 13 May 2017 01:53:40 GMT  
		Size: 7.7 KB (7667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d48cc9922b885c7cd14e9e7980e48e088d2f2974937fdb1a9549e5b8b011d1e`  
		Last Modified: Sat, 13 May 2017 03:21:49 GMT  
		Size: 1.7 MB (1677562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629bb2dfc0c27e14c102e0ab1d5f47b34035914c7eb0923e2c01ed90d59704a1`  
		Last Modified: Sat, 13 May 2017 03:21:53 GMT  
		Size: 3.3 MB (3299448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7-fpm`

```console
$ docker pull drupal@sha256:b47b6b2ef60b5c92a7bf10ec41343c62f76d1b4632497078ae008e5d93a6eb39
```

-	Platforms:
	-	linux; amd64

### `drupal:7-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.5 MB (165461117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49bc6612910d0977b29b44a08b590c7366b32043fd3ec0914dc07f437c2811ee`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Fri, 12 May 2017 23:58:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 12 May 2017 23:58:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 12 May 2017 23:58:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 12 May 2017 23:59:00 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 13 May 2017 00:14:10 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Sat, 13 May 2017 00:14:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:14:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:14:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 00:55:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 13 May 2017 00:55:35 GMT
ENV PHP_VERSION=7.0.19
# Sat, 13 May 2017 00:55:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.19.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.19.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 00:55:36 GMT
ENV PHP_SHA256=640e5e3377d15a6d19adce2b94a9d876eeddabdb862d154a5e347987f4225ef6 PHP_MD5=1a17e45c8be9ce28f036d884563e8ae7
# Sat, 13 May 2017 00:55:49 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 13 May 2017 00:55:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 13 May 2017 00:59:11 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Sat, 13 May 2017 00:59:13 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Sat, 13 May 2017 00:59:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 13 May 2017 00:59:15 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 00:59:16 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 13 May 2017 00:59:17 GMT
EXPOSE 9000/tcp
# Sat, 13 May 2017 00:59:17 GMT
CMD ["php-fpm"]
# Sat, 13 May 2017 03:12:40 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 13 May 2017 03:12:41 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 03:12:42 GMT
ENV DRUPAL_VERSION=7.54
# Sat, 13 May 2017 03:12:42 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Sat, 13 May 2017 03:12:44 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370377701f89cff89a25897f719848740ad95b97828c7ffdf8444bdafef6436b`  
		Last Modified: Sat, 13 May 2017 01:37:32 GMT  
		Size: 82.5 MB (82498638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455c73a122bc8a30bbb47aacf289778a636517eb5d841408435625ec4394a9c7`  
		Last Modified: Sat, 13 May 2017 01:37:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb8cd9b9338a8aec28aed725ad5a939dfe5bddb88c2775a05520a4bf68c93da`  
		Last Modified: Sat, 13 May 2017 01:53:41 GMT  
		Size: 12.7 MB (12710080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3bd971f099dd2a54b1162fbcacd14ecae997df383b24abe0f610264c1b5d66`  
		Last Modified: Sat, 13 May 2017 01:53:40 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cdcffeb92b96cafa395daff69a490f10f28ed56c1eb2acbbecf0288e1efb59`  
		Last Modified: Sat, 13 May 2017 01:53:44 GMT  
		Size: 12.7 MB (12680785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97cfd9a0d26da7fd962483852db32dc38bf444e4cdc824c31fb01856a57bc885`  
		Last Modified: Sat, 13 May 2017 01:53:40 GMT  
		Size: 2.1 KB (2121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4014832152ebf117150fcfa5f03b0289b24d0f7549a6fcf13c8bacc191a71908`  
		Last Modified: Sat, 13 May 2017 01:53:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff822fef0e1da70a7d96978e78dec861cc68bbfb849576d8e2cf19cdf9ac7b02`  
		Last Modified: Sat, 13 May 2017 01:53:40 GMT  
		Size: 7.7 KB (7667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d48cc9922b885c7cd14e9e7980e48e088d2f2974937fdb1a9549e5b8b011d1e`  
		Last Modified: Sat, 13 May 2017 03:21:49 GMT  
		Size: 1.7 MB (1677562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629bb2dfc0c27e14c102e0ab1d5f47b34035914c7eb0923e2c01ed90d59704a1`  
		Last Modified: Sat, 13 May 2017 03:21:53 GMT  
		Size: 3.3 MB (3299448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7.54-fpm-alpine`

```console
$ docker pull drupal@sha256:51d57459a41c1a1a63bd66bdcd27d0984df4984d23a2e4c960aa5e1de599434a
```

-	Platforms:
	-	linux; amd64

### `drupal:7.54-fpm-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36587086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b27bdeae6ac9c51a070d52662122253dcde96e5df2a4237d29e87b5144e6d774`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Sat, 13 May 2017 00:05:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Sat, 13 May 2017 00:05:40 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Sat, 13 May 2017 00:05:43 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Sat, 13 May 2017 00:05:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 13 May 2017 00:05:45 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 13 May 2017 00:22:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Sat, 13 May 2017 00:22:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:22:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:22:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 00:59:38 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 13 May 2017 00:59:39 GMT
ENV PHP_VERSION=7.0.19
# Sat, 13 May 2017 00:59:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.19.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.19.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 00:59:40 GMT
ENV PHP_SHA256=640e5e3377d15a6d19adce2b94a9d876eeddabdb862d154a5e347987f4225ef6 PHP_MD5=1a17e45c8be9ce28f036d884563e8ae7
# Sat, 13 May 2017 00:59:48 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 13 May 2017 00:59:49 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 13 May 2017 01:03:14 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Sat, 13 May 2017 01:03:16 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Sat, 13 May 2017 01:03:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 13 May 2017 01:03:17 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 01:03:18 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 13 May 2017 01:03:19 GMT
EXPOSE 9000/tcp
# Sat, 13 May 2017 01:03:19 GMT
CMD ["php-fpm"]
# Sat, 13 May 2017 03:13:45 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Sat, 13 May 2017 03:13:46 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 03:13:46 GMT
ENV DRUPAL_VERSION=7.54
# Sat, 13 May 2017 03:13:47 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Sat, 13 May 2017 03:13:49 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f0bf25c22e185588f5556af1e7b9d67bdc2879f6173fd516350f73a2deb29f`  
		Last Modified: Sat, 13 May 2017 01:40:36 GMT  
		Size: 1.1 MB (1081302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80549166a18f9060850abdc57136a60481cb83b1fa5dd7b8816907cb5bb7b611`  
		Last Modified: Sat, 13 May 2017 01:40:32 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a30cf12edf726e91cf3093d0c7aa86497903a99d4b0aca5589b746aeffeed3`  
		Last Modified: Sat, 13 May 2017 01:40:34 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c81350e5da9f146370c5a3654a19c46e6bbeaa6535952e2c0582d811d625bf`  
		Last Modified: Sat, 13 May 2017 01:54:35 GMT  
		Size: 12.8 MB (12769022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c8b6d5ee566bc7283f38b22fb9d03d0828e05165d55307a5847d9111b38a77`  
		Last Modified: Sat, 13 May 2017 01:54:32 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45dc02b30e53bbbebf03ae69caee5e81d88d3ad35769bcce8e1ff55864f86b21`  
		Last Modified: Sat, 13 May 2017 01:54:35 GMT  
		Size: 14.1 MB (14059677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa7439dd308fc7bf66b76913957287c37207e5068d5560a95a10a67e492ca5d`  
		Last Modified: Sat, 13 May 2017 01:54:33 GMT  
		Size: 2.1 KB (2109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2d7c6a317c14f5a1ed303ce413953a3a14f04cdff28b7c6c0a67fd47941943`  
		Last Modified: Sat, 13 May 2017 01:54:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97bb32e6d70e27fec8ad546fb7f0f3e0c26180a28f805df1cdc3f9d23fd820a2`  
		Last Modified: Sat, 13 May 2017 01:54:32 GMT  
		Size: 7.7 KB (7652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2bbace89ab26b22a95eb843b385b8dc30f8ddb00df9823acdd32f6e846577b`  
		Last Modified: Sat, 13 May 2017 03:22:43 GMT  
		Size: 3.0 MB (2982778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5e8bbf8eb2c33eedf61a857f283e5c35cb39b9d33615a35a2c4060795cbdc8`  
		Last Modified: Sat, 13 May 2017 03:22:44 GMT  
		Size: 3.3 MB (3299453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7-fpm-alpine`

```console
$ docker pull drupal@sha256:51d57459a41c1a1a63bd66bdcd27d0984df4984d23a2e4c960aa5e1de599434a
```

-	Platforms:
	-	linux; amd64

### `drupal:7-fpm-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36587086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b27bdeae6ac9c51a070d52662122253dcde96e5df2a4237d29e87b5144e6d774`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Sat, 13 May 2017 00:05:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Sat, 13 May 2017 00:05:40 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Sat, 13 May 2017 00:05:43 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Sat, 13 May 2017 00:05:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 13 May 2017 00:05:45 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 13 May 2017 00:22:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Sat, 13 May 2017 00:22:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:22:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:22:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 00:59:38 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 13 May 2017 00:59:39 GMT
ENV PHP_VERSION=7.0.19
# Sat, 13 May 2017 00:59:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.19.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.19.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 00:59:40 GMT
ENV PHP_SHA256=640e5e3377d15a6d19adce2b94a9d876eeddabdb862d154a5e347987f4225ef6 PHP_MD5=1a17e45c8be9ce28f036d884563e8ae7
# Sat, 13 May 2017 00:59:48 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 13 May 2017 00:59:49 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 13 May 2017 01:03:14 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Sat, 13 May 2017 01:03:16 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Sat, 13 May 2017 01:03:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 13 May 2017 01:03:17 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 01:03:18 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 13 May 2017 01:03:19 GMT
EXPOSE 9000/tcp
# Sat, 13 May 2017 01:03:19 GMT
CMD ["php-fpm"]
# Sat, 13 May 2017 03:13:45 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Sat, 13 May 2017 03:13:46 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 03:13:46 GMT
ENV DRUPAL_VERSION=7.54
# Sat, 13 May 2017 03:13:47 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Sat, 13 May 2017 03:13:49 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f0bf25c22e185588f5556af1e7b9d67bdc2879f6173fd516350f73a2deb29f`  
		Last Modified: Sat, 13 May 2017 01:40:36 GMT  
		Size: 1.1 MB (1081302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80549166a18f9060850abdc57136a60481cb83b1fa5dd7b8816907cb5bb7b611`  
		Last Modified: Sat, 13 May 2017 01:40:32 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a30cf12edf726e91cf3093d0c7aa86497903a99d4b0aca5589b746aeffeed3`  
		Last Modified: Sat, 13 May 2017 01:40:34 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c81350e5da9f146370c5a3654a19c46e6bbeaa6535952e2c0582d811d625bf`  
		Last Modified: Sat, 13 May 2017 01:54:35 GMT  
		Size: 12.8 MB (12769022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c8b6d5ee566bc7283f38b22fb9d03d0828e05165d55307a5847d9111b38a77`  
		Last Modified: Sat, 13 May 2017 01:54:32 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45dc02b30e53bbbebf03ae69caee5e81d88d3ad35769bcce8e1ff55864f86b21`  
		Last Modified: Sat, 13 May 2017 01:54:35 GMT  
		Size: 14.1 MB (14059677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa7439dd308fc7bf66b76913957287c37207e5068d5560a95a10a67e492ca5d`  
		Last Modified: Sat, 13 May 2017 01:54:33 GMT  
		Size: 2.1 KB (2109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2d7c6a317c14f5a1ed303ce413953a3a14f04cdff28b7c6c0a67fd47941943`  
		Last Modified: Sat, 13 May 2017 01:54:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97bb32e6d70e27fec8ad546fb7f0f3e0c26180a28f805df1cdc3f9d23fd820a2`  
		Last Modified: Sat, 13 May 2017 01:54:32 GMT  
		Size: 7.7 KB (7652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2bbace89ab26b22a95eb843b385b8dc30f8ddb00df9823acdd32f6e846577b`  
		Last Modified: Sat, 13 May 2017 03:22:43 GMT  
		Size: 3.0 MB (2982778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5e8bbf8eb2c33eedf61a857f283e5c35cb39b9d33615a35a2c4060795cbdc8`  
		Last Modified: Sat, 13 May 2017 03:22:44 GMT  
		Size: 3.3 MB (3299453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
