## `composer:latest`

```console
$ docker pull composer@sha256:b497d9c8154d9a175fbf2b0293989b4c650daf8950e34a019d7c44188d8205b3
```

-	Platforms:
	-	linux; amd64

### `composer:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.0 MB (55971309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12bf555d0c0800a1e345c8cb1bc2b124f1621f20c14bad1e05e0fb3e41fd79d4`
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
# Fri, 04 Aug 2017 22:07:00 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash
# Fri, 04 Aug 2017 22:07:01 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Fri, 04 Aug 2017 22:07:01 GMT
ENV PATH=/composer/vendor/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Aug 2017 22:07:01 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 04 Aug 2017 22:07:02 GMT
ENV COMPOSER_HOME=/composer
# Fri, 04 Aug 2017 22:07:10 GMT
ENV COMPOSER_VERSION=1.4.2
# Fri, 04 Aug 2017 22:07:23 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/da290238de6d63faace0343efbdd5aa9354332c5/web/installer  && php -r "     \$signature = '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && rm /tmp/installer.php  && composer --ansi --version --no-interaction
# Fri, 04 Aug 2017 22:07:24 GMT
COPY file:0b943ec33b364492b10e7a774becd40d3fec03eb7db67cc0528769b329117e32 in /docker-entrypoint.sh 
# Fri, 04 Aug 2017 22:07:24 GMT
WORKDIR /app
# Fri, 04 Aug 2017 22:07:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 04 Aug 2017 22:07:25 GMT
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
	-	`sha256:4178beef6460fc1464f69ef3cd63e4e781f62c01ce1144bcfeec99a21069b3ee`  
		Last Modified: Fri, 04 Aug 2017 22:07:36 GMT  
		Size: 28.3 MB (28260138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf65c8d602f9c5109f9bd55a0ff4a55e34a47df299712cc1dc0bf3eef7147e17`  
		Last Modified: Fri, 04 Aug 2017 22:07:31 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a157c70eaeb6e4f7874f578b862bc9ab485a73aa8a245ff9ae051bff3356a2`  
		Last Modified: Fri, 04 Aug 2017 22:07:53 GMT  
		Size: 489.5 KB (489478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:345a0494b7438e6e4c6a3aaf886a6a7e06d209f4cd92cf8ea652e58746caa444`  
		Last Modified: Fri, 04 Aug 2017 22:07:53 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01f268cd17a993c17816f4aecef34bb1ed3dcdd26b611d077d042713734ef08`  
		Last Modified: Fri, 04 Aug 2017 22:07:53 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
