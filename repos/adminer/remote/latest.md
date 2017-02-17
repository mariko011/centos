## `adminer:latest`

```console
$ docker pull adminer@sha256:e26b9230fccfc3c8516c8bad282a04ab33f4065d62e2aeafe4330ab976ed259d
```

-	Platforms:
	-	linux; amd64

### `adminer:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29269360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4057a3e0e930dfc85aed754eb86de779bb60f8ea6edcde2665de9ae558ab37b0`
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
# Fri, 17 Feb 2017 19:04:51 GMT
ENV PHP_VERSION=7.0.16
# Fri, 17 Feb 2017 19:04:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Fri, 17 Feb 2017 19:04:52 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Fri, 17 Feb 2017 19:04:59 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 17 Feb 2017 19:05:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 17 Feb 2017 19:10:06 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 17 Feb 2017 19:10:08 GMT
COPY multi:b2b2a1a4e3c0f0bb8ebdcd527fca158bfce5138468926263f86e5bb0cb41970f in /usr/local/bin/ 
# Fri, 17 Feb 2017 19:10:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 17 Feb 2017 19:10:10 GMT
CMD ["php" "-a"]
# Fri, 17 Feb 2017 20:20:20 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html
# Fri, 17 Feb 2017 20:20:20 GMT
WORKDIR /var/www/html
# Fri, 17 Feb 2017 20:20:22 GMT
RUN apk add --no-cache libpq
# Fri, 17 Feb 2017 20:20:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 17 Feb 2017 20:20:36 GMT
COPY file:8d804cd4dbc8e04fad8dda195fab620d76fe48011fc89db3f1cdf6994204b0f7 in . 
# Fri, 17 Feb 2017 20:20:37 GMT
ENV ADMINER_VERSION=4.2.5
# Fri, 17 Feb 2017 20:20:37 GMT
ENV ADMINER_DOWNLOAD_SHA256=a8d9f5df8a604e75e87670bc1d797bb49cc1047f722a8630bda514fdc407f84f
# Fri, 17 Feb 2017 20:20:39 GMT
RUN curl -fsSL https://www.adminer.org/static/download/$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c -
# Fri, 17 Feb 2017 20:20:40 GMT
USER [adminer]
# Fri, 17 Feb 2017 20:20:40 GMT
CMD ["php" "-S" "0.0.0.0:8080" "-t" "/var/www/html"]
# Fri, 17 Feb 2017 20:20:40 GMT
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
	-	`sha256:0ffbfe21cb9713381f74dd14745879dee1f7ab2c10c3f533036324e627127260`  
		Last Modified: Fri, 17 Feb 2017 19:45:17 GMT  
		Size: 12.8 MB (12760659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e880277fc6197096230f134210553e7ead342a4aff52d9606e2fe052a96813b2`  
		Last Modified: Fri, 17 Feb 2017 19:45:15 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6452406eb0857adcf4092d75a1c02b28213489dab7bd753877e768268c174f`  
		Last Modified: Fri, 17 Feb 2017 19:45:19 GMT  
		Size: 11.7 MB (11727667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a8e8a5e629855186c1847bb3dd10f06b980417e9e570c2104c41f98f96af57`  
		Last Modified: Fri, 17 Feb 2017 19:45:15 GMT  
		Size: 2.0 KB (2002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c78adc61fab9a5739fb21029c27ee5238f3df14017293fcfcade5e5467880d`  
		Last Modified: Fri, 17 Feb 2017 20:22:12 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127702ff5ac5c826afbf439d5c9cee5f07f0418375061c29ade512784edd3d99`  
		Last Modified: Fri, 17 Feb 2017 20:22:13 GMT  
		Size: 1.2 MB (1172588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2b104effa4c95bea1f2f4545ece75679e944c0dbdcbe6cfcd301054f2a9597`  
		Last Modified: Fri, 17 Feb 2017 20:22:12 GMT  
		Size: 116.3 KB (116275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28690c15ac97babf4dae3cbe30703b48e56c9f84612425fdb65265c4dec83095`  
		Last Modified: Fri, 17 Feb 2017 20:22:13 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db4a0d38d23aef53169438f5acb5d6ce1a898f27b3e0f3554760b31559f88bea`  
		Last Modified: Fri, 17 Feb 2017 20:22:13 GMT  
		Size: 124.9 KB (124857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
