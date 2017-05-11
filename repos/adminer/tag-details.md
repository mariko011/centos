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
$ docker pull adminer@sha256:18879370a1a69aab9bcf25f4f4840e1d5948493e72961ba2fe2c8075979405c6
```

-	Platforms:
	-	linux; amd64

### `adminer:4.3.1-standalone` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28447753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f60e322f6c1cfdeebba4c08cf3b30460124a6a6ff6206057c5c0b8c38bc8ae9`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","0.0.0.0:8080","-t","\/var\/www\/html"]`

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
# Wed, 10 May 2017 17:06:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:06:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:06:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 May 2017 18:43:39 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 May 2017 18:43:40 GMT
ENV PHP_VERSION=7.0.18
# Wed, 10 May 2017 18:43:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.18.tar.xz.asc/from/this/mirror
# Wed, 10 May 2017 18:43:41 GMT
ENV PHP_SHA256=679cffcdf2495dee5ab89bda595e678a1096136678b3a1d08f1f57ba347c234d PHP_MD5=a578c55644d233635d2caa96c3a6f9c7
# Wed, 10 May 2017 18:43:49 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 10 May 2017 18:44:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 10 May 2017 18:48:24 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Wed, 10 May 2017 18:48:27 GMT
COPY multi:e6c464c392a31f5168d5531bab0e23fa9eac39c09c1e5823ce94492760685158 in /usr/local/bin/ 
# Wed, 10 May 2017 18:48:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 10 May 2017 18:48:29 GMT
CMD ["php" "-a"]
# Wed, 10 May 2017 23:55:01 GMT
STOPSIGNAL [SIGINT]
# Wed, 10 May 2017 23:55:03 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Wed, 10 May 2017 23:55:04 GMT
WORKDIR /var/www/html
# Wed, 10 May 2017 23:55:06 GMT
RUN apk add --no-cache libpq
# Wed, 10 May 2017 23:55:20 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Wed, 10 May 2017 23:55:22 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Wed, 10 May 2017 23:55:22 GMT
ENV ADMINER_VERSION=4.3.1
# Wed, 10 May 2017 23:55:23 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Wed, 10 May 2017 23:55:24 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Wed, 10 May 2017 23:55:28 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Wed, 10 May 2017 23:55:29 GMT
COPY file:9bd2234bd2d16bb29c56ca41cb797761bce45cf629f48bc911f36b2c284cde46 in /usr/local/bin/ 
# Wed, 10 May 2017 23:55:29 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Wed, 10 May 2017 23:55:30 GMT
USER [adminer]
# Wed, 10 May 2017 23:55:31 GMT
CMD ["php" "-S" "0.0.0.0:8080" "-t" "/var/www/html"]
# Wed, 10 May 2017 23:55:32 GMT
EXPOSE 8080/tcp
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
	-	`sha256:d57d4e99b12e824c9b6f77a6a7dd354959ba197871d714e5d55f2c473568004d`  
		Last Modified: Wed, 10 May 2017 19:05:40 GMT  
		Size: 12.8 MB (12767037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834726a0d353a6f0d4cb0fc31568cf7f37b317c4fbd20e3e365ce5a405f880a6`  
		Last Modified: Wed, 10 May 2017 19:05:38 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce534f87d4189de33fa6827e9dc81e172c5daf8242e6e97492cca10fb9381f96`  
		Last Modified: Wed, 10 May 2017 19:05:41 GMT  
		Size: 10.6 MB (10562089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90716c6997e568ca8091341a4635ce6a58ce72a6afaf40a482a61ae6feb84224`  
		Last Modified: Wed, 10 May 2017 19:05:39 GMT  
		Size: 2.0 KB (2029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69699b39b1f127d2b6c261f47e9959a2deaf096e0c37692562ad6c7d10a665cf`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 1.4 KB (1383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325c1cd1dd994599ffbda38bb6df1ef3f64184a52e964d9d7f21683e1b3fcaf8`  
		Last Modified: Thu, 11 May 2017 14:27:53 GMT  
		Size: 1.2 MB (1210404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028a3774807e4c027f3f36b87cb6feb112a310ad830210d01f17be8d1510284c`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 117.7 KB (117658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62db66ee338845c518c37f4ecd1f9bcd9a70b0ec137f662e79c78f6bae46a2c0`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558600b98eae7cd7123af0018daf3c9bf2c8618482553736586aae46ed055e38`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 319.1 KB (319105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad80c8ee1d969b939346322814bba223ec6b26a423f27838d133833b48ae8e8`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.3-standalone`

```console
$ docker pull adminer@sha256:18879370a1a69aab9bcf25f4f4840e1d5948493e72961ba2fe2c8075979405c6
```

-	Platforms:
	-	linux; amd64

### `adminer:4.3-standalone` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28447753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f60e322f6c1cfdeebba4c08cf3b30460124a6a6ff6206057c5c0b8c38bc8ae9`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","0.0.0.0:8080","-t","\/var\/www\/html"]`

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
# Wed, 10 May 2017 17:06:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:06:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:06:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 May 2017 18:43:39 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 May 2017 18:43:40 GMT
ENV PHP_VERSION=7.0.18
# Wed, 10 May 2017 18:43:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.18.tar.xz.asc/from/this/mirror
# Wed, 10 May 2017 18:43:41 GMT
ENV PHP_SHA256=679cffcdf2495dee5ab89bda595e678a1096136678b3a1d08f1f57ba347c234d PHP_MD5=a578c55644d233635d2caa96c3a6f9c7
# Wed, 10 May 2017 18:43:49 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 10 May 2017 18:44:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 10 May 2017 18:48:24 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Wed, 10 May 2017 18:48:27 GMT
COPY multi:e6c464c392a31f5168d5531bab0e23fa9eac39c09c1e5823ce94492760685158 in /usr/local/bin/ 
# Wed, 10 May 2017 18:48:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 10 May 2017 18:48:29 GMT
CMD ["php" "-a"]
# Wed, 10 May 2017 23:55:01 GMT
STOPSIGNAL [SIGINT]
# Wed, 10 May 2017 23:55:03 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Wed, 10 May 2017 23:55:04 GMT
WORKDIR /var/www/html
# Wed, 10 May 2017 23:55:06 GMT
RUN apk add --no-cache libpq
# Wed, 10 May 2017 23:55:20 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Wed, 10 May 2017 23:55:22 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Wed, 10 May 2017 23:55:22 GMT
ENV ADMINER_VERSION=4.3.1
# Wed, 10 May 2017 23:55:23 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Wed, 10 May 2017 23:55:24 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Wed, 10 May 2017 23:55:28 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Wed, 10 May 2017 23:55:29 GMT
COPY file:9bd2234bd2d16bb29c56ca41cb797761bce45cf629f48bc911f36b2c284cde46 in /usr/local/bin/ 
# Wed, 10 May 2017 23:55:29 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Wed, 10 May 2017 23:55:30 GMT
USER [adminer]
# Wed, 10 May 2017 23:55:31 GMT
CMD ["php" "-S" "0.0.0.0:8080" "-t" "/var/www/html"]
# Wed, 10 May 2017 23:55:32 GMT
EXPOSE 8080/tcp
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
	-	`sha256:d57d4e99b12e824c9b6f77a6a7dd354959ba197871d714e5d55f2c473568004d`  
		Last Modified: Wed, 10 May 2017 19:05:40 GMT  
		Size: 12.8 MB (12767037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834726a0d353a6f0d4cb0fc31568cf7f37b317c4fbd20e3e365ce5a405f880a6`  
		Last Modified: Wed, 10 May 2017 19:05:38 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce534f87d4189de33fa6827e9dc81e172c5daf8242e6e97492cca10fb9381f96`  
		Last Modified: Wed, 10 May 2017 19:05:41 GMT  
		Size: 10.6 MB (10562089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90716c6997e568ca8091341a4635ce6a58ce72a6afaf40a482a61ae6feb84224`  
		Last Modified: Wed, 10 May 2017 19:05:39 GMT  
		Size: 2.0 KB (2029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69699b39b1f127d2b6c261f47e9959a2deaf096e0c37692562ad6c7d10a665cf`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 1.4 KB (1383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325c1cd1dd994599ffbda38bb6df1ef3f64184a52e964d9d7f21683e1b3fcaf8`  
		Last Modified: Thu, 11 May 2017 14:27:53 GMT  
		Size: 1.2 MB (1210404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028a3774807e4c027f3f36b87cb6feb112a310ad830210d01f17be8d1510284c`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 117.7 KB (117658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62db66ee338845c518c37f4ecd1f9bcd9a70b0ec137f662e79c78f6bae46a2c0`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558600b98eae7cd7123af0018daf3c9bf2c8618482553736586aae46ed055e38`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 319.1 KB (319105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad80c8ee1d969b939346322814bba223ec6b26a423f27838d133833b48ae8e8`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4-standalone`

```console
$ docker pull adminer@sha256:18879370a1a69aab9bcf25f4f4840e1d5948493e72961ba2fe2c8075979405c6
```

-	Platforms:
	-	linux; amd64

### `adminer:4-standalone` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28447753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f60e322f6c1cfdeebba4c08cf3b30460124a6a6ff6206057c5c0b8c38bc8ae9`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","0.0.0.0:8080","-t","\/var\/www\/html"]`

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
# Wed, 10 May 2017 17:06:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:06:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:06:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 May 2017 18:43:39 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 May 2017 18:43:40 GMT
ENV PHP_VERSION=7.0.18
# Wed, 10 May 2017 18:43:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.18.tar.xz.asc/from/this/mirror
# Wed, 10 May 2017 18:43:41 GMT
ENV PHP_SHA256=679cffcdf2495dee5ab89bda595e678a1096136678b3a1d08f1f57ba347c234d PHP_MD5=a578c55644d233635d2caa96c3a6f9c7
# Wed, 10 May 2017 18:43:49 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 10 May 2017 18:44:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 10 May 2017 18:48:24 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Wed, 10 May 2017 18:48:27 GMT
COPY multi:e6c464c392a31f5168d5531bab0e23fa9eac39c09c1e5823ce94492760685158 in /usr/local/bin/ 
# Wed, 10 May 2017 18:48:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 10 May 2017 18:48:29 GMT
CMD ["php" "-a"]
# Wed, 10 May 2017 23:55:01 GMT
STOPSIGNAL [SIGINT]
# Wed, 10 May 2017 23:55:03 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Wed, 10 May 2017 23:55:04 GMT
WORKDIR /var/www/html
# Wed, 10 May 2017 23:55:06 GMT
RUN apk add --no-cache libpq
# Wed, 10 May 2017 23:55:20 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Wed, 10 May 2017 23:55:22 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Wed, 10 May 2017 23:55:22 GMT
ENV ADMINER_VERSION=4.3.1
# Wed, 10 May 2017 23:55:23 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Wed, 10 May 2017 23:55:24 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Wed, 10 May 2017 23:55:28 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Wed, 10 May 2017 23:55:29 GMT
COPY file:9bd2234bd2d16bb29c56ca41cb797761bce45cf629f48bc911f36b2c284cde46 in /usr/local/bin/ 
# Wed, 10 May 2017 23:55:29 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Wed, 10 May 2017 23:55:30 GMT
USER [adminer]
# Wed, 10 May 2017 23:55:31 GMT
CMD ["php" "-S" "0.0.0.0:8080" "-t" "/var/www/html"]
# Wed, 10 May 2017 23:55:32 GMT
EXPOSE 8080/tcp
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
	-	`sha256:d57d4e99b12e824c9b6f77a6a7dd354959ba197871d714e5d55f2c473568004d`  
		Last Modified: Wed, 10 May 2017 19:05:40 GMT  
		Size: 12.8 MB (12767037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834726a0d353a6f0d4cb0fc31568cf7f37b317c4fbd20e3e365ce5a405f880a6`  
		Last Modified: Wed, 10 May 2017 19:05:38 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce534f87d4189de33fa6827e9dc81e172c5daf8242e6e97492cca10fb9381f96`  
		Last Modified: Wed, 10 May 2017 19:05:41 GMT  
		Size: 10.6 MB (10562089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90716c6997e568ca8091341a4635ce6a58ce72a6afaf40a482a61ae6feb84224`  
		Last Modified: Wed, 10 May 2017 19:05:39 GMT  
		Size: 2.0 KB (2029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69699b39b1f127d2b6c261f47e9959a2deaf096e0c37692562ad6c7d10a665cf`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 1.4 KB (1383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325c1cd1dd994599ffbda38bb6df1ef3f64184a52e964d9d7f21683e1b3fcaf8`  
		Last Modified: Thu, 11 May 2017 14:27:53 GMT  
		Size: 1.2 MB (1210404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028a3774807e4c027f3f36b87cb6feb112a310ad830210d01f17be8d1510284c`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 117.7 KB (117658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62db66ee338845c518c37f4ecd1f9bcd9a70b0ec137f662e79c78f6bae46a2c0`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558600b98eae7cd7123af0018daf3c9bf2c8618482553736586aae46ed055e38`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 319.1 KB (319105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad80c8ee1d969b939346322814bba223ec6b26a423f27838d133833b48ae8e8`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:standalone`

```console
$ docker pull adminer@sha256:18879370a1a69aab9bcf25f4f4840e1d5948493e72961ba2fe2c8075979405c6
```

-	Platforms:
	-	linux; amd64

### `adminer:standalone` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28447753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f60e322f6c1cfdeebba4c08cf3b30460124a6a6ff6206057c5c0b8c38bc8ae9`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","0.0.0.0:8080","-t","\/var\/www\/html"]`

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
# Wed, 10 May 2017 17:06:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:06:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:06:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 May 2017 18:43:39 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 May 2017 18:43:40 GMT
ENV PHP_VERSION=7.0.18
# Wed, 10 May 2017 18:43:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.18.tar.xz.asc/from/this/mirror
# Wed, 10 May 2017 18:43:41 GMT
ENV PHP_SHA256=679cffcdf2495dee5ab89bda595e678a1096136678b3a1d08f1f57ba347c234d PHP_MD5=a578c55644d233635d2caa96c3a6f9c7
# Wed, 10 May 2017 18:43:49 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 10 May 2017 18:44:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 10 May 2017 18:48:24 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Wed, 10 May 2017 18:48:27 GMT
COPY multi:e6c464c392a31f5168d5531bab0e23fa9eac39c09c1e5823ce94492760685158 in /usr/local/bin/ 
# Wed, 10 May 2017 18:48:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 10 May 2017 18:48:29 GMT
CMD ["php" "-a"]
# Wed, 10 May 2017 23:55:01 GMT
STOPSIGNAL [SIGINT]
# Wed, 10 May 2017 23:55:03 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Wed, 10 May 2017 23:55:04 GMT
WORKDIR /var/www/html
# Wed, 10 May 2017 23:55:06 GMT
RUN apk add --no-cache libpq
# Wed, 10 May 2017 23:55:20 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Wed, 10 May 2017 23:55:22 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Wed, 10 May 2017 23:55:22 GMT
ENV ADMINER_VERSION=4.3.1
# Wed, 10 May 2017 23:55:23 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Wed, 10 May 2017 23:55:24 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Wed, 10 May 2017 23:55:28 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Wed, 10 May 2017 23:55:29 GMT
COPY file:9bd2234bd2d16bb29c56ca41cb797761bce45cf629f48bc911f36b2c284cde46 in /usr/local/bin/ 
# Wed, 10 May 2017 23:55:29 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Wed, 10 May 2017 23:55:30 GMT
USER [adminer]
# Wed, 10 May 2017 23:55:31 GMT
CMD ["php" "-S" "0.0.0.0:8080" "-t" "/var/www/html"]
# Wed, 10 May 2017 23:55:32 GMT
EXPOSE 8080/tcp
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
	-	`sha256:d57d4e99b12e824c9b6f77a6a7dd354959ba197871d714e5d55f2c473568004d`  
		Last Modified: Wed, 10 May 2017 19:05:40 GMT  
		Size: 12.8 MB (12767037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834726a0d353a6f0d4cb0fc31568cf7f37b317c4fbd20e3e365ce5a405f880a6`  
		Last Modified: Wed, 10 May 2017 19:05:38 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce534f87d4189de33fa6827e9dc81e172c5daf8242e6e97492cca10fb9381f96`  
		Last Modified: Wed, 10 May 2017 19:05:41 GMT  
		Size: 10.6 MB (10562089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90716c6997e568ca8091341a4635ce6a58ce72a6afaf40a482a61ae6feb84224`  
		Last Modified: Wed, 10 May 2017 19:05:39 GMT  
		Size: 2.0 KB (2029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69699b39b1f127d2b6c261f47e9959a2deaf096e0c37692562ad6c7d10a665cf`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 1.4 KB (1383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325c1cd1dd994599ffbda38bb6df1ef3f64184a52e964d9d7f21683e1b3fcaf8`  
		Last Modified: Thu, 11 May 2017 14:27:53 GMT  
		Size: 1.2 MB (1210404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028a3774807e4c027f3f36b87cb6feb112a310ad830210d01f17be8d1510284c`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 117.7 KB (117658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62db66ee338845c518c37f4ecd1f9bcd9a70b0ec137f662e79c78f6bae46a2c0`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558600b98eae7cd7123af0018daf3c9bf2c8618482553736586aae46ed055e38`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 319.1 KB (319105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad80c8ee1d969b939346322814bba223ec6b26a423f27838d133833b48ae8e8`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.3.1`

```console
$ docker pull adminer@sha256:18879370a1a69aab9bcf25f4f4840e1d5948493e72961ba2fe2c8075979405c6
```

-	Platforms:
	-	linux; amd64

### `adminer:4.3.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28447753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f60e322f6c1cfdeebba4c08cf3b30460124a6a6ff6206057c5c0b8c38bc8ae9`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","0.0.0.0:8080","-t","\/var\/www\/html"]`

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
# Wed, 10 May 2017 17:06:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:06:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:06:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 May 2017 18:43:39 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 May 2017 18:43:40 GMT
ENV PHP_VERSION=7.0.18
# Wed, 10 May 2017 18:43:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.18.tar.xz.asc/from/this/mirror
# Wed, 10 May 2017 18:43:41 GMT
ENV PHP_SHA256=679cffcdf2495dee5ab89bda595e678a1096136678b3a1d08f1f57ba347c234d PHP_MD5=a578c55644d233635d2caa96c3a6f9c7
# Wed, 10 May 2017 18:43:49 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 10 May 2017 18:44:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 10 May 2017 18:48:24 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Wed, 10 May 2017 18:48:27 GMT
COPY multi:e6c464c392a31f5168d5531bab0e23fa9eac39c09c1e5823ce94492760685158 in /usr/local/bin/ 
# Wed, 10 May 2017 18:48:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 10 May 2017 18:48:29 GMT
CMD ["php" "-a"]
# Wed, 10 May 2017 23:55:01 GMT
STOPSIGNAL [SIGINT]
# Wed, 10 May 2017 23:55:03 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Wed, 10 May 2017 23:55:04 GMT
WORKDIR /var/www/html
# Wed, 10 May 2017 23:55:06 GMT
RUN apk add --no-cache libpq
# Wed, 10 May 2017 23:55:20 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Wed, 10 May 2017 23:55:22 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Wed, 10 May 2017 23:55:22 GMT
ENV ADMINER_VERSION=4.3.1
# Wed, 10 May 2017 23:55:23 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Wed, 10 May 2017 23:55:24 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Wed, 10 May 2017 23:55:28 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Wed, 10 May 2017 23:55:29 GMT
COPY file:9bd2234bd2d16bb29c56ca41cb797761bce45cf629f48bc911f36b2c284cde46 in /usr/local/bin/ 
# Wed, 10 May 2017 23:55:29 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Wed, 10 May 2017 23:55:30 GMT
USER [adminer]
# Wed, 10 May 2017 23:55:31 GMT
CMD ["php" "-S" "0.0.0.0:8080" "-t" "/var/www/html"]
# Wed, 10 May 2017 23:55:32 GMT
EXPOSE 8080/tcp
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
	-	`sha256:d57d4e99b12e824c9b6f77a6a7dd354959ba197871d714e5d55f2c473568004d`  
		Last Modified: Wed, 10 May 2017 19:05:40 GMT  
		Size: 12.8 MB (12767037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834726a0d353a6f0d4cb0fc31568cf7f37b317c4fbd20e3e365ce5a405f880a6`  
		Last Modified: Wed, 10 May 2017 19:05:38 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce534f87d4189de33fa6827e9dc81e172c5daf8242e6e97492cca10fb9381f96`  
		Last Modified: Wed, 10 May 2017 19:05:41 GMT  
		Size: 10.6 MB (10562089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90716c6997e568ca8091341a4635ce6a58ce72a6afaf40a482a61ae6feb84224`  
		Last Modified: Wed, 10 May 2017 19:05:39 GMT  
		Size: 2.0 KB (2029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69699b39b1f127d2b6c261f47e9959a2deaf096e0c37692562ad6c7d10a665cf`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 1.4 KB (1383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325c1cd1dd994599ffbda38bb6df1ef3f64184a52e964d9d7f21683e1b3fcaf8`  
		Last Modified: Thu, 11 May 2017 14:27:53 GMT  
		Size: 1.2 MB (1210404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028a3774807e4c027f3f36b87cb6feb112a310ad830210d01f17be8d1510284c`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 117.7 KB (117658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62db66ee338845c518c37f4ecd1f9bcd9a70b0ec137f662e79c78f6bae46a2c0`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558600b98eae7cd7123af0018daf3c9bf2c8618482553736586aae46ed055e38`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 319.1 KB (319105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad80c8ee1d969b939346322814bba223ec6b26a423f27838d133833b48ae8e8`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.3`

```console
$ docker pull adminer@sha256:18879370a1a69aab9bcf25f4f4840e1d5948493e72961ba2fe2c8075979405c6
```

-	Platforms:
	-	linux; amd64

### `adminer:4.3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28447753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f60e322f6c1cfdeebba4c08cf3b30460124a6a6ff6206057c5c0b8c38bc8ae9`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","0.0.0.0:8080","-t","\/var\/www\/html"]`

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
# Wed, 10 May 2017 17:06:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:06:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:06:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 May 2017 18:43:39 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 May 2017 18:43:40 GMT
ENV PHP_VERSION=7.0.18
# Wed, 10 May 2017 18:43:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.18.tar.xz.asc/from/this/mirror
# Wed, 10 May 2017 18:43:41 GMT
ENV PHP_SHA256=679cffcdf2495dee5ab89bda595e678a1096136678b3a1d08f1f57ba347c234d PHP_MD5=a578c55644d233635d2caa96c3a6f9c7
# Wed, 10 May 2017 18:43:49 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 10 May 2017 18:44:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 10 May 2017 18:48:24 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Wed, 10 May 2017 18:48:27 GMT
COPY multi:e6c464c392a31f5168d5531bab0e23fa9eac39c09c1e5823ce94492760685158 in /usr/local/bin/ 
# Wed, 10 May 2017 18:48:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 10 May 2017 18:48:29 GMT
CMD ["php" "-a"]
# Wed, 10 May 2017 23:55:01 GMT
STOPSIGNAL [SIGINT]
# Wed, 10 May 2017 23:55:03 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Wed, 10 May 2017 23:55:04 GMT
WORKDIR /var/www/html
# Wed, 10 May 2017 23:55:06 GMT
RUN apk add --no-cache libpq
# Wed, 10 May 2017 23:55:20 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Wed, 10 May 2017 23:55:22 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Wed, 10 May 2017 23:55:22 GMT
ENV ADMINER_VERSION=4.3.1
# Wed, 10 May 2017 23:55:23 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Wed, 10 May 2017 23:55:24 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Wed, 10 May 2017 23:55:28 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Wed, 10 May 2017 23:55:29 GMT
COPY file:9bd2234bd2d16bb29c56ca41cb797761bce45cf629f48bc911f36b2c284cde46 in /usr/local/bin/ 
# Wed, 10 May 2017 23:55:29 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Wed, 10 May 2017 23:55:30 GMT
USER [adminer]
# Wed, 10 May 2017 23:55:31 GMT
CMD ["php" "-S" "0.0.0.0:8080" "-t" "/var/www/html"]
# Wed, 10 May 2017 23:55:32 GMT
EXPOSE 8080/tcp
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
	-	`sha256:d57d4e99b12e824c9b6f77a6a7dd354959ba197871d714e5d55f2c473568004d`  
		Last Modified: Wed, 10 May 2017 19:05:40 GMT  
		Size: 12.8 MB (12767037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834726a0d353a6f0d4cb0fc31568cf7f37b317c4fbd20e3e365ce5a405f880a6`  
		Last Modified: Wed, 10 May 2017 19:05:38 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce534f87d4189de33fa6827e9dc81e172c5daf8242e6e97492cca10fb9381f96`  
		Last Modified: Wed, 10 May 2017 19:05:41 GMT  
		Size: 10.6 MB (10562089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90716c6997e568ca8091341a4635ce6a58ce72a6afaf40a482a61ae6feb84224`  
		Last Modified: Wed, 10 May 2017 19:05:39 GMT  
		Size: 2.0 KB (2029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69699b39b1f127d2b6c261f47e9959a2deaf096e0c37692562ad6c7d10a665cf`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 1.4 KB (1383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325c1cd1dd994599ffbda38bb6df1ef3f64184a52e964d9d7f21683e1b3fcaf8`  
		Last Modified: Thu, 11 May 2017 14:27:53 GMT  
		Size: 1.2 MB (1210404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028a3774807e4c027f3f36b87cb6feb112a310ad830210d01f17be8d1510284c`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 117.7 KB (117658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62db66ee338845c518c37f4ecd1f9bcd9a70b0ec137f662e79c78f6bae46a2c0`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558600b98eae7cd7123af0018daf3c9bf2c8618482553736586aae46ed055e38`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 319.1 KB (319105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad80c8ee1d969b939346322814bba223ec6b26a423f27838d133833b48ae8e8`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4`

```console
$ docker pull adminer@sha256:18879370a1a69aab9bcf25f4f4840e1d5948493e72961ba2fe2c8075979405c6
```

-	Platforms:
	-	linux; amd64

### `adminer:4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28447753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f60e322f6c1cfdeebba4c08cf3b30460124a6a6ff6206057c5c0b8c38bc8ae9`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","0.0.0.0:8080","-t","\/var\/www\/html"]`

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
# Wed, 10 May 2017 17:06:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:06:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:06:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 May 2017 18:43:39 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 May 2017 18:43:40 GMT
ENV PHP_VERSION=7.0.18
# Wed, 10 May 2017 18:43:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.18.tar.xz.asc/from/this/mirror
# Wed, 10 May 2017 18:43:41 GMT
ENV PHP_SHA256=679cffcdf2495dee5ab89bda595e678a1096136678b3a1d08f1f57ba347c234d PHP_MD5=a578c55644d233635d2caa96c3a6f9c7
# Wed, 10 May 2017 18:43:49 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 10 May 2017 18:44:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 10 May 2017 18:48:24 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Wed, 10 May 2017 18:48:27 GMT
COPY multi:e6c464c392a31f5168d5531bab0e23fa9eac39c09c1e5823ce94492760685158 in /usr/local/bin/ 
# Wed, 10 May 2017 18:48:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 10 May 2017 18:48:29 GMT
CMD ["php" "-a"]
# Wed, 10 May 2017 23:55:01 GMT
STOPSIGNAL [SIGINT]
# Wed, 10 May 2017 23:55:03 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Wed, 10 May 2017 23:55:04 GMT
WORKDIR /var/www/html
# Wed, 10 May 2017 23:55:06 GMT
RUN apk add --no-cache libpq
# Wed, 10 May 2017 23:55:20 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Wed, 10 May 2017 23:55:22 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Wed, 10 May 2017 23:55:22 GMT
ENV ADMINER_VERSION=4.3.1
# Wed, 10 May 2017 23:55:23 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Wed, 10 May 2017 23:55:24 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Wed, 10 May 2017 23:55:28 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Wed, 10 May 2017 23:55:29 GMT
COPY file:9bd2234bd2d16bb29c56ca41cb797761bce45cf629f48bc911f36b2c284cde46 in /usr/local/bin/ 
# Wed, 10 May 2017 23:55:29 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Wed, 10 May 2017 23:55:30 GMT
USER [adminer]
# Wed, 10 May 2017 23:55:31 GMT
CMD ["php" "-S" "0.0.0.0:8080" "-t" "/var/www/html"]
# Wed, 10 May 2017 23:55:32 GMT
EXPOSE 8080/tcp
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
	-	`sha256:d57d4e99b12e824c9b6f77a6a7dd354959ba197871d714e5d55f2c473568004d`  
		Last Modified: Wed, 10 May 2017 19:05:40 GMT  
		Size: 12.8 MB (12767037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834726a0d353a6f0d4cb0fc31568cf7f37b317c4fbd20e3e365ce5a405f880a6`  
		Last Modified: Wed, 10 May 2017 19:05:38 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce534f87d4189de33fa6827e9dc81e172c5daf8242e6e97492cca10fb9381f96`  
		Last Modified: Wed, 10 May 2017 19:05:41 GMT  
		Size: 10.6 MB (10562089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90716c6997e568ca8091341a4635ce6a58ce72a6afaf40a482a61ae6feb84224`  
		Last Modified: Wed, 10 May 2017 19:05:39 GMT  
		Size: 2.0 KB (2029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69699b39b1f127d2b6c261f47e9959a2deaf096e0c37692562ad6c7d10a665cf`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 1.4 KB (1383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325c1cd1dd994599ffbda38bb6df1ef3f64184a52e964d9d7f21683e1b3fcaf8`  
		Last Modified: Thu, 11 May 2017 14:27:53 GMT  
		Size: 1.2 MB (1210404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028a3774807e4c027f3f36b87cb6feb112a310ad830210d01f17be8d1510284c`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 117.7 KB (117658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62db66ee338845c518c37f4ecd1f9bcd9a70b0ec137f662e79c78f6bae46a2c0`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558600b98eae7cd7123af0018daf3c9bf2c8618482553736586aae46ed055e38`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 319.1 KB (319105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad80c8ee1d969b939346322814bba223ec6b26a423f27838d133833b48ae8e8`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:latest`

```console
$ docker pull adminer@sha256:18879370a1a69aab9bcf25f4f4840e1d5948493e72961ba2fe2c8075979405c6
```

-	Platforms:
	-	linux; amd64

### `adminer:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28447753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f60e322f6c1cfdeebba4c08cf3b30460124a6a6ff6206057c5c0b8c38bc8ae9`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","0.0.0.0:8080","-t","\/var\/www\/html"]`

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
# Wed, 10 May 2017 17:06:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:06:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 May 2017 17:06:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 May 2017 18:43:39 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 10 May 2017 18:43:40 GMT
ENV PHP_VERSION=7.0.18
# Wed, 10 May 2017 18:43:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.18.tar.xz.asc/from/this/mirror
# Wed, 10 May 2017 18:43:41 GMT
ENV PHP_SHA256=679cffcdf2495dee5ab89bda595e678a1096136678b3a1d08f1f57ba347c234d PHP_MD5=a578c55644d233635d2caa96c3a6f9c7
# Wed, 10 May 2017 18:43:49 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 10 May 2017 18:44:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 10 May 2017 18:48:24 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Wed, 10 May 2017 18:48:27 GMT
COPY multi:e6c464c392a31f5168d5531bab0e23fa9eac39c09c1e5823ce94492760685158 in /usr/local/bin/ 
# Wed, 10 May 2017 18:48:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 10 May 2017 18:48:29 GMT
CMD ["php" "-a"]
# Wed, 10 May 2017 23:55:01 GMT
STOPSIGNAL [SIGINT]
# Wed, 10 May 2017 23:55:03 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Wed, 10 May 2017 23:55:04 GMT
WORKDIR /var/www/html
# Wed, 10 May 2017 23:55:06 GMT
RUN apk add --no-cache libpq
# Wed, 10 May 2017 23:55:20 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Wed, 10 May 2017 23:55:22 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Wed, 10 May 2017 23:55:22 GMT
ENV ADMINER_VERSION=4.3.1
# Wed, 10 May 2017 23:55:23 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Wed, 10 May 2017 23:55:24 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Wed, 10 May 2017 23:55:28 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Wed, 10 May 2017 23:55:29 GMT
COPY file:9bd2234bd2d16bb29c56ca41cb797761bce45cf629f48bc911f36b2c284cde46 in /usr/local/bin/ 
# Wed, 10 May 2017 23:55:29 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Wed, 10 May 2017 23:55:30 GMT
USER [adminer]
# Wed, 10 May 2017 23:55:31 GMT
CMD ["php" "-S" "0.0.0.0:8080" "-t" "/var/www/html"]
# Wed, 10 May 2017 23:55:32 GMT
EXPOSE 8080/tcp
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
	-	`sha256:d57d4e99b12e824c9b6f77a6a7dd354959ba197871d714e5d55f2c473568004d`  
		Last Modified: Wed, 10 May 2017 19:05:40 GMT  
		Size: 12.8 MB (12767037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834726a0d353a6f0d4cb0fc31568cf7f37b317c4fbd20e3e365ce5a405f880a6`  
		Last Modified: Wed, 10 May 2017 19:05:38 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce534f87d4189de33fa6827e9dc81e172c5daf8242e6e97492cca10fb9381f96`  
		Last Modified: Wed, 10 May 2017 19:05:41 GMT  
		Size: 10.6 MB (10562089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90716c6997e568ca8091341a4635ce6a58ce72a6afaf40a482a61ae6feb84224`  
		Last Modified: Wed, 10 May 2017 19:05:39 GMT  
		Size: 2.0 KB (2029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69699b39b1f127d2b6c261f47e9959a2deaf096e0c37692562ad6c7d10a665cf`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 1.4 KB (1383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325c1cd1dd994599ffbda38bb6df1ef3f64184a52e964d9d7f21683e1b3fcaf8`  
		Last Modified: Thu, 11 May 2017 14:27:53 GMT  
		Size: 1.2 MB (1210404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028a3774807e4c027f3f36b87cb6feb112a310ad830210d01f17be8d1510284c`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 117.7 KB (117658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62db66ee338845c518c37f4ecd1f9bcd9a70b0ec137f662e79c78f6bae46a2c0`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558600b98eae7cd7123af0018daf3c9bf2c8618482553736586aae46ed055e38`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 319.1 KB (319105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad80c8ee1d969b939346322814bba223ec6b26a423f27838d133833b48ae8e8`  
		Last Modified: Thu, 11 May 2017 14:27:52 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.3.1-fastcgi`

```console
$ docker pull adminer@sha256:d33dad1a44abc435fb72375a60b865ae60ad4db1509c331b8eed4412c3935f54
```

-	Platforms:
	-	linux; amd64

### `adminer:4.3.1-fastcgi` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32306681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3924ba040741a8f39618178919868baad7d7ff5624c76f3e01ad819042997424`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
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
# Wed, 10 May 2017 23:55:53 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Wed, 10 May 2017 23:55:56 GMT
RUN apk add --no-cache libpq
# Wed, 10 May 2017 23:56:10 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Wed, 10 May 2017 23:56:12 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Wed, 10 May 2017 23:56:13 GMT
ENV ADMINER_VERSION=4.3.1
# Wed, 10 May 2017 23:56:13 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Wed, 10 May 2017 23:56:14 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Wed, 10 May 2017 23:56:18 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Wed, 10 May 2017 23:56:19 GMT
COPY file:9bd2234bd2d16bb29c56ca41cb797761bce45cf629f48bc911f36b2c284cde46 in /usr/local/bin/ 
# Wed, 10 May 2017 23:56:20 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Wed, 10 May 2017 23:56:20 GMT
USER [adminer]
# Wed, 10 May 2017 23:56:21 GMT
CMD ["php-fpm"]
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
	-	`sha256:60ceaa5f89395ad652bf04d0ad1014fa280020855c8b5086ef69e52b58038571`  
		Last Modified: Thu, 11 May 2017 14:26:18 GMT  
		Size: 1.4 KB (1383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80bfae61ff2083dc09949326f6401b4f226f935d407a9ae41d75516254f231c9`  
		Last Modified: Thu, 11 May 2017 14:26:19 GMT  
		Size: 1.2 MB (1210405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed564e181cfd4760dffc915a5be244343fb8f06eff8f3d677395f1f48510bc4`  
		Last Modified: Thu, 11 May 2017 14:26:18 GMT  
		Size: 117.7 KB (117679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88d746e1304b6cc25a9feb59931ed2a84b1c8e817afc628e68ccc4044905ce4`  
		Last Modified: Thu, 11 May 2017 14:26:18 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a617e7af8d7bf195d275ab279a831e6ba6073a77262d8be3ebb1afd71a1ef90`  
		Last Modified: Thu, 11 May 2017 14:26:18 GMT  
		Size: 319.1 KB (319102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469e4f950da24a9869429a9f7526600b50521887e9dae1021f1c3c8a582c8c00`  
		Last Modified: Thu, 11 May 2017 14:26:18 GMT  
		Size: 370.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.3-fastcgi`

```console
$ docker pull adminer@sha256:d33dad1a44abc435fb72375a60b865ae60ad4db1509c331b8eed4412c3935f54
```

-	Platforms:
	-	linux; amd64

### `adminer:4.3-fastcgi` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32306681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3924ba040741a8f39618178919868baad7d7ff5624c76f3e01ad819042997424`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
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
# Wed, 10 May 2017 23:55:53 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Wed, 10 May 2017 23:55:56 GMT
RUN apk add --no-cache libpq
# Wed, 10 May 2017 23:56:10 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Wed, 10 May 2017 23:56:12 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Wed, 10 May 2017 23:56:13 GMT
ENV ADMINER_VERSION=4.3.1
# Wed, 10 May 2017 23:56:13 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Wed, 10 May 2017 23:56:14 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Wed, 10 May 2017 23:56:18 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Wed, 10 May 2017 23:56:19 GMT
COPY file:9bd2234bd2d16bb29c56ca41cb797761bce45cf629f48bc911f36b2c284cde46 in /usr/local/bin/ 
# Wed, 10 May 2017 23:56:20 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Wed, 10 May 2017 23:56:20 GMT
USER [adminer]
# Wed, 10 May 2017 23:56:21 GMT
CMD ["php-fpm"]
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
	-	`sha256:60ceaa5f89395ad652bf04d0ad1014fa280020855c8b5086ef69e52b58038571`  
		Last Modified: Thu, 11 May 2017 14:26:18 GMT  
		Size: 1.4 KB (1383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80bfae61ff2083dc09949326f6401b4f226f935d407a9ae41d75516254f231c9`  
		Last Modified: Thu, 11 May 2017 14:26:19 GMT  
		Size: 1.2 MB (1210405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed564e181cfd4760dffc915a5be244343fb8f06eff8f3d677395f1f48510bc4`  
		Last Modified: Thu, 11 May 2017 14:26:18 GMT  
		Size: 117.7 KB (117679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88d746e1304b6cc25a9feb59931ed2a84b1c8e817afc628e68ccc4044905ce4`  
		Last Modified: Thu, 11 May 2017 14:26:18 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a617e7af8d7bf195d275ab279a831e6ba6073a77262d8be3ebb1afd71a1ef90`  
		Last Modified: Thu, 11 May 2017 14:26:18 GMT  
		Size: 319.1 KB (319102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469e4f950da24a9869429a9f7526600b50521887e9dae1021f1c3c8a582c8c00`  
		Last Modified: Thu, 11 May 2017 14:26:18 GMT  
		Size: 370.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4-fastcgi`

```console
$ docker pull adminer@sha256:d33dad1a44abc435fb72375a60b865ae60ad4db1509c331b8eed4412c3935f54
```

-	Platforms:
	-	linux; amd64

### `adminer:4-fastcgi` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32306681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3924ba040741a8f39618178919868baad7d7ff5624c76f3e01ad819042997424`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
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
# Wed, 10 May 2017 23:55:53 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Wed, 10 May 2017 23:55:56 GMT
RUN apk add --no-cache libpq
# Wed, 10 May 2017 23:56:10 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Wed, 10 May 2017 23:56:12 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Wed, 10 May 2017 23:56:13 GMT
ENV ADMINER_VERSION=4.3.1
# Wed, 10 May 2017 23:56:13 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Wed, 10 May 2017 23:56:14 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Wed, 10 May 2017 23:56:18 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Wed, 10 May 2017 23:56:19 GMT
COPY file:9bd2234bd2d16bb29c56ca41cb797761bce45cf629f48bc911f36b2c284cde46 in /usr/local/bin/ 
# Wed, 10 May 2017 23:56:20 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Wed, 10 May 2017 23:56:20 GMT
USER [adminer]
# Wed, 10 May 2017 23:56:21 GMT
CMD ["php-fpm"]
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
	-	`sha256:60ceaa5f89395ad652bf04d0ad1014fa280020855c8b5086ef69e52b58038571`  
		Last Modified: Thu, 11 May 2017 14:26:18 GMT  
		Size: 1.4 KB (1383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80bfae61ff2083dc09949326f6401b4f226f935d407a9ae41d75516254f231c9`  
		Last Modified: Thu, 11 May 2017 14:26:19 GMT  
		Size: 1.2 MB (1210405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed564e181cfd4760dffc915a5be244343fb8f06eff8f3d677395f1f48510bc4`  
		Last Modified: Thu, 11 May 2017 14:26:18 GMT  
		Size: 117.7 KB (117679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88d746e1304b6cc25a9feb59931ed2a84b1c8e817afc628e68ccc4044905ce4`  
		Last Modified: Thu, 11 May 2017 14:26:18 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a617e7af8d7bf195d275ab279a831e6ba6073a77262d8be3ebb1afd71a1ef90`  
		Last Modified: Thu, 11 May 2017 14:26:18 GMT  
		Size: 319.1 KB (319102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469e4f950da24a9869429a9f7526600b50521887e9dae1021f1c3c8a582c8c00`  
		Last Modified: Thu, 11 May 2017 14:26:18 GMT  
		Size: 370.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:fastcgi`

```console
$ docker pull adminer@sha256:d33dad1a44abc435fb72375a60b865ae60ad4db1509c331b8eed4412c3935f54
```

-	Platforms:
	-	linux; amd64

### `adminer:fastcgi` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32306681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3924ba040741a8f39618178919868baad7d7ff5624c76f3e01ad819042997424`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
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
# Wed, 10 May 2017 23:55:53 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Wed, 10 May 2017 23:55:56 GMT
RUN apk add --no-cache libpq
# Wed, 10 May 2017 23:56:10 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Wed, 10 May 2017 23:56:12 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Wed, 10 May 2017 23:56:13 GMT
ENV ADMINER_VERSION=4.3.1
# Wed, 10 May 2017 23:56:13 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Wed, 10 May 2017 23:56:14 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Wed, 10 May 2017 23:56:18 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Wed, 10 May 2017 23:56:19 GMT
COPY file:9bd2234bd2d16bb29c56ca41cb797761bce45cf629f48bc911f36b2c284cde46 in /usr/local/bin/ 
# Wed, 10 May 2017 23:56:20 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Wed, 10 May 2017 23:56:20 GMT
USER [adminer]
# Wed, 10 May 2017 23:56:21 GMT
CMD ["php-fpm"]
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
	-	`sha256:60ceaa5f89395ad652bf04d0ad1014fa280020855c8b5086ef69e52b58038571`  
		Last Modified: Thu, 11 May 2017 14:26:18 GMT  
		Size: 1.4 KB (1383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80bfae61ff2083dc09949326f6401b4f226f935d407a9ae41d75516254f231c9`  
		Last Modified: Thu, 11 May 2017 14:26:19 GMT  
		Size: 1.2 MB (1210405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed564e181cfd4760dffc915a5be244343fb8f06eff8f3d677395f1f48510bc4`  
		Last Modified: Thu, 11 May 2017 14:26:18 GMT  
		Size: 117.7 KB (117679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88d746e1304b6cc25a9feb59931ed2a84b1c8e817afc628e68ccc4044905ce4`  
		Last Modified: Thu, 11 May 2017 14:26:18 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a617e7af8d7bf195d275ab279a831e6ba6073a77262d8be3ebb1afd71a1ef90`  
		Last Modified: Thu, 11 May 2017 14:26:18 GMT  
		Size: 319.1 KB (319102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469e4f950da24a9869429a9f7526600b50521887e9dae1021f1c3c8a582c8c00`  
		Last Modified: Thu, 11 May 2017 14:26:18 GMT  
		Size: 370.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
