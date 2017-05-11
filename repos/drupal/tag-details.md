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
$ docker pull drupal@sha256:32fddaa7ce89ec3009c3f0e9a980e728461d6191dffa28d0e9b63a085c3902a2
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3.2-apache` - linux; amd64

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

## `drupal:8.3-apache`

```console
$ docker pull drupal@sha256:32fddaa7ce89ec3009c3f0e9a980e728461d6191dffa28d0e9b63a085c3902a2
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3-apache` - linux; amd64

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

## `drupal:8-apache`

```console
$ docker pull drupal@sha256:32fddaa7ce89ec3009c3f0e9a980e728461d6191dffa28d0e9b63a085c3902a2
```

-	Platforms:
	-	linux; amd64

### `drupal:8-apache` - linux; amd64

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

## `drupal:apache`

```console
$ docker pull drupal@sha256:32fddaa7ce89ec3009c3f0e9a980e728461d6191dffa28d0e9b63a085c3902a2
```

-	Platforms:
	-	linux; amd64

### `drupal:apache` - linux; amd64

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

## `drupal:8.3.2`

```console
$ docker pull drupal@sha256:32fddaa7ce89ec3009c3f0e9a980e728461d6191dffa28d0e9b63a085c3902a2
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3.2` - linux; amd64

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

## `drupal:8.3`

```console
$ docker pull drupal@sha256:32fddaa7ce89ec3009c3f0e9a980e728461d6191dffa28d0e9b63a085c3902a2
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3` - linux; amd64

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

## `drupal:8`

```console
$ docker pull drupal@sha256:32fddaa7ce89ec3009c3f0e9a980e728461d6191dffa28d0e9b63a085c3902a2
```

-	Platforms:
	-	linux; amd64

### `drupal:8` - linux; amd64

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
$ docker pull drupal@sha256:2640711babf73acd0b22c044c99239e96376f2743f3d9378dd00d39e727197bd
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.8-apache` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.4 MB (175389377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fb1a8c2a6d8632e3be0b4970a39aa58d4fe0152facecf465c6709851725f371`
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
# Thu, 11 May 2017 00:24:34 GMT
ENV DRUPAL_VERSION=8.2.8
# Thu, 11 May 2017 00:24:35 GMT
ENV DRUPAL_MD5=039507247f3712c3fb022805eb13faf4
# Thu, 11 May 2017 00:24:41 GMT
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
	-	`sha256:4748488de32350a64f10880c5acb14fd6732cf8f891caae9e37306d218ba6d24`  
		Last Modified: Thu, 11 May 2017 15:20:26 GMT  
		Size: 12.2 MB (12190616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2-apache`

```console
$ docker pull drupal@sha256:2640711babf73acd0b22c044c99239e96376f2743f3d9378dd00d39e727197bd
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2-apache` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.4 MB (175389377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fb1a8c2a6d8632e3be0b4970a39aa58d4fe0152facecf465c6709851725f371`
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
# Thu, 11 May 2017 00:24:34 GMT
ENV DRUPAL_VERSION=8.2.8
# Thu, 11 May 2017 00:24:35 GMT
ENV DRUPAL_MD5=039507247f3712c3fb022805eb13faf4
# Thu, 11 May 2017 00:24:41 GMT
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
	-	`sha256:4748488de32350a64f10880c5acb14fd6732cf8f891caae9e37306d218ba6d24`  
		Last Modified: Thu, 11 May 2017 15:20:26 GMT  
		Size: 12.2 MB (12190616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2.8`

```console
$ docker pull drupal@sha256:2640711babf73acd0b22c044c99239e96376f2743f3d9378dd00d39e727197bd
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.4 MB (175389377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fb1a8c2a6d8632e3be0b4970a39aa58d4fe0152facecf465c6709851725f371`
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
# Thu, 11 May 2017 00:24:34 GMT
ENV DRUPAL_VERSION=8.2.8
# Thu, 11 May 2017 00:24:35 GMT
ENV DRUPAL_MD5=039507247f3712c3fb022805eb13faf4
# Thu, 11 May 2017 00:24:41 GMT
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
	-	`sha256:4748488de32350a64f10880c5acb14fd6732cf8f891caae9e37306d218ba6d24`  
		Last Modified: Thu, 11 May 2017 15:20:26 GMT  
		Size: 12.2 MB (12190616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2`

```console
$ docker pull drupal@sha256:2640711babf73acd0b22c044c99239e96376f2743f3d9378dd00d39e727197bd
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.4 MB (175389377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fb1a8c2a6d8632e3be0b4970a39aa58d4fe0152facecf465c6709851725f371`
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
# Thu, 11 May 2017 00:24:34 GMT
ENV DRUPAL_VERSION=8.2.8
# Thu, 11 May 2017 00:24:35 GMT
ENV DRUPAL_MD5=039507247f3712c3fb022805eb13faf4
# Thu, 11 May 2017 00:24:41 GMT
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
	-	`sha256:4748488de32350a64f10880c5acb14fd6732cf8f891caae9e37306d218ba6d24`  
		Last Modified: Thu, 11 May 2017 15:20:26 GMT  
		Size: 12.2 MB (12190616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2.8-fpm`

```console
$ docker pull drupal@sha256:0686cd64f81a161b15df8763d48b0e365075dd76ed17486da13d4c35a9729556
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.8-fpm` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (171998508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7a63cd316e906ee51fcc518bd0f38d7f00de28c306097de42e8991fe9dcc89e`
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
# Thu, 11 May 2017 00:25:02 GMT
ENV DRUPAL_VERSION=8.2.8
# Thu, 11 May 2017 00:25:03 GMT
ENV DRUPAL_MD5=039507247f3712c3fb022805eb13faf4
# Thu, 11 May 2017 00:25:09 GMT
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
	-	`sha256:ff26a287b6c6a052d7b6e836786292320c9d541bcb09396f380164f9d046f7a3`  
		Last Modified: Thu, 11 May 2017 15:22:10 GMT  
		Size: 12.2 MB (12190593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2-fpm`

```console
$ docker pull drupal@sha256:0686cd64f81a161b15df8763d48b0e365075dd76ed17486da13d4c35a9729556
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2-fpm` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (171998508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7a63cd316e906ee51fcc518bd0f38d7f00de28c306097de42e8991fe9dcc89e`
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
# Thu, 11 May 2017 00:25:02 GMT
ENV DRUPAL_VERSION=8.2.8
# Thu, 11 May 2017 00:25:03 GMT
ENV DRUPAL_MD5=039507247f3712c3fb022805eb13faf4
# Thu, 11 May 2017 00:25:09 GMT
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
	-	`sha256:ff26a287b6c6a052d7b6e836786292320c9d541bcb09396f380164f9d046f7a3`  
		Last Modified: Thu, 11 May 2017 15:22:10 GMT  
		Size: 12.2 MB (12190593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2.8-fpm-alpine`

```console
$ docker pull drupal@sha256:f1d62f3d8079e67f6f37fe667208ce82d734146c8b21d835a54b9280793466ad
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.8-fpm-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46613053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2abfa35b78badaf6dc4d198bbd4cbf83c3aa2dcf0a6fb0df7e2ad59b20d66c5d`
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
# Thu, 11 May 2017 00:25:29 GMT
ENV DRUPAL_VERSION=8.2.8
# Thu, 11 May 2017 00:25:30 GMT
ENV DRUPAL_MD5=039507247f3712c3fb022805eb13faf4
# Thu, 11 May 2017 00:25:36 GMT
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
	-	`sha256:c2a080548bd74945cc0b7d9c0a6e7b948418dd7dbf02a6c577f14f93c537e4f8`  
		Last Modified: Thu, 11 May 2017 15:23:10 GMT  
		Size: 12.2 MB (12190600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2-fpm-alpine`

```console
$ docker pull drupal@sha256:f1d62f3d8079e67f6f37fe667208ce82d734146c8b21d835a54b9280793466ad
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2-fpm-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46613053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2abfa35b78badaf6dc4d198bbd4cbf83c3aa2dcf0a6fb0df7e2ad59b20d66c5d`
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
# Thu, 11 May 2017 00:25:29 GMT
ENV DRUPAL_VERSION=8.2.8
# Thu, 11 May 2017 00:25:30 GMT
ENV DRUPAL_MD5=039507247f3712c3fb022805eb13faf4
# Thu, 11 May 2017 00:25:36 GMT
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
	-	`sha256:c2a080548bd74945cc0b7d9c0a6e7b948418dd7dbf02a6c577f14f93c537e4f8`  
		Last Modified: Thu, 11 May 2017 15:23:10 GMT  
		Size: 12.2 MB (12190600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7.54-apache`

```console
$ docker pull drupal@sha256:8471598540ac1bf761c520909a8a0757435182ac0991c1ad8d1adfcc8687c66a
```

-	Platforms:
	-	linux; amd64

### `drupal:7.54-apache` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165803491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3027799b8759d82fa4d5b58ddb533019dfcbdf5c13f2629fd467d37c512e7645`
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
# Tue, 09 May 2017 18:48:16 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 09 May 2017 18:48:17 GMT
ENV PHP_VERSION=7.0.18
# Tue, 09 May 2017 18:48:17 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.18.tar.xz.asc/from/this/mirror
# Tue, 09 May 2017 18:48:18 GMT
ENV PHP_SHA256=679cffcdf2495dee5ab89bda595e678a1096136678b3a1d08f1f57ba347c234d PHP_MD5=a578c55644d233635d2caa96c3a6f9c7
# Tue, 09 May 2017 18:48:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 May 2017 18:48:31 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 09 May 2017 18:50:51 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 09 May 2017 18:50:53 GMT
COPY multi:2322553de3ca67507508fc2dce30f88e38a62b59394dc81c4180177a850ae993 in /usr/local/bin/ 
# Tue, 09 May 2017 18:50:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 09 May 2017 18:50:55 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 09 May 2017 18:50:55 GMT
WORKDIR /var/www/html
# Tue, 09 May 2017 18:50:56 GMT
EXPOSE 80/tcp
# Tue, 09 May 2017 18:50:56 GMT
CMD ["apache2-foreground"]
# Thu, 11 May 2017 00:16:32 GMT
RUN a2enmod rewrite
# Thu, 11 May 2017 00:17:25 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 00:17:26 GMT
WORKDIR /var/www/html
# Thu, 11 May 2017 00:17:27 GMT
ENV DRUPAL_VERSION=7.54
# Thu, 11 May 2017 00:17:27 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Thu, 11 May 2017 00:17:29 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:d0407af27324dfc1147151bd999d9c53537c7a1ae96c5d38d86827e843ece53f`  
		Last Modified: Wed, 10 May 2017 02:28:23 GMT  
		Size: 12.7 MB (12723172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7008b28f6203ff4692a0f6e79f73e2e0437c4cd4db7a935fd58d480d5b7842ea`  
		Last Modified: Wed, 10 May 2017 02:28:21 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2370975b137f7d7eeb704735d31b7dfe5ad6352baf631ce6ef155cbc0ccb3c`  
		Last Modified: Wed, 10 May 2017 02:28:25 GMT  
		Size: 13.7 MB (13722617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee0e1658f0fd6e00e0da233b68e01d0cd75aa980ceceac2c270986e38c94dd1`  
		Last Modified: Wed, 10 May 2017 02:28:22 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1dce800f33d9da819779ef3ac713b1614b19f2f130dd25d9b41737ba63f7e4`  
		Last Modified: Wed, 10 May 2017 02:28:22 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c04038538643553340e983e7e02c86f7e01758a0f84a5762d994a378e1936be`  
		Last Modified: Thu, 11 May 2017 15:16:56 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a17f28ccba53de3095eb9784742a96cf84210b5f9f039c243bee3d1c2e6965ab`  
		Last Modified: Thu, 11 May 2017 15:16:56 GMT  
		Size: 1.7 MB (1693879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4bc330b9cb6eb79d47841cd67564e00000206f46050e19e73e942e52f33f9e`  
		Last Modified: Thu, 11 May 2017 15:16:56 GMT  
		Size: 3.3 MB (3299460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7-apache`

```console
$ docker pull drupal@sha256:8471598540ac1bf761c520909a8a0757435182ac0991c1ad8d1adfcc8687c66a
```

-	Platforms:
	-	linux; amd64

### `drupal:7-apache` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165803491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3027799b8759d82fa4d5b58ddb533019dfcbdf5c13f2629fd467d37c512e7645`
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
# Tue, 09 May 2017 18:48:16 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 09 May 2017 18:48:17 GMT
ENV PHP_VERSION=7.0.18
# Tue, 09 May 2017 18:48:17 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.18.tar.xz.asc/from/this/mirror
# Tue, 09 May 2017 18:48:18 GMT
ENV PHP_SHA256=679cffcdf2495dee5ab89bda595e678a1096136678b3a1d08f1f57ba347c234d PHP_MD5=a578c55644d233635d2caa96c3a6f9c7
# Tue, 09 May 2017 18:48:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 May 2017 18:48:31 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 09 May 2017 18:50:51 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 09 May 2017 18:50:53 GMT
COPY multi:2322553de3ca67507508fc2dce30f88e38a62b59394dc81c4180177a850ae993 in /usr/local/bin/ 
# Tue, 09 May 2017 18:50:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 09 May 2017 18:50:55 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 09 May 2017 18:50:55 GMT
WORKDIR /var/www/html
# Tue, 09 May 2017 18:50:56 GMT
EXPOSE 80/tcp
# Tue, 09 May 2017 18:50:56 GMT
CMD ["apache2-foreground"]
# Thu, 11 May 2017 00:16:32 GMT
RUN a2enmod rewrite
# Thu, 11 May 2017 00:17:25 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 00:17:26 GMT
WORKDIR /var/www/html
# Thu, 11 May 2017 00:17:27 GMT
ENV DRUPAL_VERSION=7.54
# Thu, 11 May 2017 00:17:27 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Thu, 11 May 2017 00:17:29 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:d0407af27324dfc1147151bd999d9c53537c7a1ae96c5d38d86827e843ece53f`  
		Last Modified: Wed, 10 May 2017 02:28:23 GMT  
		Size: 12.7 MB (12723172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7008b28f6203ff4692a0f6e79f73e2e0437c4cd4db7a935fd58d480d5b7842ea`  
		Last Modified: Wed, 10 May 2017 02:28:21 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2370975b137f7d7eeb704735d31b7dfe5ad6352baf631ce6ef155cbc0ccb3c`  
		Last Modified: Wed, 10 May 2017 02:28:25 GMT  
		Size: 13.7 MB (13722617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee0e1658f0fd6e00e0da233b68e01d0cd75aa980ceceac2c270986e38c94dd1`  
		Last Modified: Wed, 10 May 2017 02:28:22 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1dce800f33d9da819779ef3ac713b1614b19f2f130dd25d9b41737ba63f7e4`  
		Last Modified: Wed, 10 May 2017 02:28:22 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c04038538643553340e983e7e02c86f7e01758a0f84a5762d994a378e1936be`  
		Last Modified: Thu, 11 May 2017 15:16:56 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a17f28ccba53de3095eb9784742a96cf84210b5f9f039c243bee3d1c2e6965ab`  
		Last Modified: Thu, 11 May 2017 15:16:56 GMT  
		Size: 1.7 MB (1693879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4bc330b9cb6eb79d47841cd67564e00000206f46050e19e73e942e52f33f9e`  
		Last Modified: Thu, 11 May 2017 15:16:56 GMT  
		Size: 3.3 MB (3299460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7.54`

```console
$ docker pull drupal@sha256:8471598540ac1bf761c520909a8a0757435182ac0991c1ad8d1adfcc8687c66a
```

-	Platforms:
	-	linux; amd64

### `drupal:7.54` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165803491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3027799b8759d82fa4d5b58ddb533019dfcbdf5c13f2629fd467d37c512e7645`
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
# Tue, 09 May 2017 18:48:16 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 09 May 2017 18:48:17 GMT
ENV PHP_VERSION=7.0.18
# Tue, 09 May 2017 18:48:17 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.18.tar.xz.asc/from/this/mirror
# Tue, 09 May 2017 18:48:18 GMT
ENV PHP_SHA256=679cffcdf2495dee5ab89bda595e678a1096136678b3a1d08f1f57ba347c234d PHP_MD5=a578c55644d233635d2caa96c3a6f9c7
# Tue, 09 May 2017 18:48:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 May 2017 18:48:31 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 09 May 2017 18:50:51 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 09 May 2017 18:50:53 GMT
COPY multi:2322553de3ca67507508fc2dce30f88e38a62b59394dc81c4180177a850ae993 in /usr/local/bin/ 
# Tue, 09 May 2017 18:50:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 09 May 2017 18:50:55 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 09 May 2017 18:50:55 GMT
WORKDIR /var/www/html
# Tue, 09 May 2017 18:50:56 GMT
EXPOSE 80/tcp
# Tue, 09 May 2017 18:50:56 GMT
CMD ["apache2-foreground"]
# Thu, 11 May 2017 00:16:32 GMT
RUN a2enmod rewrite
# Thu, 11 May 2017 00:17:25 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 00:17:26 GMT
WORKDIR /var/www/html
# Thu, 11 May 2017 00:17:27 GMT
ENV DRUPAL_VERSION=7.54
# Thu, 11 May 2017 00:17:27 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Thu, 11 May 2017 00:17:29 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:d0407af27324dfc1147151bd999d9c53537c7a1ae96c5d38d86827e843ece53f`  
		Last Modified: Wed, 10 May 2017 02:28:23 GMT  
		Size: 12.7 MB (12723172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7008b28f6203ff4692a0f6e79f73e2e0437c4cd4db7a935fd58d480d5b7842ea`  
		Last Modified: Wed, 10 May 2017 02:28:21 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2370975b137f7d7eeb704735d31b7dfe5ad6352baf631ce6ef155cbc0ccb3c`  
		Last Modified: Wed, 10 May 2017 02:28:25 GMT  
		Size: 13.7 MB (13722617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee0e1658f0fd6e00e0da233b68e01d0cd75aa980ceceac2c270986e38c94dd1`  
		Last Modified: Wed, 10 May 2017 02:28:22 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1dce800f33d9da819779ef3ac713b1614b19f2f130dd25d9b41737ba63f7e4`  
		Last Modified: Wed, 10 May 2017 02:28:22 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c04038538643553340e983e7e02c86f7e01758a0f84a5762d994a378e1936be`  
		Last Modified: Thu, 11 May 2017 15:16:56 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a17f28ccba53de3095eb9784742a96cf84210b5f9f039c243bee3d1c2e6965ab`  
		Last Modified: Thu, 11 May 2017 15:16:56 GMT  
		Size: 1.7 MB (1693879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4bc330b9cb6eb79d47841cd67564e00000206f46050e19e73e942e52f33f9e`  
		Last Modified: Thu, 11 May 2017 15:16:56 GMT  
		Size: 3.3 MB (3299460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7`

```console
$ docker pull drupal@sha256:8471598540ac1bf761c520909a8a0757435182ac0991c1ad8d1adfcc8687c66a
```

-	Platforms:
	-	linux; amd64

### `drupal:7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165803491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3027799b8759d82fa4d5b58ddb533019dfcbdf5c13f2629fd467d37c512e7645`
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
# Tue, 09 May 2017 18:48:16 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 09 May 2017 18:48:17 GMT
ENV PHP_VERSION=7.0.18
# Tue, 09 May 2017 18:48:17 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.18.tar.xz.asc/from/this/mirror
# Tue, 09 May 2017 18:48:18 GMT
ENV PHP_SHA256=679cffcdf2495dee5ab89bda595e678a1096136678b3a1d08f1f57ba347c234d PHP_MD5=a578c55644d233635d2caa96c3a6f9c7
# Tue, 09 May 2017 18:48:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 May 2017 18:48:31 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 09 May 2017 18:50:51 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 09 May 2017 18:50:53 GMT
COPY multi:2322553de3ca67507508fc2dce30f88e38a62b59394dc81c4180177a850ae993 in /usr/local/bin/ 
# Tue, 09 May 2017 18:50:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 09 May 2017 18:50:55 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 09 May 2017 18:50:55 GMT
WORKDIR /var/www/html
# Tue, 09 May 2017 18:50:56 GMT
EXPOSE 80/tcp
# Tue, 09 May 2017 18:50:56 GMT
CMD ["apache2-foreground"]
# Thu, 11 May 2017 00:16:32 GMT
RUN a2enmod rewrite
# Thu, 11 May 2017 00:17:25 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 00:17:26 GMT
WORKDIR /var/www/html
# Thu, 11 May 2017 00:17:27 GMT
ENV DRUPAL_VERSION=7.54
# Thu, 11 May 2017 00:17:27 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Thu, 11 May 2017 00:17:29 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:d0407af27324dfc1147151bd999d9c53537c7a1ae96c5d38d86827e843ece53f`  
		Last Modified: Wed, 10 May 2017 02:28:23 GMT  
		Size: 12.7 MB (12723172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7008b28f6203ff4692a0f6e79f73e2e0437c4cd4db7a935fd58d480d5b7842ea`  
		Last Modified: Wed, 10 May 2017 02:28:21 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2370975b137f7d7eeb704735d31b7dfe5ad6352baf631ce6ef155cbc0ccb3c`  
		Last Modified: Wed, 10 May 2017 02:28:25 GMT  
		Size: 13.7 MB (13722617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee0e1658f0fd6e00e0da233b68e01d0cd75aa980ceceac2c270986e38c94dd1`  
		Last Modified: Wed, 10 May 2017 02:28:22 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1dce800f33d9da819779ef3ac713b1614b19f2f130dd25d9b41737ba63f7e4`  
		Last Modified: Wed, 10 May 2017 02:28:22 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c04038538643553340e983e7e02c86f7e01758a0f84a5762d994a378e1936be`  
		Last Modified: Thu, 11 May 2017 15:16:56 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a17f28ccba53de3095eb9784742a96cf84210b5f9f039c243bee3d1c2e6965ab`  
		Last Modified: Thu, 11 May 2017 15:16:56 GMT  
		Size: 1.7 MB (1693879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4bc330b9cb6eb79d47841cd67564e00000206f46050e19e73e942e52f33f9e`  
		Last Modified: Thu, 11 May 2017 15:16:56 GMT  
		Size: 3.3 MB (3299460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7.54-fpm`

```console
$ docker pull drupal@sha256:6449d5f6b9682486e4fae7d2b34960a1dfe7a75299cd09f2151aa33c8686775e
```

-	Platforms:
	-	linux; amd64

### `drupal:7.54-fpm` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162317550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85a77c5c360abc7c18845b91a5f62076c69a9c666b0239dc1cdaaf76aae8457f`
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
# Tue, 09 May 2017 18:51:16 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 09 May 2017 18:51:16 GMT
ENV PHP_VERSION=7.0.18
# Tue, 09 May 2017 18:51:17 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.18.tar.xz.asc/from/this/mirror
# Tue, 09 May 2017 18:51:18 GMT
ENV PHP_SHA256=679cffcdf2495dee5ab89bda595e678a1096136678b3a1d08f1f57ba347c234d PHP_MD5=a578c55644d233635d2caa96c3a6f9c7
# Tue, 09 May 2017 18:51:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 May 2017 18:51:31 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 09 May 2017 18:55:00 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 09 May 2017 18:55:02 GMT
COPY multi:6f0472135e558ecb6e8d4994f3ad7153def074d5ddc522114a95b3132d9e14ae in /usr/local/bin/ 
# Tue, 09 May 2017 18:55:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 09 May 2017 18:55:04 GMT
WORKDIR /var/www/html
# Tue, 09 May 2017 18:55:05 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 09 May 2017 18:55:05 GMT
EXPOSE 9000/tcp
# Tue, 09 May 2017 18:55:06 GMT
CMD ["php-fpm"]
# Thu, 11 May 2017 00:18:41 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 00:18:41 GMT
WORKDIR /var/www/html
# Thu, 11 May 2017 00:18:42 GMT
ENV DRUPAL_VERSION=7.54
# Thu, 11 May 2017 00:18:43 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Thu, 11 May 2017 00:18:45 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:9962a98f43aa7e8fd3e94758842a2e79b8365e55cfa8fca3a80153b6ce07da4e`  
		Last Modified: Wed, 10 May 2017 02:29:13 GMT  
		Size: 12.7 MB (12703994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be47debf8d4a37d2a0e0d144896e634cf408af84c09c9990154cd33849f148d0`  
		Last Modified: Wed, 10 May 2017 02:29:10 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd82c2339eca2fad65c66d536ec569edd604dea2b06d72dfafd1818c189d0cab`  
		Last Modified: Wed, 10 May 2017 02:29:14 GMT  
		Size: 13.2 MB (13185395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889562b4d329d75147e666ea773ce37c335a87f18476f7e3d08f7c8f671a07ef`  
		Last Modified: Wed, 10 May 2017 02:29:16 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c09f1d2a42f098af9ec492ccbf17d4f4c462bb8b87b3a21fe7629cef9a6bac`  
		Last Modified: Wed, 10 May 2017 02:29:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b30b7c68112dc10df117ebc2a27849ddbb47419adf705455fce1c70640bbdebd`  
		Last Modified: Wed, 10 May 2017 02:29:11 GMT  
		Size: 7.7 KB (7668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c336935a16c4427471ebbabde16f581fdd1ad56c433f7867f6356a79e5872411`  
		Last Modified: Thu, 11 May 2017 15:18:32 GMT  
		Size: 1.7 MB (1671665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02598ab0c1ee1702a386eb24656a519408854425fac25d657975b1870831a2d8`  
		Last Modified: Thu, 11 May 2017 15:18:33 GMT  
		Size: 3.3 MB (3299452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7-fpm`

```console
$ docker pull drupal@sha256:6449d5f6b9682486e4fae7d2b34960a1dfe7a75299cd09f2151aa33c8686775e
```

-	Platforms:
	-	linux; amd64

### `drupal:7-fpm` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162317550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85a77c5c360abc7c18845b91a5f62076c69a9c666b0239dc1cdaaf76aae8457f`
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
# Tue, 09 May 2017 18:51:16 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 09 May 2017 18:51:16 GMT
ENV PHP_VERSION=7.0.18
# Tue, 09 May 2017 18:51:17 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.18.tar.xz.asc/from/this/mirror
# Tue, 09 May 2017 18:51:18 GMT
ENV PHP_SHA256=679cffcdf2495dee5ab89bda595e678a1096136678b3a1d08f1f57ba347c234d PHP_MD5=a578c55644d233635d2caa96c3a6f9c7
# Tue, 09 May 2017 18:51:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 May 2017 18:51:31 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 09 May 2017 18:55:00 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 09 May 2017 18:55:02 GMT
COPY multi:6f0472135e558ecb6e8d4994f3ad7153def074d5ddc522114a95b3132d9e14ae in /usr/local/bin/ 
# Tue, 09 May 2017 18:55:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 09 May 2017 18:55:04 GMT
WORKDIR /var/www/html
# Tue, 09 May 2017 18:55:05 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 09 May 2017 18:55:05 GMT
EXPOSE 9000/tcp
# Tue, 09 May 2017 18:55:06 GMT
CMD ["php-fpm"]
# Thu, 11 May 2017 00:18:41 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 00:18:41 GMT
WORKDIR /var/www/html
# Thu, 11 May 2017 00:18:42 GMT
ENV DRUPAL_VERSION=7.54
# Thu, 11 May 2017 00:18:43 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Thu, 11 May 2017 00:18:45 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:9962a98f43aa7e8fd3e94758842a2e79b8365e55cfa8fca3a80153b6ce07da4e`  
		Last Modified: Wed, 10 May 2017 02:29:13 GMT  
		Size: 12.7 MB (12703994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be47debf8d4a37d2a0e0d144896e634cf408af84c09c9990154cd33849f148d0`  
		Last Modified: Wed, 10 May 2017 02:29:10 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd82c2339eca2fad65c66d536ec569edd604dea2b06d72dfafd1818c189d0cab`  
		Last Modified: Wed, 10 May 2017 02:29:14 GMT  
		Size: 13.2 MB (13185395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889562b4d329d75147e666ea773ce37c335a87f18476f7e3d08f7c8f671a07ef`  
		Last Modified: Wed, 10 May 2017 02:29:16 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c09f1d2a42f098af9ec492ccbf17d4f4c462bb8b87b3a21fe7629cef9a6bac`  
		Last Modified: Wed, 10 May 2017 02:29:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b30b7c68112dc10df117ebc2a27849ddbb47419adf705455fce1c70640bbdebd`  
		Last Modified: Wed, 10 May 2017 02:29:11 GMT  
		Size: 7.7 KB (7668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c336935a16c4427471ebbabde16f581fdd1ad56c433f7867f6356a79e5872411`  
		Last Modified: Thu, 11 May 2017 15:18:32 GMT  
		Size: 1.7 MB (1671665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02598ab0c1ee1702a386eb24656a519408854425fac25d657975b1870831a2d8`  
		Last Modified: Thu, 11 May 2017 15:18:33 GMT  
		Size: 3.3 MB (3299452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7.54-fpm-alpine`

```console
$ docker pull drupal@sha256:b473c9ca07e41ba6055d1170340a170fe2ef48fed52ff9984b4a31c1e1503a85
```

-	Platforms:
	-	linux; amd64

### `drupal:7.54-fpm-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36938176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2aa1f104e55cb982babc24281e747039c155fdc959d362a4ac5e4d8c159e91`
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
# Wed, 10 May 2017 18:48:49 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 May 2017 18:48:50 GMT
ENV PHP_VERSION=7.0.18
# Wed, 10 May 2017 18:48:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.18.tar.xz.asc/from/this/mirror
# Wed, 10 May 2017 18:48:52 GMT
ENV PHP_SHA256=679cffcdf2495dee5ab89bda595e678a1096136678b3a1d08f1f57ba347c234d PHP_MD5=a578c55644d233635d2caa96c3a6f9c7
# Wed, 10 May 2017 18:49:00 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 10 May 2017 18:49:15 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 10 May 2017 18:53:48 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Wed, 10 May 2017 18:53:50 GMT
COPY multi:6f0472135e558ecb6e8d4994f3ad7153def074d5ddc522114a95b3132d9e14ae in /usr/local/bin/ 
# Wed, 10 May 2017 18:53:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 10 May 2017 18:53:52 GMT
WORKDIR /var/www/html
# Wed, 10 May 2017 18:53:53 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 May 2017 18:53:54 GMT
EXPOSE 9000/tcp
# Wed, 10 May 2017 18:53:55 GMT
CMD ["php-fpm"]
# Thu, 11 May 2017 00:19:42 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Thu, 11 May 2017 00:19:43 GMT
WORKDIR /var/www/html
# Thu, 11 May 2017 00:19:44 GMT
ENV DRUPAL_VERSION=7.54
# Thu, 11 May 2017 00:19:45 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Thu, 11 May 2017 00:19:47 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:7f31a69af5cfd6cd4dc389eb768b2e60ad30e221f26e050c144931f1e240120e`  
		Last Modified: Wed, 10 May 2017 19:06:56 GMT  
		Size: 12.8 MB (12767042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a670273fca77f0162d13f197f8ce135e25af0d9c85511d7dfc70ea4cabe4ec`  
		Last Modified: Wed, 10 May 2017 19:06:53 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da3f422211cae440d7e06aaad14b034d10b6e76293e230441f181b3fc28be88`  
		Last Modified: Wed, 10 May 2017 19:06:56 GMT  
		Size: 14.4 MB (14413202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357508989be045481a7ecfa8e67330e19e89c34acb016dc4190fae7beecddb26`  
		Last Modified: Wed, 10 May 2017 19:06:53 GMT  
		Size: 2.0 KB (2031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9afa27b25026c61e360c8d0fd572bc12645227d097e7a4291898f2384febca`  
		Last Modified: Wed, 10 May 2017 19:06:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5348cd6bbfa6115312399ed5dac18834ae7461a3c6c124d26246dbd7006279c6`  
		Last Modified: Wed, 10 May 2017 19:06:53 GMT  
		Size: 7.7 KB (7654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d72b95586b13d8139e43533adab8920ab37e51c1f725fc7089ac4e9c8fd690`  
		Last Modified: Thu, 11 May 2017 15:19:23 GMT  
		Size: 3.0 MB (2982410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c492240e272698c7cb2b1e593fa4d276502b6ad5b05c83ae5a91ccba120e64`  
		Last Modified: Thu, 11 May 2017 15:19:24 GMT  
		Size: 3.3 MB (3299450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7-fpm-alpine`

```console
$ docker pull drupal@sha256:b473c9ca07e41ba6055d1170340a170fe2ef48fed52ff9984b4a31c1e1503a85
```

-	Platforms:
	-	linux; amd64

### `drupal:7-fpm-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36938176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2aa1f104e55cb982babc24281e747039c155fdc959d362a4ac5e4d8c159e91`
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
# Wed, 10 May 2017 18:48:49 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 May 2017 18:48:50 GMT
ENV PHP_VERSION=7.0.18
# Wed, 10 May 2017 18:48:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.18.tar.xz.asc/from/this/mirror
# Wed, 10 May 2017 18:48:52 GMT
ENV PHP_SHA256=679cffcdf2495dee5ab89bda595e678a1096136678b3a1d08f1f57ba347c234d PHP_MD5=a578c55644d233635d2caa96c3a6f9c7
# Wed, 10 May 2017 18:49:00 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 10 May 2017 18:49:15 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 10 May 2017 18:53:48 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Wed, 10 May 2017 18:53:50 GMT
COPY multi:6f0472135e558ecb6e8d4994f3ad7153def074d5ddc522114a95b3132d9e14ae in /usr/local/bin/ 
# Wed, 10 May 2017 18:53:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 10 May 2017 18:53:52 GMT
WORKDIR /var/www/html
# Wed, 10 May 2017 18:53:53 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 May 2017 18:53:54 GMT
EXPOSE 9000/tcp
# Wed, 10 May 2017 18:53:55 GMT
CMD ["php-fpm"]
# Thu, 11 May 2017 00:19:42 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Thu, 11 May 2017 00:19:43 GMT
WORKDIR /var/www/html
# Thu, 11 May 2017 00:19:44 GMT
ENV DRUPAL_VERSION=7.54
# Thu, 11 May 2017 00:19:45 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Thu, 11 May 2017 00:19:47 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:7f31a69af5cfd6cd4dc389eb768b2e60ad30e221f26e050c144931f1e240120e`  
		Last Modified: Wed, 10 May 2017 19:06:56 GMT  
		Size: 12.8 MB (12767042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a670273fca77f0162d13f197f8ce135e25af0d9c85511d7dfc70ea4cabe4ec`  
		Last Modified: Wed, 10 May 2017 19:06:53 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da3f422211cae440d7e06aaad14b034d10b6e76293e230441f181b3fc28be88`  
		Last Modified: Wed, 10 May 2017 19:06:56 GMT  
		Size: 14.4 MB (14413202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357508989be045481a7ecfa8e67330e19e89c34acb016dc4190fae7beecddb26`  
		Last Modified: Wed, 10 May 2017 19:06:53 GMT  
		Size: 2.0 KB (2031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9afa27b25026c61e360c8d0fd572bc12645227d097e7a4291898f2384febca`  
		Last Modified: Wed, 10 May 2017 19:06:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5348cd6bbfa6115312399ed5dac18834ae7461a3c6c124d26246dbd7006279c6`  
		Last Modified: Wed, 10 May 2017 19:06:53 GMT  
		Size: 7.7 KB (7654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d72b95586b13d8139e43533adab8920ab37e51c1f725fc7089ac4e9c8fd690`  
		Last Modified: Thu, 11 May 2017 15:19:23 GMT  
		Size: 3.0 MB (2982410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c492240e272698c7cb2b1e593fa4d276502b6ad5b05c83ae5a91ccba120e64`  
		Last Modified: Thu, 11 May 2017 15:19:24 GMT  
		Size: 3.3 MB (3299450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
