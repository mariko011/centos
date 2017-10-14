## `php:rc-zts-alpine`

```console
$ docker pull php@sha256:96b8659c07ee7e1502488f4589a17de12c666387f2720bbba6e9b6fe9eacfe23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php:rc-zts-alpine` - linux; amd64

```console
$ docker pull php@sha256:1502d321384f2e475a35fe77b4c4c114ac1d30d5424a78717a13b589874872fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 MB (28167461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46962e2c43dfab7798e528b5ce35650fc46c5652d515739eff503a0321a53fa7`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 23:34:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Wed, 27 Sep 2017 21:03:47 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 27 Sep 2017 21:03:48 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 27 Sep 2017 21:03:48 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Sep 2017 21:03:48 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 27 Sep 2017 21:20:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts
# Wed, 27 Sep 2017 21:20:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Sep 2017 21:20:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Sep 2017 21:20:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Sep 2017 21:20:54 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 12 Oct 2017 22:56:43 GMT
ENV PHP_VERSION=7.2.0RC4
# Thu, 12 Oct 2017 22:56:43 GMT
ENV PHP_URL=https://downloads.php.net/~remi/php-7.2.0RC4.tar.xz PHP_ASC_URL=https://downloads.php.net/~remi/php-7.2.0RC4.tar.xz.asc
# Thu, 12 Oct 2017 22:56:43 GMT
ENV PHP_SHA256=08ee9e764891224d73f157e01594605fc85c63ffc9d4773d9ac29b0e3160c68f PHP_MD5=
# Sat, 14 Oct 2017 00:59:18 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 14 Oct 2017 00:59:18 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 14 Oct 2017 01:03:44 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 14 Oct 2017 01:07:41 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Sat, 14 Oct 2017 01:07:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 14 Oct 2017 01:07:42 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc619ec5037e3de315afe796d462dcc277556bf72975ee0efa11e858b6849d3`  
		Last Modified: Wed, 27 Sep 2017 22:24:09 GMT  
		Size: 1.4 MB (1370282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e276a47a1d7d82fda6eb7fd4b5dbab50f2d148cb15248c28bf90c84bcf740f`  
		Last Modified: Wed, 27 Sep 2017 22:24:06 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c812c22857bd26153e34274d91009c5c196fa09a445bd6437ec80f5d792c7b77`  
		Last Modified: Wed, 27 Sep 2017 22:24:04 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a1f2cd28e4653c410f6fa4973ac09080f4b3c4bfb023beedf8252453d04152`  
		Last Modified: Sat, 14 Oct 2017 01:08:50 GMT  
		Size: 12.0 MB (11999948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c015f46f01ac69f97e3a6b5de9916fc251b3a7530456db4ab8f5c3ca83291a`  
		Last Modified: Sat, 14 Oct 2017 01:08:49 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cccc2aebc57035f52c60898b36d9107bc1646918ac1091283a0170903ad24478`  
		Last Modified: Sat, 14 Oct 2017 01:08:54 GMT  
		Size: 12.8 MB (12802750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55da9e2528cbcd2ebedcc8bf921a1850a725860c7619dbcfb8f3bc47211608da`  
		Last Modified: Sat, 14 Oct 2017 01:08:49 GMT  
		Size: 2.2 KB (2163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
