<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `composer`

-	[`composer:1.4.2`](#composer142)
-	[`composer:1.4`](#composer14)
-	[`composer:1`](#composer1)
-	[`composer:latest`](#composerlatest)
-	[`composer:1.3.3`](#composer133)
-	[`composer:1.3`](#composer13)

## `composer:1.4.2`

```console
$ docker pull composer@sha256:03481d80003e06e7e847cbae6ebb59415c98651edc492aae2b0135ec3a401aa5
```

-	Platforms:
	-	linux; amd64

### `composer:1.4.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.9 MB (55927799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c0749057f4a3e0b3bc88b4baa1d70b2002d33d02b99f1de450ccab56105e85e`
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
# Mon, 10 Jul 2017 17:10:36 GMT
ENV PHP_VERSION=7.1.7
# Mon, 10 Jul 2017 17:10:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.7.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.7.tar.xz.asc/from/this/mirror
# Mon, 10 Jul 2017 17:10:37 GMT
ENV PHP_SHA256=0d42089729be7b2bb0308cbe189c2782f9cb4b07078c8a235495be5874fff729 PHP_MD5=
# Thu, 13 Jul 2017 17:30:30 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 13 Jul 2017 17:30:30 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 13 Jul 2017 17:34:06 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 13 Jul 2017 17:34:08 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Thu, 13 Jul 2017 17:34:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 13 Jul 2017 17:34:09 GMT
CMD ["php" "-a"]
# Fri, 21 Jul 2017 16:23:24 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash
# Fri, 21 Jul 2017 16:23:25 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Fri, 21 Jul 2017 16:23:26 GMT
ENV PATH=/composer/vendor/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Jul 2017 16:23:26 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 21 Jul 2017 16:23:27 GMT
ENV COMPOSER_HOME=/composer
# Fri, 21 Jul 2017 16:23:42 GMT
ENV COMPOSER_VERSION=1.4.2
# Fri, 21 Jul 2017 16:23:45 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/da290238de6d63faace0343efbdd5aa9354332c5/web/installer  && php -r "     \$signature = '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && rm /tmp/installer.php  && composer --ansi --version --no-interaction
# Fri, 21 Jul 2017 16:23:46 GMT
COPY file:0b943ec33b364492b10e7a774becd40d3fec03eb7db67cc0528769b329117e32 in /docker-entrypoint.sh 
# Fri, 21 Jul 2017 16:23:46 GMT
WORKDIR /app
# Fri, 21 Jul 2017 16:23:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Jul 2017 16:23:47 GMT
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
	-	`sha256:2bd1dfd41a4d1e7bae3e4de87d6432cfa43fe1bfe9b62077399d982bb117092c`  
		Last Modified: Thu, 13 Jul 2017 19:04:55 GMT  
		Size: 13.0 MB (13005186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abf20ddd3a064e0bc4a4de98f1046be92ad9caf947f063f779ede6e6536577e`  
		Last Modified: Thu, 13 Jul 2017 19:04:53 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9f960202bfd194bf748a08a8a07591c472d218ea08b5eae6e30deaf2dbd5fb`  
		Last Modified: Thu, 13 Jul 2017 19:04:56 GMT  
		Size: 10.7 MB (10701723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50fe36e6b385e7842d633faafda93eac96989d5bc9e0f9cbf8737e0d1402011`  
		Last Modified: Thu, 13 Jul 2017 19:04:53 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d86de2e7f96ac76c9d845713731668948ebdcc42d7fe1d9ab8b5d4f170cc093`  
		Last Modified: Fri, 21 Jul 2017 16:24:04 GMT  
		Size: 28.3 MB (28260180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d99b052056e9505700c143657147756fadfd7dbe986c410b4a4f9a83a51655`  
		Last Modified: Fri, 21 Jul 2017 16:23:59 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9402fccae21cd6c3a9bd85727492e95d041e02514cfcd027ff68a09115c36db3`  
		Last Modified: Fri, 21 Jul 2017 16:24:31 GMT  
		Size: 489.5 KB (489477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a554e9fc5c87fba0123551edece894287deb2b51342409195d8acdadf5e6f42c`  
		Last Modified: Fri, 21 Jul 2017 16:24:31 GMT  
		Size: 530.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a133c574c20234d6a8c58ffd396aee62c27c30f878776965f11db91e46064b3`  
		Last Modified: Fri, 21 Jul 2017 16:24:31 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `composer:1.4`

```console
$ docker pull composer@sha256:03481d80003e06e7e847cbae6ebb59415c98651edc492aae2b0135ec3a401aa5
```

-	Platforms:
	-	linux; amd64

### `composer:1.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.9 MB (55927799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c0749057f4a3e0b3bc88b4baa1d70b2002d33d02b99f1de450ccab56105e85e`
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
# Mon, 10 Jul 2017 17:10:36 GMT
ENV PHP_VERSION=7.1.7
# Mon, 10 Jul 2017 17:10:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.7.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.7.tar.xz.asc/from/this/mirror
# Mon, 10 Jul 2017 17:10:37 GMT
ENV PHP_SHA256=0d42089729be7b2bb0308cbe189c2782f9cb4b07078c8a235495be5874fff729 PHP_MD5=
# Thu, 13 Jul 2017 17:30:30 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 13 Jul 2017 17:30:30 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 13 Jul 2017 17:34:06 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 13 Jul 2017 17:34:08 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Thu, 13 Jul 2017 17:34:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 13 Jul 2017 17:34:09 GMT
CMD ["php" "-a"]
# Fri, 21 Jul 2017 16:23:24 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash
# Fri, 21 Jul 2017 16:23:25 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Fri, 21 Jul 2017 16:23:26 GMT
ENV PATH=/composer/vendor/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Jul 2017 16:23:26 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 21 Jul 2017 16:23:27 GMT
ENV COMPOSER_HOME=/composer
# Fri, 21 Jul 2017 16:23:42 GMT
ENV COMPOSER_VERSION=1.4.2
# Fri, 21 Jul 2017 16:23:45 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/da290238de6d63faace0343efbdd5aa9354332c5/web/installer  && php -r "     \$signature = '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && rm /tmp/installer.php  && composer --ansi --version --no-interaction
# Fri, 21 Jul 2017 16:23:46 GMT
COPY file:0b943ec33b364492b10e7a774becd40d3fec03eb7db67cc0528769b329117e32 in /docker-entrypoint.sh 
# Fri, 21 Jul 2017 16:23:46 GMT
WORKDIR /app
# Fri, 21 Jul 2017 16:23:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Jul 2017 16:23:47 GMT
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
	-	`sha256:2bd1dfd41a4d1e7bae3e4de87d6432cfa43fe1bfe9b62077399d982bb117092c`  
		Last Modified: Thu, 13 Jul 2017 19:04:55 GMT  
		Size: 13.0 MB (13005186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abf20ddd3a064e0bc4a4de98f1046be92ad9caf947f063f779ede6e6536577e`  
		Last Modified: Thu, 13 Jul 2017 19:04:53 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9f960202bfd194bf748a08a8a07591c472d218ea08b5eae6e30deaf2dbd5fb`  
		Last Modified: Thu, 13 Jul 2017 19:04:56 GMT  
		Size: 10.7 MB (10701723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50fe36e6b385e7842d633faafda93eac96989d5bc9e0f9cbf8737e0d1402011`  
		Last Modified: Thu, 13 Jul 2017 19:04:53 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d86de2e7f96ac76c9d845713731668948ebdcc42d7fe1d9ab8b5d4f170cc093`  
		Last Modified: Fri, 21 Jul 2017 16:24:04 GMT  
		Size: 28.3 MB (28260180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d99b052056e9505700c143657147756fadfd7dbe986c410b4a4f9a83a51655`  
		Last Modified: Fri, 21 Jul 2017 16:23:59 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9402fccae21cd6c3a9bd85727492e95d041e02514cfcd027ff68a09115c36db3`  
		Last Modified: Fri, 21 Jul 2017 16:24:31 GMT  
		Size: 489.5 KB (489477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a554e9fc5c87fba0123551edece894287deb2b51342409195d8acdadf5e6f42c`  
		Last Modified: Fri, 21 Jul 2017 16:24:31 GMT  
		Size: 530.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a133c574c20234d6a8c58ffd396aee62c27c30f878776965f11db91e46064b3`  
		Last Modified: Fri, 21 Jul 2017 16:24:31 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `composer:1`

```console
$ docker pull composer@sha256:03481d80003e06e7e847cbae6ebb59415c98651edc492aae2b0135ec3a401aa5
```

-	Platforms:
	-	linux; amd64

### `composer:1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.9 MB (55927799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c0749057f4a3e0b3bc88b4baa1d70b2002d33d02b99f1de450ccab56105e85e`
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
# Mon, 10 Jul 2017 17:10:36 GMT
ENV PHP_VERSION=7.1.7
# Mon, 10 Jul 2017 17:10:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.7.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.7.tar.xz.asc/from/this/mirror
# Mon, 10 Jul 2017 17:10:37 GMT
ENV PHP_SHA256=0d42089729be7b2bb0308cbe189c2782f9cb4b07078c8a235495be5874fff729 PHP_MD5=
# Thu, 13 Jul 2017 17:30:30 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 13 Jul 2017 17:30:30 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 13 Jul 2017 17:34:06 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 13 Jul 2017 17:34:08 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Thu, 13 Jul 2017 17:34:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 13 Jul 2017 17:34:09 GMT
CMD ["php" "-a"]
# Fri, 21 Jul 2017 16:23:24 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash
# Fri, 21 Jul 2017 16:23:25 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Fri, 21 Jul 2017 16:23:26 GMT
ENV PATH=/composer/vendor/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Jul 2017 16:23:26 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 21 Jul 2017 16:23:27 GMT
ENV COMPOSER_HOME=/composer
# Fri, 21 Jul 2017 16:23:42 GMT
ENV COMPOSER_VERSION=1.4.2
# Fri, 21 Jul 2017 16:23:45 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/da290238de6d63faace0343efbdd5aa9354332c5/web/installer  && php -r "     \$signature = '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && rm /tmp/installer.php  && composer --ansi --version --no-interaction
# Fri, 21 Jul 2017 16:23:46 GMT
COPY file:0b943ec33b364492b10e7a774becd40d3fec03eb7db67cc0528769b329117e32 in /docker-entrypoint.sh 
# Fri, 21 Jul 2017 16:23:46 GMT
WORKDIR /app
# Fri, 21 Jul 2017 16:23:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Jul 2017 16:23:47 GMT
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
	-	`sha256:2bd1dfd41a4d1e7bae3e4de87d6432cfa43fe1bfe9b62077399d982bb117092c`  
		Last Modified: Thu, 13 Jul 2017 19:04:55 GMT  
		Size: 13.0 MB (13005186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abf20ddd3a064e0bc4a4de98f1046be92ad9caf947f063f779ede6e6536577e`  
		Last Modified: Thu, 13 Jul 2017 19:04:53 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9f960202bfd194bf748a08a8a07591c472d218ea08b5eae6e30deaf2dbd5fb`  
		Last Modified: Thu, 13 Jul 2017 19:04:56 GMT  
		Size: 10.7 MB (10701723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50fe36e6b385e7842d633faafda93eac96989d5bc9e0f9cbf8737e0d1402011`  
		Last Modified: Thu, 13 Jul 2017 19:04:53 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d86de2e7f96ac76c9d845713731668948ebdcc42d7fe1d9ab8b5d4f170cc093`  
		Last Modified: Fri, 21 Jul 2017 16:24:04 GMT  
		Size: 28.3 MB (28260180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d99b052056e9505700c143657147756fadfd7dbe986c410b4a4f9a83a51655`  
		Last Modified: Fri, 21 Jul 2017 16:23:59 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9402fccae21cd6c3a9bd85727492e95d041e02514cfcd027ff68a09115c36db3`  
		Last Modified: Fri, 21 Jul 2017 16:24:31 GMT  
		Size: 489.5 KB (489477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a554e9fc5c87fba0123551edece894287deb2b51342409195d8acdadf5e6f42c`  
		Last Modified: Fri, 21 Jul 2017 16:24:31 GMT  
		Size: 530.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a133c574c20234d6a8c58ffd396aee62c27c30f878776965f11db91e46064b3`  
		Last Modified: Fri, 21 Jul 2017 16:24:31 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `composer:latest`

```console
$ docker pull composer@sha256:03481d80003e06e7e847cbae6ebb59415c98651edc492aae2b0135ec3a401aa5
```

-	Platforms:
	-	linux; amd64

### `composer:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.9 MB (55927799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c0749057f4a3e0b3bc88b4baa1d70b2002d33d02b99f1de450ccab56105e85e`
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
# Mon, 10 Jul 2017 17:10:36 GMT
ENV PHP_VERSION=7.1.7
# Mon, 10 Jul 2017 17:10:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.7.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.7.tar.xz.asc/from/this/mirror
# Mon, 10 Jul 2017 17:10:37 GMT
ENV PHP_SHA256=0d42089729be7b2bb0308cbe189c2782f9cb4b07078c8a235495be5874fff729 PHP_MD5=
# Thu, 13 Jul 2017 17:30:30 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 13 Jul 2017 17:30:30 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 13 Jul 2017 17:34:06 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 13 Jul 2017 17:34:08 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Thu, 13 Jul 2017 17:34:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 13 Jul 2017 17:34:09 GMT
CMD ["php" "-a"]
# Fri, 21 Jul 2017 16:23:24 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash
# Fri, 21 Jul 2017 16:23:25 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Fri, 21 Jul 2017 16:23:26 GMT
ENV PATH=/composer/vendor/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Jul 2017 16:23:26 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 21 Jul 2017 16:23:27 GMT
ENV COMPOSER_HOME=/composer
# Fri, 21 Jul 2017 16:23:42 GMT
ENV COMPOSER_VERSION=1.4.2
# Fri, 21 Jul 2017 16:23:45 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/da290238de6d63faace0343efbdd5aa9354332c5/web/installer  && php -r "     \$signature = '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && rm /tmp/installer.php  && composer --ansi --version --no-interaction
# Fri, 21 Jul 2017 16:23:46 GMT
COPY file:0b943ec33b364492b10e7a774becd40d3fec03eb7db67cc0528769b329117e32 in /docker-entrypoint.sh 
# Fri, 21 Jul 2017 16:23:46 GMT
WORKDIR /app
# Fri, 21 Jul 2017 16:23:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Jul 2017 16:23:47 GMT
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
	-	`sha256:2bd1dfd41a4d1e7bae3e4de87d6432cfa43fe1bfe9b62077399d982bb117092c`  
		Last Modified: Thu, 13 Jul 2017 19:04:55 GMT  
		Size: 13.0 MB (13005186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abf20ddd3a064e0bc4a4de98f1046be92ad9caf947f063f779ede6e6536577e`  
		Last Modified: Thu, 13 Jul 2017 19:04:53 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9f960202bfd194bf748a08a8a07591c472d218ea08b5eae6e30deaf2dbd5fb`  
		Last Modified: Thu, 13 Jul 2017 19:04:56 GMT  
		Size: 10.7 MB (10701723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50fe36e6b385e7842d633faafda93eac96989d5bc9e0f9cbf8737e0d1402011`  
		Last Modified: Thu, 13 Jul 2017 19:04:53 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d86de2e7f96ac76c9d845713731668948ebdcc42d7fe1d9ab8b5d4f170cc093`  
		Last Modified: Fri, 21 Jul 2017 16:24:04 GMT  
		Size: 28.3 MB (28260180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d99b052056e9505700c143657147756fadfd7dbe986c410b4a4f9a83a51655`  
		Last Modified: Fri, 21 Jul 2017 16:23:59 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9402fccae21cd6c3a9bd85727492e95d041e02514cfcd027ff68a09115c36db3`  
		Last Modified: Fri, 21 Jul 2017 16:24:31 GMT  
		Size: 489.5 KB (489477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a554e9fc5c87fba0123551edece894287deb2b51342409195d8acdadf5e6f42c`  
		Last Modified: Fri, 21 Jul 2017 16:24:31 GMT  
		Size: 530.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a133c574c20234d6a8c58ffd396aee62c27c30f878776965f11db91e46064b3`  
		Last Modified: Fri, 21 Jul 2017 16:24:31 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `composer:1.3.3`

```console
$ docker pull composer@sha256:36a7312f1472d5b8a89225c82aae0e601e234d5a550a03517a66c4baa7c9eee1
```

-	Platforms:
	-	linux; amd64

### `composer:1.3.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.9 MB (55925762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb61eb6a403907a15b46cad06f32196d815d392115b6c21ad796ec4ed6db0a3`
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
# Mon, 10 Jul 2017 17:10:36 GMT
ENV PHP_VERSION=7.1.7
# Mon, 10 Jul 2017 17:10:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.7.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.7.tar.xz.asc/from/this/mirror
# Mon, 10 Jul 2017 17:10:37 GMT
ENV PHP_SHA256=0d42089729be7b2bb0308cbe189c2782f9cb4b07078c8a235495be5874fff729 PHP_MD5=
# Thu, 13 Jul 2017 17:30:30 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 13 Jul 2017 17:30:30 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 13 Jul 2017 17:34:06 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 13 Jul 2017 17:34:08 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Thu, 13 Jul 2017 17:34:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 13 Jul 2017 17:34:09 GMT
CMD ["php" "-a"]
# Fri, 21 Jul 2017 16:23:24 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash
# Fri, 21 Jul 2017 16:23:25 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Fri, 21 Jul 2017 16:23:26 GMT
ENV PATH=/composer/vendor/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Jul 2017 16:23:26 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 21 Jul 2017 16:23:27 GMT
ENV COMPOSER_HOME=/composer
# Fri, 21 Jul 2017 16:23:27 GMT
ENV COMPOSER_VERSION=1.3.3
# Fri, 21 Jul 2017 16:23:31 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/da290238de6d63faace0343efbdd5aa9354332c5/web/installer  && php -r "     \$signature = '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && rm /tmp/installer.php  && composer --ansi --version --no-interaction
# Fri, 21 Jul 2017 16:23:32 GMT
COPY file:0b943ec33b364492b10e7a774becd40d3fec03eb7db67cc0528769b329117e32 in /docker-entrypoint.sh 
# Fri, 21 Jul 2017 16:23:32 GMT
WORKDIR /app
# Fri, 21 Jul 2017 16:23:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Jul 2017 16:23:33 GMT
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
	-	`sha256:2bd1dfd41a4d1e7bae3e4de87d6432cfa43fe1bfe9b62077399d982bb117092c`  
		Last Modified: Thu, 13 Jul 2017 19:04:55 GMT  
		Size: 13.0 MB (13005186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abf20ddd3a064e0bc4a4de98f1046be92ad9caf947f063f779ede6e6536577e`  
		Last Modified: Thu, 13 Jul 2017 19:04:53 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9f960202bfd194bf748a08a8a07591c472d218ea08b5eae6e30deaf2dbd5fb`  
		Last Modified: Thu, 13 Jul 2017 19:04:56 GMT  
		Size: 10.7 MB (10701723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50fe36e6b385e7842d633faafda93eac96989d5bc9e0f9cbf8737e0d1402011`  
		Last Modified: Thu, 13 Jul 2017 19:04:53 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d86de2e7f96ac76c9d845713731668948ebdcc42d7fe1d9ab8b5d4f170cc093`  
		Last Modified: Fri, 21 Jul 2017 16:24:04 GMT  
		Size: 28.3 MB (28260180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d99b052056e9505700c143657147756fadfd7dbe986c410b4a4f9a83a51655`  
		Last Modified: Fri, 21 Jul 2017 16:23:59 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ffadf94d43c430a9c95a981b611a32c9a71a90754add2634de095fdfec44cbc`  
		Last Modified: Fri, 21 Jul 2017 16:23:59 GMT  
		Size: 487.4 KB (487439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c3ff173e4e7da873be1d48c2b770e55a0058737563a63ee9e43879450e3833`  
		Last Modified: Fri, 21 Jul 2017 16:23:59 GMT  
		Size: 531.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f39ef2648a5915ccebca7de61fd73414507f3067dfdae5fa920ff10cf9d6adb`  
		Last Modified: Fri, 21 Jul 2017 16:23:59 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `composer:1.3`

```console
$ docker pull composer@sha256:36a7312f1472d5b8a89225c82aae0e601e234d5a550a03517a66c4baa7c9eee1
```

-	Platforms:
	-	linux; amd64

### `composer:1.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.9 MB (55925762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb61eb6a403907a15b46cad06f32196d815d392115b6c21ad796ec4ed6db0a3`
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
# Mon, 10 Jul 2017 17:10:36 GMT
ENV PHP_VERSION=7.1.7
# Mon, 10 Jul 2017 17:10:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.7.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.7.tar.xz.asc/from/this/mirror
# Mon, 10 Jul 2017 17:10:37 GMT
ENV PHP_SHA256=0d42089729be7b2bb0308cbe189c2782f9cb4b07078c8a235495be5874fff729 PHP_MD5=
# Thu, 13 Jul 2017 17:30:30 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 13 Jul 2017 17:30:30 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 13 Jul 2017 17:34:06 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 13 Jul 2017 17:34:08 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Thu, 13 Jul 2017 17:34:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 13 Jul 2017 17:34:09 GMT
CMD ["php" "-a"]
# Fri, 21 Jul 2017 16:23:24 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash
# Fri, 21 Jul 2017 16:23:25 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Fri, 21 Jul 2017 16:23:26 GMT
ENV PATH=/composer/vendor/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Jul 2017 16:23:26 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 21 Jul 2017 16:23:27 GMT
ENV COMPOSER_HOME=/composer
# Fri, 21 Jul 2017 16:23:27 GMT
ENV COMPOSER_VERSION=1.3.3
# Fri, 21 Jul 2017 16:23:31 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/da290238de6d63faace0343efbdd5aa9354332c5/web/installer  && php -r "     \$signature = '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && rm /tmp/installer.php  && composer --ansi --version --no-interaction
# Fri, 21 Jul 2017 16:23:32 GMT
COPY file:0b943ec33b364492b10e7a774becd40d3fec03eb7db67cc0528769b329117e32 in /docker-entrypoint.sh 
# Fri, 21 Jul 2017 16:23:32 GMT
WORKDIR /app
# Fri, 21 Jul 2017 16:23:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Jul 2017 16:23:33 GMT
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
	-	`sha256:2bd1dfd41a4d1e7bae3e4de87d6432cfa43fe1bfe9b62077399d982bb117092c`  
		Last Modified: Thu, 13 Jul 2017 19:04:55 GMT  
		Size: 13.0 MB (13005186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abf20ddd3a064e0bc4a4de98f1046be92ad9caf947f063f779ede6e6536577e`  
		Last Modified: Thu, 13 Jul 2017 19:04:53 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9f960202bfd194bf748a08a8a07591c472d218ea08b5eae6e30deaf2dbd5fb`  
		Last Modified: Thu, 13 Jul 2017 19:04:56 GMT  
		Size: 10.7 MB (10701723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50fe36e6b385e7842d633faafda93eac96989d5bc9e0f9cbf8737e0d1402011`  
		Last Modified: Thu, 13 Jul 2017 19:04:53 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d86de2e7f96ac76c9d845713731668948ebdcc42d7fe1d9ab8b5d4f170cc093`  
		Last Modified: Fri, 21 Jul 2017 16:24:04 GMT  
		Size: 28.3 MB (28260180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d99b052056e9505700c143657147756fadfd7dbe986c410b4a4f9a83a51655`  
		Last Modified: Fri, 21 Jul 2017 16:23:59 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ffadf94d43c430a9c95a981b611a32c9a71a90754add2634de095fdfec44cbc`  
		Last Modified: Fri, 21 Jul 2017 16:23:59 GMT  
		Size: 487.4 KB (487439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c3ff173e4e7da873be1d48c2b770e55a0058737563a63ee9e43879450e3833`  
		Last Modified: Fri, 21 Jul 2017 16:23:59 GMT  
		Size: 531.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f39ef2648a5915ccebca7de61fd73414507f3067dfdae5fa920ff10cf9d6adb`  
		Last Modified: Fri, 21 Jul 2017 16:23:59 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
