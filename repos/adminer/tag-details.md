<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `adminer`

-	[`adminer:4.2.5-standalone`](#adminer425-standalone)
-	[`adminer:4.2-standalone`](#adminer42-standalone)
-	[`adminer:4-standalone`](#adminer4-standalone)
-	[`adminer:standalone`](#adminerstandalone)
-	[`adminer:4.2.5`](#adminer425)
-	[`adminer:4.2`](#adminer42)
-	[`adminer:4`](#adminer4)
-	[`adminer:latest`](#adminerlatest)
-	[`adminer:4.2.5-fastcgi`](#adminer425-fastcgi)
-	[`adminer:4.2-fastcgi`](#adminer42-fastcgi)
-	[`adminer:4-fastcgi`](#adminer4-fastcgi)
-	[`adminer:fastcgi`](#adminerfastcgi)

## `adminer:4.2.5-standalone`

```console
$ docker pull adminer@sha256:47c56792007f6f11680eb70a3932236d24d6e5a1b77b763c1da0c3e83ba9f941
```

-	Platforms:
	-	linux; amd64

### `adminer:4.2.5-standalone` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27855105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:738b66a8ed919e0c2e575b141efa7d104556f4ac946480d2c524088dd70672fc`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-S","0.0.0.0:8080","-t","\/var\/www\/html"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:39:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:39:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:39:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 23:01:17 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 03 Mar 2017 23:01:17 GMT
ENV PHP_VERSION=7.0.16
# Fri, 03 Mar 2017 23:01:18 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 23:01:18 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Fri, 03 Mar 2017 23:01:23 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 23:01:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:04:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 23:04:52 GMT
COPY multi:b2b2a1a4e3c0f0bb8ebdcd527fca158bfce5138468926263f86e5bb0cb41970f in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:04:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 23:04:53 GMT
CMD ["php" "-a"]
# Fri, 03 Mar 2017 23:57:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html
# Fri, 03 Mar 2017 23:57:19 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 23:57:20 GMT
RUN apk add --no-cache libpq
# Fri, 03 Mar 2017 23:57:35 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 03 Mar 2017 23:57:36 GMT
COPY file:8d804cd4dbc8e04fad8dda195fab620d76fe48011fc89db3f1cdf6994204b0f7 in . 
# Fri, 03 Mar 2017 23:57:36 GMT
ENV ADMINER_VERSION=4.2.5
# Fri, 03 Mar 2017 23:57:36 GMT
ENV ADMINER_DOWNLOAD_SHA256=a8d9f5df8a604e75e87670bc1d797bb49cc1047f722a8630bda514fdc407f84f
# Fri, 03 Mar 2017 23:57:39 GMT
RUN curl -fsSL https://www.adminer.org/static/download/$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c -
# Fri, 03 Mar 2017 23:57:39 GMT
USER [adminer]
# Fri, 03 Mar 2017 23:57:39 GMT
CMD ["php" "-S" "0.0.0.0:8080" "-t" "/var/www/html"]
# Fri, 03 Mar 2017 23:57:40 GMT
EXPOSE 8080/tcp
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad04e3b8326406378bcdd957b9969aa9fa8c8a34cac8dcf9b0844ba988061c1`  
		Last Modified: Sat, 04 Mar 2017 02:07:46 GMT  
		Size: 12.8 MB (12763023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a561348cecce89a9b8e73b7c58d0cab0d2365dd5fa23ccdd629dc391a31d59`  
		Last Modified: Sat, 04 Mar 2017 02:07:44 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3cd877e7b67d24c6bc7a20daaf4aefb9223bbe7b3da7b24ee8238de62216b9`  
		Last Modified: Sat, 04 Mar 2017 02:07:52 GMT  
		Size: 10.3 MB (10299847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61958988dd27d8bbada12a1c9f95714501b5c2b43da72ae5b7f43906efb1669`  
		Last Modified: Sat, 04 Mar 2017 02:07:43 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade64f0692f34a991f61d3808cf14cbfa7b249ca332d109bde4118766d811606`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c12263a96e45d7da9cbcc686f3722b9095fda00e9f024e19abe96749a39b83`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 1.2 MB (1172511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01be99eb967ddc491dbff391b904e471efe666e85d09a20fcf535b5c98c8b57f`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 116.2 KB (116210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1490586e9b4fb72126c1426dfefacd72c6df6647a1769304705f45fe12a91e3`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4ad881ac86c645d14ad0be80ccd5698f485ede942610594f58d1b071b46e32`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 124.9 KB (124855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.2-standalone`

```console
$ docker pull adminer@sha256:47c56792007f6f11680eb70a3932236d24d6e5a1b77b763c1da0c3e83ba9f941
```

-	Platforms:
	-	linux; amd64

### `adminer:4.2-standalone` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27855105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:738b66a8ed919e0c2e575b141efa7d104556f4ac946480d2c524088dd70672fc`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-S","0.0.0.0:8080","-t","\/var\/www\/html"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:39:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:39:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:39:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 23:01:17 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 03 Mar 2017 23:01:17 GMT
ENV PHP_VERSION=7.0.16
# Fri, 03 Mar 2017 23:01:18 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 23:01:18 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Fri, 03 Mar 2017 23:01:23 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 23:01:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:04:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 23:04:52 GMT
COPY multi:b2b2a1a4e3c0f0bb8ebdcd527fca158bfce5138468926263f86e5bb0cb41970f in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:04:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 23:04:53 GMT
CMD ["php" "-a"]
# Fri, 03 Mar 2017 23:57:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html
# Fri, 03 Mar 2017 23:57:19 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 23:57:20 GMT
RUN apk add --no-cache libpq
# Fri, 03 Mar 2017 23:57:35 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 03 Mar 2017 23:57:36 GMT
COPY file:8d804cd4dbc8e04fad8dda195fab620d76fe48011fc89db3f1cdf6994204b0f7 in . 
# Fri, 03 Mar 2017 23:57:36 GMT
ENV ADMINER_VERSION=4.2.5
# Fri, 03 Mar 2017 23:57:36 GMT
ENV ADMINER_DOWNLOAD_SHA256=a8d9f5df8a604e75e87670bc1d797bb49cc1047f722a8630bda514fdc407f84f
# Fri, 03 Mar 2017 23:57:39 GMT
RUN curl -fsSL https://www.adminer.org/static/download/$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c -
# Fri, 03 Mar 2017 23:57:39 GMT
USER [adminer]
# Fri, 03 Mar 2017 23:57:39 GMT
CMD ["php" "-S" "0.0.0.0:8080" "-t" "/var/www/html"]
# Fri, 03 Mar 2017 23:57:40 GMT
EXPOSE 8080/tcp
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad04e3b8326406378bcdd957b9969aa9fa8c8a34cac8dcf9b0844ba988061c1`  
		Last Modified: Sat, 04 Mar 2017 02:07:46 GMT  
		Size: 12.8 MB (12763023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a561348cecce89a9b8e73b7c58d0cab0d2365dd5fa23ccdd629dc391a31d59`  
		Last Modified: Sat, 04 Mar 2017 02:07:44 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3cd877e7b67d24c6bc7a20daaf4aefb9223bbe7b3da7b24ee8238de62216b9`  
		Last Modified: Sat, 04 Mar 2017 02:07:52 GMT  
		Size: 10.3 MB (10299847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61958988dd27d8bbada12a1c9f95714501b5c2b43da72ae5b7f43906efb1669`  
		Last Modified: Sat, 04 Mar 2017 02:07:43 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade64f0692f34a991f61d3808cf14cbfa7b249ca332d109bde4118766d811606`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c12263a96e45d7da9cbcc686f3722b9095fda00e9f024e19abe96749a39b83`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 1.2 MB (1172511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01be99eb967ddc491dbff391b904e471efe666e85d09a20fcf535b5c98c8b57f`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 116.2 KB (116210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1490586e9b4fb72126c1426dfefacd72c6df6647a1769304705f45fe12a91e3`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4ad881ac86c645d14ad0be80ccd5698f485ede942610594f58d1b071b46e32`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 124.9 KB (124855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4-standalone`

```console
$ docker pull adminer@sha256:47c56792007f6f11680eb70a3932236d24d6e5a1b77b763c1da0c3e83ba9f941
```

-	Platforms:
	-	linux; amd64

### `adminer:4-standalone` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27855105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:738b66a8ed919e0c2e575b141efa7d104556f4ac946480d2c524088dd70672fc`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-S","0.0.0.0:8080","-t","\/var\/www\/html"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:39:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:39:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:39:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 23:01:17 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 03 Mar 2017 23:01:17 GMT
ENV PHP_VERSION=7.0.16
# Fri, 03 Mar 2017 23:01:18 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 23:01:18 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Fri, 03 Mar 2017 23:01:23 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 23:01:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:04:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 23:04:52 GMT
COPY multi:b2b2a1a4e3c0f0bb8ebdcd527fca158bfce5138468926263f86e5bb0cb41970f in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:04:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 23:04:53 GMT
CMD ["php" "-a"]
# Fri, 03 Mar 2017 23:57:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html
# Fri, 03 Mar 2017 23:57:19 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 23:57:20 GMT
RUN apk add --no-cache libpq
# Fri, 03 Mar 2017 23:57:35 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 03 Mar 2017 23:57:36 GMT
COPY file:8d804cd4dbc8e04fad8dda195fab620d76fe48011fc89db3f1cdf6994204b0f7 in . 
# Fri, 03 Mar 2017 23:57:36 GMT
ENV ADMINER_VERSION=4.2.5
# Fri, 03 Mar 2017 23:57:36 GMT
ENV ADMINER_DOWNLOAD_SHA256=a8d9f5df8a604e75e87670bc1d797bb49cc1047f722a8630bda514fdc407f84f
# Fri, 03 Mar 2017 23:57:39 GMT
RUN curl -fsSL https://www.adminer.org/static/download/$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c -
# Fri, 03 Mar 2017 23:57:39 GMT
USER [adminer]
# Fri, 03 Mar 2017 23:57:39 GMT
CMD ["php" "-S" "0.0.0.0:8080" "-t" "/var/www/html"]
# Fri, 03 Mar 2017 23:57:40 GMT
EXPOSE 8080/tcp
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad04e3b8326406378bcdd957b9969aa9fa8c8a34cac8dcf9b0844ba988061c1`  
		Last Modified: Sat, 04 Mar 2017 02:07:46 GMT  
		Size: 12.8 MB (12763023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a561348cecce89a9b8e73b7c58d0cab0d2365dd5fa23ccdd629dc391a31d59`  
		Last Modified: Sat, 04 Mar 2017 02:07:44 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3cd877e7b67d24c6bc7a20daaf4aefb9223bbe7b3da7b24ee8238de62216b9`  
		Last Modified: Sat, 04 Mar 2017 02:07:52 GMT  
		Size: 10.3 MB (10299847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61958988dd27d8bbada12a1c9f95714501b5c2b43da72ae5b7f43906efb1669`  
		Last Modified: Sat, 04 Mar 2017 02:07:43 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade64f0692f34a991f61d3808cf14cbfa7b249ca332d109bde4118766d811606`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c12263a96e45d7da9cbcc686f3722b9095fda00e9f024e19abe96749a39b83`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 1.2 MB (1172511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01be99eb967ddc491dbff391b904e471efe666e85d09a20fcf535b5c98c8b57f`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 116.2 KB (116210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1490586e9b4fb72126c1426dfefacd72c6df6647a1769304705f45fe12a91e3`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4ad881ac86c645d14ad0be80ccd5698f485ede942610594f58d1b071b46e32`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 124.9 KB (124855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:standalone`

```console
$ docker pull adminer@sha256:47c56792007f6f11680eb70a3932236d24d6e5a1b77b763c1da0c3e83ba9f941
```

-	Platforms:
	-	linux; amd64

### `adminer:standalone` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27855105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:738b66a8ed919e0c2e575b141efa7d104556f4ac946480d2c524088dd70672fc`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-S","0.0.0.0:8080","-t","\/var\/www\/html"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:39:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:39:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:39:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 23:01:17 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 03 Mar 2017 23:01:17 GMT
ENV PHP_VERSION=7.0.16
# Fri, 03 Mar 2017 23:01:18 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 23:01:18 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Fri, 03 Mar 2017 23:01:23 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 23:01:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:04:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 23:04:52 GMT
COPY multi:b2b2a1a4e3c0f0bb8ebdcd527fca158bfce5138468926263f86e5bb0cb41970f in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:04:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 23:04:53 GMT
CMD ["php" "-a"]
# Fri, 03 Mar 2017 23:57:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html
# Fri, 03 Mar 2017 23:57:19 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 23:57:20 GMT
RUN apk add --no-cache libpq
# Fri, 03 Mar 2017 23:57:35 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 03 Mar 2017 23:57:36 GMT
COPY file:8d804cd4dbc8e04fad8dda195fab620d76fe48011fc89db3f1cdf6994204b0f7 in . 
# Fri, 03 Mar 2017 23:57:36 GMT
ENV ADMINER_VERSION=4.2.5
# Fri, 03 Mar 2017 23:57:36 GMT
ENV ADMINER_DOWNLOAD_SHA256=a8d9f5df8a604e75e87670bc1d797bb49cc1047f722a8630bda514fdc407f84f
# Fri, 03 Mar 2017 23:57:39 GMT
RUN curl -fsSL https://www.adminer.org/static/download/$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c -
# Fri, 03 Mar 2017 23:57:39 GMT
USER [adminer]
# Fri, 03 Mar 2017 23:57:39 GMT
CMD ["php" "-S" "0.0.0.0:8080" "-t" "/var/www/html"]
# Fri, 03 Mar 2017 23:57:40 GMT
EXPOSE 8080/tcp
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad04e3b8326406378bcdd957b9969aa9fa8c8a34cac8dcf9b0844ba988061c1`  
		Last Modified: Sat, 04 Mar 2017 02:07:46 GMT  
		Size: 12.8 MB (12763023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a561348cecce89a9b8e73b7c58d0cab0d2365dd5fa23ccdd629dc391a31d59`  
		Last Modified: Sat, 04 Mar 2017 02:07:44 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3cd877e7b67d24c6bc7a20daaf4aefb9223bbe7b3da7b24ee8238de62216b9`  
		Last Modified: Sat, 04 Mar 2017 02:07:52 GMT  
		Size: 10.3 MB (10299847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61958988dd27d8bbada12a1c9f95714501b5c2b43da72ae5b7f43906efb1669`  
		Last Modified: Sat, 04 Mar 2017 02:07:43 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade64f0692f34a991f61d3808cf14cbfa7b249ca332d109bde4118766d811606`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c12263a96e45d7da9cbcc686f3722b9095fda00e9f024e19abe96749a39b83`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 1.2 MB (1172511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01be99eb967ddc491dbff391b904e471efe666e85d09a20fcf535b5c98c8b57f`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 116.2 KB (116210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1490586e9b4fb72126c1426dfefacd72c6df6647a1769304705f45fe12a91e3`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4ad881ac86c645d14ad0be80ccd5698f485ede942610594f58d1b071b46e32`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 124.9 KB (124855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.2.5`

```console
$ docker pull adminer@sha256:47c56792007f6f11680eb70a3932236d24d6e5a1b77b763c1da0c3e83ba9f941
```

-	Platforms:
	-	linux; amd64

### `adminer:4.2.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27855105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:738b66a8ed919e0c2e575b141efa7d104556f4ac946480d2c524088dd70672fc`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-S","0.0.0.0:8080","-t","\/var\/www\/html"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:39:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:39:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:39:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 23:01:17 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 03 Mar 2017 23:01:17 GMT
ENV PHP_VERSION=7.0.16
# Fri, 03 Mar 2017 23:01:18 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 23:01:18 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Fri, 03 Mar 2017 23:01:23 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 23:01:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:04:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 23:04:52 GMT
COPY multi:b2b2a1a4e3c0f0bb8ebdcd527fca158bfce5138468926263f86e5bb0cb41970f in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:04:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 23:04:53 GMT
CMD ["php" "-a"]
# Fri, 03 Mar 2017 23:57:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html
# Fri, 03 Mar 2017 23:57:19 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 23:57:20 GMT
RUN apk add --no-cache libpq
# Fri, 03 Mar 2017 23:57:35 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 03 Mar 2017 23:57:36 GMT
COPY file:8d804cd4dbc8e04fad8dda195fab620d76fe48011fc89db3f1cdf6994204b0f7 in . 
# Fri, 03 Mar 2017 23:57:36 GMT
ENV ADMINER_VERSION=4.2.5
# Fri, 03 Mar 2017 23:57:36 GMT
ENV ADMINER_DOWNLOAD_SHA256=a8d9f5df8a604e75e87670bc1d797bb49cc1047f722a8630bda514fdc407f84f
# Fri, 03 Mar 2017 23:57:39 GMT
RUN curl -fsSL https://www.adminer.org/static/download/$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c -
# Fri, 03 Mar 2017 23:57:39 GMT
USER [adminer]
# Fri, 03 Mar 2017 23:57:39 GMT
CMD ["php" "-S" "0.0.0.0:8080" "-t" "/var/www/html"]
# Fri, 03 Mar 2017 23:57:40 GMT
EXPOSE 8080/tcp
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad04e3b8326406378bcdd957b9969aa9fa8c8a34cac8dcf9b0844ba988061c1`  
		Last Modified: Sat, 04 Mar 2017 02:07:46 GMT  
		Size: 12.8 MB (12763023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a561348cecce89a9b8e73b7c58d0cab0d2365dd5fa23ccdd629dc391a31d59`  
		Last Modified: Sat, 04 Mar 2017 02:07:44 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3cd877e7b67d24c6bc7a20daaf4aefb9223bbe7b3da7b24ee8238de62216b9`  
		Last Modified: Sat, 04 Mar 2017 02:07:52 GMT  
		Size: 10.3 MB (10299847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61958988dd27d8bbada12a1c9f95714501b5c2b43da72ae5b7f43906efb1669`  
		Last Modified: Sat, 04 Mar 2017 02:07:43 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade64f0692f34a991f61d3808cf14cbfa7b249ca332d109bde4118766d811606`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c12263a96e45d7da9cbcc686f3722b9095fda00e9f024e19abe96749a39b83`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 1.2 MB (1172511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01be99eb967ddc491dbff391b904e471efe666e85d09a20fcf535b5c98c8b57f`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 116.2 KB (116210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1490586e9b4fb72126c1426dfefacd72c6df6647a1769304705f45fe12a91e3`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4ad881ac86c645d14ad0be80ccd5698f485ede942610594f58d1b071b46e32`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 124.9 KB (124855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.2`

```console
$ docker pull adminer@sha256:47c56792007f6f11680eb70a3932236d24d6e5a1b77b763c1da0c3e83ba9f941
```

-	Platforms:
	-	linux; amd64

### `adminer:4.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27855105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:738b66a8ed919e0c2e575b141efa7d104556f4ac946480d2c524088dd70672fc`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-S","0.0.0.0:8080","-t","\/var\/www\/html"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:39:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:39:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:39:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 23:01:17 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 03 Mar 2017 23:01:17 GMT
ENV PHP_VERSION=7.0.16
# Fri, 03 Mar 2017 23:01:18 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 23:01:18 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Fri, 03 Mar 2017 23:01:23 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 23:01:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:04:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 23:04:52 GMT
COPY multi:b2b2a1a4e3c0f0bb8ebdcd527fca158bfce5138468926263f86e5bb0cb41970f in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:04:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 23:04:53 GMT
CMD ["php" "-a"]
# Fri, 03 Mar 2017 23:57:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html
# Fri, 03 Mar 2017 23:57:19 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 23:57:20 GMT
RUN apk add --no-cache libpq
# Fri, 03 Mar 2017 23:57:35 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 03 Mar 2017 23:57:36 GMT
COPY file:8d804cd4dbc8e04fad8dda195fab620d76fe48011fc89db3f1cdf6994204b0f7 in . 
# Fri, 03 Mar 2017 23:57:36 GMT
ENV ADMINER_VERSION=4.2.5
# Fri, 03 Mar 2017 23:57:36 GMT
ENV ADMINER_DOWNLOAD_SHA256=a8d9f5df8a604e75e87670bc1d797bb49cc1047f722a8630bda514fdc407f84f
# Fri, 03 Mar 2017 23:57:39 GMT
RUN curl -fsSL https://www.adminer.org/static/download/$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c -
# Fri, 03 Mar 2017 23:57:39 GMT
USER [adminer]
# Fri, 03 Mar 2017 23:57:39 GMT
CMD ["php" "-S" "0.0.0.0:8080" "-t" "/var/www/html"]
# Fri, 03 Mar 2017 23:57:40 GMT
EXPOSE 8080/tcp
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad04e3b8326406378bcdd957b9969aa9fa8c8a34cac8dcf9b0844ba988061c1`  
		Last Modified: Sat, 04 Mar 2017 02:07:46 GMT  
		Size: 12.8 MB (12763023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a561348cecce89a9b8e73b7c58d0cab0d2365dd5fa23ccdd629dc391a31d59`  
		Last Modified: Sat, 04 Mar 2017 02:07:44 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3cd877e7b67d24c6bc7a20daaf4aefb9223bbe7b3da7b24ee8238de62216b9`  
		Last Modified: Sat, 04 Mar 2017 02:07:52 GMT  
		Size: 10.3 MB (10299847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61958988dd27d8bbada12a1c9f95714501b5c2b43da72ae5b7f43906efb1669`  
		Last Modified: Sat, 04 Mar 2017 02:07:43 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade64f0692f34a991f61d3808cf14cbfa7b249ca332d109bde4118766d811606`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c12263a96e45d7da9cbcc686f3722b9095fda00e9f024e19abe96749a39b83`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 1.2 MB (1172511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01be99eb967ddc491dbff391b904e471efe666e85d09a20fcf535b5c98c8b57f`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 116.2 KB (116210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1490586e9b4fb72126c1426dfefacd72c6df6647a1769304705f45fe12a91e3`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4ad881ac86c645d14ad0be80ccd5698f485ede942610594f58d1b071b46e32`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 124.9 KB (124855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4`

```console
$ docker pull adminer@sha256:47c56792007f6f11680eb70a3932236d24d6e5a1b77b763c1da0c3e83ba9f941
```

-	Platforms:
	-	linux; amd64

### `adminer:4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27855105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:738b66a8ed919e0c2e575b141efa7d104556f4ac946480d2c524088dd70672fc`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-S","0.0.0.0:8080","-t","\/var\/www\/html"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:39:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:39:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:39:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 23:01:17 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 03 Mar 2017 23:01:17 GMT
ENV PHP_VERSION=7.0.16
# Fri, 03 Mar 2017 23:01:18 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 23:01:18 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Fri, 03 Mar 2017 23:01:23 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 23:01:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:04:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 23:04:52 GMT
COPY multi:b2b2a1a4e3c0f0bb8ebdcd527fca158bfce5138468926263f86e5bb0cb41970f in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:04:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 23:04:53 GMT
CMD ["php" "-a"]
# Fri, 03 Mar 2017 23:57:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html
# Fri, 03 Mar 2017 23:57:19 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 23:57:20 GMT
RUN apk add --no-cache libpq
# Fri, 03 Mar 2017 23:57:35 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 03 Mar 2017 23:57:36 GMT
COPY file:8d804cd4dbc8e04fad8dda195fab620d76fe48011fc89db3f1cdf6994204b0f7 in . 
# Fri, 03 Mar 2017 23:57:36 GMT
ENV ADMINER_VERSION=4.2.5
# Fri, 03 Mar 2017 23:57:36 GMT
ENV ADMINER_DOWNLOAD_SHA256=a8d9f5df8a604e75e87670bc1d797bb49cc1047f722a8630bda514fdc407f84f
# Fri, 03 Mar 2017 23:57:39 GMT
RUN curl -fsSL https://www.adminer.org/static/download/$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c -
# Fri, 03 Mar 2017 23:57:39 GMT
USER [adminer]
# Fri, 03 Mar 2017 23:57:39 GMT
CMD ["php" "-S" "0.0.0.0:8080" "-t" "/var/www/html"]
# Fri, 03 Mar 2017 23:57:40 GMT
EXPOSE 8080/tcp
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad04e3b8326406378bcdd957b9969aa9fa8c8a34cac8dcf9b0844ba988061c1`  
		Last Modified: Sat, 04 Mar 2017 02:07:46 GMT  
		Size: 12.8 MB (12763023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a561348cecce89a9b8e73b7c58d0cab0d2365dd5fa23ccdd629dc391a31d59`  
		Last Modified: Sat, 04 Mar 2017 02:07:44 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3cd877e7b67d24c6bc7a20daaf4aefb9223bbe7b3da7b24ee8238de62216b9`  
		Last Modified: Sat, 04 Mar 2017 02:07:52 GMT  
		Size: 10.3 MB (10299847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61958988dd27d8bbada12a1c9f95714501b5c2b43da72ae5b7f43906efb1669`  
		Last Modified: Sat, 04 Mar 2017 02:07:43 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade64f0692f34a991f61d3808cf14cbfa7b249ca332d109bde4118766d811606`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c12263a96e45d7da9cbcc686f3722b9095fda00e9f024e19abe96749a39b83`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 1.2 MB (1172511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01be99eb967ddc491dbff391b904e471efe666e85d09a20fcf535b5c98c8b57f`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 116.2 KB (116210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1490586e9b4fb72126c1426dfefacd72c6df6647a1769304705f45fe12a91e3`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4ad881ac86c645d14ad0be80ccd5698f485ede942610594f58d1b071b46e32`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 124.9 KB (124855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:latest`

```console
$ docker pull adminer@sha256:47c56792007f6f11680eb70a3932236d24d6e5a1b77b763c1da0c3e83ba9f941
```

-	Platforms:
	-	linux; amd64

### `adminer:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27855105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:738b66a8ed919e0c2e575b141efa7d104556f4ac946480d2c524088dd70672fc`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-S","0.0.0.0:8080","-t","\/var\/www\/html"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:39:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:39:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:39:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 23:01:17 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 03 Mar 2017 23:01:17 GMT
ENV PHP_VERSION=7.0.16
# Fri, 03 Mar 2017 23:01:18 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 23:01:18 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Fri, 03 Mar 2017 23:01:23 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 23:01:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:04:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 23:04:52 GMT
COPY multi:b2b2a1a4e3c0f0bb8ebdcd527fca158bfce5138468926263f86e5bb0cb41970f in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:04:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 23:04:53 GMT
CMD ["php" "-a"]
# Fri, 03 Mar 2017 23:57:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html
# Fri, 03 Mar 2017 23:57:19 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 23:57:20 GMT
RUN apk add --no-cache libpq
# Fri, 03 Mar 2017 23:57:35 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 03 Mar 2017 23:57:36 GMT
COPY file:8d804cd4dbc8e04fad8dda195fab620d76fe48011fc89db3f1cdf6994204b0f7 in . 
# Fri, 03 Mar 2017 23:57:36 GMT
ENV ADMINER_VERSION=4.2.5
# Fri, 03 Mar 2017 23:57:36 GMT
ENV ADMINER_DOWNLOAD_SHA256=a8d9f5df8a604e75e87670bc1d797bb49cc1047f722a8630bda514fdc407f84f
# Fri, 03 Mar 2017 23:57:39 GMT
RUN curl -fsSL https://www.adminer.org/static/download/$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c -
# Fri, 03 Mar 2017 23:57:39 GMT
USER [adminer]
# Fri, 03 Mar 2017 23:57:39 GMT
CMD ["php" "-S" "0.0.0.0:8080" "-t" "/var/www/html"]
# Fri, 03 Mar 2017 23:57:40 GMT
EXPOSE 8080/tcp
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad04e3b8326406378bcdd957b9969aa9fa8c8a34cac8dcf9b0844ba988061c1`  
		Last Modified: Sat, 04 Mar 2017 02:07:46 GMT  
		Size: 12.8 MB (12763023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a561348cecce89a9b8e73b7c58d0cab0d2365dd5fa23ccdd629dc391a31d59`  
		Last Modified: Sat, 04 Mar 2017 02:07:44 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3cd877e7b67d24c6bc7a20daaf4aefb9223bbe7b3da7b24ee8238de62216b9`  
		Last Modified: Sat, 04 Mar 2017 02:07:52 GMT  
		Size: 10.3 MB (10299847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61958988dd27d8bbada12a1c9f95714501b5c2b43da72ae5b7f43906efb1669`  
		Last Modified: Sat, 04 Mar 2017 02:07:43 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade64f0692f34a991f61d3808cf14cbfa7b249ca332d109bde4118766d811606`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c12263a96e45d7da9cbcc686f3722b9095fda00e9f024e19abe96749a39b83`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 1.2 MB (1172511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01be99eb967ddc491dbff391b904e471efe666e85d09a20fcf535b5c98c8b57f`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 116.2 KB (116210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1490586e9b4fb72126c1426dfefacd72c6df6647a1769304705f45fe12a91e3`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4ad881ac86c645d14ad0be80ccd5698f485ede942610594f58d1b071b46e32`  
		Last Modified: Sat, 04 Mar 2017 02:07:41 GMT  
		Size: 124.9 KB (124855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.2.5-fastcgi`

```console
$ docker pull adminer@sha256:868f7e39dfd713f5b13dc8291b53dece84ef8fe5b812ebc20b9af1d0601b8445
```

-	Platforms:
	-	linux; amd64

### `adminer:4.2.5-fastcgi` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.6 MB (31603440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41324e4d9ec8781c46fe2630d5b0d194cad7887c2839332be340015ea306a714`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:42:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 23:04:53 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 03 Mar 2017 23:04:54 GMT
ENV PHP_VERSION=7.0.16
# Fri, 03 Mar 2017 23:04:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 23:04:54 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Fri, 03 Mar 2017 23:05:00 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 23:05:00 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:08:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 23:08:32 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:08:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 23:08:33 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 23:08:34 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 03 Mar 2017 23:08:34 GMT
EXPOSE 9000/tcp
# Fri, 03 Mar 2017 23:08:35 GMT
CMD ["php-fpm"]
# Fri, 03 Mar 2017 23:57:41 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html
# Fri, 03 Mar 2017 23:57:43 GMT
RUN apk add --no-cache libpq
# Fri, 03 Mar 2017 23:57:57 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 03 Mar 2017 23:57:58 GMT
COPY file:8d804cd4dbc8e04fad8dda195fab620d76fe48011fc89db3f1cdf6994204b0f7 in . 
# Fri, 03 Mar 2017 23:57:58 GMT
ENV ADMINER_VERSION=4.2.5
# Fri, 03 Mar 2017 23:57:58 GMT
ENV ADMINER_DOWNLOAD_SHA256=a8d9f5df8a604e75e87670bc1d797bb49cc1047f722a8630bda514fdc407f84f
# Fri, 03 Mar 2017 23:58:00 GMT
RUN curl -fsSL https://www.adminer.org/static/download/$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c -
# Fri, 03 Mar 2017 23:58:01 GMT
USER [adminer]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94187b859a34e306838b28e1209bc1b14ae5240d62ca93df5343403616d8ab4`  
		Last Modified: Sat, 04 Mar 2017 01:28:10 GMT  
		Size: 12.8 MB (12763020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5efc4b12dfba0d6bb14f3779b41ff3ae9dadaab6aba5ec49b8221e41ce4d7c`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6bdb981aa967fe834f0ef931db244b485656af0682cd89c636b38a12ae6aa1f`  
		Last Modified: Sat, 04 Mar 2017 01:28:14 GMT  
		Size: 14.0 MB (14040426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133cbade9d51c052a58acf553e542ab1403dd9e9377dbfc44eedc35d4a9d0aa5`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 2.0 KB (1999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8f9f920842716d442f80e7ec9a51fe1f54669304bcb12b25ba04e7abb6af45`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89cd48ad5721619a8d469e45c9d513eef18a170c951315aefffa4782219fe2ea`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 7.7 KB (7674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7ce0ba3d6573ccb4c327b827e150f944b37ae1d580c482a2fc439fd2d81ab3`  
		Last Modified: Sat, 04 Mar 2017 01:28:03 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dee4aaf47aacd001310b763d68707f002c4bf34b19193daf1155a59f73a5a71`  
		Last Modified: Sat, 04 Mar 2017 01:28:03 GMT  
		Size: 1.2 MB (1172513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2a8863ea152767520ac49c15ab11675813551a4273ee25e7f0ea9b878cc7bd`  
		Last Modified: Sat, 04 Mar 2017 01:28:03 GMT  
		Size: 116.2 KB (116215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad02bf3b9a7021d9c500669b143c15f7be7db98d54d19cec995148f5df02f38`  
		Last Modified: Sat, 04 Mar 2017 01:28:02 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aadade033ef0be29008af94c37353a5d8451e8a1035510d2ca866f77c9fc254`  
		Last Modified: Sat, 04 Mar 2017 01:28:02 GMT  
		Size: 124.9 KB (124856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.2-fastcgi`

```console
$ docker pull adminer@sha256:868f7e39dfd713f5b13dc8291b53dece84ef8fe5b812ebc20b9af1d0601b8445
```

-	Platforms:
	-	linux; amd64

### `adminer:4.2-fastcgi` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.6 MB (31603440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41324e4d9ec8781c46fe2630d5b0d194cad7887c2839332be340015ea306a714`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:42:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 23:04:53 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 03 Mar 2017 23:04:54 GMT
ENV PHP_VERSION=7.0.16
# Fri, 03 Mar 2017 23:04:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 23:04:54 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Fri, 03 Mar 2017 23:05:00 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 23:05:00 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:08:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 23:08:32 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:08:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 23:08:33 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 23:08:34 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 03 Mar 2017 23:08:34 GMT
EXPOSE 9000/tcp
# Fri, 03 Mar 2017 23:08:35 GMT
CMD ["php-fpm"]
# Fri, 03 Mar 2017 23:57:41 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html
# Fri, 03 Mar 2017 23:57:43 GMT
RUN apk add --no-cache libpq
# Fri, 03 Mar 2017 23:57:57 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 03 Mar 2017 23:57:58 GMT
COPY file:8d804cd4dbc8e04fad8dda195fab620d76fe48011fc89db3f1cdf6994204b0f7 in . 
# Fri, 03 Mar 2017 23:57:58 GMT
ENV ADMINER_VERSION=4.2.5
# Fri, 03 Mar 2017 23:57:58 GMT
ENV ADMINER_DOWNLOAD_SHA256=a8d9f5df8a604e75e87670bc1d797bb49cc1047f722a8630bda514fdc407f84f
# Fri, 03 Mar 2017 23:58:00 GMT
RUN curl -fsSL https://www.adminer.org/static/download/$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c -
# Fri, 03 Mar 2017 23:58:01 GMT
USER [adminer]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94187b859a34e306838b28e1209bc1b14ae5240d62ca93df5343403616d8ab4`  
		Last Modified: Sat, 04 Mar 2017 01:28:10 GMT  
		Size: 12.8 MB (12763020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5efc4b12dfba0d6bb14f3779b41ff3ae9dadaab6aba5ec49b8221e41ce4d7c`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6bdb981aa967fe834f0ef931db244b485656af0682cd89c636b38a12ae6aa1f`  
		Last Modified: Sat, 04 Mar 2017 01:28:14 GMT  
		Size: 14.0 MB (14040426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133cbade9d51c052a58acf553e542ab1403dd9e9377dbfc44eedc35d4a9d0aa5`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 2.0 KB (1999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8f9f920842716d442f80e7ec9a51fe1f54669304bcb12b25ba04e7abb6af45`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89cd48ad5721619a8d469e45c9d513eef18a170c951315aefffa4782219fe2ea`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 7.7 KB (7674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7ce0ba3d6573ccb4c327b827e150f944b37ae1d580c482a2fc439fd2d81ab3`  
		Last Modified: Sat, 04 Mar 2017 01:28:03 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dee4aaf47aacd001310b763d68707f002c4bf34b19193daf1155a59f73a5a71`  
		Last Modified: Sat, 04 Mar 2017 01:28:03 GMT  
		Size: 1.2 MB (1172513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2a8863ea152767520ac49c15ab11675813551a4273ee25e7f0ea9b878cc7bd`  
		Last Modified: Sat, 04 Mar 2017 01:28:03 GMT  
		Size: 116.2 KB (116215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad02bf3b9a7021d9c500669b143c15f7be7db98d54d19cec995148f5df02f38`  
		Last Modified: Sat, 04 Mar 2017 01:28:02 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aadade033ef0be29008af94c37353a5d8451e8a1035510d2ca866f77c9fc254`  
		Last Modified: Sat, 04 Mar 2017 01:28:02 GMT  
		Size: 124.9 KB (124856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4-fastcgi`

```console
$ docker pull adminer@sha256:868f7e39dfd713f5b13dc8291b53dece84ef8fe5b812ebc20b9af1d0601b8445
```

-	Platforms:
	-	linux; amd64

### `adminer:4-fastcgi` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.6 MB (31603440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41324e4d9ec8781c46fe2630d5b0d194cad7887c2839332be340015ea306a714`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:42:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 23:04:53 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 03 Mar 2017 23:04:54 GMT
ENV PHP_VERSION=7.0.16
# Fri, 03 Mar 2017 23:04:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 23:04:54 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Fri, 03 Mar 2017 23:05:00 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 23:05:00 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:08:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 23:08:32 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:08:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 23:08:33 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 23:08:34 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 03 Mar 2017 23:08:34 GMT
EXPOSE 9000/tcp
# Fri, 03 Mar 2017 23:08:35 GMT
CMD ["php-fpm"]
# Fri, 03 Mar 2017 23:57:41 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html
# Fri, 03 Mar 2017 23:57:43 GMT
RUN apk add --no-cache libpq
# Fri, 03 Mar 2017 23:57:57 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 03 Mar 2017 23:57:58 GMT
COPY file:8d804cd4dbc8e04fad8dda195fab620d76fe48011fc89db3f1cdf6994204b0f7 in . 
# Fri, 03 Mar 2017 23:57:58 GMT
ENV ADMINER_VERSION=4.2.5
# Fri, 03 Mar 2017 23:57:58 GMT
ENV ADMINER_DOWNLOAD_SHA256=a8d9f5df8a604e75e87670bc1d797bb49cc1047f722a8630bda514fdc407f84f
# Fri, 03 Mar 2017 23:58:00 GMT
RUN curl -fsSL https://www.adminer.org/static/download/$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c -
# Fri, 03 Mar 2017 23:58:01 GMT
USER [adminer]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94187b859a34e306838b28e1209bc1b14ae5240d62ca93df5343403616d8ab4`  
		Last Modified: Sat, 04 Mar 2017 01:28:10 GMT  
		Size: 12.8 MB (12763020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5efc4b12dfba0d6bb14f3779b41ff3ae9dadaab6aba5ec49b8221e41ce4d7c`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6bdb981aa967fe834f0ef931db244b485656af0682cd89c636b38a12ae6aa1f`  
		Last Modified: Sat, 04 Mar 2017 01:28:14 GMT  
		Size: 14.0 MB (14040426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133cbade9d51c052a58acf553e542ab1403dd9e9377dbfc44eedc35d4a9d0aa5`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 2.0 KB (1999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8f9f920842716d442f80e7ec9a51fe1f54669304bcb12b25ba04e7abb6af45`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89cd48ad5721619a8d469e45c9d513eef18a170c951315aefffa4782219fe2ea`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 7.7 KB (7674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7ce0ba3d6573ccb4c327b827e150f944b37ae1d580c482a2fc439fd2d81ab3`  
		Last Modified: Sat, 04 Mar 2017 01:28:03 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dee4aaf47aacd001310b763d68707f002c4bf34b19193daf1155a59f73a5a71`  
		Last Modified: Sat, 04 Mar 2017 01:28:03 GMT  
		Size: 1.2 MB (1172513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2a8863ea152767520ac49c15ab11675813551a4273ee25e7f0ea9b878cc7bd`  
		Last Modified: Sat, 04 Mar 2017 01:28:03 GMT  
		Size: 116.2 KB (116215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad02bf3b9a7021d9c500669b143c15f7be7db98d54d19cec995148f5df02f38`  
		Last Modified: Sat, 04 Mar 2017 01:28:02 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aadade033ef0be29008af94c37353a5d8451e8a1035510d2ca866f77c9fc254`  
		Last Modified: Sat, 04 Mar 2017 01:28:02 GMT  
		Size: 124.9 KB (124856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:fastcgi`

```console
$ docker pull adminer@sha256:868f7e39dfd713f5b13dc8291b53dece84ef8fe5b812ebc20b9af1d0601b8445
```

-	Platforms:
	-	linux; amd64

### `adminer:fastcgi` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.6 MB (31603440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41324e4d9ec8781c46fe2630d5b0d194cad7887c2839332be340015ea306a714`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:42:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 23:04:53 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 03 Mar 2017 23:04:54 GMT
ENV PHP_VERSION=7.0.16
# Fri, 03 Mar 2017 23:04:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 23:04:54 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Fri, 03 Mar 2017 23:05:00 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 23:05:00 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:08:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 23:08:32 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:08:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 23:08:33 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 23:08:34 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 03 Mar 2017 23:08:34 GMT
EXPOSE 9000/tcp
# Fri, 03 Mar 2017 23:08:35 GMT
CMD ["php-fpm"]
# Fri, 03 Mar 2017 23:57:41 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html
# Fri, 03 Mar 2017 23:57:43 GMT
RUN apk add --no-cache libpq
# Fri, 03 Mar 2017 23:57:57 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 03 Mar 2017 23:57:58 GMT
COPY file:8d804cd4dbc8e04fad8dda195fab620d76fe48011fc89db3f1cdf6994204b0f7 in . 
# Fri, 03 Mar 2017 23:57:58 GMT
ENV ADMINER_VERSION=4.2.5
# Fri, 03 Mar 2017 23:57:58 GMT
ENV ADMINER_DOWNLOAD_SHA256=a8d9f5df8a604e75e87670bc1d797bb49cc1047f722a8630bda514fdc407f84f
# Fri, 03 Mar 2017 23:58:00 GMT
RUN curl -fsSL https://www.adminer.org/static/download/$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c -
# Fri, 03 Mar 2017 23:58:01 GMT
USER [adminer]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94187b859a34e306838b28e1209bc1b14ae5240d62ca93df5343403616d8ab4`  
		Last Modified: Sat, 04 Mar 2017 01:28:10 GMT  
		Size: 12.8 MB (12763020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5efc4b12dfba0d6bb14f3779b41ff3ae9dadaab6aba5ec49b8221e41ce4d7c`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6bdb981aa967fe834f0ef931db244b485656af0682cd89c636b38a12ae6aa1f`  
		Last Modified: Sat, 04 Mar 2017 01:28:14 GMT  
		Size: 14.0 MB (14040426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133cbade9d51c052a58acf553e542ab1403dd9e9377dbfc44eedc35d4a9d0aa5`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 2.0 KB (1999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8f9f920842716d442f80e7ec9a51fe1f54669304bcb12b25ba04e7abb6af45`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89cd48ad5721619a8d469e45c9d513eef18a170c951315aefffa4782219fe2ea`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 7.7 KB (7674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7ce0ba3d6573ccb4c327b827e150f944b37ae1d580c482a2fc439fd2d81ab3`  
		Last Modified: Sat, 04 Mar 2017 01:28:03 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dee4aaf47aacd001310b763d68707f002c4bf34b19193daf1155a59f73a5a71`  
		Last Modified: Sat, 04 Mar 2017 01:28:03 GMT  
		Size: 1.2 MB (1172513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2a8863ea152767520ac49c15ab11675813551a4273ee25e7f0ea9b878cc7bd`  
		Last Modified: Sat, 04 Mar 2017 01:28:03 GMT  
		Size: 116.2 KB (116215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad02bf3b9a7021d9c500669b143c15f7be7db98d54d19cec995148f5df02f38`  
		Last Modified: Sat, 04 Mar 2017 01:28:02 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aadade033ef0be29008af94c37353a5d8451e8a1035510d2ca866f77c9fc254`  
		Last Modified: Sat, 04 Mar 2017 01:28:02 GMT  
		Size: 124.9 KB (124856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
