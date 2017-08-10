<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `composer`

-	[`composer:1.5.1`](#composer151)
-	[`composer:1.5`](#composer15)
-	[`composer:1`](#composer1)
-	[`composer:latest`](#composerlatest)
-	[`composer:1.4.3`](#composer143)
-	[`composer:1.4`](#composer14)
-	[`composer:1.3.3`](#composer133)
-	[`composer:1.3`](#composer13)
-	[`composer:1.2.4`](#composer124)
-	[`composer:1.2`](#composer12)
-	[`composer:1.1.3`](#composer113)
-	[`composer:1.1`](#composer11)

## `composer:1.5.1`

```console
$ docker pull composer@sha256:c0294765492db4d5580ea39d8a4dc7196286d7eb2b901af9319dab1d1e8713ef
```

-	Platforms:
	-	linux; amd64

### `composer:1.5.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56302633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e5ff609153cf2393e0860ae5c55cede31dbe4c4e7753bfd3a05ea5e1274e0b5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:09:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Wed, 28 Jun 2017 20:09:33 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Wed, 28 Jun 2017 20:09:35 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 28 Jun 2017 20:09:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Jun 2017 20:09:37 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 28 Jun 2017 20:09:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:09:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:09:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 28 Jun 2017 20:53:56 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_VERSION=7.1.8
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.8.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.8.tar.xz.asc/from/this/mirror
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_SHA256=8943858738604acb33ecedb865d6c4051eeffe4e2d06f3a3c8f794daccaa2aab PHP_MD5=
# Fri, 04 Aug 2017 18:48:32 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 04 Aug 2017 18:48:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:52:50 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 04 Aug 2017 18:52:54 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:52:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 04 Aug 2017 18:52:55 GMT
CMD ["php" "-a"]
# Tue, 08 Aug 2017 16:28:29 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash zlib-dev
# Tue, 08 Aug 2017 16:28:29 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Tue, 08 Aug 2017 16:28:52 GMT
RUN docker-php-ext-install zip
# Tue, 08 Aug 2017 16:28:52 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 08 Aug 2017 16:28:52 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 10 Aug 2017 17:45:07 GMT
ENV COMPOSER_VERSION=1.5.1
# Thu, 10 Aug 2017 17:45:10 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/da290238de6d63faace0343efbdd5aa9354332c5/web/installer  && php -r "     \$signature = '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && rm /tmp/installer.php  && composer --ansi --version --no-interaction
# Thu, 10 Aug 2017 17:45:11 GMT
COPY file:295943a303e8f27de4302b6aa3687bce4b1d1392335efaaab9ecd37bec5ab4c5 in /docker-entrypoint.sh 
# Thu, 10 Aug 2017 17:45:11 GMT
WORKDIR /app
# Thu, 10 Aug 2017 17:45:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 10 Aug 2017 17:45:12 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ae35d047425948b630f791a9a74d50ebb54f782bf01d3bcd74a2ed98313067`  
		Last Modified: Thu, 29 Jun 2017 01:50:27 GMT  
		Size: 1.1 MB (1081313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d34c9ec14365563dff516a583c4122f35a19016a83cc9cd333ad5a62f9a705b`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729ea35b870d89fe556e628075b41809b7e889d5858be4cffdd7ac98c2bee7ef`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d752ac91e1a127e1b339c7767c3ac036de37d64c8707821f3c323f5f1a52c1`  
		Last Modified: Fri, 04 Aug 2017 19:21:13 GMT  
		Size: 13.0 MB (13048543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbfd291d6e6639177d212d163756f9465c1c373c26b758833e079d71d28c0cc`  
		Last Modified: Fri, 04 Aug 2017 19:21:12 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00c26f9c0957681573742084c0f61ec95b5744c2aa06e931726d829ca85d9b0`  
		Last Modified: Fri, 04 Aug 2017 19:21:16 GMT  
		Size: 10.7 MB (10701912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e215f5fd3f56bf186c95e25214c0607b62819db63d3ac7e70319d9532135a518`  
		Last Modified: Fri, 04 Aug 2017 19:21:12 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663375dd6198ce53463d7b2abc7a64bade38c0e2bae6668d00b27ce3fb52a8c4`  
		Last Modified: Tue, 08 Aug 2017 16:30:27 GMT  
		Size: 28.4 MB (28368900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c410e718e8a3bf256e134d3fdc84cb827d7859a940be01a62351ae2e813e9c`  
		Last Modified: Tue, 08 Aug 2017 16:30:18 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00e2a1640702ace2465d8cb6d48ebd27e29c563e06d070ace94255f8a27a1ce`  
		Last Modified: Tue, 08 Aug 2017 16:30:19 GMT  
		Size: 219.4 KB (219394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe7391c6f9228022b919ded4ed32b8c13ce7f537cf6464de02d4b59f975bedb`  
		Last Modified: Thu, 10 Aug 2017 17:45:20 GMT  
		Size: 492.6 KB (492639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c03ca7f043e66e16b8b19eb88f0737e39f53da14d7c8c4c58725994572f306d`  
		Last Modified: Thu, 10 Aug 2017 17:45:20 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3825608f4dd91c86ebb423e9f6f073131db60a3c5beb6f5cae26f386e6797a62`  
		Last Modified: Thu, 10 Aug 2017 17:45:19 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `composer:1.5`

```console
$ docker pull composer@sha256:c0294765492db4d5580ea39d8a4dc7196286d7eb2b901af9319dab1d1e8713ef
```

-	Platforms:
	-	linux; amd64

### `composer:1.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56302633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e5ff609153cf2393e0860ae5c55cede31dbe4c4e7753bfd3a05ea5e1274e0b5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:09:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Wed, 28 Jun 2017 20:09:33 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Wed, 28 Jun 2017 20:09:35 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 28 Jun 2017 20:09:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Jun 2017 20:09:37 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 28 Jun 2017 20:09:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:09:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:09:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 28 Jun 2017 20:53:56 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_VERSION=7.1.8
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.8.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.8.tar.xz.asc/from/this/mirror
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_SHA256=8943858738604acb33ecedb865d6c4051eeffe4e2d06f3a3c8f794daccaa2aab PHP_MD5=
# Fri, 04 Aug 2017 18:48:32 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 04 Aug 2017 18:48:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:52:50 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 04 Aug 2017 18:52:54 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:52:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 04 Aug 2017 18:52:55 GMT
CMD ["php" "-a"]
# Tue, 08 Aug 2017 16:28:29 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash zlib-dev
# Tue, 08 Aug 2017 16:28:29 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Tue, 08 Aug 2017 16:28:52 GMT
RUN docker-php-ext-install zip
# Tue, 08 Aug 2017 16:28:52 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 08 Aug 2017 16:28:52 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 10 Aug 2017 17:45:07 GMT
ENV COMPOSER_VERSION=1.5.1
# Thu, 10 Aug 2017 17:45:10 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/da290238de6d63faace0343efbdd5aa9354332c5/web/installer  && php -r "     \$signature = '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && rm /tmp/installer.php  && composer --ansi --version --no-interaction
# Thu, 10 Aug 2017 17:45:11 GMT
COPY file:295943a303e8f27de4302b6aa3687bce4b1d1392335efaaab9ecd37bec5ab4c5 in /docker-entrypoint.sh 
# Thu, 10 Aug 2017 17:45:11 GMT
WORKDIR /app
# Thu, 10 Aug 2017 17:45:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 10 Aug 2017 17:45:12 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ae35d047425948b630f791a9a74d50ebb54f782bf01d3bcd74a2ed98313067`  
		Last Modified: Thu, 29 Jun 2017 01:50:27 GMT  
		Size: 1.1 MB (1081313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d34c9ec14365563dff516a583c4122f35a19016a83cc9cd333ad5a62f9a705b`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729ea35b870d89fe556e628075b41809b7e889d5858be4cffdd7ac98c2bee7ef`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d752ac91e1a127e1b339c7767c3ac036de37d64c8707821f3c323f5f1a52c1`  
		Last Modified: Fri, 04 Aug 2017 19:21:13 GMT  
		Size: 13.0 MB (13048543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbfd291d6e6639177d212d163756f9465c1c373c26b758833e079d71d28c0cc`  
		Last Modified: Fri, 04 Aug 2017 19:21:12 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00c26f9c0957681573742084c0f61ec95b5744c2aa06e931726d829ca85d9b0`  
		Last Modified: Fri, 04 Aug 2017 19:21:16 GMT  
		Size: 10.7 MB (10701912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e215f5fd3f56bf186c95e25214c0607b62819db63d3ac7e70319d9532135a518`  
		Last Modified: Fri, 04 Aug 2017 19:21:12 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663375dd6198ce53463d7b2abc7a64bade38c0e2bae6668d00b27ce3fb52a8c4`  
		Last Modified: Tue, 08 Aug 2017 16:30:27 GMT  
		Size: 28.4 MB (28368900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c410e718e8a3bf256e134d3fdc84cb827d7859a940be01a62351ae2e813e9c`  
		Last Modified: Tue, 08 Aug 2017 16:30:18 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00e2a1640702ace2465d8cb6d48ebd27e29c563e06d070ace94255f8a27a1ce`  
		Last Modified: Tue, 08 Aug 2017 16:30:19 GMT  
		Size: 219.4 KB (219394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe7391c6f9228022b919ded4ed32b8c13ce7f537cf6464de02d4b59f975bedb`  
		Last Modified: Thu, 10 Aug 2017 17:45:20 GMT  
		Size: 492.6 KB (492639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c03ca7f043e66e16b8b19eb88f0737e39f53da14d7c8c4c58725994572f306d`  
		Last Modified: Thu, 10 Aug 2017 17:45:20 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3825608f4dd91c86ebb423e9f6f073131db60a3c5beb6f5cae26f386e6797a62`  
		Last Modified: Thu, 10 Aug 2017 17:45:19 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `composer:1`

```console
$ docker pull composer@sha256:c0294765492db4d5580ea39d8a4dc7196286d7eb2b901af9319dab1d1e8713ef
```

-	Platforms:
	-	linux; amd64

### `composer:1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56302633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e5ff609153cf2393e0860ae5c55cede31dbe4c4e7753bfd3a05ea5e1274e0b5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:09:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Wed, 28 Jun 2017 20:09:33 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Wed, 28 Jun 2017 20:09:35 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 28 Jun 2017 20:09:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Jun 2017 20:09:37 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 28 Jun 2017 20:09:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:09:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:09:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 28 Jun 2017 20:53:56 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_VERSION=7.1.8
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.8.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.8.tar.xz.asc/from/this/mirror
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_SHA256=8943858738604acb33ecedb865d6c4051eeffe4e2d06f3a3c8f794daccaa2aab PHP_MD5=
# Fri, 04 Aug 2017 18:48:32 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 04 Aug 2017 18:48:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:52:50 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 04 Aug 2017 18:52:54 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:52:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 04 Aug 2017 18:52:55 GMT
CMD ["php" "-a"]
# Tue, 08 Aug 2017 16:28:29 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash zlib-dev
# Tue, 08 Aug 2017 16:28:29 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Tue, 08 Aug 2017 16:28:52 GMT
RUN docker-php-ext-install zip
# Tue, 08 Aug 2017 16:28:52 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 08 Aug 2017 16:28:52 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 10 Aug 2017 17:45:07 GMT
ENV COMPOSER_VERSION=1.5.1
# Thu, 10 Aug 2017 17:45:10 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/da290238de6d63faace0343efbdd5aa9354332c5/web/installer  && php -r "     \$signature = '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && rm /tmp/installer.php  && composer --ansi --version --no-interaction
# Thu, 10 Aug 2017 17:45:11 GMT
COPY file:295943a303e8f27de4302b6aa3687bce4b1d1392335efaaab9ecd37bec5ab4c5 in /docker-entrypoint.sh 
# Thu, 10 Aug 2017 17:45:11 GMT
WORKDIR /app
# Thu, 10 Aug 2017 17:45:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 10 Aug 2017 17:45:12 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ae35d047425948b630f791a9a74d50ebb54f782bf01d3bcd74a2ed98313067`  
		Last Modified: Thu, 29 Jun 2017 01:50:27 GMT  
		Size: 1.1 MB (1081313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d34c9ec14365563dff516a583c4122f35a19016a83cc9cd333ad5a62f9a705b`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729ea35b870d89fe556e628075b41809b7e889d5858be4cffdd7ac98c2bee7ef`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d752ac91e1a127e1b339c7767c3ac036de37d64c8707821f3c323f5f1a52c1`  
		Last Modified: Fri, 04 Aug 2017 19:21:13 GMT  
		Size: 13.0 MB (13048543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbfd291d6e6639177d212d163756f9465c1c373c26b758833e079d71d28c0cc`  
		Last Modified: Fri, 04 Aug 2017 19:21:12 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00c26f9c0957681573742084c0f61ec95b5744c2aa06e931726d829ca85d9b0`  
		Last Modified: Fri, 04 Aug 2017 19:21:16 GMT  
		Size: 10.7 MB (10701912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e215f5fd3f56bf186c95e25214c0607b62819db63d3ac7e70319d9532135a518`  
		Last Modified: Fri, 04 Aug 2017 19:21:12 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663375dd6198ce53463d7b2abc7a64bade38c0e2bae6668d00b27ce3fb52a8c4`  
		Last Modified: Tue, 08 Aug 2017 16:30:27 GMT  
		Size: 28.4 MB (28368900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c410e718e8a3bf256e134d3fdc84cb827d7859a940be01a62351ae2e813e9c`  
		Last Modified: Tue, 08 Aug 2017 16:30:18 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00e2a1640702ace2465d8cb6d48ebd27e29c563e06d070ace94255f8a27a1ce`  
		Last Modified: Tue, 08 Aug 2017 16:30:19 GMT  
		Size: 219.4 KB (219394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe7391c6f9228022b919ded4ed32b8c13ce7f537cf6464de02d4b59f975bedb`  
		Last Modified: Thu, 10 Aug 2017 17:45:20 GMT  
		Size: 492.6 KB (492639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c03ca7f043e66e16b8b19eb88f0737e39f53da14d7c8c4c58725994572f306d`  
		Last Modified: Thu, 10 Aug 2017 17:45:20 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3825608f4dd91c86ebb423e9f6f073131db60a3c5beb6f5cae26f386e6797a62`  
		Last Modified: Thu, 10 Aug 2017 17:45:19 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `composer:latest`

```console
$ docker pull composer@sha256:c0294765492db4d5580ea39d8a4dc7196286d7eb2b901af9319dab1d1e8713ef
```

-	Platforms:
	-	linux; amd64

### `composer:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56302633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e5ff609153cf2393e0860ae5c55cede31dbe4c4e7753bfd3a05ea5e1274e0b5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:09:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Wed, 28 Jun 2017 20:09:33 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Wed, 28 Jun 2017 20:09:35 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 28 Jun 2017 20:09:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Jun 2017 20:09:37 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 28 Jun 2017 20:09:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:09:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:09:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 28 Jun 2017 20:53:56 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_VERSION=7.1.8
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.8.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.8.tar.xz.asc/from/this/mirror
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_SHA256=8943858738604acb33ecedb865d6c4051eeffe4e2d06f3a3c8f794daccaa2aab PHP_MD5=
# Fri, 04 Aug 2017 18:48:32 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 04 Aug 2017 18:48:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:52:50 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 04 Aug 2017 18:52:54 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:52:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 04 Aug 2017 18:52:55 GMT
CMD ["php" "-a"]
# Tue, 08 Aug 2017 16:28:29 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash zlib-dev
# Tue, 08 Aug 2017 16:28:29 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Tue, 08 Aug 2017 16:28:52 GMT
RUN docker-php-ext-install zip
# Tue, 08 Aug 2017 16:28:52 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 08 Aug 2017 16:28:52 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 10 Aug 2017 17:45:07 GMT
ENV COMPOSER_VERSION=1.5.1
# Thu, 10 Aug 2017 17:45:10 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/da290238de6d63faace0343efbdd5aa9354332c5/web/installer  && php -r "     \$signature = '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && rm /tmp/installer.php  && composer --ansi --version --no-interaction
# Thu, 10 Aug 2017 17:45:11 GMT
COPY file:295943a303e8f27de4302b6aa3687bce4b1d1392335efaaab9ecd37bec5ab4c5 in /docker-entrypoint.sh 
# Thu, 10 Aug 2017 17:45:11 GMT
WORKDIR /app
# Thu, 10 Aug 2017 17:45:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 10 Aug 2017 17:45:12 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ae35d047425948b630f791a9a74d50ebb54f782bf01d3bcd74a2ed98313067`  
		Last Modified: Thu, 29 Jun 2017 01:50:27 GMT  
		Size: 1.1 MB (1081313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d34c9ec14365563dff516a583c4122f35a19016a83cc9cd333ad5a62f9a705b`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729ea35b870d89fe556e628075b41809b7e889d5858be4cffdd7ac98c2bee7ef`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d752ac91e1a127e1b339c7767c3ac036de37d64c8707821f3c323f5f1a52c1`  
		Last Modified: Fri, 04 Aug 2017 19:21:13 GMT  
		Size: 13.0 MB (13048543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbfd291d6e6639177d212d163756f9465c1c373c26b758833e079d71d28c0cc`  
		Last Modified: Fri, 04 Aug 2017 19:21:12 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00c26f9c0957681573742084c0f61ec95b5744c2aa06e931726d829ca85d9b0`  
		Last Modified: Fri, 04 Aug 2017 19:21:16 GMT  
		Size: 10.7 MB (10701912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e215f5fd3f56bf186c95e25214c0607b62819db63d3ac7e70319d9532135a518`  
		Last Modified: Fri, 04 Aug 2017 19:21:12 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663375dd6198ce53463d7b2abc7a64bade38c0e2bae6668d00b27ce3fb52a8c4`  
		Last Modified: Tue, 08 Aug 2017 16:30:27 GMT  
		Size: 28.4 MB (28368900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c410e718e8a3bf256e134d3fdc84cb827d7859a940be01a62351ae2e813e9c`  
		Last Modified: Tue, 08 Aug 2017 16:30:18 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00e2a1640702ace2465d8cb6d48ebd27e29c563e06d070ace94255f8a27a1ce`  
		Last Modified: Tue, 08 Aug 2017 16:30:19 GMT  
		Size: 219.4 KB (219394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe7391c6f9228022b919ded4ed32b8c13ce7f537cf6464de02d4b59f975bedb`  
		Last Modified: Thu, 10 Aug 2017 17:45:20 GMT  
		Size: 492.6 KB (492639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c03ca7f043e66e16b8b19eb88f0737e39f53da14d7c8c4c58725994572f306d`  
		Last Modified: Thu, 10 Aug 2017 17:45:20 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3825608f4dd91c86ebb423e9f6f073131db60a3c5beb6f5cae26f386e6797a62`  
		Last Modified: Thu, 10 Aug 2017 17:45:19 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `composer:1.4.3`

```console
$ docker pull composer@sha256:052ee447277e9cccf28649673c0173aed9270886fdc4fda630aea41fefc2ea3e
```

-	Platforms:
	-	linux; amd64

### `composer:1.4.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56299466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b06c2e55bcbd5700d348136aaa2b1c12ce612858b7797cf3339c4f760280b77`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:09:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Wed, 28 Jun 2017 20:09:33 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Wed, 28 Jun 2017 20:09:35 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 28 Jun 2017 20:09:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Jun 2017 20:09:37 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 28 Jun 2017 20:09:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:09:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:09:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 28 Jun 2017 20:53:56 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_VERSION=7.1.8
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.8.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.8.tar.xz.asc/from/this/mirror
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_SHA256=8943858738604acb33ecedb865d6c4051eeffe4e2d06f3a3c8f794daccaa2aab PHP_MD5=
# Fri, 04 Aug 2017 18:48:32 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 04 Aug 2017 18:48:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:52:50 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 04 Aug 2017 18:52:54 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:52:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 04 Aug 2017 18:52:55 GMT
CMD ["php" "-a"]
# Tue, 08 Aug 2017 16:28:29 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash zlib-dev
# Tue, 08 Aug 2017 16:28:29 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Tue, 08 Aug 2017 16:28:52 GMT
RUN docker-php-ext-install zip
# Tue, 08 Aug 2017 16:28:52 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 08 Aug 2017 16:28:52 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 08 Aug 2017 16:28:52 GMT
ENV COMPOSER_VERSION=1.4.3
# Tue, 08 Aug 2017 16:28:55 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/da290238de6d63faace0343efbdd5aa9354332c5/web/installer  && php -r "     \$signature = '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && rm /tmp/installer.php  && composer --ansi --version --no-interaction
# Wed, 09 Aug 2017 16:44:08 GMT
COPY file:295943a303e8f27de4302b6aa3687bce4b1d1392335efaaab9ecd37bec5ab4c5 in /docker-entrypoint.sh 
# Wed, 09 Aug 2017 16:44:09 GMT
WORKDIR /app
# Wed, 09 Aug 2017 16:44:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Aug 2017 16:44:09 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ae35d047425948b630f791a9a74d50ebb54f782bf01d3bcd74a2ed98313067`  
		Last Modified: Thu, 29 Jun 2017 01:50:27 GMT  
		Size: 1.1 MB (1081313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d34c9ec14365563dff516a583c4122f35a19016a83cc9cd333ad5a62f9a705b`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729ea35b870d89fe556e628075b41809b7e889d5858be4cffdd7ac98c2bee7ef`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d752ac91e1a127e1b339c7767c3ac036de37d64c8707821f3c323f5f1a52c1`  
		Last Modified: Fri, 04 Aug 2017 19:21:13 GMT  
		Size: 13.0 MB (13048543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbfd291d6e6639177d212d163756f9465c1c373c26b758833e079d71d28c0cc`  
		Last Modified: Fri, 04 Aug 2017 19:21:12 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00c26f9c0957681573742084c0f61ec95b5744c2aa06e931726d829ca85d9b0`  
		Last Modified: Fri, 04 Aug 2017 19:21:16 GMT  
		Size: 10.7 MB (10701912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e215f5fd3f56bf186c95e25214c0607b62819db63d3ac7e70319d9532135a518`  
		Last Modified: Fri, 04 Aug 2017 19:21:12 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663375dd6198ce53463d7b2abc7a64bade38c0e2bae6668d00b27ce3fb52a8c4`  
		Last Modified: Tue, 08 Aug 2017 16:30:27 GMT  
		Size: 28.4 MB (28368900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c410e718e8a3bf256e134d3fdc84cb827d7859a940be01a62351ae2e813e9c`  
		Last Modified: Tue, 08 Aug 2017 16:30:18 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00e2a1640702ace2465d8cb6d48ebd27e29c563e06d070ace94255f8a27a1ce`  
		Last Modified: Tue, 08 Aug 2017 16:30:19 GMT  
		Size: 219.4 KB (219394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f779e5bd1576d8e5be599ea67e7756dde064103e571b46862145eb8177a68a`  
		Last Modified: Tue, 08 Aug 2017 16:30:19 GMT  
		Size: 489.5 KB (489471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae85d3d834c57a8454cced45ecb59d7490c290dee670a1b865ef13cd67a36521`  
		Last Modified: Wed, 09 Aug 2017 16:44:46 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16302846dfbb3d50f113278dc837ed604162df3b0cbd6415837443eee7b0d62`  
		Last Modified: Wed, 09 Aug 2017 16:44:46 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `composer:1.4`

```console
$ docker pull composer@sha256:052ee447277e9cccf28649673c0173aed9270886fdc4fda630aea41fefc2ea3e
```

-	Platforms:
	-	linux; amd64

### `composer:1.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56299466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b06c2e55bcbd5700d348136aaa2b1c12ce612858b7797cf3339c4f760280b77`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:09:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Wed, 28 Jun 2017 20:09:33 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Wed, 28 Jun 2017 20:09:35 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 28 Jun 2017 20:09:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Jun 2017 20:09:37 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 28 Jun 2017 20:09:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:09:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:09:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 28 Jun 2017 20:53:56 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_VERSION=7.1.8
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.8.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.8.tar.xz.asc/from/this/mirror
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_SHA256=8943858738604acb33ecedb865d6c4051eeffe4e2d06f3a3c8f794daccaa2aab PHP_MD5=
# Fri, 04 Aug 2017 18:48:32 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 04 Aug 2017 18:48:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:52:50 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 04 Aug 2017 18:52:54 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:52:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 04 Aug 2017 18:52:55 GMT
CMD ["php" "-a"]
# Tue, 08 Aug 2017 16:28:29 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash zlib-dev
# Tue, 08 Aug 2017 16:28:29 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Tue, 08 Aug 2017 16:28:52 GMT
RUN docker-php-ext-install zip
# Tue, 08 Aug 2017 16:28:52 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 08 Aug 2017 16:28:52 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 08 Aug 2017 16:28:52 GMT
ENV COMPOSER_VERSION=1.4.3
# Tue, 08 Aug 2017 16:28:55 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/da290238de6d63faace0343efbdd5aa9354332c5/web/installer  && php -r "     \$signature = '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && rm /tmp/installer.php  && composer --ansi --version --no-interaction
# Wed, 09 Aug 2017 16:44:08 GMT
COPY file:295943a303e8f27de4302b6aa3687bce4b1d1392335efaaab9ecd37bec5ab4c5 in /docker-entrypoint.sh 
# Wed, 09 Aug 2017 16:44:09 GMT
WORKDIR /app
# Wed, 09 Aug 2017 16:44:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Aug 2017 16:44:09 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ae35d047425948b630f791a9a74d50ebb54f782bf01d3bcd74a2ed98313067`  
		Last Modified: Thu, 29 Jun 2017 01:50:27 GMT  
		Size: 1.1 MB (1081313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d34c9ec14365563dff516a583c4122f35a19016a83cc9cd333ad5a62f9a705b`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729ea35b870d89fe556e628075b41809b7e889d5858be4cffdd7ac98c2bee7ef`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d752ac91e1a127e1b339c7767c3ac036de37d64c8707821f3c323f5f1a52c1`  
		Last Modified: Fri, 04 Aug 2017 19:21:13 GMT  
		Size: 13.0 MB (13048543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbfd291d6e6639177d212d163756f9465c1c373c26b758833e079d71d28c0cc`  
		Last Modified: Fri, 04 Aug 2017 19:21:12 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00c26f9c0957681573742084c0f61ec95b5744c2aa06e931726d829ca85d9b0`  
		Last Modified: Fri, 04 Aug 2017 19:21:16 GMT  
		Size: 10.7 MB (10701912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e215f5fd3f56bf186c95e25214c0607b62819db63d3ac7e70319d9532135a518`  
		Last Modified: Fri, 04 Aug 2017 19:21:12 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663375dd6198ce53463d7b2abc7a64bade38c0e2bae6668d00b27ce3fb52a8c4`  
		Last Modified: Tue, 08 Aug 2017 16:30:27 GMT  
		Size: 28.4 MB (28368900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c410e718e8a3bf256e134d3fdc84cb827d7859a940be01a62351ae2e813e9c`  
		Last Modified: Tue, 08 Aug 2017 16:30:18 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00e2a1640702ace2465d8cb6d48ebd27e29c563e06d070ace94255f8a27a1ce`  
		Last Modified: Tue, 08 Aug 2017 16:30:19 GMT  
		Size: 219.4 KB (219394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f779e5bd1576d8e5be599ea67e7756dde064103e571b46862145eb8177a68a`  
		Last Modified: Tue, 08 Aug 2017 16:30:19 GMT  
		Size: 489.5 KB (489471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae85d3d834c57a8454cced45ecb59d7490c290dee670a1b865ef13cd67a36521`  
		Last Modified: Wed, 09 Aug 2017 16:44:46 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16302846dfbb3d50f113278dc837ed604162df3b0cbd6415837443eee7b0d62`  
		Last Modified: Wed, 09 Aug 2017 16:44:46 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `composer:1.3.3`

```console
$ docker pull composer@sha256:16076997ba0ea55ee9a522e9203fd0d5090d06827ffdf4673e009751e37500f5
```

-	Platforms:
	-	linux; amd64

### `composer:1.3.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56297429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38657800f0d96cbed5cd347bd547fc857a9710b2a222267c2fde0c5bdcf6f28f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:09:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Wed, 28 Jun 2017 20:09:33 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Wed, 28 Jun 2017 20:09:35 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 28 Jun 2017 20:09:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Jun 2017 20:09:37 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 28 Jun 2017 20:09:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:09:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:09:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 28 Jun 2017 20:53:56 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_VERSION=7.1.8
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.8.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.8.tar.xz.asc/from/this/mirror
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_SHA256=8943858738604acb33ecedb865d6c4051eeffe4e2d06f3a3c8f794daccaa2aab PHP_MD5=
# Fri, 04 Aug 2017 18:48:32 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 04 Aug 2017 18:48:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:52:50 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 04 Aug 2017 18:52:54 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:52:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 04 Aug 2017 18:52:55 GMT
CMD ["php" "-a"]
# Tue, 08 Aug 2017 16:28:29 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash zlib-dev
# Tue, 08 Aug 2017 16:28:29 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Tue, 08 Aug 2017 16:28:52 GMT
RUN docker-php-ext-install zip
# Tue, 08 Aug 2017 16:29:05 GMT
ENV PATH=/composer/vendor/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Aug 2017 16:29:06 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 08 Aug 2017 16:29:06 GMT
ENV COMPOSER_HOME=/composer
# Tue, 08 Aug 2017 16:29:06 GMT
ENV COMPOSER_VERSION=1.3.3
# Tue, 08 Aug 2017 16:29:09 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/da290238de6d63faace0343efbdd5aa9354332c5/web/installer  && php -r "     \$signature = '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && rm /tmp/installer.php  && composer --ansi --version --no-interaction
# Tue, 08 Aug 2017 16:29:09 GMT
COPY file:0b943ec33b364492b10e7a774becd40d3fec03eb7db67cc0528769b329117e32 in /docker-entrypoint.sh 
# Tue, 08 Aug 2017 16:29:10 GMT
WORKDIR /app
# Tue, 08 Aug 2017 16:29:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Aug 2017 16:29:10 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ae35d047425948b630f791a9a74d50ebb54f782bf01d3bcd74a2ed98313067`  
		Last Modified: Thu, 29 Jun 2017 01:50:27 GMT  
		Size: 1.1 MB (1081313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d34c9ec14365563dff516a583c4122f35a19016a83cc9cd333ad5a62f9a705b`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729ea35b870d89fe556e628075b41809b7e889d5858be4cffdd7ac98c2bee7ef`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d752ac91e1a127e1b339c7767c3ac036de37d64c8707821f3c323f5f1a52c1`  
		Last Modified: Fri, 04 Aug 2017 19:21:13 GMT  
		Size: 13.0 MB (13048543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbfd291d6e6639177d212d163756f9465c1c373c26b758833e079d71d28c0cc`  
		Last Modified: Fri, 04 Aug 2017 19:21:12 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00c26f9c0957681573742084c0f61ec95b5744c2aa06e931726d829ca85d9b0`  
		Last Modified: Fri, 04 Aug 2017 19:21:16 GMT  
		Size: 10.7 MB (10701912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e215f5fd3f56bf186c95e25214c0607b62819db63d3ac7e70319d9532135a518`  
		Last Modified: Fri, 04 Aug 2017 19:21:12 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663375dd6198ce53463d7b2abc7a64bade38c0e2bae6668d00b27ce3fb52a8c4`  
		Last Modified: Tue, 08 Aug 2017 16:30:27 GMT  
		Size: 28.4 MB (28368900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c410e718e8a3bf256e134d3fdc84cb827d7859a940be01a62351ae2e813e9c`  
		Last Modified: Tue, 08 Aug 2017 16:30:18 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00e2a1640702ace2465d8cb6d48ebd27e29c563e06d070ace94255f8a27a1ce`  
		Last Modified: Tue, 08 Aug 2017 16:30:19 GMT  
		Size: 219.4 KB (219394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7022fe53fa033c3b13095b59cc5f82dca49a13eb9fc17a123350aeea86daf32`  
		Last Modified: Tue, 08 Aug 2017 16:30:58 GMT  
		Size: 487.4 KB (487439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1952a3261acabfcba795cf07a97e032bb3fa6145ead5584554e1055aae0b94`  
		Last Modified: Tue, 08 Aug 2017 16:30:56 GMT  
		Size: 531.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98498e146fab0f2c805f1d4f1700d2801f958528a19fa92ae476f44901130cc4`  
		Last Modified: Tue, 08 Aug 2017 16:30:56 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `composer:1.3`

```console
$ docker pull composer@sha256:16076997ba0ea55ee9a522e9203fd0d5090d06827ffdf4673e009751e37500f5
```

-	Platforms:
	-	linux; amd64

### `composer:1.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56297429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38657800f0d96cbed5cd347bd547fc857a9710b2a222267c2fde0c5bdcf6f28f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:09:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Wed, 28 Jun 2017 20:09:33 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Wed, 28 Jun 2017 20:09:35 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 28 Jun 2017 20:09:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Jun 2017 20:09:37 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 28 Jun 2017 20:09:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:09:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:09:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 28 Jun 2017 20:53:56 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_VERSION=7.1.8
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.8.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.8.tar.xz.asc/from/this/mirror
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_SHA256=8943858738604acb33ecedb865d6c4051eeffe4e2d06f3a3c8f794daccaa2aab PHP_MD5=
# Fri, 04 Aug 2017 18:48:32 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 04 Aug 2017 18:48:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:52:50 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 04 Aug 2017 18:52:54 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:52:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 04 Aug 2017 18:52:55 GMT
CMD ["php" "-a"]
# Tue, 08 Aug 2017 16:28:29 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash zlib-dev
# Tue, 08 Aug 2017 16:28:29 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Tue, 08 Aug 2017 16:28:52 GMT
RUN docker-php-ext-install zip
# Tue, 08 Aug 2017 16:29:05 GMT
ENV PATH=/composer/vendor/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Aug 2017 16:29:06 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 08 Aug 2017 16:29:06 GMT
ENV COMPOSER_HOME=/composer
# Tue, 08 Aug 2017 16:29:06 GMT
ENV COMPOSER_VERSION=1.3.3
# Tue, 08 Aug 2017 16:29:09 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/da290238de6d63faace0343efbdd5aa9354332c5/web/installer  && php -r "     \$signature = '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && rm /tmp/installer.php  && composer --ansi --version --no-interaction
# Tue, 08 Aug 2017 16:29:09 GMT
COPY file:0b943ec33b364492b10e7a774becd40d3fec03eb7db67cc0528769b329117e32 in /docker-entrypoint.sh 
# Tue, 08 Aug 2017 16:29:10 GMT
WORKDIR /app
# Tue, 08 Aug 2017 16:29:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Aug 2017 16:29:10 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ae35d047425948b630f791a9a74d50ebb54f782bf01d3bcd74a2ed98313067`  
		Last Modified: Thu, 29 Jun 2017 01:50:27 GMT  
		Size: 1.1 MB (1081313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d34c9ec14365563dff516a583c4122f35a19016a83cc9cd333ad5a62f9a705b`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729ea35b870d89fe556e628075b41809b7e889d5858be4cffdd7ac98c2bee7ef`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d752ac91e1a127e1b339c7767c3ac036de37d64c8707821f3c323f5f1a52c1`  
		Last Modified: Fri, 04 Aug 2017 19:21:13 GMT  
		Size: 13.0 MB (13048543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbfd291d6e6639177d212d163756f9465c1c373c26b758833e079d71d28c0cc`  
		Last Modified: Fri, 04 Aug 2017 19:21:12 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00c26f9c0957681573742084c0f61ec95b5744c2aa06e931726d829ca85d9b0`  
		Last Modified: Fri, 04 Aug 2017 19:21:16 GMT  
		Size: 10.7 MB (10701912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e215f5fd3f56bf186c95e25214c0607b62819db63d3ac7e70319d9532135a518`  
		Last Modified: Fri, 04 Aug 2017 19:21:12 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663375dd6198ce53463d7b2abc7a64bade38c0e2bae6668d00b27ce3fb52a8c4`  
		Last Modified: Tue, 08 Aug 2017 16:30:27 GMT  
		Size: 28.4 MB (28368900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c410e718e8a3bf256e134d3fdc84cb827d7859a940be01a62351ae2e813e9c`  
		Last Modified: Tue, 08 Aug 2017 16:30:18 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00e2a1640702ace2465d8cb6d48ebd27e29c563e06d070ace94255f8a27a1ce`  
		Last Modified: Tue, 08 Aug 2017 16:30:19 GMT  
		Size: 219.4 KB (219394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7022fe53fa033c3b13095b59cc5f82dca49a13eb9fc17a123350aeea86daf32`  
		Last Modified: Tue, 08 Aug 2017 16:30:58 GMT  
		Size: 487.4 KB (487439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1952a3261acabfcba795cf07a97e032bb3fa6145ead5584554e1055aae0b94`  
		Last Modified: Tue, 08 Aug 2017 16:30:56 GMT  
		Size: 531.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98498e146fab0f2c805f1d4f1700d2801f958528a19fa92ae476f44901130cc4`  
		Last Modified: Tue, 08 Aug 2017 16:30:56 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `composer:1.2.4`

```console
$ docker pull composer@sha256:ec392d82744caecc44eee60ec4ddf7c4cfb5c5a0b094a7c61c88d5e1880dd66c
```

-	Platforms:
	-	linux; amd64

### `composer:1.2.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56268832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4cd2343c4fd314b9dc8c9af93af4c2ab961db458ec89c70a18322472c4daf6c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:09:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Wed, 28 Jun 2017 20:09:33 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Wed, 28 Jun 2017 20:09:35 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 28 Jun 2017 20:09:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Jun 2017 20:09:37 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 28 Jun 2017 20:09:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:09:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:09:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 28 Jun 2017 20:53:56 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_VERSION=7.1.8
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.8.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.8.tar.xz.asc/from/this/mirror
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_SHA256=8943858738604acb33ecedb865d6c4051eeffe4e2d06f3a3c8f794daccaa2aab PHP_MD5=
# Fri, 04 Aug 2017 18:48:32 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 04 Aug 2017 18:48:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:52:50 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 04 Aug 2017 18:52:54 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:52:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 04 Aug 2017 18:52:55 GMT
CMD ["php" "-a"]
# Tue, 08 Aug 2017 16:28:29 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash zlib-dev
# Tue, 08 Aug 2017 16:28:29 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Tue, 08 Aug 2017 16:28:52 GMT
RUN docker-php-ext-install zip
# Tue, 08 Aug 2017 16:29:05 GMT
ENV PATH=/composer/vendor/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Aug 2017 16:29:06 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 08 Aug 2017 16:29:06 GMT
ENV COMPOSER_HOME=/composer
# Tue, 08 Aug 2017 16:29:34 GMT
ENV COMPOSER_VERSION=1.2.4
# Tue, 08 Aug 2017 16:29:37 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/9184c4b85ed6ada94a298cf54e55cc252c970c28/web/installer  && php -r "     \$signature = 'aa96f26c2b67226a324c27919f1eb05f21c248b987e6195cad9690d5c1ff713d53020a02ac8c217dbf90a7eacc9d141d';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && rm /tmp/installer.php  && composer --ansi --version --no-interaction
# Tue, 08 Aug 2017 16:29:38 GMT
COPY file:0b943ec33b364492b10e7a774becd40d3fec03eb7db67cc0528769b329117e32 in /docker-entrypoint.sh 
# Tue, 08 Aug 2017 16:29:38 GMT
WORKDIR /app
# Tue, 08 Aug 2017 16:29:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Aug 2017 16:29:39 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ae35d047425948b630f791a9a74d50ebb54f782bf01d3bcd74a2ed98313067`  
		Last Modified: Thu, 29 Jun 2017 01:50:27 GMT  
		Size: 1.1 MB (1081313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d34c9ec14365563dff516a583c4122f35a19016a83cc9cd333ad5a62f9a705b`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729ea35b870d89fe556e628075b41809b7e889d5858be4cffdd7ac98c2bee7ef`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d752ac91e1a127e1b339c7767c3ac036de37d64c8707821f3c323f5f1a52c1`  
		Last Modified: Fri, 04 Aug 2017 19:21:13 GMT  
		Size: 13.0 MB (13048543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbfd291d6e6639177d212d163756f9465c1c373c26b758833e079d71d28c0cc`  
		Last Modified: Fri, 04 Aug 2017 19:21:12 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00c26f9c0957681573742084c0f61ec95b5744c2aa06e931726d829ca85d9b0`  
		Last Modified: Fri, 04 Aug 2017 19:21:16 GMT  
		Size: 10.7 MB (10701912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e215f5fd3f56bf186c95e25214c0607b62819db63d3ac7e70319d9532135a518`  
		Last Modified: Fri, 04 Aug 2017 19:21:12 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663375dd6198ce53463d7b2abc7a64bade38c0e2bae6668d00b27ce3fb52a8c4`  
		Last Modified: Tue, 08 Aug 2017 16:30:27 GMT  
		Size: 28.4 MB (28368900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c410e718e8a3bf256e134d3fdc84cb827d7859a940be01a62351ae2e813e9c`  
		Last Modified: Tue, 08 Aug 2017 16:30:18 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00e2a1640702ace2465d8cb6d48ebd27e29c563e06d070ace94255f8a27a1ce`  
		Last Modified: Tue, 08 Aug 2017 16:30:19 GMT  
		Size: 219.4 KB (219394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f7a04e4169478d4bcac431782001c2d90836eae16f708b85a9e01cdd85320d`  
		Last Modified: Tue, 08 Aug 2017 16:31:14 GMT  
		Size: 458.8 KB (458843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da252a291792796f0fcd41167a10cda66373c9ff2b8b9ffab5f7288cdd0fa190`  
		Last Modified: Tue, 08 Aug 2017 16:31:14 GMT  
		Size: 530.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff44a45dbfcc5f09d90c34e8ad0856b941593ced83041b13c8c8ede761ffad2a`  
		Last Modified: Tue, 08 Aug 2017 16:31:13 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `composer:1.2`

```console
$ docker pull composer@sha256:ec392d82744caecc44eee60ec4ddf7c4cfb5c5a0b094a7c61c88d5e1880dd66c
```

-	Platforms:
	-	linux; amd64

### `composer:1.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56268832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4cd2343c4fd314b9dc8c9af93af4c2ab961db458ec89c70a18322472c4daf6c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:09:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Wed, 28 Jun 2017 20:09:33 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Wed, 28 Jun 2017 20:09:35 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 28 Jun 2017 20:09:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Jun 2017 20:09:37 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 28 Jun 2017 20:09:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:09:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:09:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 28 Jun 2017 20:53:56 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_VERSION=7.1.8
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.8.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.8.tar.xz.asc/from/this/mirror
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_SHA256=8943858738604acb33ecedb865d6c4051eeffe4e2d06f3a3c8f794daccaa2aab PHP_MD5=
# Fri, 04 Aug 2017 18:48:32 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 04 Aug 2017 18:48:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:52:50 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 04 Aug 2017 18:52:54 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:52:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 04 Aug 2017 18:52:55 GMT
CMD ["php" "-a"]
# Tue, 08 Aug 2017 16:28:29 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash zlib-dev
# Tue, 08 Aug 2017 16:28:29 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Tue, 08 Aug 2017 16:28:52 GMT
RUN docker-php-ext-install zip
# Tue, 08 Aug 2017 16:29:05 GMT
ENV PATH=/composer/vendor/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Aug 2017 16:29:06 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 08 Aug 2017 16:29:06 GMT
ENV COMPOSER_HOME=/composer
# Tue, 08 Aug 2017 16:29:34 GMT
ENV COMPOSER_VERSION=1.2.4
# Tue, 08 Aug 2017 16:29:37 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/9184c4b85ed6ada94a298cf54e55cc252c970c28/web/installer  && php -r "     \$signature = 'aa96f26c2b67226a324c27919f1eb05f21c248b987e6195cad9690d5c1ff713d53020a02ac8c217dbf90a7eacc9d141d';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && rm /tmp/installer.php  && composer --ansi --version --no-interaction
# Tue, 08 Aug 2017 16:29:38 GMT
COPY file:0b943ec33b364492b10e7a774becd40d3fec03eb7db67cc0528769b329117e32 in /docker-entrypoint.sh 
# Tue, 08 Aug 2017 16:29:38 GMT
WORKDIR /app
# Tue, 08 Aug 2017 16:29:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Aug 2017 16:29:39 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ae35d047425948b630f791a9a74d50ebb54f782bf01d3bcd74a2ed98313067`  
		Last Modified: Thu, 29 Jun 2017 01:50:27 GMT  
		Size: 1.1 MB (1081313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d34c9ec14365563dff516a583c4122f35a19016a83cc9cd333ad5a62f9a705b`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729ea35b870d89fe556e628075b41809b7e889d5858be4cffdd7ac98c2bee7ef`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d752ac91e1a127e1b339c7767c3ac036de37d64c8707821f3c323f5f1a52c1`  
		Last Modified: Fri, 04 Aug 2017 19:21:13 GMT  
		Size: 13.0 MB (13048543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbfd291d6e6639177d212d163756f9465c1c373c26b758833e079d71d28c0cc`  
		Last Modified: Fri, 04 Aug 2017 19:21:12 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00c26f9c0957681573742084c0f61ec95b5744c2aa06e931726d829ca85d9b0`  
		Last Modified: Fri, 04 Aug 2017 19:21:16 GMT  
		Size: 10.7 MB (10701912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e215f5fd3f56bf186c95e25214c0607b62819db63d3ac7e70319d9532135a518`  
		Last Modified: Fri, 04 Aug 2017 19:21:12 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663375dd6198ce53463d7b2abc7a64bade38c0e2bae6668d00b27ce3fb52a8c4`  
		Last Modified: Tue, 08 Aug 2017 16:30:27 GMT  
		Size: 28.4 MB (28368900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c410e718e8a3bf256e134d3fdc84cb827d7859a940be01a62351ae2e813e9c`  
		Last Modified: Tue, 08 Aug 2017 16:30:18 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00e2a1640702ace2465d8cb6d48ebd27e29c563e06d070ace94255f8a27a1ce`  
		Last Modified: Tue, 08 Aug 2017 16:30:19 GMT  
		Size: 219.4 KB (219394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f7a04e4169478d4bcac431782001c2d90836eae16f708b85a9e01cdd85320d`  
		Last Modified: Tue, 08 Aug 2017 16:31:14 GMT  
		Size: 458.8 KB (458843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da252a291792796f0fcd41167a10cda66373c9ff2b8b9ffab5f7288cdd0fa190`  
		Last Modified: Tue, 08 Aug 2017 16:31:14 GMT  
		Size: 530.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff44a45dbfcc5f09d90c34e8ad0856b941593ced83041b13c8c8ede761ffad2a`  
		Last Modified: Tue, 08 Aug 2017 16:31:13 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `composer:1.1.3`

```console
$ docker pull composer@sha256:e3b9b682954c4822cdeb6aeb2e538514795c75f0c0df550e7dd97b4eed3c0f89
```

-	Platforms:
	-	linux; amd64

### `composer:1.1.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56248620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab9654014de7bcdb5b8479c15a83f0e83b37acf071c6a2bb8863d4b2fb029fb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:09:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Wed, 28 Jun 2017 20:09:33 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Wed, 28 Jun 2017 20:09:35 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 28 Jun 2017 20:09:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Jun 2017 20:09:37 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 28 Jun 2017 20:09:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:09:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:09:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 28 Jun 2017 20:53:56 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_VERSION=7.1.8
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.8.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.8.tar.xz.asc/from/this/mirror
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_SHA256=8943858738604acb33ecedb865d6c4051eeffe4e2d06f3a3c8f794daccaa2aab PHP_MD5=
# Fri, 04 Aug 2017 18:48:32 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 04 Aug 2017 18:48:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:52:50 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 04 Aug 2017 18:52:54 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:52:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 04 Aug 2017 18:52:55 GMT
CMD ["php" "-a"]
# Tue, 08 Aug 2017 16:28:29 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash zlib-dev
# Tue, 08 Aug 2017 16:28:29 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Tue, 08 Aug 2017 16:28:52 GMT
RUN docker-php-ext-install zip
# Tue, 08 Aug 2017 16:29:05 GMT
ENV PATH=/composer/vendor/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Aug 2017 16:29:06 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 08 Aug 2017 16:29:06 GMT
ENV COMPOSER_HOME=/composer
# Tue, 08 Aug 2017 16:30:07 GMT
ENV COMPOSER_VERSION=1.1.3
# Tue, 08 Aug 2017 16:30:10 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/9184c4b85ed6ada94a298cf54e55cc252c970c28/web/installer  && php -r "     \$signature = 'aa96f26c2b67226a324c27919f1eb05f21c248b987e6195cad9690d5c1ff713d53020a02ac8c217dbf90a7eacc9d141d';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && rm /tmp/installer.php  && composer --ansi --version --no-interaction
# Tue, 08 Aug 2017 16:30:10 GMT
COPY file:0b943ec33b364492b10e7a774becd40d3fec03eb7db67cc0528769b329117e32 in /docker-entrypoint.sh 
# Tue, 08 Aug 2017 16:30:11 GMT
WORKDIR /app
# Tue, 08 Aug 2017 16:30:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Aug 2017 16:30:11 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ae35d047425948b630f791a9a74d50ebb54f782bf01d3bcd74a2ed98313067`  
		Last Modified: Thu, 29 Jun 2017 01:50:27 GMT  
		Size: 1.1 MB (1081313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d34c9ec14365563dff516a583c4122f35a19016a83cc9cd333ad5a62f9a705b`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729ea35b870d89fe556e628075b41809b7e889d5858be4cffdd7ac98c2bee7ef`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d752ac91e1a127e1b339c7767c3ac036de37d64c8707821f3c323f5f1a52c1`  
		Last Modified: Fri, 04 Aug 2017 19:21:13 GMT  
		Size: 13.0 MB (13048543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbfd291d6e6639177d212d163756f9465c1c373c26b758833e079d71d28c0cc`  
		Last Modified: Fri, 04 Aug 2017 19:21:12 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00c26f9c0957681573742084c0f61ec95b5744c2aa06e931726d829ca85d9b0`  
		Last Modified: Fri, 04 Aug 2017 19:21:16 GMT  
		Size: 10.7 MB (10701912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e215f5fd3f56bf186c95e25214c0607b62819db63d3ac7e70319d9532135a518`  
		Last Modified: Fri, 04 Aug 2017 19:21:12 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663375dd6198ce53463d7b2abc7a64bade38c0e2bae6668d00b27ce3fb52a8c4`  
		Last Modified: Tue, 08 Aug 2017 16:30:27 GMT  
		Size: 28.4 MB (28368900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c410e718e8a3bf256e134d3fdc84cb827d7859a940be01a62351ae2e813e9c`  
		Last Modified: Tue, 08 Aug 2017 16:30:18 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00e2a1640702ace2465d8cb6d48ebd27e29c563e06d070ace94255f8a27a1ce`  
		Last Modified: Tue, 08 Aug 2017 16:30:19 GMT  
		Size: 219.4 KB (219394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7684c1bc8b5b4c02d285f4d4d2ec8b87eb622f50deb591752af4678c05408e`  
		Last Modified: Tue, 08 Aug 2017 16:31:31 GMT  
		Size: 438.6 KB (438631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989ff9a5e527c1a94549d0b2860552d35a5cb7ef77c08f246b5932a9ea88ba86`  
		Last Modified: Tue, 08 Aug 2017 16:31:30 GMT  
		Size: 530.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca3c97fc1c6af195f88280b3a5cc024d9d8c4ccea60b03bc765740a5a2f7374`  
		Last Modified: Tue, 08 Aug 2017 16:31:30 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `composer:1.1`

```console
$ docker pull composer@sha256:e3b9b682954c4822cdeb6aeb2e538514795c75f0c0df550e7dd97b4eed3c0f89
```

-	Platforms:
	-	linux; amd64

### `composer:1.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56248620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab9654014de7bcdb5b8479c15a83f0e83b37acf071c6a2bb8863d4b2fb029fb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:09:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Wed, 28 Jun 2017 20:09:33 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Wed, 28 Jun 2017 20:09:35 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 28 Jun 2017 20:09:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Jun 2017 20:09:37 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 28 Jun 2017 20:09:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:09:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:09:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 28 Jun 2017 20:53:56 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_VERSION=7.1.8
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.8.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.8.tar.xz.asc/from/this/mirror
# Fri, 04 Aug 2017 18:48:23 GMT
ENV PHP_SHA256=8943858738604acb33ecedb865d6c4051eeffe4e2d06f3a3c8f794daccaa2aab PHP_MD5=
# Fri, 04 Aug 2017 18:48:32 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 04 Aug 2017 18:48:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:52:50 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 04 Aug 2017 18:52:54 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:52:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 04 Aug 2017 18:52:55 GMT
CMD ["php" "-a"]
# Tue, 08 Aug 2017 16:28:29 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash zlib-dev
# Tue, 08 Aug 2017 16:28:29 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Tue, 08 Aug 2017 16:28:52 GMT
RUN docker-php-ext-install zip
# Tue, 08 Aug 2017 16:29:05 GMT
ENV PATH=/composer/vendor/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Aug 2017 16:29:06 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 08 Aug 2017 16:29:06 GMT
ENV COMPOSER_HOME=/composer
# Tue, 08 Aug 2017 16:30:07 GMT
ENV COMPOSER_VERSION=1.1.3
# Tue, 08 Aug 2017 16:30:10 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/9184c4b85ed6ada94a298cf54e55cc252c970c28/web/installer  && php -r "     \$signature = 'aa96f26c2b67226a324c27919f1eb05f21c248b987e6195cad9690d5c1ff713d53020a02ac8c217dbf90a7eacc9d141d';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && rm /tmp/installer.php  && composer --ansi --version --no-interaction
# Tue, 08 Aug 2017 16:30:10 GMT
COPY file:0b943ec33b364492b10e7a774becd40d3fec03eb7db67cc0528769b329117e32 in /docker-entrypoint.sh 
# Tue, 08 Aug 2017 16:30:11 GMT
WORKDIR /app
# Tue, 08 Aug 2017 16:30:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Aug 2017 16:30:11 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ae35d047425948b630f791a9a74d50ebb54f782bf01d3bcd74a2ed98313067`  
		Last Modified: Thu, 29 Jun 2017 01:50:27 GMT  
		Size: 1.1 MB (1081313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d34c9ec14365563dff516a583c4122f35a19016a83cc9cd333ad5a62f9a705b`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729ea35b870d89fe556e628075b41809b7e889d5858be4cffdd7ac98c2bee7ef`  
		Last Modified: Thu, 29 Jun 2017 01:50:25 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d752ac91e1a127e1b339c7767c3ac036de37d64c8707821f3c323f5f1a52c1`  
		Last Modified: Fri, 04 Aug 2017 19:21:13 GMT  
		Size: 13.0 MB (13048543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbfd291d6e6639177d212d163756f9465c1c373c26b758833e079d71d28c0cc`  
		Last Modified: Fri, 04 Aug 2017 19:21:12 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00c26f9c0957681573742084c0f61ec95b5744c2aa06e931726d829ca85d9b0`  
		Last Modified: Fri, 04 Aug 2017 19:21:16 GMT  
		Size: 10.7 MB (10701912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e215f5fd3f56bf186c95e25214c0607b62819db63d3ac7e70319d9532135a518`  
		Last Modified: Fri, 04 Aug 2017 19:21:12 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663375dd6198ce53463d7b2abc7a64bade38c0e2bae6668d00b27ce3fb52a8c4`  
		Last Modified: Tue, 08 Aug 2017 16:30:27 GMT  
		Size: 28.4 MB (28368900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c410e718e8a3bf256e134d3fdc84cb827d7859a940be01a62351ae2e813e9c`  
		Last Modified: Tue, 08 Aug 2017 16:30:18 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00e2a1640702ace2465d8cb6d48ebd27e29c563e06d070ace94255f8a27a1ce`  
		Last Modified: Tue, 08 Aug 2017 16:30:19 GMT  
		Size: 219.4 KB (219394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7684c1bc8b5b4c02d285f4d4d2ec8b87eb622f50deb591752af4678c05408e`  
		Last Modified: Tue, 08 Aug 2017 16:31:31 GMT  
		Size: 438.6 KB (438631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989ff9a5e527c1a94549d0b2860552d35a5cb7ef77c08f246b5932a9ea88ba86`  
		Last Modified: Tue, 08 Aug 2017 16:31:30 GMT  
		Size: 530.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca3c97fc1c6af195f88280b3a5cc024d9d8c4ccea60b03bc765740a5a2f7374`  
		Last Modified: Tue, 08 Aug 2017 16:31:30 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
