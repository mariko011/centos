## `php:5-zts-alpine`

```console
$ docker pull php@sha256:e95262a95595d4a8b3408cf616bf70e3bbd5585c97c3af3cae5896a7bd2cc918
```

-	Platforms:
	-	linux; amd64

### `php:5-zts-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (22956144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4570220eccf076c2b16df56d702b13363fdf482618a07da908199630a3e2b0d`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 21:17:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 18 Oct 2016 21:17:35 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 18 Oct 2016 21:17:36 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 18 Oct 2016 21:17:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 18 Oct 2016 21:17:37 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 18 Oct 2016 21:37:24 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts
# Wed, 14 Dec 2016 15:12:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 15:12:32 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 15:12:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 16:12:24 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 16:12:24 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 16:12:24 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 16:12:24 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 16:14:43 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 14 Dec 2016 16:14:44 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 16:18:06 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Wed, 14 Dec 2016 16:18:07 GMT
COPY multi:63f3f133271448127a56d400bfeecd1ab617d6e67215b9f497baf80e5d4550d1 in /usr/local/bin/ 
# Wed, 14 Dec 2016 16:18:07 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67654b7bd8a6f817e849f77cd102331617f4e2394feeae4f77f8683b9b466ed9`  
		Last Modified: Tue, 18 Oct 2016 22:37:25 GMT  
		Size: 1.0 MB (1048149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c453327105c5d394a206069893aa1527b7cc4e58699b4a4b0c2453f5b02a7f`  
		Last Modified: Tue, 18 Oct 2016 22:37:23 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:481e68959c15a56029b84021fca8cce378aaa0aa08837e08878bbddc694e798c`  
		Last Modified: Tue, 18 Oct 2016 22:37:22 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ac6656f8fbfa361cec9f14865f44723ad41753876c62a74bf8eb204f7c4597`  
		Last Modified: Wed, 14 Dec 2016 16:39:51 GMT  
		Size: 12.6 MB (12617821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9288d9dee0bae972327f31031e4e5538bb23717f81b55c649f239d5216d783c2`  
		Last Modified: Wed, 14 Dec 2016 16:39:49 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f6719eaab42cbf5aea31045a452d84c01bef55d9c15bcb224cceaaf61c4556`  
		Last Modified: Wed, 14 Dec 2016 16:39:51 GMT  
		Size: 7.0 MB (6973377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d217b19d2d87e2601f146019c3f4ed5f36df32191c7fe2e994ca67737f336faa`  
		Last Modified: Wed, 14 Dec 2016 16:39:48 GMT  
		Size: 1.9 KB (1919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
