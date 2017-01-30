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
$ docker pull adminer@sha256:65434809aa96e484b41cff1e04a0836063acc47e5d9a15217bb4e745d186b39b
```

-	Platforms:
	-	linux; amd64

### `adminer:4.2.5-standalone` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29251936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7118594f1be3729b2e57a638a1e2eb0da18865ae8ae564b2d0f3a1eaaa3997ab`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-S","0.0.0.0:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:19:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:19:33 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:19:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 18:55:53 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 18:55:54 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 18:55:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 18:55:55 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 18:56:01 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 24 Jan 2017 18:56:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:00:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 24 Jan 2017 19:00:32 GMT
COPY multi:b2b2a1a4e3c0f0bb8ebdcd527fca158bfce5138468926263f86e5bb0cb41970f in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:00:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:00:33 GMT
CMD ["php" "-a"]
# Mon, 30 Jan 2017 17:33:23 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html
# Mon, 30 Jan 2017 17:33:35 GMT
WORKDIR /var/www/html
# Mon, 30 Jan 2017 17:33:37 GMT
RUN apk add --no-cache libpq
# Mon, 30 Jan 2017 17:34:07 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Mon, 30 Jan 2017 17:34:08 GMT
COPY file:8d804cd4dbc8e04fad8dda195fab620d76fe48011fc89db3f1cdf6994204b0f7 in . 
# Mon, 30 Jan 2017 17:34:08 GMT
ENV ADMINER_VERSION=4.2.5
# Mon, 30 Jan 2017 17:34:09 GMT
ENV ADMINER_DOWNLOAD_SHA256=a8d9f5df8a604e75e87670bc1d797bb49cc1047f722a8630bda514fdc407f84f
# Mon, 30 Jan 2017 17:34:11 GMT
RUN curl -fsSL https://www.adminer.org/static/download/$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c -
# Mon, 30 Jan 2017 17:34:23 GMT
USER [adminer]
# Mon, 30 Jan 2017 17:34:23 GMT
CMD ["php" "-S" "0.0.0.0:8080" "-t" "/var/www/html"]
# Mon, 30 Jan 2017 17:34:24 GMT
EXPOSE 8080/tcp
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98bbc5541cfa22aad9e362aa720da725c85fb3a3850668c5ef98af310f907ed`  
		Last Modified: Tue, 24 Jan 2017 19:52:27 GMT  
		Size: 12.7 MB (12747861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ce588b6ccbb5c10d9273d3752cf1a0c94363d0c93fdbf619387e70b56f4941e`  
		Last Modified: Tue, 24 Jan 2017 19:52:25 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4401b628cb4e3acb3e58fa98b10ad7baf21552750c16779374a9104232c152b4`  
		Last Modified: Tue, 24 Jan 2017 19:52:29 GMT  
		Size: 10.5 MB (10483297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64cc6b0f8c5db68ea6bbd0f0f3c89bc5f82370f37d2b69705f4fe14e8d44f14`  
		Last Modified: Tue, 24 Jan 2017 19:52:26 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39660fcf9e588b461a8af058e2889ad4660ba7e36e28dcfd419ab7bc188613c5`  
		Last Modified: Mon, 30 Jan 2017 17:35:17 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed4d6451f6317d9ca7cb70cc9a2583a1da72516e3c83ee0a7027da2eb6f9858`  
		Last Modified: Mon, 30 Jan 2017 17:35:18 GMT  
		Size: 1.2 MB (1172663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c87b96deeadded32c58f862921be478b2d81297b3275f1540055cd929a76d0a`  
		Last Modified: Mon, 30 Jan 2017 17:35:18 GMT  
		Size: 1.4 MB (1355945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a0746078b4b9e3580c8ec2e521afc01f24b31f9dce12c5b211e3e8e56bc2e0`  
		Last Modified: Mon, 30 Jan 2017 17:35:17 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:430c9172bb71996c5bc6313972fe2f86342d75a74a5b8736ef56b07d424e02d8`  
		Last Modified: Mon, 30 Jan 2017 17:35:18 GMT  
		Size: 124.9 KB (124856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.2-standalone`

```console
$ docker pull adminer@sha256:65434809aa96e484b41cff1e04a0836063acc47e5d9a15217bb4e745d186b39b
```

-	Platforms:
	-	linux; amd64

### `adminer:4.2-standalone` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29251936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7118594f1be3729b2e57a638a1e2eb0da18865ae8ae564b2d0f3a1eaaa3997ab`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-S","0.0.0.0:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:19:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:19:33 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:19:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 18:55:53 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 18:55:54 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 18:55:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 18:55:55 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 18:56:01 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 24 Jan 2017 18:56:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:00:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 24 Jan 2017 19:00:32 GMT
COPY multi:b2b2a1a4e3c0f0bb8ebdcd527fca158bfce5138468926263f86e5bb0cb41970f in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:00:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:00:33 GMT
CMD ["php" "-a"]
# Mon, 30 Jan 2017 17:33:23 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html
# Mon, 30 Jan 2017 17:33:35 GMT
WORKDIR /var/www/html
# Mon, 30 Jan 2017 17:33:37 GMT
RUN apk add --no-cache libpq
# Mon, 30 Jan 2017 17:34:07 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Mon, 30 Jan 2017 17:34:08 GMT
COPY file:8d804cd4dbc8e04fad8dda195fab620d76fe48011fc89db3f1cdf6994204b0f7 in . 
# Mon, 30 Jan 2017 17:34:08 GMT
ENV ADMINER_VERSION=4.2.5
# Mon, 30 Jan 2017 17:34:09 GMT
ENV ADMINER_DOWNLOAD_SHA256=a8d9f5df8a604e75e87670bc1d797bb49cc1047f722a8630bda514fdc407f84f
# Mon, 30 Jan 2017 17:34:11 GMT
RUN curl -fsSL https://www.adminer.org/static/download/$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c -
# Mon, 30 Jan 2017 17:34:23 GMT
USER [adminer]
# Mon, 30 Jan 2017 17:34:23 GMT
CMD ["php" "-S" "0.0.0.0:8080" "-t" "/var/www/html"]
# Mon, 30 Jan 2017 17:34:24 GMT
EXPOSE 8080/tcp
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98bbc5541cfa22aad9e362aa720da725c85fb3a3850668c5ef98af310f907ed`  
		Last Modified: Tue, 24 Jan 2017 19:52:27 GMT  
		Size: 12.7 MB (12747861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ce588b6ccbb5c10d9273d3752cf1a0c94363d0c93fdbf619387e70b56f4941e`  
		Last Modified: Tue, 24 Jan 2017 19:52:25 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4401b628cb4e3acb3e58fa98b10ad7baf21552750c16779374a9104232c152b4`  
		Last Modified: Tue, 24 Jan 2017 19:52:29 GMT  
		Size: 10.5 MB (10483297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64cc6b0f8c5db68ea6bbd0f0f3c89bc5f82370f37d2b69705f4fe14e8d44f14`  
		Last Modified: Tue, 24 Jan 2017 19:52:26 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39660fcf9e588b461a8af058e2889ad4660ba7e36e28dcfd419ab7bc188613c5`  
		Last Modified: Mon, 30 Jan 2017 17:35:17 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed4d6451f6317d9ca7cb70cc9a2583a1da72516e3c83ee0a7027da2eb6f9858`  
		Last Modified: Mon, 30 Jan 2017 17:35:18 GMT  
		Size: 1.2 MB (1172663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c87b96deeadded32c58f862921be478b2d81297b3275f1540055cd929a76d0a`  
		Last Modified: Mon, 30 Jan 2017 17:35:18 GMT  
		Size: 1.4 MB (1355945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a0746078b4b9e3580c8ec2e521afc01f24b31f9dce12c5b211e3e8e56bc2e0`  
		Last Modified: Mon, 30 Jan 2017 17:35:17 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:430c9172bb71996c5bc6313972fe2f86342d75a74a5b8736ef56b07d424e02d8`  
		Last Modified: Mon, 30 Jan 2017 17:35:18 GMT  
		Size: 124.9 KB (124856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4-standalone`

```console
$ docker pull adminer@sha256:65434809aa96e484b41cff1e04a0836063acc47e5d9a15217bb4e745d186b39b
```

-	Platforms:
	-	linux; amd64

### `adminer:4-standalone` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29251936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7118594f1be3729b2e57a638a1e2eb0da18865ae8ae564b2d0f3a1eaaa3997ab`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-S","0.0.0.0:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:19:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:19:33 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:19:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 18:55:53 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 18:55:54 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 18:55:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 18:55:55 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 18:56:01 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 24 Jan 2017 18:56:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:00:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 24 Jan 2017 19:00:32 GMT
COPY multi:b2b2a1a4e3c0f0bb8ebdcd527fca158bfce5138468926263f86e5bb0cb41970f in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:00:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:00:33 GMT
CMD ["php" "-a"]
# Mon, 30 Jan 2017 17:33:23 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html
# Mon, 30 Jan 2017 17:33:35 GMT
WORKDIR /var/www/html
# Mon, 30 Jan 2017 17:33:37 GMT
RUN apk add --no-cache libpq
# Mon, 30 Jan 2017 17:34:07 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Mon, 30 Jan 2017 17:34:08 GMT
COPY file:8d804cd4dbc8e04fad8dda195fab620d76fe48011fc89db3f1cdf6994204b0f7 in . 
# Mon, 30 Jan 2017 17:34:08 GMT
ENV ADMINER_VERSION=4.2.5
# Mon, 30 Jan 2017 17:34:09 GMT
ENV ADMINER_DOWNLOAD_SHA256=a8d9f5df8a604e75e87670bc1d797bb49cc1047f722a8630bda514fdc407f84f
# Mon, 30 Jan 2017 17:34:11 GMT
RUN curl -fsSL https://www.adminer.org/static/download/$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c -
# Mon, 30 Jan 2017 17:34:23 GMT
USER [adminer]
# Mon, 30 Jan 2017 17:34:23 GMT
CMD ["php" "-S" "0.0.0.0:8080" "-t" "/var/www/html"]
# Mon, 30 Jan 2017 17:34:24 GMT
EXPOSE 8080/tcp
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98bbc5541cfa22aad9e362aa720da725c85fb3a3850668c5ef98af310f907ed`  
		Last Modified: Tue, 24 Jan 2017 19:52:27 GMT  
		Size: 12.7 MB (12747861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ce588b6ccbb5c10d9273d3752cf1a0c94363d0c93fdbf619387e70b56f4941e`  
		Last Modified: Tue, 24 Jan 2017 19:52:25 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4401b628cb4e3acb3e58fa98b10ad7baf21552750c16779374a9104232c152b4`  
		Last Modified: Tue, 24 Jan 2017 19:52:29 GMT  
		Size: 10.5 MB (10483297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64cc6b0f8c5db68ea6bbd0f0f3c89bc5f82370f37d2b69705f4fe14e8d44f14`  
		Last Modified: Tue, 24 Jan 2017 19:52:26 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39660fcf9e588b461a8af058e2889ad4660ba7e36e28dcfd419ab7bc188613c5`  
		Last Modified: Mon, 30 Jan 2017 17:35:17 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed4d6451f6317d9ca7cb70cc9a2583a1da72516e3c83ee0a7027da2eb6f9858`  
		Last Modified: Mon, 30 Jan 2017 17:35:18 GMT  
		Size: 1.2 MB (1172663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c87b96deeadded32c58f862921be478b2d81297b3275f1540055cd929a76d0a`  
		Last Modified: Mon, 30 Jan 2017 17:35:18 GMT  
		Size: 1.4 MB (1355945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a0746078b4b9e3580c8ec2e521afc01f24b31f9dce12c5b211e3e8e56bc2e0`  
		Last Modified: Mon, 30 Jan 2017 17:35:17 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:430c9172bb71996c5bc6313972fe2f86342d75a74a5b8736ef56b07d424e02d8`  
		Last Modified: Mon, 30 Jan 2017 17:35:18 GMT  
		Size: 124.9 KB (124856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:standalone`

```console
$ docker pull adminer@sha256:65434809aa96e484b41cff1e04a0836063acc47e5d9a15217bb4e745d186b39b
```

-	Platforms:
	-	linux; amd64

### `adminer:standalone` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29251936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7118594f1be3729b2e57a638a1e2eb0da18865ae8ae564b2d0f3a1eaaa3997ab`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-S","0.0.0.0:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:19:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:19:33 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:19:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 18:55:53 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 18:55:54 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 18:55:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 18:55:55 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 18:56:01 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 24 Jan 2017 18:56:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:00:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 24 Jan 2017 19:00:32 GMT
COPY multi:b2b2a1a4e3c0f0bb8ebdcd527fca158bfce5138468926263f86e5bb0cb41970f in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:00:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:00:33 GMT
CMD ["php" "-a"]
# Mon, 30 Jan 2017 17:33:23 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html
# Mon, 30 Jan 2017 17:33:35 GMT
WORKDIR /var/www/html
# Mon, 30 Jan 2017 17:33:37 GMT
RUN apk add --no-cache libpq
# Mon, 30 Jan 2017 17:34:07 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Mon, 30 Jan 2017 17:34:08 GMT
COPY file:8d804cd4dbc8e04fad8dda195fab620d76fe48011fc89db3f1cdf6994204b0f7 in . 
# Mon, 30 Jan 2017 17:34:08 GMT
ENV ADMINER_VERSION=4.2.5
# Mon, 30 Jan 2017 17:34:09 GMT
ENV ADMINER_DOWNLOAD_SHA256=a8d9f5df8a604e75e87670bc1d797bb49cc1047f722a8630bda514fdc407f84f
# Mon, 30 Jan 2017 17:34:11 GMT
RUN curl -fsSL https://www.adminer.org/static/download/$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c -
# Mon, 30 Jan 2017 17:34:23 GMT
USER [adminer]
# Mon, 30 Jan 2017 17:34:23 GMT
CMD ["php" "-S" "0.0.0.0:8080" "-t" "/var/www/html"]
# Mon, 30 Jan 2017 17:34:24 GMT
EXPOSE 8080/tcp
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98bbc5541cfa22aad9e362aa720da725c85fb3a3850668c5ef98af310f907ed`  
		Last Modified: Tue, 24 Jan 2017 19:52:27 GMT  
		Size: 12.7 MB (12747861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ce588b6ccbb5c10d9273d3752cf1a0c94363d0c93fdbf619387e70b56f4941e`  
		Last Modified: Tue, 24 Jan 2017 19:52:25 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4401b628cb4e3acb3e58fa98b10ad7baf21552750c16779374a9104232c152b4`  
		Last Modified: Tue, 24 Jan 2017 19:52:29 GMT  
		Size: 10.5 MB (10483297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64cc6b0f8c5db68ea6bbd0f0f3c89bc5f82370f37d2b69705f4fe14e8d44f14`  
		Last Modified: Tue, 24 Jan 2017 19:52:26 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39660fcf9e588b461a8af058e2889ad4660ba7e36e28dcfd419ab7bc188613c5`  
		Last Modified: Mon, 30 Jan 2017 17:35:17 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed4d6451f6317d9ca7cb70cc9a2583a1da72516e3c83ee0a7027da2eb6f9858`  
		Last Modified: Mon, 30 Jan 2017 17:35:18 GMT  
		Size: 1.2 MB (1172663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c87b96deeadded32c58f862921be478b2d81297b3275f1540055cd929a76d0a`  
		Last Modified: Mon, 30 Jan 2017 17:35:18 GMT  
		Size: 1.4 MB (1355945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a0746078b4b9e3580c8ec2e521afc01f24b31f9dce12c5b211e3e8e56bc2e0`  
		Last Modified: Mon, 30 Jan 2017 17:35:17 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:430c9172bb71996c5bc6313972fe2f86342d75a74a5b8736ef56b07d424e02d8`  
		Last Modified: Mon, 30 Jan 2017 17:35:18 GMT  
		Size: 124.9 KB (124856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.2.5`

```console
$ docker pull adminer@sha256:65434809aa96e484b41cff1e04a0836063acc47e5d9a15217bb4e745d186b39b
```

-	Platforms:
	-	linux; amd64

### `adminer:4.2.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29251936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7118594f1be3729b2e57a638a1e2eb0da18865ae8ae564b2d0f3a1eaaa3997ab`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-S","0.0.0.0:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:19:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:19:33 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:19:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 18:55:53 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 18:55:54 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 18:55:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 18:55:55 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 18:56:01 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 24 Jan 2017 18:56:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:00:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 24 Jan 2017 19:00:32 GMT
COPY multi:b2b2a1a4e3c0f0bb8ebdcd527fca158bfce5138468926263f86e5bb0cb41970f in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:00:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:00:33 GMT
CMD ["php" "-a"]
# Mon, 30 Jan 2017 17:33:23 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html
# Mon, 30 Jan 2017 17:33:35 GMT
WORKDIR /var/www/html
# Mon, 30 Jan 2017 17:33:37 GMT
RUN apk add --no-cache libpq
# Mon, 30 Jan 2017 17:34:07 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Mon, 30 Jan 2017 17:34:08 GMT
COPY file:8d804cd4dbc8e04fad8dda195fab620d76fe48011fc89db3f1cdf6994204b0f7 in . 
# Mon, 30 Jan 2017 17:34:08 GMT
ENV ADMINER_VERSION=4.2.5
# Mon, 30 Jan 2017 17:34:09 GMT
ENV ADMINER_DOWNLOAD_SHA256=a8d9f5df8a604e75e87670bc1d797bb49cc1047f722a8630bda514fdc407f84f
# Mon, 30 Jan 2017 17:34:11 GMT
RUN curl -fsSL https://www.adminer.org/static/download/$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c -
# Mon, 30 Jan 2017 17:34:23 GMT
USER [adminer]
# Mon, 30 Jan 2017 17:34:23 GMT
CMD ["php" "-S" "0.0.0.0:8080" "-t" "/var/www/html"]
# Mon, 30 Jan 2017 17:34:24 GMT
EXPOSE 8080/tcp
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98bbc5541cfa22aad9e362aa720da725c85fb3a3850668c5ef98af310f907ed`  
		Last Modified: Tue, 24 Jan 2017 19:52:27 GMT  
		Size: 12.7 MB (12747861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ce588b6ccbb5c10d9273d3752cf1a0c94363d0c93fdbf619387e70b56f4941e`  
		Last Modified: Tue, 24 Jan 2017 19:52:25 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4401b628cb4e3acb3e58fa98b10ad7baf21552750c16779374a9104232c152b4`  
		Last Modified: Tue, 24 Jan 2017 19:52:29 GMT  
		Size: 10.5 MB (10483297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64cc6b0f8c5db68ea6bbd0f0f3c89bc5f82370f37d2b69705f4fe14e8d44f14`  
		Last Modified: Tue, 24 Jan 2017 19:52:26 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39660fcf9e588b461a8af058e2889ad4660ba7e36e28dcfd419ab7bc188613c5`  
		Last Modified: Mon, 30 Jan 2017 17:35:17 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed4d6451f6317d9ca7cb70cc9a2583a1da72516e3c83ee0a7027da2eb6f9858`  
		Last Modified: Mon, 30 Jan 2017 17:35:18 GMT  
		Size: 1.2 MB (1172663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c87b96deeadded32c58f862921be478b2d81297b3275f1540055cd929a76d0a`  
		Last Modified: Mon, 30 Jan 2017 17:35:18 GMT  
		Size: 1.4 MB (1355945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a0746078b4b9e3580c8ec2e521afc01f24b31f9dce12c5b211e3e8e56bc2e0`  
		Last Modified: Mon, 30 Jan 2017 17:35:17 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:430c9172bb71996c5bc6313972fe2f86342d75a74a5b8736ef56b07d424e02d8`  
		Last Modified: Mon, 30 Jan 2017 17:35:18 GMT  
		Size: 124.9 KB (124856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.2`

```console
$ docker pull adminer@sha256:65434809aa96e484b41cff1e04a0836063acc47e5d9a15217bb4e745d186b39b
```

-	Platforms:
	-	linux; amd64

### `adminer:4.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29251936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7118594f1be3729b2e57a638a1e2eb0da18865ae8ae564b2d0f3a1eaaa3997ab`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-S","0.0.0.0:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:19:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:19:33 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:19:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 18:55:53 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 18:55:54 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 18:55:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 18:55:55 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 18:56:01 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 24 Jan 2017 18:56:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:00:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 24 Jan 2017 19:00:32 GMT
COPY multi:b2b2a1a4e3c0f0bb8ebdcd527fca158bfce5138468926263f86e5bb0cb41970f in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:00:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:00:33 GMT
CMD ["php" "-a"]
# Mon, 30 Jan 2017 17:33:23 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html
# Mon, 30 Jan 2017 17:33:35 GMT
WORKDIR /var/www/html
# Mon, 30 Jan 2017 17:33:37 GMT
RUN apk add --no-cache libpq
# Mon, 30 Jan 2017 17:34:07 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Mon, 30 Jan 2017 17:34:08 GMT
COPY file:8d804cd4dbc8e04fad8dda195fab620d76fe48011fc89db3f1cdf6994204b0f7 in . 
# Mon, 30 Jan 2017 17:34:08 GMT
ENV ADMINER_VERSION=4.2.5
# Mon, 30 Jan 2017 17:34:09 GMT
ENV ADMINER_DOWNLOAD_SHA256=a8d9f5df8a604e75e87670bc1d797bb49cc1047f722a8630bda514fdc407f84f
# Mon, 30 Jan 2017 17:34:11 GMT
RUN curl -fsSL https://www.adminer.org/static/download/$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c -
# Mon, 30 Jan 2017 17:34:23 GMT
USER [adminer]
# Mon, 30 Jan 2017 17:34:23 GMT
CMD ["php" "-S" "0.0.0.0:8080" "-t" "/var/www/html"]
# Mon, 30 Jan 2017 17:34:24 GMT
EXPOSE 8080/tcp
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98bbc5541cfa22aad9e362aa720da725c85fb3a3850668c5ef98af310f907ed`  
		Last Modified: Tue, 24 Jan 2017 19:52:27 GMT  
		Size: 12.7 MB (12747861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ce588b6ccbb5c10d9273d3752cf1a0c94363d0c93fdbf619387e70b56f4941e`  
		Last Modified: Tue, 24 Jan 2017 19:52:25 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4401b628cb4e3acb3e58fa98b10ad7baf21552750c16779374a9104232c152b4`  
		Last Modified: Tue, 24 Jan 2017 19:52:29 GMT  
		Size: 10.5 MB (10483297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64cc6b0f8c5db68ea6bbd0f0f3c89bc5f82370f37d2b69705f4fe14e8d44f14`  
		Last Modified: Tue, 24 Jan 2017 19:52:26 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39660fcf9e588b461a8af058e2889ad4660ba7e36e28dcfd419ab7bc188613c5`  
		Last Modified: Mon, 30 Jan 2017 17:35:17 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed4d6451f6317d9ca7cb70cc9a2583a1da72516e3c83ee0a7027da2eb6f9858`  
		Last Modified: Mon, 30 Jan 2017 17:35:18 GMT  
		Size: 1.2 MB (1172663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c87b96deeadded32c58f862921be478b2d81297b3275f1540055cd929a76d0a`  
		Last Modified: Mon, 30 Jan 2017 17:35:18 GMT  
		Size: 1.4 MB (1355945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a0746078b4b9e3580c8ec2e521afc01f24b31f9dce12c5b211e3e8e56bc2e0`  
		Last Modified: Mon, 30 Jan 2017 17:35:17 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:430c9172bb71996c5bc6313972fe2f86342d75a74a5b8736ef56b07d424e02d8`  
		Last Modified: Mon, 30 Jan 2017 17:35:18 GMT  
		Size: 124.9 KB (124856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4`

```console
$ docker pull adminer@sha256:65434809aa96e484b41cff1e04a0836063acc47e5d9a15217bb4e745d186b39b
```

-	Platforms:
	-	linux; amd64

### `adminer:4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29251936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7118594f1be3729b2e57a638a1e2eb0da18865ae8ae564b2d0f3a1eaaa3997ab`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-S","0.0.0.0:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:19:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:19:33 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:19:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 18:55:53 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 18:55:54 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 18:55:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 18:55:55 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 18:56:01 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 24 Jan 2017 18:56:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:00:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 24 Jan 2017 19:00:32 GMT
COPY multi:b2b2a1a4e3c0f0bb8ebdcd527fca158bfce5138468926263f86e5bb0cb41970f in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:00:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:00:33 GMT
CMD ["php" "-a"]
# Mon, 30 Jan 2017 17:33:23 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html
# Mon, 30 Jan 2017 17:33:35 GMT
WORKDIR /var/www/html
# Mon, 30 Jan 2017 17:33:37 GMT
RUN apk add --no-cache libpq
# Mon, 30 Jan 2017 17:34:07 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Mon, 30 Jan 2017 17:34:08 GMT
COPY file:8d804cd4dbc8e04fad8dda195fab620d76fe48011fc89db3f1cdf6994204b0f7 in . 
# Mon, 30 Jan 2017 17:34:08 GMT
ENV ADMINER_VERSION=4.2.5
# Mon, 30 Jan 2017 17:34:09 GMT
ENV ADMINER_DOWNLOAD_SHA256=a8d9f5df8a604e75e87670bc1d797bb49cc1047f722a8630bda514fdc407f84f
# Mon, 30 Jan 2017 17:34:11 GMT
RUN curl -fsSL https://www.adminer.org/static/download/$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c -
# Mon, 30 Jan 2017 17:34:23 GMT
USER [adminer]
# Mon, 30 Jan 2017 17:34:23 GMT
CMD ["php" "-S" "0.0.0.0:8080" "-t" "/var/www/html"]
# Mon, 30 Jan 2017 17:34:24 GMT
EXPOSE 8080/tcp
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98bbc5541cfa22aad9e362aa720da725c85fb3a3850668c5ef98af310f907ed`  
		Last Modified: Tue, 24 Jan 2017 19:52:27 GMT  
		Size: 12.7 MB (12747861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ce588b6ccbb5c10d9273d3752cf1a0c94363d0c93fdbf619387e70b56f4941e`  
		Last Modified: Tue, 24 Jan 2017 19:52:25 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4401b628cb4e3acb3e58fa98b10ad7baf21552750c16779374a9104232c152b4`  
		Last Modified: Tue, 24 Jan 2017 19:52:29 GMT  
		Size: 10.5 MB (10483297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64cc6b0f8c5db68ea6bbd0f0f3c89bc5f82370f37d2b69705f4fe14e8d44f14`  
		Last Modified: Tue, 24 Jan 2017 19:52:26 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39660fcf9e588b461a8af058e2889ad4660ba7e36e28dcfd419ab7bc188613c5`  
		Last Modified: Mon, 30 Jan 2017 17:35:17 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed4d6451f6317d9ca7cb70cc9a2583a1da72516e3c83ee0a7027da2eb6f9858`  
		Last Modified: Mon, 30 Jan 2017 17:35:18 GMT  
		Size: 1.2 MB (1172663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c87b96deeadded32c58f862921be478b2d81297b3275f1540055cd929a76d0a`  
		Last Modified: Mon, 30 Jan 2017 17:35:18 GMT  
		Size: 1.4 MB (1355945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a0746078b4b9e3580c8ec2e521afc01f24b31f9dce12c5b211e3e8e56bc2e0`  
		Last Modified: Mon, 30 Jan 2017 17:35:17 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:430c9172bb71996c5bc6313972fe2f86342d75a74a5b8736ef56b07d424e02d8`  
		Last Modified: Mon, 30 Jan 2017 17:35:18 GMT  
		Size: 124.9 KB (124856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:latest`

```console
$ docker pull adminer@sha256:65434809aa96e484b41cff1e04a0836063acc47e5d9a15217bb4e745d186b39b
```

-	Platforms:
	-	linux; amd64

### `adminer:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29251936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7118594f1be3729b2e57a638a1e2eb0da18865ae8ae564b2d0f3a1eaaa3997ab`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-S","0.0.0.0:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:19:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:19:33 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:19:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 18:55:53 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 18:55:54 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 18:55:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 18:55:55 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 18:56:01 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 24 Jan 2017 18:56:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:00:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 24 Jan 2017 19:00:32 GMT
COPY multi:b2b2a1a4e3c0f0bb8ebdcd527fca158bfce5138468926263f86e5bb0cb41970f in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:00:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:00:33 GMT
CMD ["php" "-a"]
# Mon, 30 Jan 2017 17:33:23 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html
# Mon, 30 Jan 2017 17:33:35 GMT
WORKDIR /var/www/html
# Mon, 30 Jan 2017 17:33:37 GMT
RUN apk add --no-cache libpq
# Mon, 30 Jan 2017 17:34:07 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Mon, 30 Jan 2017 17:34:08 GMT
COPY file:8d804cd4dbc8e04fad8dda195fab620d76fe48011fc89db3f1cdf6994204b0f7 in . 
# Mon, 30 Jan 2017 17:34:08 GMT
ENV ADMINER_VERSION=4.2.5
# Mon, 30 Jan 2017 17:34:09 GMT
ENV ADMINER_DOWNLOAD_SHA256=a8d9f5df8a604e75e87670bc1d797bb49cc1047f722a8630bda514fdc407f84f
# Mon, 30 Jan 2017 17:34:11 GMT
RUN curl -fsSL https://www.adminer.org/static/download/$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c -
# Mon, 30 Jan 2017 17:34:23 GMT
USER [adminer]
# Mon, 30 Jan 2017 17:34:23 GMT
CMD ["php" "-S" "0.0.0.0:8080" "-t" "/var/www/html"]
# Mon, 30 Jan 2017 17:34:24 GMT
EXPOSE 8080/tcp
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98bbc5541cfa22aad9e362aa720da725c85fb3a3850668c5ef98af310f907ed`  
		Last Modified: Tue, 24 Jan 2017 19:52:27 GMT  
		Size: 12.7 MB (12747861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ce588b6ccbb5c10d9273d3752cf1a0c94363d0c93fdbf619387e70b56f4941e`  
		Last Modified: Tue, 24 Jan 2017 19:52:25 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4401b628cb4e3acb3e58fa98b10ad7baf21552750c16779374a9104232c152b4`  
		Last Modified: Tue, 24 Jan 2017 19:52:29 GMT  
		Size: 10.5 MB (10483297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64cc6b0f8c5db68ea6bbd0f0f3c89bc5f82370f37d2b69705f4fe14e8d44f14`  
		Last Modified: Tue, 24 Jan 2017 19:52:26 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39660fcf9e588b461a8af058e2889ad4660ba7e36e28dcfd419ab7bc188613c5`  
		Last Modified: Mon, 30 Jan 2017 17:35:17 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed4d6451f6317d9ca7cb70cc9a2583a1da72516e3c83ee0a7027da2eb6f9858`  
		Last Modified: Mon, 30 Jan 2017 17:35:18 GMT  
		Size: 1.2 MB (1172663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c87b96deeadded32c58f862921be478b2d81297b3275f1540055cd929a76d0a`  
		Last Modified: Mon, 30 Jan 2017 17:35:18 GMT  
		Size: 1.4 MB (1355945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a0746078b4b9e3580c8ec2e521afc01f24b31f9dce12c5b211e3e8e56bc2e0`  
		Last Modified: Mon, 30 Jan 2017 17:35:17 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:430c9172bb71996c5bc6313972fe2f86342d75a74a5b8736ef56b07d424e02d8`  
		Last Modified: Mon, 30 Jan 2017 17:35:18 GMT  
		Size: 124.9 KB (124856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.2.5-fastcgi`

```console
$ docker pull adminer@sha256:1aa7417286c5c60f788edab81ba6aea0745f515110afd4efe746d492f1b56c49
```

-	Platforms:
	-	linux; amd64

### `adminer:4.2.5-fastcgi` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (32997542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:562ed9123fb18d8a0499b3e797d52627855565cda13cfdee06d59d7c1dfe759d`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:07:31 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:07:32 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:07:32 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:07:45 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:07:51 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 24 Jan 2017 19:08:00 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:11:53 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 24 Jan 2017 19:11:55 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:11:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:11:56 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:11:57 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 24 Jan 2017 19:11:57 GMT
EXPOSE 9000/tcp
# Tue, 24 Jan 2017 19:11:58 GMT
CMD ["php-fpm"]
# Mon, 30 Jan 2017 17:34:26 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html
# Mon, 30 Jan 2017 17:34:40 GMT
RUN apk add --no-cache libpq
# Mon, 30 Jan 2017 17:34:56 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Mon, 30 Jan 2017 17:34:56 GMT
COPY file:8d804cd4dbc8e04fad8dda195fab620d76fe48011fc89db3f1cdf6994204b0f7 in . 
# Mon, 30 Jan 2017 17:34:57 GMT
ENV ADMINER_VERSION=4.2.5
# Mon, 30 Jan 2017 17:34:57 GMT
ENV ADMINER_DOWNLOAD_SHA256=a8d9f5df8a604e75e87670bc1d797bb49cc1047f722a8630bda514fdc407f84f
# Mon, 30 Jan 2017 17:35:00 GMT
RUN curl -fsSL https://www.adminer.org/static/download/$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c -
# Mon, 30 Jan 2017 17:35:00 GMT
USER [adminer]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579a555d6d7681569daf378dbefd2ab7ef3788ab44c0c37e2696b1a255e4012e`  
		Last Modified: Tue, 24 Jan 2017 19:54:20 GMT  
		Size: 12.7 MB (12747860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75dbd8d57436735640451de7d66d948e6094bff66a971ce367f332f3f32b1cd1`  
		Last Modified: Tue, 24 Jan 2017 19:54:17 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c7435436351c5001bf3d2b6e26d86104ed23bf9c1ac5febd313b325ea28f7c`  
		Last Modified: Tue, 24 Jan 2017 19:54:21 GMT  
		Size: 14.2 MB (14221129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4676d6fcb3974b0c8f5997d77426f4f232e4595cfcd65c45b6201e856a3ecf`  
		Last Modified: Tue, 24 Jan 2017 19:54:16 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cdb778cbaf191e8ce5399db909b2ff14f2ee18259d4669d221d8a6a92691553`  
		Last Modified: Tue, 24 Jan 2017 19:54:19 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a518d61a2ae170c387edb619134545cf038e2174be07903d3bbb8ab5f8409e6e`  
		Last Modified: Tue, 24 Jan 2017 19:54:17 GMT  
		Size: 7.7 KB (7675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f98537d4231aec2163206968180f81d62896439648bac81947a358b19e5c46f`  
		Last Modified: Mon, 30 Jan 2017 17:37:24 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26d2ded909a113241418d1ac983852a42d8186d01f036adf5ab0cfdaaa7d006`  
		Last Modified: Mon, 30 Jan 2017 17:37:24 GMT  
		Size: 1.2 MB (1172680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3204325438889511334748f66d0daa184457f9affc7a985db16b1e54abcf5142`  
		Last Modified: Mon, 30 Jan 2017 17:37:24 GMT  
		Size: 1.4 MB (1355950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5da5f3646e64dc3ccdcc830f6a5b1f0913edf28c2c5e136c87759d9e718d98b`  
		Last Modified: Mon, 30 Jan 2017 17:37:23 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03ff93abe098d7a3049d52f1ddf6ada7fd5960bbb2295b57b61dd3250d57251`  
		Last Modified: Mon, 30 Jan 2017 17:37:24 GMT  
		Size: 124.9 KB (124853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.2-fastcgi`

```console
$ docker pull adminer@sha256:1aa7417286c5c60f788edab81ba6aea0745f515110afd4efe746d492f1b56c49
```

-	Platforms:
	-	linux; amd64

### `adminer:4.2-fastcgi` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (32997542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:562ed9123fb18d8a0499b3e797d52627855565cda13cfdee06d59d7c1dfe759d`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:07:31 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:07:32 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:07:32 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:07:45 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:07:51 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 24 Jan 2017 19:08:00 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:11:53 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 24 Jan 2017 19:11:55 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:11:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:11:56 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:11:57 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 24 Jan 2017 19:11:57 GMT
EXPOSE 9000/tcp
# Tue, 24 Jan 2017 19:11:58 GMT
CMD ["php-fpm"]
# Mon, 30 Jan 2017 17:34:26 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html
# Mon, 30 Jan 2017 17:34:40 GMT
RUN apk add --no-cache libpq
# Mon, 30 Jan 2017 17:34:56 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Mon, 30 Jan 2017 17:34:56 GMT
COPY file:8d804cd4dbc8e04fad8dda195fab620d76fe48011fc89db3f1cdf6994204b0f7 in . 
# Mon, 30 Jan 2017 17:34:57 GMT
ENV ADMINER_VERSION=4.2.5
# Mon, 30 Jan 2017 17:34:57 GMT
ENV ADMINER_DOWNLOAD_SHA256=a8d9f5df8a604e75e87670bc1d797bb49cc1047f722a8630bda514fdc407f84f
# Mon, 30 Jan 2017 17:35:00 GMT
RUN curl -fsSL https://www.adminer.org/static/download/$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c -
# Mon, 30 Jan 2017 17:35:00 GMT
USER [adminer]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579a555d6d7681569daf378dbefd2ab7ef3788ab44c0c37e2696b1a255e4012e`  
		Last Modified: Tue, 24 Jan 2017 19:54:20 GMT  
		Size: 12.7 MB (12747860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75dbd8d57436735640451de7d66d948e6094bff66a971ce367f332f3f32b1cd1`  
		Last Modified: Tue, 24 Jan 2017 19:54:17 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c7435436351c5001bf3d2b6e26d86104ed23bf9c1ac5febd313b325ea28f7c`  
		Last Modified: Tue, 24 Jan 2017 19:54:21 GMT  
		Size: 14.2 MB (14221129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4676d6fcb3974b0c8f5997d77426f4f232e4595cfcd65c45b6201e856a3ecf`  
		Last Modified: Tue, 24 Jan 2017 19:54:16 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cdb778cbaf191e8ce5399db909b2ff14f2ee18259d4669d221d8a6a92691553`  
		Last Modified: Tue, 24 Jan 2017 19:54:19 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a518d61a2ae170c387edb619134545cf038e2174be07903d3bbb8ab5f8409e6e`  
		Last Modified: Tue, 24 Jan 2017 19:54:17 GMT  
		Size: 7.7 KB (7675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f98537d4231aec2163206968180f81d62896439648bac81947a358b19e5c46f`  
		Last Modified: Mon, 30 Jan 2017 17:37:24 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26d2ded909a113241418d1ac983852a42d8186d01f036adf5ab0cfdaaa7d006`  
		Last Modified: Mon, 30 Jan 2017 17:37:24 GMT  
		Size: 1.2 MB (1172680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3204325438889511334748f66d0daa184457f9affc7a985db16b1e54abcf5142`  
		Last Modified: Mon, 30 Jan 2017 17:37:24 GMT  
		Size: 1.4 MB (1355950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5da5f3646e64dc3ccdcc830f6a5b1f0913edf28c2c5e136c87759d9e718d98b`  
		Last Modified: Mon, 30 Jan 2017 17:37:23 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03ff93abe098d7a3049d52f1ddf6ada7fd5960bbb2295b57b61dd3250d57251`  
		Last Modified: Mon, 30 Jan 2017 17:37:24 GMT  
		Size: 124.9 KB (124853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4-fastcgi`

```console
$ docker pull adminer@sha256:1aa7417286c5c60f788edab81ba6aea0745f515110afd4efe746d492f1b56c49
```

-	Platforms:
	-	linux; amd64

### `adminer:4-fastcgi` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (32997542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:562ed9123fb18d8a0499b3e797d52627855565cda13cfdee06d59d7c1dfe759d`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:07:31 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:07:32 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:07:32 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:07:45 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:07:51 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 24 Jan 2017 19:08:00 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:11:53 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 24 Jan 2017 19:11:55 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:11:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:11:56 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:11:57 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 24 Jan 2017 19:11:57 GMT
EXPOSE 9000/tcp
# Tue, 24 Jan 2017 19:11:58 GMT
CMD ["php-fpm"]
# Mon, 30 Jan 2017 17:34:26 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html
# Mon, 30 Jan 2017 17:34:40 GMT
RUN apk add --no-cache libpq
# Mon, 30 Jan 2017 17:34:56 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Mon, 30 Jan 2017 17:34:56 GMT
COPY file:8d804cd4dbc8e04fad8dda195fab620d76fe48011fc89db3f1cdf6994204b0f7 in . 
# Mon, 30 Jan 2017 17:34:57 GMT
ENV ADMINER_VERSION=4.2.5
# Mon, 30 Jan 2017 17:34:57 GMT
ENV ADMINER_DOWNLOAD_SHA256=a8d9f5df8a604e75e87670bc1d797bb49cc1047f722a8630bda514fdc407f84f
# Mon, 30 Jan 2017 17:35:00 GMT
RUN curl -fsSL https://www.adminer.org/static/download/$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c -
# Mon, 30 Jan 2017 17:35:00 GMT
USER [adminer]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579a555d6d7681569daf378dbefd2ab7ef3788ab44c0c37e2696b1a255e4012e`  
		Last Modified: Tue, 24 Jan 2017 19:54:20 GMT  
		Size: 12.7 MB (12747860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75dbd8d57436735640451de7d66d948e6094bff66a971ce367f332f3f32b1cd1`  
		Last Modified: Tue, 24 Jan 2017 19:54:17 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c7435436351c5001bf3d2b6e26d86104ed23bf9c1ac5febd313b325ea28f7c`  
		Last Modified: Tue, 24 Jan 2017 19:54:21 GMT  
		Size: 14.2 MB (14221129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4676d6fcb3974b0c8f5997d77426f4f232e4595cfcd65c45b6201e856a3ecf`  
		Last Modified: Tue, 24 Jan 2017 19:54:16 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cdb778cbaf191e8ce5399db909b2ff14f2ee18259d4669d221d8a6a92691553`  
		Last Modified: Tue, 24 Jan 2017 19:54:19 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a518d61a2ae170c387edb619134545cf038e2174be07903d3bbb8ab5f8409e6e`  
		Last Modified: Tue, 24 Jan 2017 19:54:17 GMT  
		Size: 7.7 KB (7675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f98537d4231aec2163206968180f81d62896439648bac81947a358b19e5c46f`  
		Last Modified: Mon, 30 Jan 2017 17:37:24 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26d2ded909a113241418d1ac983852a42d8186d01f036adf5ab0cfdaaa7d006`  
		Last Modified: Mon, 30 Jan 2017 17:37:24 GMT  
		Size: 1.2 MB (1172680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3204325438889511334748f66d0daa184457f9affc7a985db16b1e54abcf5142`  
		Last Modified: Mon, 30 Jan 2017 17:37:24 GMT  
		Size: 1.4 MB (1355950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5da5f3646e64dc3ccdcc830f6a5b1f0913edf28c2c5e136c87759d9e718d98b`  
		Last Modified: Mon, 30 Jan 2017 17:37:23 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03ff93abe098d7a3049d52f1ddf6ada7fd5960bbb2295b57b61dd3250d57251`  
		Last Modified: Mon, 30 Jan 2017 17:37:24 GMT  
		Size: 124.9 KB (124853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:fastcgi`

```console
$ docker pull adminer@sha256:1aa7417286c5c60f788edab81ba6aea0745f515110afd4efe746d492f1b56c49
```

-	Platforms:
	-	linux; amd64

### `adminer:fastcgi` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (32997542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:562ed9123fb18d8a0499b3e797d52627855565cda13cfdee06d59d7c1dfe759d`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 27 Dec 2016 19:18:56 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Tue, 27 Dec 2016 19:18:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:19:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 27 Dec 2016 19:19:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 27 Dec 2016 19:31:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 27 Dec 2016 19:31:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:07:31 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:07:32 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:07:32 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:07:45 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:07:51 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 24 Jan 2017 19:08:00 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:11:53 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Tue, 24 Jan 2017 19:11:55 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:11:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:11:56 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:11:57 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 24 Jan 2017 19:11:57 GMT
EXPOSE 9000/tcp
# Tue, 24 Jan 2017 19:11:58 GMT
CMD ["php-fpm"]
# Mon, 30 Jan 2017 17:34:26 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html
# Mon, 30 Jan 2017 17:34:40 GMT
RUN apk add --no-cache libpq
# Mon, 30 Jan 2017 17:34:56 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Mon, 30 Jan 2017 17:34:56 GMT
COPY file:8d804cd4dbc8e04fad8dda195fab620d76fe48011fc89db3f1cdf6994204b0f7 in . 
# Mon, 30 Jan 2017 17:34:57 GMT
ENV ADMINER_VERSION=4.2.5
# Mon, 30 Jan 2017 17:34:57 GMT
ENV ADMINER_DOWNLOAD_SHA256=a8d9f5df8a604e75e87670bc1d797bb49cc1047f722a8630bda514fdc407f84f
# Mon, 30 Jan 2017 17:35:00 GMT
RUN curl -fsSL https://www.adminer.org/static/download/$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c -
# Mon, 30 Jan 2017 17:35:00 GMT
USER [adminer]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d6bcc00046712ac206a652bc839e40f8f4e6f580123a1a7ac21b92fd757364`  
		Last Modified: Tue, 27 Dec 2016 21:08:34 GMT  
		Size: 1.0 MB (1048526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3822a33fdb297624accfaaaa052a8f4850ae1450aa3edeefcfe0e693a54e689`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a47789bbdf4b2c131bf8ba82cc36e09ad0b022627f22862898cae483511aeb`  
		Last Modified: Tue, 27 Dec 2016 21:08:33 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579a555d6d7681569daf378dbefd2ab7ef3788ab44c0c37e2696b1a255e4012e`  
		Last Modified: Tue, 24 Jan 2017 19:54:20 GMT  
		Size: 12.7 MB (12747860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75dbd8d57436735640451de7d66d948e6094bff66a971ce367f332f3f32b1cd1`  
		Last Modified: Tue, 24 Jan 2017 19:54:17 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c7435436351c5001bf3d2b6e26d86104ed23bf9c1ac5febd313b325ea28f7c`  
		Last Modified: Tue, 24 Jan 2017 19:54:21 GMT  
		Size: 14.2 MB (14221129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4676d6fcb3974b0c8f5997d77426f4f232e4595cfcd65c45b6201e856a3ecf`  
		Last Modified: Tue, 24 Jan 2017 19:54:16 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cdb778cbaf191e8ce5399db909b2ff14f2ee18259d4669d221d8a6a92691553`  
		Last Modified: Tue, 24 Jan 2017 19:54:19 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a518d61a2ae170c387edb619134545cf038e2174be07903d3bbb8ab5f8409e6e`  
		Last Modified: Tue, 24 Jan 2017 19:54:17 GMT  
		Size: 7.7 KB (7675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f98537d4231aec2163206968180f81d62896439648bac81947a358b19e5c46f`  
		Last Modified: Mon, 30 Jan 2017 17:37:24 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26d2ded909a113241418d1ac983852a42d8186d01f036adf5ab0cfdaaa7d006`  
		Last Modified: Mon, 30 Jan 2017 17:37:24 GMT  
		Size: 1.2 MB (1172680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3204325438889511334748f66d0daa184457f9affc7a985db16b1e54abcf5142`  
		Last Modified: Mon, 30 Jan 2017 17:37:24 GMT  
		Size: 1.4 MB (1355950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5da5f3646e64dc3ccdcc830f6a5b1f0913edf28c2c5e136c87759d9e718d98b`  
		Last Modified: Mon, 30 Jan 2017 17:37:23 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03ff93abe098d7a3049d52f1ddf6ada7fd5960bbb2295b57b61dd3250d57251`  
		Last Modified: Mon, 30 Jan 2017 17:37:24 GMT  
		Size: 124.9 KB (124853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
