<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `adminer`

-	[`adminer:4.3.1-standalone`](#adminer431-standalone)
-	[`adminer:4.3-standalone`](#adminer43-standalone)
-	[`adminer:4-standalone`](#adminer4-standalone)
-	[`adminer:standalone`](#adminerstandalone)
-	[`adminer:4.3.1`](#adminer431)
-	[`adminer:4.3`](#adminer43)
-	[`adminer:4`](#adminer4)
-	[`adminer:latest`](#adminerlatest)
-	[`adminer:4.3.1-fastcgi`](#adminer431-fastcgi)
-	[`adminer:4.3-fastcgi`](#adminer43-fastcgi)
-	[`adminer:4-fastcgi`](#adminer4-fastcgi)
-	[`adminer:fastcgi`](#adminerfastcgi)

## `adminer:4.3.1-standalone`

```console
$ docker pull adminer@sha256:60765d185ec01574b0b896e7b62972639d0db8ffc730ca89f88c7f9540c6b1fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `adminer:4.3.1-standalone` - linux; amd64

```console
$ docker pull adminer@sha256:d42d07bf1e6baabd46d12b78225d04bf630980d19758230400e24c9f08f08283
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27797127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb84d13bc41bf6dd2aeff5d9c222c718e0ff4c0028d6edb2b4a0fcb386ce78e7`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Wed, 28 Jun 2017 21:21:29 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 31 Aug 2017 18:51:12 GMT
ENV PHP_VERSION=7.0.23
# Thu, 31 Aug 2017 18:51:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Thu, 31 Aug 2017 18:51:12 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Thu, 31 Aug 2017 18:51:20 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 31 Aug 2017 18:51:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 31 Aug 2017 18:55:18 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 31 Aug 2017 18:55:19 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Thu, 31 Aug 2017 18:55:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 31 Aug 2017 18:55:19 GMT
CMD ["php" "-a"]
# Tue, 12 Sep 2017 23:30:19 GMT
STOPSIGNAL [SIGINT]
# Tue, 12 Sep 2017 23:30:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Tue, 12 Sep 2017 23:30:20 GMT
WORKDIR /var/www/html
# Tue, 12 Sep 2017 23:30:23 GMT
RUN apk add --no-cache libpq
# Tue, 12 Sep 2017 23:30:39 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Tue, 12 Sep 2017 23:30:40 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Tue, 12 Sep 2017 23:30:40 GMT
ENV ADMINER_VERSION=4.3.1
# Tue, 12 Sep 2017 23:30:40 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Tue, 12 Sep 2017 23:30:40 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Tue, 12 Sep 2017 23:30:42 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Tue, 12 Sep 2017 23:30:43 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:30:43 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 12 Sep 2017 23:30:43 GMT
USER [adminer]
# Tue, 12 Sep 2017 23:30:43 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Tue, 12 Sep 2017 23:30:43 GMT
EXPOSE 8080/tcp
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
	-	`sha256:e90e3a914eee3616e0d1b3064f6c26790d6ded2932d2195b3104ca809c636b76`  
		Last Modified: Thu, 31 Aug 2017 19:18:11 GMT  
		Size: 12.1 MB (12126529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d8fd648a561f443a39ab47dfce513547fea6da4cc414f857ca13f29db2320b`  
		Last Modified: Thu, 31 Aug 2017 19:18:10 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c581ec1859f9c0b66d738e5bed1f12b2811e382a22abcaf23440228fac42d065`  
		Last Modified: Thu, 31 Aug 2017 19:18:12 GMT  
		Size: 10.5 MB (10549082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7804b3036f61dc8620c0220025fd27d44b3699a8748ce8676c65d9d1e5aeb2`  
		Last Modified: Thu, 31 Aug 2017 19:18:10 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2823aef4993aa73f5c77cf6d0f0f63d39b27ffd3925bb9c2c12383613208827c`  
		Last Modified: Tue, 12 Sep 2017 23:31:16 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9c9a26e8df3161809a6282efdeb6f3c25d201c95f49f2efe7c138998eda2b6`  
		Last Modified: Tue, 12 Sep 2017 23:31:14 GMT  
		Size: 1.2 MB (1210691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1057acd6f482f085c672d535f69762c181011e211ef4722049b03e6bfc2f6221`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 118.1 KB (118068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc61c187e404f070830ad86712060fee80eabd5303a24482e32a47eca63d70b6`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2802556177ec228a7ddbdada300207ba3a9d97aad1124e184e0e16dbe2362f`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 319.1 KB (319103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548cb7ed891f8295f75ee632bff2c171888dbaceb7f53e9c9351222a4120f5d7`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.3-standalone`

```console
$ docker pull adminer@sha256:60765d185ec01574b0b896e7b62972639d0db8ffc730ca89f88c7f9540c6b1fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `adminer:4.3-standalone` - linux; amd64

```console
$ docker pull adminer@sha256:d42d07bf1e6baabd46d12b78225d04bf630980d19758230400e24c9f08f08283
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27797127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb84d13bc41bf6dd2aeff5d9c222c718e0ff4c0028d6edb2b4a0fcb386ce78e7`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Wed, 28 Jun 2017 21:21:29 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 31 Aug 2017 18:51:12 GMT
ENV PHP_VERSION=7.0.23
# Thu, 31 Aug 2017 18:51:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Thu, 31 Aug 2017 18:51:12 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Thu, 31 Aug 2017 18:51:20 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 31 Aug 2017 18:51:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 31 Aug 2017 18:55:18 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 31 Aug 2017 18:55:19 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Thu, 31 Aug 2017 18:55:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 31 Aug 2017 18:55:19 GMT
CMD ["php" "-a"]
# Tue, 12 Sep 2017 23:30:19 GMT
STOPSIGNAL [SIGINT]
# Tue, 12 Sep 2017 23:30:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Tue, 12 Sep 2017 23:30:20 GMT
WORKDIR /var/www/html
# Tue, 12 Sep 2017 23:30:23 GMT
RUN apk add --no-cache libpq
# Tue, 12 Sep 2017 23:30:39 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Tue, 12 Sep 2017 23:30:40 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Tue, 12 Sep 2017 23:30:40 GMT
ENV ADMINER_VERSION=4.3.1
# Tue, 12 Sep 2017 23:30:40 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Tue, 12 Sep 2017 23:30:40 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Tue, 12 Sep 2017 23:30:42 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Tue, 12 Sep 2017 23:30:43 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:30:43 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 12 Sep 2017 23:30:43 GMT
USER [adminer]
# Tue, 12 Sep 2017 23:30:43 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Tue, 12 Sep 2017 23:30:43 GMT
EXPOSE 8080/tcp
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
	-	`sha256:e90e3a914eee3616e0d1b3064f6c26790d6ded2932d2195b3104ca809c636b76`  
		Last Modified: Thu, 31 Aug 2017 19:18:11 GMT  
		Size: 12.1 MB (12126529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d8fd648a561f443a39ab47dfce513547fea6da4cc414f857ca13f29db2320b`  
		Last Modified: Thu, 31 Aug 2017 19:18:10 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c581ec1859f9c0b66d738e5bed1f12b2811e382a22abcaf23440228fac42d065`  
		Last Modified: Thu, 31 Aug 2017 19:18:12 GMT  
		Size: 10.5 MB (10549082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7804b3036f61dc8620c0220025fd27d44b3699a8748ce8676c65d9d1e5aeb2`  
		Last Modified: Thu, 31 Aug 2017 19:18:10 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2823aef4993aa73f5c77cf6d0f0f63d39b27ffd3925bb9c2c12383613208827c`  
		Last Modified: Tue, 12 Sep 2017 23:31:16 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9c9a26e8df3161809a6282efdeb6f3c25d201c95f49f2efe7c138998eda2b6`  
		Last Modified: Tue, 12 Sep 2017 23:31:14 GMT  
		Size: 1.2 MB (1210691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1057acd6f482f085c672d535f69762c181011e211ef4722049b03e6bfc2f6221`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 118.1 KB (118068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc61c187e404f070830ad86712060fee80eabd5303a24482e32a47eca63d70b6`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2802556177ec228a7ddbdada300207ba3a9d97aad1124e184e0e16dbe2362f`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 319.1 KB (319103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548cb7ed891f8295f75ee632bff2c171888dbaceb7f53e9c9351222a4120f5d7`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4-standalone`

```console
$ docker pull adminer@sha256:60765d185ec01574b0b896e7b62972639d0db8ffc730ca89f88c7f9540c6b1fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `adminer:4-standalone` - linux; amd64

```console
$ docker pull adminer@sha256:d42d07bf1e6baabd46d12b78225d04bf630980d19758230400e24c9f08f08283
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27797127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb84d13bc41bf6dd2aeff5d9c222c718e0ff4c0028d6edb2b4a0fcb386ce78e7`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Wed, 28 Jun 2017 21:21:29 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 31 Aug 2017 18:51:12 GMT
ENV PHP_VERSION=7.0.23
# Thu, 31 Aug 2017 18:51:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Thu, 31 Aug 2017 18:51:12 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Thu, 31 Aug 2017 18:51:20 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 31 Aug 2017 18:51:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 31 Aug 2017 18:55:18 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 31 Aug 2017 18:55:19 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Thu, 31 Aug 2017 18:55:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 31 Aug 2017 18:55:19 GMT
CMD ["php" "-a"]
# Tue, 12 Sep 2017 23:30:19 GMT
STOPSIGNAL [SIGINT]
# Tue, 12 Sep 2017 23:30:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Tue, 12 Sep 2017 23:30:20 GMT
WORKDIR /var/www/html
# Tue, 12 Sep 2017 23:30:23 GMT
RUN apk add --no-cache libpq
# Tue, 12 Sep 2017 23:30:39 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Tue, 12 Sep 2017 23:30:40 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Tue, 12 Sep 2017 23:30:40 GMT
ENV ADMINER_VERSION=4.3.1
# Tue, 12 Sep 2017 23:30:40 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Tue, 12 Sep 2017 23:30:40 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Tue, 12 Sep 2017 23:30:42 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Tue, 12 Sep 2017 23:30:43 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:30:43 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 12 Sep 2017 23:30:43 GMT
USER [adminer]
# Tue, 12 Sep 2017 23:30:43 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Tue, 12 Sep 2017 23:30:43 GMT
EXPOSE 8080/tcp
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
	-	`sha256:e90e3a914eee3616e0d1b3064f6c26790d6ded2932d2195b3104ca809c636b76`  
		Last Modified: Thu, 31 Aug 2017 19:18:11 GMT  
		Size: 12.1 MB (12126529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d8fd648a561f443a39ab47dfce513547fea6da4cc414f857ca13f29db2320b`  
		Last Modified: Thu, 31 Aug 2017 19:18:10 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c581ec1859f9c0b66d738e5bed1f12b2811e382a22abcaf23440228fac42d065`  
		Last Modified: Thu, 31 Aug 2017 19:18:12 GMT  
		Size: 10.5 MB (10549082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7804b3036f61dc8620c0220025fd27d44b3699a8748ce8676c65d9d1e5aeb2`  
		Last Modified: Thu, 31 Aug 2017 19:18:10 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2823aef4993aa73f5c77cf6d0f0f63d39b27ffd3925bb9c2c12383613208827c`  
		Last Modified: Tue, 12 Sep 2017 23:31:16 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9c9a26e8df3161809a6282efdeb6f3c25d201c95f49f2efe7c138998eda2b6`  
		Last Modified: Tue, 12 Sep 2017 23:31:14 GMT  
		Size: 1.2 MB (1210691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1057acd6f482f085c672d535f69762c181011e211ef4722049b03e6bfc2f6221`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 118.1 KB (118068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc61c187e404f070830ad86712060fee80eabd5303a24482e32a47eca63d70b6`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2802556177ec228a7ddbdada300207ba3a9d97aad1124e184e0e16dbe2362f`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 319.1 KB (319103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548cb7ed891f8295f75ee632bff2c171888dbaceb7f53e9c9351222a4120f5d7`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:standalone`

```console
$ docker pull adminer@sha256:60765d185ec01574b0b896e7b62972639d0db8ffc730ca89f88c7f9540c6b1fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `adminer:standalone` - linux; amd64

```console
$ docker pull adminer@sha256:d42d07bf1e6baabd46d12b78225d04bf630980d19758230400e24c9f08f08283
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27797127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb84d13bc41bf6dd2aeff5d9c222c718e0ff4c0028d6edb2b4a0fcb386ce78e7`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Wed, 28 Jun 2017 21:21:29 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 31 Aug 2017 18:51:12 GMT
ENV PHP_VERSION=7.0.23
# Thu, 31 Aug 2017 18:51:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Thu, 31 Aug 2017 18:51:12 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Thu, 31 Aug 2017 18:51:20 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 31 Aug 2017 18:51:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 31 Aug 2017 18:55:18 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 31 Aug 2017 18:55:19 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Thu, 31 Aug 2017 18:55:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 31 Aug 2017 18:55:19 GMT
CMD ["php" "-a"]
# Tue, 12 Sep 2017 23:30:19 GMT
STOPSIGNAL [SIGINT]
# Tue, 12 Sep 2017 23:30:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Tue, 12 Sep 2017 23:30:20 GMT
WORKDIR /var/www/html
# Tue, 12 Sep 2017 23:30:23 GMT
RUN apk add --no-cache libpq
# Tue, 12 Sep 2017 23:30:39 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Tue, 12 Sep 2017 23:30:40 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Tue, 12 Sep 2017 23:30:40 GMT
ENV ADMINER_VERSION=4.3.1
# Tue, 12 Sep 2017 23:30:40 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Tue, 12 Sep 2017 23:30:40 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Tue, 12 Sep 2017 23:30:42 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Tue, 12 Sep 2017 23:30:43 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:30:43 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 12 Sep 2017 23:30:43 GMT
USER [adminer]
# Tue, 12 Sep 2017 23:30:43 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Tue, 12 Sep 2017 23:30:43 GMT
EXPOSE 8080/tcp
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
	-	`sha256:e90e3a914eee3616e0d1b3064f6c26790d6ded2932d2195b3104ca809c636b76`  
		Last Modified: Thu, 31 Aug 2017 19:18:11 GMT  
		Size: 12.1 MB (12126529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d8fd648a561f443a39ab47dfce513547fea6da4cc414f857ca13f29db2320b`  
		Last Modified: Thu, 31 Aug 2017 19:18:10 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c581ec1859f9c0b66d738e5bed1f12b2811e382a22abcaf23440228fac42d065`  
		Last Modified: Thu, 31 Aug 2017 19:18:12 GMT  
		Size: 10.5 MB (10549082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7804b3036f61dc8620c0220025fd27d44b3699a8748ce8676c65d9d1e5aeb2`  
		Last Modified: Thu, 31 Aug 2017 19:18:10 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2823aef4993aa73f5c77cf6d0f0f63d39b27ffd3925bb9c2c12383613208827c`  
		Last Modified: Tue, 12 Sep 2017 23:31:16 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9c9a26e8df3161809a6282efdeb6f3c25d201c95f49f2efe7c138998eda2b6`  
		Last Modified: Tue, 12 Sep 2017 23:31:14 GMT  
		Size: 1.2 MB (1210691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1057acd6f482f085c672d535f69762c181011e211ef4722049b03e6bfc2f6221`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 118.1 KB (118068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc61c187e404f070830ad86712060fee80eabd5303a24482e32a47eca63d70b6`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2802556177ec228a7ddbdada300207ba3a9d97aad1124e184e0e16dbe2362f`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 319.1 KB (319103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548cb7ed891f8295f75ee632bff2c171888dbaceb7f53e9c9351222a4120f5d7`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.3.1`

```console
$ docker pull adminer@sha256:60765d185ec01574b0b896e7b62972639d0db8ffc730ca89f88c7f9540c6b1fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `adminer:4.3.1` - linux; amd64

```console
$ docker pull adminer@sha256:d42d07bf1e6baabd46d12b78225d04bf630980d19758230400e24c9f08f08283
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27797127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb84d13bc41bf6dd2aeff5d9c222c718e0ff4c0028d6edb2b4a0fcb386ce78e7`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Wed, 28 Jun 2017 21:21:29 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 31 Aug 2017 18:51:12 GMT
ENV PHP_VERSION=7.0.23
# Thu, 31 Aug 2017 18:51:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Thu, 31 Aug 2017 18:51:12 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Thu, 31 Aug 2017 18:51:20 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 31 Aug 2017 18:51:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 31 Aug 2017 18:55:18 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 31 Aug 2017 18:55:19 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Thu, 31 Aug 2017 18:55:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 31 Aug 2017 18:55:19 GMT
CMD ["php" "-a"]
# Tue, 12 Sep 2017 23:30:19 GMT
STOPSIGNAL [SIGINT]
# Tue, 12 Sep 2017 23:30:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Tue, 12 Sep 2017 23:30:20 GMT
WORKDIR /var/www/html
# Tue, 12 Sep 2017 23:30:23 GMT
RUN apk add --no-cache libpq
# Tue, 12 Sep 2017 23:30:39 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Tue, 12 Sep 2017 23:30:40 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Tue, 12 Sep 2017 23:30:40 GMT
ENV ADMINER_VERSION=4.3.1
# Tue, 12 Sep 2017 23:30:40 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Tue, 12 Sep 2017 23:30:40 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Tue, 12 Sep 2017 23:30:42 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Tue, 12 Sep 2017 23:30:43 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:30:43 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 12 Sep 2017 23:30:43 GMT
USER [adminer]
# Tue, 12 Sep 2017 23:30:43 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Tue, 12 Sep 2017 23:30:43 GMT
EXPOSE 8080/tcp
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
	-	`sha256:e90e3a914eee3616e0d1b3064f6c26790d6ded2932d2195b3104ca809c636b76`  
		Last Modified: Thu, 31 Aug 2017 19:18:11 GMT  
		Size: 12.1 MB (12126529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d8fd648a561f443a39ab47dfce513547fea6da4cc414f857ca13f29db2320b`  
		Last Modified: Thu, 31 Aug 2017 19:18:10 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c581ec1859f9c0b66d738e5bed1f12b2811e382a22abcaf23440228fac42d065`  
		Last Modified: Thu, 31 Aug 2017 19:18:12 GMT  
		Size: 10.5 MB (10549082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7804b3036f61dc8620c0220025fd27d44b3699a8748ce8676c65d9d1e5aeb2`  
		Last Modified: Thu, 31 Aug 2017 19:18:10 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2823aef4993aa73f5c77cf6d0f0f63d39b27ffd3925bb9c2c12383613208827c`  
		Last Modified: Tue, 12 Sep 2017 23:31:16 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9c9a26e8df3161809a6282efdeb6f3c25d201c95f49f2efe7c138998eda2b6`  
		Last Modified: Tue, 12 Sep 2017 23:31:14 GMT  
		Size: 1.2 MB (1210691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1057acd6f482f085c672d535f69762c181011e211ef4722049b03e6bfc2f6221`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 118.1 KB (118068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc61c187e404f070830ad86712060fee80eabd5303a24482e32a47eca63d70b6`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2802556177ec228a7ddbdada300207ba3a9d97aad1124e184e0e16dbe2362f`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 319.1 KB (319103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548cb7ed891f8295f75ee632bff2c171888dbaceb7f53e9c9351222a4120f5d7`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.3`

```console
$ docker pull adminer@sha256:60765d185ec01574b0b896e7b62972639d0db8ffc730ca89f88c7f9540c6b1fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `adminer:4.3` - linux; amd64

```console
$ docker pull adminer@sha256:d42d07bf1e6baabd46d12b78225d04bf630980d19758230400e24c9f08f08283
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27797127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb84d13bc41bf6dd2aeff5d9c222c718e0ff4c0028d6edb2b4a0fcb386ce78e7`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Wed, 28 Jun 2017 21:21:29 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 31 Aug 2017 18:51:12 GMT
ENV PHP_VERSION=7.0.23
# Thu, 31 Aug 2017 18:51:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Thu, 31 Aug 2017 18:51:12 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Thu, 31 Aug 2017 18:51:20 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 31 Aug 2017 18:51:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 31 Aug 2017 18:55:18 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 31 Aug 2017 18:55:19 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Thu, 31 Aug 2017 18:55:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 31 Aug 2017 18:55:19 GMT
CMD ["php" "-a"]
# Tue, 12 Sep 2017 23:30:19 GMT
STOPSIGNAL [SIGINT]
# Tue, 12 Sep 2017 23:30:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Tue, 12 Sep 2017 23:30:20 GMT
WORKDIR /var/www/html
# Tue, 12 Sep 2017 23:30:23 GMT
RUN apk add --no-cache libpq
# Tue, 12 Sep 2017 23:30:39 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Tue, 12 Sep 2017 23:30:40 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Tue, 12 Sep 2017 23:30:40 GMT
ENV ADMINER_VERSION=4.3.1
# Tue, 12 Sep 2017 23:30:40 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Tue, 12 Sep 2017 23:30:40 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Tue, 12 Sep 2017 23:30:42 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Tue, 12 Sep 2017 23:30:43 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:30:43 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 12 Sep 2017 23:30:43 GMT
USER [adminer]
# Tue, 12 Sep 2017 23:30:43 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Tue, 12 Sep 2017 23:30:43 GMT
EXPOSE 8080/tcp
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
	-	`sha256:e90e3a914eee3616e0d1b3064f6c26790d6ded2932d2195b3104ca809c636b76`  
		Last Modified: Thu, 31 Aug 2017 19:18:11 GMT  
		Size: 12.1 MB (12126529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d8fd648a561f443a39ab47dfce513547fea6da4cc414f857ca13f29db2320b`  
		Last Modified: Thu, 31 Aug 2017 19:18:10 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c581ec1859f9c0b66d738e5bed1f12b2811e382a22abcaf23440228fac42d065`  
		Last Modified: Thu, 31 Aug 2017 19:18:12 GMT  
		Size: 10.5 MB (10549082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7804b3036f61dc8620c0220025fd27d44b3699a8748ce8676c65d9d1e5aeb2`  
		Last Modified: Thu, 31 Aug 2017 19:18:10 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2823aef4993aa73f5c77cf6d0f0f63d39b27ffd3925bb9c2c12383613208827c`  
		Last Modified: Tue, 12 Sep 2017 23:31:16 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9c9a26e8df3161809a6282efdeb6f3c25d201c95f49f2efe7c138998eda2b6`  
		Last Modified: Tue, 12 Sep 2017 23:31:14 GMT  
		Size: 1.2 MB (1210691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1057acd6f482f085c672d535f69762c181011e211ef4722049b03e6bfc2f6221`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 118.1 KB (118068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc61c187e404f070830ad86712060fee80eabd5303a24482e32a47eca63d70b6`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2802556177ec228a7ddbdada300207ba3a9d97aad1124e184e0e16dbe2362f`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 319.1 KB (319103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548cb7ed891f8295f75ee632bff2c171888dbaceb7f53e9c9351222a4120f5d7`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4`

```console
$ docker pull adminer@sha256:60765d185ec01574b0b896e7b62972639d0db8ffc730ca89f88c7f9540c6b1fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `adminer:4` - linux; amd64

```console
$ docker pull adminer@sha256:d42d07bf1e6baabd46d12b78225d04bf630980d19758230400e24c9f08f08283
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27797127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb84d13bc41bf6dd2aeff5d9c222c718e0ff4c0028d6edb2b4a0fcb386ce78e7`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Wed, 28 Jun 2017 21:21:29 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 31 Aug 2017 18:51:12 GMT
ENV PHP_VERSION=7.0.23
# Thu, 31 Aug 2017 18:51:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Thu, 31 Aug 2017 18:51:12 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Thu, 31 Aug 2017 18:51:20 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 31 Aug 2017 18:51:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 31 Aug 2017 18:55:18 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 31 Aug 2017 18:55:19 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Thu, 31 Aug 2017 18:55:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 31 Aug 2017 18:55:19 GMT
CMD ["php" "-a"]
# Tue, 12 Sep 2017 23:30:19 GMT
STOPSIGNAL [SIGINT]
# Tue, 12 Sep 2017 23:30:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Tue, 12 Sep 2017 23:30:20 GMT
WORKDIR /var/www/html
# Tue, 12 Sep 2017 23:30:23 GMT
RUN apk add --no-cache libpq
# Tue, 12 Sep 2017 23:30:39 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Tue, 12 Sep 2017 23:30:40 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Tue, 12 Sep 2017 23:30:40 GMT
ENV ADMINER_VERSION=4.3.1
# Tue, 12 Sep 2017 23:30:40 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Tue, 12 Sep 2017 23:30:40 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Tue, 12 Sep 2017 23:30:42 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Tue, 12 Sep 2017 23:30:43 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:30:43 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 12 Sep 2017 23:30:43 GMT
USER [adminer]
# Tue, 12 Sep 2017 23:30:43 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Tue, 12 Sep 2017 23:30:43 GMT
EXPOSE 8080/tcp
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
	-	`sha256:e90e3a914eee3616e0d1b3064f6c26790d6ded2932d2195b3104ca809c636b76`  
		Last Modified: Thu, 31 Aug 2017 19:18:11 GMT  
		Size: 12.1 MB (12126529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d8fd648a561f443a39ab47dfce513547fea6da4cc414f857ca13f29db2320b`  
		Last Modified: Thu, 31 Aug 2017 19:18:10 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c581ec1859f9c0b66d738e5bed1f12b2811e382a22abcaf23440228fac42d065`  
		Last Modified: Thu, 31 Aug 2017 19:18:12 GMT  
		Size: 10.5 MB (10549082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7804b3036f61dc8620c0220025fd27d44b3699a8748ce8676c65d9d1e5aeb2`  
		Last Modified: Thu, 31 Aug 2017 19:18:10 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2823aef4993aa73f5c77cf6d0f0f63d39b27ffd3925bb9c2c12383613208827c`  
		Last Modified: Tue, 12 Sep 2017 23:31:16 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9c9a26e8df3161809a6282efdeb6f3c25d201c95f49f2efe7c138998eda2b6`  
		Last Modified: Tue, 12 Sep 2017 23:31:14 GMT  
		Size: 1.2 MB (1210691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1057acd6f482f085c672d535f69762c181011e211ef4722049b03e6bfc2f6221`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 118.1 KB (118068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc61c187e404f070830ad86712060fee80eabd5303a24482e32a47eca63d70b6`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2802556177ec228a7ddbdada300207ba3a9d97aad1124e184e0e16dbe2362f`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 319.1 KB (319103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548cb7ed891f8295f75ee632bff2c171888dbaceb7f53e9c9351222a4120f5d7`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:latest`

```console
$ docker pull adminer@sha256:60765d185ec01574b0b896e7b62972639d0db8ffc730ca89f88c7f9540c6b1fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `adminer:latest` - linux; amd64

```console
$ docker pull adminer@sha256:d42d07bf1e6baabd46d12b78225d04bf630980d19758230400e24c9f08f08283
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27797127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb84d13bc41bf6dd2aeff5d9c222c718e0ff4c0028d6edb2b4a0fcb386ce78e7`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Wed, 28 Jun 2017 21:21:29 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 31 Aug 2017 18:51:12 GMT
ENV PHP_VERSION=7.0.23
# Thu, 31 Aug 2017 18:51:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Thu, 31 Aug 2017 18:51:12 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Thu, 31 Aug 2017 18:51:20 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 31 Aug 2017 18:51:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 31 Aug 2017 18:55:18 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 31 Aug 2017 18:55:19 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Thu, 31 Aug 2017 18:55:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 31 Aug 2017 18:55:19 GMT
CMD ["php" "-a"]
# Tue, 12 Sep 2017 23:30:19 GMT
STOPSIGNAL [SIGINT]
# Tue, 12 Sep 2017 23:30:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Tue, 12 Sep 2017 23:30:20 GMT
WORKDIR /var/www/html
# Tue, 12 Sep 2017 23:30:23 GMT
RUN apk add --no-cache libpq
# Tue, 12 Sep 2017 23:30:39 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Tue, 12 Sep 2017 23:30:40 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Tue, 12 Sep 2017 23:30:40 GMT
ENV ADMINER_VERSION=4.3.1
# Tue, 12 Sep 2017 23:30:40 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Tue, 12 Sep 2017 23:30:40 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Tue, 12 Sep 2017 23:30:42 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Tue, 12 Sep 2017 23:30:43 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:30:43 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 12 Sep 2017 23:30:43 GMT
USER [adminer]
# Tue, 12 Sep 2017 23:30:43 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Tue, 12 Sep 2017 23:30:43 GMT
EXPOSE 8080/tcp
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
	-	`sha256:e90e3a914eee3616e0d1b3064f6c26790d6ded2932d2195b3104ca809c636b76`  
		Last Modified: Thu, 31 Aug 2017 19:18:11 GMT  
		Size: 12.1 MB (12126529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d8fd648a561f443a39ab47dfce513547fea6da4cc414f857ca13f29db2320b`  
		Last Modified: Thu, 31 Aug 2017 19:18:10 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c581ec1859f9c0b66d738e5bed1f12b2811e382a22abcaf23440228fac42d065`  
		Last Modified: Thu, 31 Aug 2017 19:18:12 GMT  
		Size: 10.5 MB (10549082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7804b3036f61dc8620c0220025fd27d44b3699a8748ce8676c65d9d1e5aeb2`  
		Last Modified: Thu, 31 Aug 2017 19:18:10 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2823aef4993aa73f5c77cf6d0f0f63d39b27ffd3925bb9c2c12383613208827c`  
		Last Modified: Tue, 12 Sep 2017 23:31:16 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9c9a26e8df3161809a6282efdeb6f3c25d201c95f49f2efe7c138998eda2b6`  
		Last Modified: Tue, 12 Sep 2017 23:31:14 GMT  
		Size: 1.2 MB (1210691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1057acd6f482f085c672d535f69762c181011e211ef4722049b03e6bfc2f6221`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 118.1 KB (118068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc61c187e404f070830ad86712060fee80eabd5303a24482e32a47eca63d70b6`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2802556177ec228a7ddbdada300207ba3a9d97aad1124e184e0e16dbe2362f`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 319.1 KB (319103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548cb7ed891f8295f75ee632bff2c171888dbaceb7f53e9c9351222a4120f5d7`  
		Last Modified: Tue, 12 Sep 2017 23:31:13 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.3.1-fastcgi`

```console
$ docker pull adminer@sha256:f64998882ada5618aea44e9db4582121c3675a03d84d275c268b34ae6cd0b7bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `adminer:4.3.1-fastcgi` - linux; amd64

```console
$ docker pull adminer@sha256:00d9d4f4fc1dac4bded8eb5b463cf2b0d0a9528469835f057a537c94772aabf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.5 MB (31503472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d53e4e979f7fd8d8323f5a9867b2002dfc762cb8013ed77ba645109fdb94358`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Wed, 28 Jun 2017 20:34:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 28 Jun 2017 20:34:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:34:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:34:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 28 Jun 2017 21:25:35 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 31 Aug 2017 19:02:25 GMT
ENV PHP_VERSION=7.0.23
# Thu, 31 Aug 2017 19:02:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Thu, 31 Aug 2017 19:02:25 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Thu, 31 Aug 2017 19:02:31 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 31 Aug 2017 19:02:31 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 31 Aug 2017 19:05:53 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 31 Aug 2017 19:05:54 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Thu, 31 Aug 2017 19:05:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 31 Aug 2017 19:05:54 GMT
WORKDIR /var/www/html
# Thu, 31 Aug 2017 19:05:56 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 31 Aug 2017 19:05:56 GMT
EXPOSE 9000/tcp
# Thu, 31 Aug 2017 19:05:56 GMT
CMD ["php-fpm"]
# Tue, 12 Sep 2017 23:30:44 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Tue, 12 Sep 2017 23:30:47 GMT
RUN apk add --no-cache libpq
# Tue, 12 Sep 2017 23:31:03 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Tue, 12 Sep 2017 23:31:03 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Tue, 12 Sep 2017 23:31:04 GMT
ENV ADMINER_VERSION=4.3.1
# Tue, 12 Sep 2017 23:31:04 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Tue, 12 Sep 2017 23:31:04 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Tue, 12 Sep 2017 23:31:06 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Tue, 12 Sep 2017 23:31:06 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:31:06 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 12 Sep 2017 23:31:07 GMT
USER [adminer]
# Tue, 12 Sep 2017 23:31:07 GMT
CMD ["php-fpm"]
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
	-	`sha256:47085e2ee2fb577555cc247a25f8ebca28f82545f40d1345667cc6bd1c4e8cae`  
		Last Modified: Thu, 31 Aug 2017 19:19:13 GMT  
		Size: 12.1 MB (12126529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5024abb9cb784005b40baba1c7a8eec37c74d32c1c7300f6c58ea3695aada6f0`  
		Last Modified: Thu, 31 Aug 2017 19:19:11 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230602130ace0307e8747775ca404504fc82935b2684e23de1fe284817d4e3ff`  
		Last Modified: Thu, 31 Aug 2017 19:19:14 GMT  
		Size: 14.2 MB (14247591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36d0fa566bbfb52ba9e9fbe7449f99ec1094c2ecef83be11b05cd5e4f2fd912`  
		Last Modified: Thu, 31 Aug 2017 19:19:11 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e12f04423cd176793594fef37429ea3b2c461b0d74d189ceca89f6c476c21e7`  
		Last Modified: Thu, 31 Aug 2017 19:19:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56631f78bdf0f72f26cf41842e86c8096fd7d3c7bb337e7dac327d0a05f5cc4a`  
		Last Modified: Thu, 31 Aug 2017 19:19:11 GMT  
		Size: 7.7 KB (7653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f5c9d1596bf5bdeeefbd2470ec86cc8f63660c89d2cf190ea23edd8768a262`  
		Last Modified: Tue, 12 Sep 2017 23:31:43 GMT  
		Size: 1.4 KB (1393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa5b0768438f2a52a8bcf6e071106edf16fa218941213fac1727498dcd95501`  
		Last Modified: Tue, 12 Sep 2017 23:31:41 GMT  
		Size: 1.2 MB (1210691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025db1a6dc4722a04490f06e4088622b8b5c6a71ac09ffce505a5c7a88487157`  
		Last Modified: Tue, 12 Sep 2017 23:31:41 GMT  
		Size: 118.1 KB (118093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44e2f1a6b6ff5196b47893b01d410807353d954a6f170f869720039678c393b`  
		Last Modified: Tue, 12 Sep 2017 23:31:41 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fa5c0ea3bb0b68fb7a024308b93b370996262c6b535b2d4174f5251922f9136`  
		Last Modified: Tue, 12 Sep 2017 23:31:42 GMT  
		Size: 319.1 KB (319112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43bdcb1993cf7084190627aba8df4cf1946af583202dea7eac28056a158b846c`  
		Last Modified: Tue, 12 Sep 2017 23:31:41 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.3-fastcgi`

```console
$ docker pull adminer@sha256:f64998882ada5618aea44e9db4582121c3675a03d84d275c268b34ae6cd0b7bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `adminer:4.3-fastcgi` - linux; amd64

```console
$ docker pull adminer@sha256:00d9d4f4fc1dac4bded8eb5b463cf2b0d0a9528469835f057a537c94772aabf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.5 MB (31503472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d53e4e979f7fd8d8323f5a9867b2002dfc762cb8013ed77ba645109fdb94358`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Wed, 28 Jun 2017 20:34:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 28 Jun 2017 20:34:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:34:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:34:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 28 Jun 2017 21:25:35 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 31 Aug 2017 19:02:25 GMT
ENV PHP_VERSION=7.0.23
# Thu, 31 Aug 2017 19:02:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Thu, 31 Aug 2017 19:02:25 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Thu, 31 Aug 2017 19:02:31 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 31 Aug 2017 19:02:31 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 31 Aug 2017 19:05:53 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 31 Aug 2017 19:05:54 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Thu, 31 Aug 2017 19:05:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 31 Aug 2017 19:05:54 GMT
WORKDIR /var/www/html
# Thu, 31 Aug 2017 19:05:56 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 31 Aug 2017 19:05:56 GMT
EXPOSE 9000/tcp
# Thu, 31 Aug 2017 19:05:56 GMT
CMD ["php-fpm"]
# Tue, 12 Sep 2017 23:30:44 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Tue, 12 Sep 2017 23:30:47 GMT
RUN apk add --no-cache libpq
# Tue, 12 Sep 2017 23:31:03 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Tue, 12 Sep 2017 23:31:03 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Tue, 12 Sep 2017 23:31:04 GMT
ENV ADMINER_VERSION=4.3.1
# Tue, 12 Sep 2017 23:31:04 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Tue, 12 Sep 2017 23:31:04 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Tue, 12 Sep 2017 23:31:06 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Tue, 12 Sep 2017 23:31:06 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:31:06 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 12 Sep 2017 23:31:07 GMT
USER [adminer]
# Tue, 12 Sep 2017 23:31:07 GMT
CMD ["php-fpm"]
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
	-	`sha256:47085e2ee2fb577555cc247a25f8ebca28f82545f40d1345667cc6bd1c4e8cae`  
		Last Modified: Thu, 31 Aug 2017 19:19:13 GMT  
		Size: 12.1 MB (12126529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5024abb9cb784005b40baba1c7a8eec37c74d32c1c7300f6c58ea3695aada6f0`  
		Last Modified: Thu, 31 Aug 2017 19:19:11 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230602130ace0307e8747775ca404504fc82935b2684e23de1fe284817d4e3ff`  
		Last Modified: Thu, 31 Aug 2017 19:19:14 GMT  
		Size: 14.2 MB (14247591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36d0fa566bbfb52ba9e9fbe7449f99ec1094c2ecef83be11b05cd5e4f2fd912`  
		Last Modified: Thu, 31 Aug 2017 19:19:11 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e12f04423cd176793594fef37429ea3b2c461b0d74d189ceca89f6c476c21e7`  
		Last Modified: Thu, 31 Aug 2017 19:19:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56631f78bdf0f72f26cf41842e86c8096fd7d3c7bb337e7dac327d0a05f5cc4a`  
		Last Modified: Thu, 31 Aug 2017 19:19:11 GMT  
		Size: 7.7 KB (7653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f5c9d1596bf5bdeeefbd2470ec86cc8f63660c89d2cf190ea23edd8768a262`  
		Last Modified: Tue, 12 Sep 2017 23:31:43 GMT  
		Size: 1.4 KB (1393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa5b0768438f2a52a8bcf6e071106edf16fa218941213fac1727498dcd95501`  
		Last Modified: Tue, 12 Sep 2017 23:31:41 GMT  
		Size: 1.2 MB (1210691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025db1a6dc4722a04490f06e4088622b8b5c6a71ac09ffce505a5c7a88487157`  
		Last Modified: Tue, 12 Sep 2017 23:31:41 GMT  
		Size: 118.1 KB (118093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44e2f1a6b6ff5196b47893b01d410807353d954a6f170f869720039678c393b`  
		Last Modified: Tue, 12 Sep 2017 23:31:41 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fa5c0ea3bb0b68fb7a024308b93b370996262c6b535b2d4174f5251922f9136`  
		Last Modified: Tue, 12 Sep 2017 23:31:42 GMT  
		Size: 319.1 KB (319112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43bdcb1993cf7084190627aba8df4cf1946af583202dea7eac28056a158b846c`  
		Last Modified: Tue, 12 Sep 2017 23:31:41 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4-fastcgi`

```console
$ docker pull adminer@sha256:f64998882ada5618aea44e9db4582121c3675a03d84d275c268b34ae6cd0b7bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `adminer:4-fastcgi` - linux; amd64

```console
$ docker pull adminer@sha256:00d9d4f4fc1dac4bded8eb5b463cf2b0d0a9528469835f057a537c94772aabf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.5 MB (31503472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d53e4e979f7fd8d8323f5a9867b2002dfc762cb8013ed77ba645109fdb94358`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Wed, 28 Jun 2017 20:34:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 28 Jun 2017 20:34:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:34:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:34:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 28 Jun 2017 21:25:35 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 31 Aug 2017 19:02:25 GMT
ENV PHP_VERSION=7.0.23
# Thu, 31 Aug 2017 19:02:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Thu, 31 Aug 2017 19:02:25 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Thu, 31 Aug 2017 19:02:31 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 31 Aug 2017 19:02:31 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 31 Aug 2017 19:05:53 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 31 Aug 2017 19:05:54 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Thu, 31 Aug 2017 19:05:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 31 Aug 2017 19:05:54 GMT
WORKDIR /var/www/html
# Thu, 31 Aug 2017 19:05:56 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 31 Aug 2017 19:05:56 GMT
EXPOSE 9000/tcp
# Thu, 31 Aug 2017 19:05:56 GMT
CMD ["php-fpm"]
# Tue, 12 Sep 2017 23:30:44 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Tue, 12 Sep 2017 23:30:47 GMT
RUN apk add --no-cache libpq
# Tue, 12 Sep 2017 23:31:03 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Tue, 12 Sep 2017 23:31:03 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Tue, 12 Sep 2017 23:31:04 GMT
ENV ADMINER_VERSION=4.3.1
# Tue, 12 Sep 2017 23:31:04 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Tue, 12 Sep 2017 23:31:04 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Tue, 12 Sep 2017 23:31:06 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Tue, 12 Sep 2017 23:31:06 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:31:06 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 12 Sep 2017 23:31:07 GMT
USER [adminer]
# Tue, 12 Sep 2017 23:31:07 GMT
CMD ["php-fpm"]
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
	-	`sha256:47085e2ee2fb577555cc247a25f8ebca28f82545f40d1345667cc6bd1c4e8cae`  
		Last Modified: Thu, 31 Aug 2017 19:19:13 GMT  
		Size: 12.1 MB (12126529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5024abb9cb784005b40baba1c7a8eec37c74d32c1c7300f6c58ea3695aada6f0`  
		Last Modified: Thu, 31 Aug 2017 19:19:11 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230602130ace0307e8747775ca404504fc82935b2684e23de1fe284817d4e3ff`  
		Last Modified: Thu, 31 Aug 2017 19:19:14 GMT  
		Size: 14.2 MB (14247591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36d0fa566bbfb52ba9e9fbe7449f99ec1094c2ecef83be11b05cd5e4f2fd912`  
		Last Modified: Thu, 31 Aug 2017 19:19:11 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e12f04423cd176793594fef37429ea3b2c461b0d74d189ceca89f6c476c21e7`  
		Last Modified: Thu, 31 Aug 2017 19:19:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56631f78bdf0f72f26cf41842e86c8096fd7d3c7bb337e7dac327d0a05f5cc4a`  
		Last Modified: Thu, 31 Aug 2017 19:19:11 GMT  
		Size: 7.7 KB (7653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f5c9d1596bf5bdeeefbd2470ec86cc8f63660c89d2cf190ea23edd8768a262`  
		Last Modified: Tue, 12 Sep 2017 23:31:43 GMT  
		Size: 1.4 KB (1393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa5b0768438f2a52a8bcf6e071106edf16fa218941213fac1727498dcd95501`  
		Last Modified: Tue, 12 Sep 2017 23:31:41 GMT  
		Size: 1.2 MB (1210691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025db1a6dc4722a04490f06e4088622b8b5c6a71ac09ffce505a5c7a88487157`  
		Last Modified: Tue, 12 Sep 2017 23:31:41 GMT  
		Size: 118.1 KB (118093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44e2f1a6b6ff5196b47893b01d410807353d954a6f170f869720039678c393b`  
		Last Modified: Tue, 12 Sep 2017 23:31:41 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fa5c0ea3bb0b68fb7a024308b93b370996262c6b535b2d4174f5251922f9136`  
		Last Modified: Tue, 12 Sep 2017 23:31:42 GMT  
		Size: 319.1 KB (319112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43bdcb1993cf7084190627aba8df4cf1946af583202dea7eac28056a158b846c`  
		Last Modified: Tue, 12 Sep 2017 23:31:41 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:fastcgi`

```console
$ docker pull adminer@sha256:f64998882ada5618aea44e9db4582121c3675a03d84d275c268b34ae6cd0b7bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `adminer:fastcgi` - linux; amd64

```console
$ docker pull adminer@sha256:00d9d4f4fc1dac4bded8eb5b463cf2b0d0a9528469835f057a537c94772aabf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.5 MB (31503472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d53e4e979f7fd8d8323f5a9867b2002dfc762cb8013ed77ba645109fdb94358`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Wed, 28 Jun 2017 20:34:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 28 Jun 2017 20:34:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:34:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 28 Jun 2017 20:34:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 28 Jun 2017 21:25:35 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 31 Aug 2017 19:02:25 GMT
ENV PHP_VERSION=7.0.23
# Thu, 31 Aug 2017 19:02:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Thu, 31 Aug 2017 19:02:25 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Thu, 31 Aug 2017 19:02:31 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 31 Aug 2017 19:02:31 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 31 Aug 2017 19:05:53 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 31 Aug 2017 19:05:54 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Thu, 31 Aug 2017 19:05:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 31 Aug 2017 19:05:54 GMT
WORKDIR /var/www/html
# Thu, 31 Aug 2017 19:05:56 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 31 Aug 2017 19:05:56 GMT
EXPOSE 9000/tcp
# Thu, 31 Aug 2017 19:05:56 GMT
CMD ["php-fpm"]
# Tue, 12 Sep 2017 23:30:44 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Tue, 12 Sep 2017 23:30:47 GMT
RUN apk add --no-cache libpq
# Tue, 12 Sep 2017 23:31:03 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Tue, 12 Sep 2017 23:31:03 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Tue, 12 Sep 2017 23:31:04 GMT
ENV ADMINER_VERSION=4.3.1
# Tue, 12 Sep 2017 23:31:04 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Tue, 12 Sep 2017 23:31:04 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Tue, 12 Sep 2017 23:31:06 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Tue, 12 Sep 2017 23:31:06 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:31:06 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 12 Sep 2017 23:31:07 GMT
USER [adminer]
# Tue, 12 Sep 2017 23:31:07 GMT
CMD ["php-fpm"]
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
	-	`sha256:47085e2ee2fb577555cc247a25f8ebca28f82545f40d1345667cc6bd1c4e8cae`  
		Last Modified: Thu, 31 Aug 2017 19:19:13 GMT  
		Size: 12.1 MB (12126529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5024abb9cb784005b40baba1c7a8eec37c74d32c1c7300f6c58ea3695aada6f0`  
		Last Modified: Thu, 31 Aug 2017 19:19:11 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230602130ace0307e8747775ca404504fc82935b2684e23de1fe284817d4e3ff`  
		Last Modified: Thu, 31 Aug 2017 19:19:14 GMT  
		Size: 14.2 MB (14247591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36d0fa566bbfb52ba9e9fbe7449f99ec1094c2ecef83be11b05cd5e4f2fd912`  
		Last Modified: Thu, 31 Aug 2017 19:19:11 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e12f04423cd176793594fef37429ea3b2c461b0d74d189ceca89f6c476c21e7`  
		Last Modified: Thu, 31 Aug 2017 19:19:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56631f78bdf0f72f26cf41842e86c8096fd7d3c7bb337e7dac327d0a05f5cc4a`  
		Last Modified: Thu, 31 Aug 2017 19:19:11 GMT  
		Size: 7.7 KB (7653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f5c9d1596bf5bdeeefbd2470ec86cc8f63660c89d2cf190ea23edd8768a262`  
		Last Modified: Tue, 12 Sep 2017 23:31:43 GMT  
		Size: 1.4 KB (1393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa5b0768438f2a52a8bcf6e071106edf16fa218941213fac1727498dcd95501`  
		Last Modified: Tue, 12 Sep 2017 23:31:41 GMT  
		Size: 1.2 MB (1210691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025db1a6dc4722a04490f06e4088622b8b5c6a71ac09ffce505a5c7a88487157`  
		Last Modified: Tue, 12 Sep 2017 23:31:41 GMT  
		Size: 118.1 KB (118093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44e2f1a6b6ff5196b47893b01d410807353d954a6f170f869720039678c393b`  
		Last Modified: Tue, 12 Sep 2017 23:31:41 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fa5c0ea3bb0b68fb7a024308b93b370996262c6b535b2d4174f5251922f9136`  
		Last Modified: Tue, 12 Sep 2017 23:31:42 GMT  
		Size: 319.1 KB (319112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43bdcb1993cf7084190627aba8df4cf1946af583202dea7eac28056a158b846c`  
		Last Modified: Tue, 12 Sep 2017 23:31:41 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
