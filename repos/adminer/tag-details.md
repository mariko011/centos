<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `adminer`

-	[`adminer:4`](#adminer4)
-	[`adminer:4.3`](#adminer43)
-	[`adminer:4.3.1`](#adminer431)
-	[`adminer:4.3.1-fastcgi`](#adminer431-fastcgi)
-	[`adminer:4.3.1-standalone`](#adminer431-standalone)
-	[`adminer:4.3-fastcgi`](#adminer43-fastcgi)
-	[`adminer:4.3-standalone`](#adminer43-standalone)
-	[`adminer:4-fastcgi`](#adminer4-fastcgi)
-	[`adminer:4-standalone`](#adminer4-standalone)
-	[`adminer:fastcgi`](#adminerfastcgi)
-	[`adminer:latest`](#adminerlatest)
-	[`adminer:standalone`](#adminerstandalone)

## `adminer:4`

```console
$ docker pull adminer@sha256:d622b6f2035a626067a8f61b6f0340f7b4cd195cfa397573e49057f69ad304e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `adminer:4` - linux; amd64

```console
$ docker pull adminer@sha256:906c5638e1a948b7ea0d3a08ccb01899dcb8bf83ecb55c64d5bc9c7c38ae35a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29195838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8cdeddc1de618dd5f11e2b88f8b141c7ada7ba3afaa2c06a8e56c8b6893b875`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 02:00:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 01 Dec 2017 02:00:42 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Fri, 01 Dec 2017 02:00:42 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 01 Dec 2017 02:00:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 02:00:43 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 02:00:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 02:00:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 02:00:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 02:39:22 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 01 Dec 2017 02:39:22 GMT
ENV PHP_VERSION=7.0.26
# Fri, 01 Dec 2017 02:39:22 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 02:39:23 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Fri, 01 Dec 2017 02:39:35 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 01 Dec 2017 02:39:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 02:43:05 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 02:43:06 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Fri, 01 Dec 2017 02:43:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 02:43:06 GMT
CMD ["php" "-a"]
# Fri, 01 Dec 2017 03:53:29 GMT
STOPSIGNAL [SIGINT]
# Fri, 01 Dec 2017 03:53:30 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 01 Dec 2017 03:53:30 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 03:53:33 GMT
RUN apk add --no-cache libpq
# Fri, 01 Dec 2017 03:53:53 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 01 Dec 2017 03:53:53 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Fri, 01 Dec 2017 03:53:53 GMT
ENV ADMINER_VERSION=4.3.1
# Fri, 01 Dec 2017 03:53:53 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Fri, 01 Dec 2017 03:53:54 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Fri, 01 Dec 2017 03:53:56 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 01 Dec 2017 03:53:57 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Fri, 01 Dec 2017 03:53:57 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 01 Dec 2017 03:53:57 GMT
USER [adminer]
# Fri, 01 Dec 2017 03:53:57 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 01 Dec 2017 03:53:57 GMT
EXPOSE 8080/tcp
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b36c84dd5f489a5a08bd99112752163cdccac63a29caa202e13c8a354a3c2cb1`  
		Last Modified: Fri, 01 Dec 2017 03:25:46 GMT  
		Size: 1.3 MB (1309150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba904b2760f4309c80b4a722c3feb578a3a3df1670e5382b3e434a58523bdf0`  
		Last Modified: Fri, 01 Dec 2017 03:25:45 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba216c3bb702bbf7f62655b995b73bca47d674ab824b4e133c9eb8aceed5142`  
		Last Modified: Fri, 01 Dec 2017 03:25:43 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedfa1e42856b8b806c8b1e2f3f4756aedb7472e5c08cdfe3b51eda088e6c31e`  
		Last Modified: Fri, 01 Dec 2017 03:30:54 GMT  
		Size: 12.0 MB (11985584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c45855201deaf1df7cfe051b30e268b42ad1d361d81a6b16619a9f17cbe4a0c`  
		Last Modified: Fri, 01 Dec 2017 03:30:53 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a41b9a6d86b4a2f02d2712e1b0910933f8601554beb73c94e79621729bbab0`  
		Last Modified: Fri, 01 Dec 2017 03:30:56 GMT  
		Size: 11.9 MB (11859175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf0e613d98d5cd506e8d367716201625f4156152b67a5f30e0b74721ff52101`  
		Last Modified: Fri, 01 Dec 2017 03:30:53 GMT  
		Size: 2.2 KB (2157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2825d80fec9ce37b5349d8ac0611a0745cfe64065012fee9a015925267519e35`  
		Last Modified: Fri, 01 Dec 2017 03:57:19 GMT  
		Size: 1.4 KB (1385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb0d2de5f934ec3162813e948d78f0a5f4874c7bd357838a8ab5b77f95aa55d`  
		Last Modified: Fri, 01 Dec 2017 03:57:17 GMT  
		Size: 1.2 MB (1211244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1fa1958f74987a19414954f703b9d534fdd1372a2f8e3edce17cf337b52f93`  
		Last Modified: Fri, 01 Dec 2017 03:57:15 GMT  
		Size: 119.2 KB (119164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a5f27da36436f4a76238d1ae78f89b3770cf8e9ced04c09d34ed296ca54fe6`  
		Last Modified: Fri, 01 Dec 2017 03:57:15 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f57f8f081555b83f40375c943fab7fd49eaa962aed1058775c972d2a4a6e9b`  
		Last Modified: Fri, 01 Dec 2017 03:57:15 GMT  
		Size: 319.1 KB (319106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc999f715979658e4f629d172ca9e38b99cf9737d2ac0c63799c4f1e54e7a9cc`  
		Last Modified: Fri, 01 Dec 2017 03:57:16 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.3`

```console
$ docker pull adminer@sha256:d622b6f2035a626067a8f61b6f0340f7b4cd195cfa397573e49057f69ad304e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `adminer:4.3` - linux; amd64

```console
$ docker pull adminer@sha256:906c5638e1a948b7ea0d3a08ccb01899dcb8bf83ecb55c64d5bc9c7c38ae35a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29195838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8cdeddc1de618dd5f11e2b88f8b141c7ada7ba3afaa2c06a8e56c8b6893b875`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 02:00:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 01 Dec 2017 02:00:42 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Fri, 01 Dec 2017 02:00:42 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 01 Dec 2017 02:00:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 02:00:43 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 02:00:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 02:00:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 02:00:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 02:39:22 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 01 Dec 2017 02:39:22 GMT
ENV PHP_VERSION=7.0.26
# Fri, 01 Dec 2017 02:39:22 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 02:39:23 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Fri, 01 Dec 2017 02:39:35 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 01 Dec 2017 02:39:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 02:43:05 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 02:43:06 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Fri, 01 Dec 2017 02:43:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 02:43:06 GMT
CMD ["php" "-a"]
# Fri, 01 Dec 2017 03:53:29 GMT
STOPSIGNAL [SIGINT]
# Fri, 01 Dec 2017 03:53:30 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 01 Dec 2017 03:53:30 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 03:53:33 GMT
RUN apk add --no-cache libpq
# Fri, 01 Dec 2017 03:53:53 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 01 Dec 2017 03:53:53 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Fri, 01 Dec 2017 03:53:53 GMT
ENV ADMINER_VERSION=4.3.1
# Fri, 01 Dec 2017 03:53:53 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Fri, 01 Dec 2017 03:53:54 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Fri, 01 Dec 2017 03:53:56 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 01 Dec 2017 03:53:57 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Fri, 01 Dec 2017 03:53:57 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 01 Dec 2017 03:53:57 GMT
USER [adminer]
# Fri, 01 Dec 2017 03:53:57 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 01 Dec 2017 03:53:57 GMT
EXPOSE 8080/tcp
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b36c84dd5f489a5a08bd99112752163cdccac63a29caa202e13c8a354a3c2cb1`  
		Last Modified: Fri, 01 Dec 2017 03:25:46 GMT  
		Size: 1.3 MB (1309150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba904b2760f4309c80b4a722c3feb578a3a3df1670e5382b3e434a58523bdf0`  
		Last Modified: Fri, 01 Dec 2017 03:25:45 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba216c3bb702bbf7f62655b995b73bca47d674ab824b4e133c9eb8aceed5142`  
		Last Modified: Fri, 01 Dec 2017 03:25:43 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedfa1e42856b8b806c8b1e2f3f4756aedb7472e5c08cdfe3b51eda088e6c31e`  
		Last Modified: Fri, 01 Dec 2017 03:30:54 GMT  
		Size: 12.0 MB (11985584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c45855201deaf1df7cfe051b30e268b42ad1d361d81a6b16619a9f17cbe4a0c`  
		Last Modified: Fri, 01 Dec 2017 03:30:53 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a41b9a6d86b4a2f02d2712e1b0910933f8601554beb73c94e79621729bbab0`  
		Last Modified: Fri, 01 Dec 2017 03:30:56 GMT  
		Size: 11.9 MB (11859175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf0e613d98d5cd506e8d367716201625f4156152b67a5f30e0b74721ff52101`  
		Last Modified: Fri, 01 Dec 2017 03:30:53 GMT  
		Size: 2.2 KB (2157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2825d80fec9ce37b5349d8ac0611a0745cfe64065012fee9a015925267519e35`  
		Last Modified: Fri, 01 Dec 2017 03:57:19 GMT  
		Size: 1.4 KB (1385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb0d2de5f934ec3162813e948d78f0a5f4874c7bd357838a8ab5b77f95aa55d`  
		Last Modified: Fri, 01 Dec 2017 03:57:17 GMT  
		Size: 1.2 MB (1211244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1fa1958f74987a19414954f703b9d534fdd1372a2f8e3edce17cf337b52f93`  
		Last Modified: Fri, 01 Dec 2017 03:57:15 GMT  
		Size: 119.2 KB (119164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a5f27da36436f4a76238d1ae78f89b3770cf8e9ced04c09d34ed296ca54fe6`  
		Last Modified: Fri, 01 Dec 2017 03:57:15 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f57f8f081555b83f40375c943fab7fd49eaa962aed1058775c972d2a4a6e9b`  
		Last Modified: Fri, 01 Dec 2017 03:57:15 GMT  
		Size: 319.1 KB (319106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc999f715979658e4f629d172ca9e38b99cf9737d2ac0c63799c4f1e54e7a9cc`  
		Last Modified: Fri, 01 Dec 2017 03:57:16 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.3.1`

```console
$ docker pull adminer@sha256:d622b6f2035a626067a8f61b6f0340f7b4cd195cfa397573e49057f69ad304e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `adminer:4.3.1` - linux; amd64

```console
$ docker pull adminer@sha256:906c5638e1a948b7ea0d3a08ccb01899dcb8bf83ecb55c64d5bc9c7c38ae35a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29195838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8cdeddc1de618dd5f11e2b88f8b141c7ada7ba3afaa2c06a8e56c8b6893b875`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 02:00:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 01 Dec 2017 02:00:42 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Fri, 01 Dec 2017 02:00:42 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 01 Dec 2017 02:00:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 02:00:43 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 02:00:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 02:00:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 02:00:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 02:39:22 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 01 Dec 2017 02:39:22 GMT
ENV PHP_VERSION=7.0.26
# Fri, 01 Dec 2017 02:39:22 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 02:39:23 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Fri, 01 Dec 2017 02:39:35 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 01 Dec 2017 02:39:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 02:43:05 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 02:43:06 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Fri, 01 Dec 2017 02:43:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 02:43:06 GMT
CMD ["php" "-a"]
# Fri, 01 Dec 2017 03:53:29 GMT
STOPSIGNAL [SIGINT]
# Fri, 01 Dec 2017 03:53:30 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 01 Dec 2017 03:53:30 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 03:53:33 GMT
RUN apk add --no-cache libpq
# Fri, 01 Dec 2017 03:53:53 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 01 Dec 2017 03:53:53 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Fri, 01 Dec 2017 03:53:53 GMT
ENV ADMINER_VERSION=4.3.1
# Fri, 01 Dec 2017 03:53:53 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Fri, 01 Dec 2017 03:53:54 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Fri, 01 Dec 2017 03:53:56 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 01 Dec 2017 03:53:57 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Fri, 01 Dec 2017 03:53:57 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 01 Dec 2017 03:53:57 GMT
USER [adminer]
# Fri, 01 Dec 2017 03:53:57 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 01 Dec 2017 03:53:57 GMT
EXPOSE 8080/tcp
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b36c84dd5f489a5a08bd99112752163cdccac63a29caa202e13c8a354a3c2cb1`  
		Last Modified: Fri, 01 Dec 2017 03:25:46 GMT  
		Size: 1.3 MB (1309150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba904b2760f4309c80b4a722c3feb578a3a3df1670e5382b3e434a58523bdf0`  
		Last Modified: Fri, 01 Dec 2017 03:25:45 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba216c3bb702bbf7f62655b995b73bca47d674ab824b4e133c9eb8aceed5142`  
		Last Modified: Fri, 01 Dec 2017 03:25:43 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedfa1e42856b8b806c8b1e2f3f4756aedb7472e5c08cdfe3b51eda088e6c31e`  
		Last Modified: Fri, 01 Dec 2017 03:30:54 GMT  
		Size: 12.0 MB (11985584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c45855201deaf1df7cfe051b30e268b42ad1d361d81a6b16619a9f17cbe4a0c`  
		Last Modified: Fri, 01 Dec 2017 03:30:53 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a41b9a6d86b4a2f02d2712e1b0910933f8601554beb73c94e79621729bbab0`  
		Last Modified: Fri, 01 Dec 2017 03:30:56 GMT  
		Size: 11.9 MB (11859175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf0e613d98d5cd506e8d367716201625f4156152b67a5f30e0b74721ff52101`  
		Last Modified: Fri, 01 Dec 2017 03:30:53 GMT  
		Size: 2.2 KB (2157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2825d80fec9ce37b5349d8ac0611a0745cfe64065012fee9a015925267519e35`  
		Last Modified: Fri, 01 Dec 2017 03:57:19 GMT  
		Size: 1.4 KB (1385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb0d2de5f934ec3162813e948d78f0a5f4874c7bd357838a8ab5b77f95aa55d`  
		Last Modified: Fri, 01 Dec 2017 03:57:17 GMT  
		Size: 1.2 MB (1211244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1fa1958f74987a19414954f703b9d534fdd1372a2f8e3edce17cf337b52f93`  
		Last Modified: Fri, 01 Dec 2017 03:57:15 GMT  
		Size: 119.2 KB (119164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a5f27da36436f4a76238d1ae78f89b3770cf8e9ced04c09d34ed296ca54fe6`  
		Last Modified: Fri, 01 Dec 2017 03:57:15 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f57f8f081555b83f40375c943fab7fd49eaa962aed1058775c972d2a4a6e9b`  
		Last Modified: Fri, 01 Dec 2017 03:57:15 GMT  
		Size: 319.1 KB (319106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc999f715979658e4f629d172ca9e38b99cf9737d2ac0c63799c4f1e54e7a9cc`  
		Last Modified: Fri, 01 Dec 2017 03:57:16 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.3.1-fastcgi`

```console
$ docker pull adminer@sha256:d501df853923dd08ca60c64236a268e2630b8e5c486e44cb1ed9c9cfc0f0c621
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `adminer:4.3.1-fastcgi` - linux; amd64

```console
$ docker pull adminer@sha256:bcfe9c0cdef048f1091944545e8cba0b7b554c2d311b8657aebe345b37e325a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31763397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6584e209a65e72f958e76a8fc0bfc9582b7e02bb7bcfda874e29327907390a19`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 19:13:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 01 Dec 2017 19:13:26 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Fri, 01 Dec 2017 19:13:27 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 01 Dec 2017 19:13:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 19:13:28 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 19:22:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 01 Dec 2017 19:22:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 19:22:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 19:22:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 19:39:02 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 01 Dec 2017 19:39:02 GMT
ENV PHP_VERSION=7.0.26
# Fri, 01 Dec 2017 19:39:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 19:39:03 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Fri, 01 Dec 2017 19:39:26 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 01 Dec 2017 19:39:30 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 19:43:45 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 19:43:45 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Fri, 01 Dec 2017 19:43:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 19:43:46 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 19:43:46 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 01 Dec 2017 19:43:47 GMT
EXPOSE 9000/tcp
# Fri, 01 Dec 2017 19:43:47 GMT
CMD ["php-fpm"]
# Fri, 01 Dec 2017 22:51:36 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 01 Dec 2017 22:51:39 GMT
RUN apk add --no-cache libpq
# Fri, 01 Dec 2017 22:52:00 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 01 Dec 2017 22:52:00 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Fri, 01 Dec 2017 22:52:01 GMT
ENV ADMINER_VERSION=4.3.1
# Fri, 01 Dec 2017 22:52:01 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Fri, 01 Dec 2017 22:52:01 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Fri, 01 Dec 2017 22:52:03 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 01 Dec 2017 22:52:04 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:52:04 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 01 Dec 2017 22:52:04 GMT
USER [adminer]
# Fri, 01 Dec 2017 22:52:04 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f3776db6e11947a5caa37560f77eb1e6e6bd66c4e7cfd7c0f42cdaaac9ef97`  
		Last Modified: Fri, 01 Dec 2017 20:15:06 GMT  
		Size: 1.3 MB (1309099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4aa03132010eaef600e00cc6d1634547f5d90b60af0ffda897ce78f7c73184`  
		Last Modified: Fri, 01 Dec 2017 20:15:05 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cb6bf51627dff594ce752437fdc6ecddfef0c70fa4410cf2dd9563426626bb`  
		Last Modified: Fri, 01 Dec 2017 20:15:03 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147eefec3e485c82ef2ba758950c1568a658e5e11867ed857de18e0e1c39f6ac`  
		Last Modified: Fri, 01 Dec 2017 20:22:28 GMT  
		Size: 12.0 MB (11985543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab80c2e7fa30a6a905cdb75086bec08726475a2e16e8c48717aa522c96ecbc91`  
		Last Modified: Fri, 01 Dec 2017 20:22:24 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83fb67f0029090430b018ca5e9bc0e0ac34586a2a341d9b7afc2be396a5bdf9`  
		Last Modified: Fri, 01 Dec 2017 20:22:28 GMT  
		Size: 14.4 MB (14416500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe3b8a5beef1627a27fe48ff63665b55a3cabf6d06d3af04301c143a0d2ef59`  
		Last Modified: Fri, 01 Dec 2017 20:22:23 GMT  
		Size: 2.2 KB (2165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885700b916f201b6b3c7feb147c0099628add7d3aaf8949a2ba3f7c3282f3c02`  
		Last Modified: Fri, 01 Dec 2017 20:22:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4157235264c300680929eccbf163107df67f101a2738325bc892241d0ec93fcc`  
		Last Modified: Fri, 01 Dec 2017 20:22:23 GMT  
		Size: 7.7 KB (7661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10dd9f03fc64b2cd982e93cf8599e6e720d85fa53679de8360bb9f3a8ca3f9df`  
		Last Modified: Fri, 01 Dec 2017 22:52:23 GMT  
		Size: 1.4 KB (1386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476da0d0897c7f1b8d31150e6bd69fdcb4ded1e14654eaa7ec54d5092a911daf`  
		Last Modified: Fri, 01 Dec 2017 22:52:21 GMT  
		Size: 1.2 MB (1211234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b857901ec06dc409663fe6c7c0b1fb584b0e3ce5cba57e4365c9209f71513d6a`  
		Last Modified: Fri, 01 Dec 2017 22:52:21 GMT  
		Size: 119.2 KB (119172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60887dbfe112200ff1173bcbf3f399e78670080a778664cc2a2ac43f5065aca9`  
		Last Modified: Fri, 01 Dec 2017 22:52:21 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b665a350d246848bebbf529ecbeffcf9c282931280559aed7505e2af1407d492`  
		Last Modified: Fri, 01 Dec 2017 22:52:21 GMT  
		Size: 319.1 KB (319110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a14f3398d39b8b82250683c69301a8abb9e870e0d00b4797cdca306e7e3c81`  
		Last Modified: Fri, 01 Dec 2017 22:52:21 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.3.1-standalone`

```console
$ docker pull adminer@sha256:d622b6f2035a626067a8f61b6f0340f7b4cd195cfa397573e49057f69ad304e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `adminer:4.3.1-standalone` - linux; amd64

```console
$ docker pull adminer@sha256:906c5638e1a948b7ea0d3a08ccb01899dcb8bf83ecb55c64d5bc9c7c38ae35a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29195838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8cdeddc1de618dd5f11e2b88f8b141c7ada7ba3afaa2c06a8e56c8b6893b875`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 02:00:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 01 Dec 2017 02:00:42 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Fri, 01 Dec 2017 02:00:42 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 01 Dec 2017 02:00:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 02:00:43 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 02:00:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 02:00:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 02:00:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 02:39:22 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 01 Dec 2017 02:39:22 GMT
ENV PHP_VERSION=7.0.26
# Fri, 01 Dec 2017 02:39:22 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 02:39:23 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Fri, 01 Dec 2017 02:39:35 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 01 Dec 2017 02:39:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 02:43:05 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 02:43:06 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Fri, 01 Dec 2017 02:43:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 02:43:06 GMT
CMD ["php" "-a"]
# Fri, 01 Dec 2017 03:53:29 GMT
STOPSIGNAL [SIGINT]
# Fri, 01 Dec 2017 03:53:30 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 01 Dec 2017 03:53:30 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 03:53:33 GMT
RUN apk add --no-cache libpq
# Fri, 01 Dec 2017 03:53:53 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 01 Dec 2017 03:53:53 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Fri, 01 Dec 2017 03:53:53 GMT
ENV ADMINER_VERSION=4.3.1
# Fri, 01 Dec 2017 03:53:53 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Fri, 01 Dec 2017 03:53:54 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Fri, 01 Dec 2017 03:53:56 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 01 Dec 2017 03:53:57 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Fri, 01 Dec 2017 03:53:57 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 01 Dec 2017 03:53:57 GMT
USER [adminer]
# Fri, 01 Dec 2017 03:53:57 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 01 Dec 2017 03:53:57 GMT
EXPOSE 8080/tcp
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b36c84dd5f489a5a08bd99112752163cdccac63a29caa202e13c8a354a3c2cb1`  
		Last Modified: Fri, 01 Dec 2017 03:25:46 GMT  
		Size: 1.3 MB (1309150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba904b2760f4309c80b4a722c3feb578a3a3df1670e5382b3e434a58523bdf0`  
		Last Modified: Fri, 01 Dec 2017 03:25:45 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba216c3bb702bbf7f62655b995b73bca47d674ab824b4e133c9eb8aceed5142`  
		Last Modified: Fri, 01 Dec 2017 03:25:43 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedfa1e42856b8b806c8b1e2f3f4756aedb7472e5c08cdfe3b51eda088e6c31e`  
		Last Modified: Fri, 01 Dec 2017 03:30:54 GMT  
		Size: 12.0 MB (11985584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c45855201deaf1df7cfe051b30e268b42ad1d361d81a6b16619a9f17cbe4a0c`  
		Last Modified: Fri, 01 Dec 2017 03:30:53 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a41b9a6d86b4a2f02d2712e1b0910933f8601554beb73c94e79621729bbab0`  
		Last Modified: Fri, 01 Dec 2017 03:30:56 GMT  
		Size: 11.9 MB (11859175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf0e613d98d5cd506e8d367716201625f4156152b67a5f30e0b74721ff52101`  
		Last Modified: Fri, 01 Dec 2017 03:30:53 GMT  
		Size: 2.2 KB (2157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2825d80fec9ce37b5349d8ac0611a0745cfe64065012fee9a015925267519e35`  
		Last Modified: Fri, 01 Dec 2017 03:57:19 GMT  
		Size: 1.4 KB (1385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb0d2de5f934ec3162813e948d78f0a5f4874c7bd357838a8ab5b77f95aa55d`  
		Last Modified: Fri, 01 Dec 2017 03:57:17 GMT  
		Size: 1.2 MB (1211244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1fa1958f74987a19414954f703b9d534fdd1372a2f8e3edce17cf337b52f93`  
		Last Modified: Fri, 01 Dec 2017 03:57:15 GMT  
		Size: 119.2 KB (119164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a5f27da36436f4a76238d1ae78f89b3770cf8e9ced04c09d34ed296ca54fe6`  
		Last Modified: Fri, 01 Dec 2017 03:57:15 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f57f8f081555b83f40375c943fab7fd49eaa962aed1058775c972d2a4a6e9b`  
		Last Modified: Fri, 01 Dec 2017 03:57:15 GMT  
		Size: 319.1 KB (319106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc999f715979658e4f629d172ca9e38b99cf9737d2ac0c63799c4f1e54e7a9cc`  
		Last Modified: Fri, 01 Dec 2017 03:57:16 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.3-fastcgi`

```console
$ docker pull adminer@sha256:d501df853923dd08ca60c64236a268e2630b8e5c486e44cb1ed9c9cfc0f0c621
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `adminer:4.3-fastcgi` - linux; amd64

```console
$ docker pull adminer@sha256:bcfe9c0cdef048f1091944545e8cba0b7b554c2d311b8657aebe345b37e325a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31763397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6584e209a65e72f958e76a8fc0bfc9582b7e02bb7bcfda874e29327907390a19`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 19:13:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 01 Dec 2017 19:13:26 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Fri, 01 Dec 2017 19:13:27 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 01 Dec 2017 19:13:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 19:13:28 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 19:22:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 01 Dec 2017 19:22:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 19:22:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 19:22:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 19:39:02 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 01 Dec 2017 19:39:02 GMT
ENV PHP_VERSION=7.0.26
# Fri, 01 Dec 2017 19:39:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 19:39:03 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Fri, 01 Dec 2017 19:39:26 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 01 Dec 2017 19:39:30 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 19:43:45 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 19:43:45 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Fri, 01 Dec 2017 19:43:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 19:43:46 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 19:43:46 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 01 Dec 2017 19:43:47 GMT
EXPOSE 9000/tcp
# Fri, 01 Dec 2017 19:43:47 GMT
CMD ["php-fpm"]
# Fri, 01 Dec 2017 22:51:36 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 01 Dec 2017 22:51:39 GMT
RUN apk add --no-cache libpq
# Fri, 01 Dec 2017 22:52:00 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 01 Dec 2017 22:52:00 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Fri, 01 Dec 2017 22:52:01 GMT
ENV ADMINER_VERSION=4.3.1
# Fri, 01 Dec 2017 22:52:01 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Fri, 01 Dec 2017 22:52:01 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Fri, 01 Dec 2017 22:52:03 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 01 Dec 2017 22:52:04 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:52:04 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 01 Dec 2017 22:52:04 GMT
USER [adminer]
# Fri, 01 Dec 2017 22:52:04 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f3776db6e11947a5caa37560f77eb1e6e6bd66c4e7cfd7c0f42cdaaac9ef97`  
		Last Modified: Fri, 01 Dec 2017 20:15:06 GMT  
		Size: 1.3 MB (1309099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4aa03132010eaef600e00cc6d1634547f5d90b60af0ffda897ce78f7c73184`  
		Last Modified: Fri, 01 Dec 2017 20:15:05 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cb6bf51627dff594ce752437fdc6ecddfef0c70fa4410cf2dd9563426626bb`  
		Last Modified: Fri, 01 Dec 2017 20:15:03 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147eefec3e485c82ef2ba758950c1568a658e5e11867ed857de18e0e1c39f6ac`  
		Last Modified: Fri, 01 Dec 2017 20:22:28 GMT  
		Size: 12.0 MB (11985543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab80c2e7fa30a6a905cdb75086bec08726475a2e16e8c48717aa522c96ecbc91`  
		Last Modified: Fri, 01 Dec 2017 20:22:24 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83fb67f0029090430b018ca5e9bc0e0ac34586a2a341d9b7afc2be396a5bdf9`  
		Last Modified: Fri, 01 Dec 2017 20:22:28 GMT  
		Size: 14.4 MB (14416500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe3b8a5beef1627a27fe48ff63665b55a3cabf6d06d3af04301c143a0d2ef59`  
		Last Modified: Fri, 01 Dec 2017 20:22:23 GMT  
		Size: 2.2 KB (2165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885700b916f201b6b3c7feb147c0099628add7d3aaf8949a2ba3f7c3282f3c02`  
		Last Modified: Fri, 01 Dec 2017 20:22:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4157235264c300680929eccbf163107df67f101a2738325bc892241d0ec93fcc`  
		Last Modified: Fri, 01 Dec 2017 20:22:23 GMT  
		Size: 7.7 KB (7661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10dd9f03fc64b2cd982e93cf8599e6e720d85fa53679de8360bb9f3a8ca3f9df`  
		Last Modified: Fri, 01 Dec 2017 22:52:23 GMT  
		Size: 1.4 KB (1386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476da0d0897c7f1b8d31150e6bd69fdcb4ded1e14654eaa7ec54d5092a911daf`  
		Last Modified: Fri, 01 Dec 2017 22:52:21 GMT  
		Size: 1.2 MB (1211234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b857901ec06dc409663fe6c7c0b1fb584b0e3ce5cba57e4365c9209f71513d6a`  
		Last Modified: Fri, 01 Dec 2017 22:52:21 GMT  
		Size: 119.2 KB (119172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60887dbfe112200ff1173bcbf3f399e78670080a778664cc2a2ac43f5065aca9`  
		Last Modified: Fri, 01 Dec 2017 22:52:21 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b665a350d246848bebbf529ecbeffcf9c282931280559aed7505e2af1407d492`  
		Last Modified: Fri, 01 Dec 2017 22:52:21 GMT  
		Size: 319.1 KB (319110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a14f3398d39b8b82250683c69301a8abb9e870e0d00b4797cdca306e7e3c81`  
		Last Modified: Fri, 01 Dec 2017 22:52:21 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4.3-standalone`

```console
$ docker pull adminer@sha256:d622b6f2035a626067a8f61b6f0340f7b4cd195cfa397573e49057f69ad304e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `adminer:4.3-standalone` - linux; amd64

```console
$ docker pull adminer@sha256:906c5638e1a948b7ea0d3a08ccb01899dcb8bf83ecb55c64d5bc9c7c38ae35a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29195838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8cdeddc1de618dd5f11e2b88f8b141c7ada7ba3afaa2c06a8e56c8b6893b875`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 02:00:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 01 Dec 2017 02:00:42 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Fri, 01 Dec 2017 02:00:42 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 01 Dec 2017 02:00:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 02:00:43 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 02:00:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 02:00:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 02:00:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 02:39:22 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 01 Dec 2017 02:39:22 GMT
ENV PHP_VERSION=7.0.26
# Fri, 01 Dec 2017 02:39:22 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 02:39:23 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Fri, 01 Dec 2017 02:39:35 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 01 Dec 2017 02:39:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 02:43:05 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 02:43:06 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Fri, 01 Dec 2017 02:43:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 02:43:06 GMT
CMD ["php" "-a"]
# Fri, 01 Dec 2017 03:53:29 GMT
STOPSIGNAL [SIGINT]
# Fri, 01 Dec 2017 03:53:30 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 01 Dec 2017 03:53:30 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 03:53:33 GMT
RUN apk add --no-cache libpq
# Fri, 01 Dec 2017 03:53:53 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 01 Dec 2017 03:53:53 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Fri, 01 Dec 2017 03:53:53 GMT
ENV ADMINER_VERSION=4.3.1
# Fri, 01 Dec 2017 03:53:53 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Fri, 01 Dec 2017 03:53:54 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Fri, 01 Dec 2017 03:53:56 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 01 Dec 2017 03:53:57 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Fri, 01 Dec 2017 03:53:57 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 01 Dec 2017 03:53:57 GMT
USER [adminer]
# Fri, 01 Dec 2017 03:53:57 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 01 Dec 2017 03:53:57 GMT
EXPOSE 8080/tcp
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b36c84dd5f489a5a08bd99112752163cdccac63a29caa202e13c8a354a3c2cb1`  
		Last Modified: Fri, 01 Dec 2017 03:25:46 GMT  
		Size: 1.3 MB (1309150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba904b2760f4309c80b4a722c3feb578a3a3df1670e5382b3e434a58523bdf0`  
		Last Modified: Fri, 01 Dec 2017 03:25:45 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba216c3bb702bbf7f62655b995b73bca47d674ab824b4e133c9eb8aceed5142`  
		Last Modified: Fri, 01 Dec 2017 03:25:43 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedfa1e42856b8b806c8b1e2f3f4756aedb7472e5c08cdfe3b51eda088e6c31e`  
		Last Modified: Fri, 01 Dec 2017 03:30:54 GMT  
		Size: 12.0 MB (11985584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c45855201deaf1df7cfe051b30e268b42ad1d361d81a6b16619a9f17cbe4a0c`  
		Last Modified: Fri, 01 Dec 2017 03:30:53 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a41b9a6d86b4a2f02d2712e1b0910933f8601554beb73c94e79621729bbab0`  
		Last Modified: Fri, 01 Dec 2017 03:30:56 GMT  
		Size: 11.9 MB (11859175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf0e613d98d5cd506e8d367716201625f4156152b67a5f30e0b74721ff52101`  
		Last Modified: Fri, 01 Dec 2017 03:30:53 GMT  
		Size: 2.2 KB (2157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2825d80fec9ce37b5349d8ac0611a0745cfe64065012fee9a015925267519e35`  
		Last Modified: Fri, 01 Dec 2017 03:57:19 GMT  
		Size: 1.4 KB (1385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb0d2de5f934ec3162813e948d78f0a5f4874c7bd357838a8ab5b77f95aa55d`  
		Last Modified: Fri, 01 Dec 2017 03:57:17 GMT  
		Size: 1.2 MB (1211244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1fa1958f74987a19414954f703b9d534fdd1372a2f8e3edce17cf337b52f93`  
		Last Modified: Fri, 01 Dec 2017 03:57:15 GMT  
		Size: 119.2 KB (119164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a5f27da36436f4a76238d1ae78f89b3770cf8e9ced04c09d34ed296ca54fe6`  
		Last Modified: Fri, 01 Dec 2017 03:57:15 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f57f8f081555b83f40375c943fab7fd49eaa962aed1058775c972d2a4a6e9b`  
		Last Modified: Fri, 01 Dec 2017 03:57:15 GMT  
		Size: 319.1 KB (319106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc999f715979658e4f629d172ca9e38b99cf9737d2ac0c63799c4f1e54e7a9cc`  
		Last Modified: Fri, 01 Dec 2017 03:57:16 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4-fastcgi`

```console
$ docker pull adminer@sha256:d501df853923dd08ca60c64236a268e2630b8e5c486e44cb1ed9c9cfc0f0c621
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `adminer:4-fastcgi` - linux; amd64

```console
$ docker pull adminer@sha256:bcfe9c0cdef048f1091944545e8cba0b7b554c2d311b8657aebe345b37e325a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31763397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6584e209a65e72f958e76a8fc0bfc9582b7e02bb7bcfda874e29327907390a19`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 19:13:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 01 Dec 2017 19:13:26 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Fri, 01 Dec 2017 19:13:27 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 01 Dec 2017 19:13:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 19:13:28 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 19:22:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 01 Dec 2017 19:22:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 19:22:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 19:22:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 19:39:02 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 01 Dec 2017 19:39:02 GMT
ENV PHP_VERSION=7.0.26
# Fri, 01 Dec 2017 19:39:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 19:39:03 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Fri, 01 Dec 2017 19:39:26 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 01 Dec 2017 19:39:30 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 19:43:45 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 19:43:45 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Fri, 01 Dec 2017 19:43:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 19:43:46 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 19:43:46 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 01 Dec 2017 19:43:47 GMT
EXPOSE 9000/tcp
# Fri, 01 Dec 2017 19:43:47 GMT
CMD ["php-fpm"]
# Fri, 01 Dec 2017 22:51:36 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 01 Dec 2017 22:51:39 GMT
RUN apk add --no-cache libpq
# Fri, 01 Dec 2017 22:52:00 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 01 Dec 2017 22:52:00 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Fri, 01 Dec 2017 22:52:01 GMT
ENV ADMINER_VERSION=4.3.1
# Fri, 01 Dec 2017 22:52:01 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Fri, 01 Dec 2017 22:52:01 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Fri, 01 Dec 2017 22:52:03 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 01 Dec 2017 22:52:04 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:52:04 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 01 Dec 2017 22:52:04 GMT
USER [adminer]
# Fri, 01 Dec 2017 22:52:04 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f3776db6e11947a5caa37560f77eb1e6e6bd66c4e7cfd7c0f42cdaaac9ef97`  
		Last Modified: Fri, 01 Dec 2017 20:15:06 GMT  
		Size: 1.3 MB (1309099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4aa03132010eaef600e00cc6d1634547f5d90b60af0ffda897ce78f7c73184`  
		Last Modified: Fri, 01 Dec 2017 20:15:05 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cb6bf51627dff594ce752437fdc6ecddfef0c70fa4410cf2dd9563426626bb`  
		Last Modified: Fri, 01 Dec 2017 20:15:03 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147eefec3e485c82ef2ba758950c1568a658e5e11867ed857de18e0e1c39f6ac`  
		Last Modified: Fri, 01 Dec 2017 20:22:28 GMT  
		Size: 12.0 MB (11985543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab80c2e7fa30a6a905cdb75086bec08726475a2e16e8c48717aa522c96ecbc91`  
		Last Modified: Fri, 01 Dec 2017 20:22:24 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83fb67f0029090430b018ca5e9bc0e0ac34586a2a341d9b7afc2be396a5bdf9`  
		Last Modified: Fri, 01 Dec 2017 20:22:28 GMT  
		Size: 14.4 MB (14416500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe3b8a5beef1627a27fe48ff63665b55a3cabf6d06d3af04301c143a0d2ef59`  
		Last Modified: Fri, 01 Dec 2017 20:22:23 GMT  
		Size: 2.2 KB (2165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885700b916f201b6b3c7feb147c0099628add7d3aaf8949a2ba3f7c3282f3c02`  
		Last Modified: Fri, 01 Dec 2017 20:22:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4157235264c300680929eccbf163107df67f101a2738325bc892241d0ec93fcc`  
		Last Modified: Fri, 01 Dec 2017 20:22:23 GMT  
		Size: 7.7 KB (7661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10dd9f03fc64b2cd982e93cf8599e6e720d85fa53679de8360bb9f3a8ca3f9df`  
		Last Modified: Fri, 01 Dec 2017 22:52:23 GMT  
		Size: 1.4 KB (1386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476da0d0897c7f1b8d31150e6bd69fdcb4ded1e14654eaa7ec54d5092a911daf`  
		Last Modified: Fri, 01 Dec 2017 22:52:21 GMT  
		Size: 1.2 MB (1211234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b857901ec06dc409663fe6c7c0b1fb584b0e3ce5cba57e4365c9209f71513d6a`  
		Last Modified: Fri, 01 Dec 2017 22:52:21 GMT  
		Size: 119.2 KB (119172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60887dbfe112200ff1173bcbf3f399e78670080a778664cc2a2ac43f5065aca9`  
		Last Modified: Fri, 01 Dec 2017 22:52:21 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b665a350d246848bebbf529ecbeffcf9c282931280559aed7505e2af1407d492`  
		Last Modified: Fri, 01 Dec 2017 22:52:21 GMT  
		Size: 319.1 KB (319110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a14f3398d39b8b82250683c69301a8abb9e870e0d00b4797cdca306e7e3c81`  
		Last Modified: Fri, 01 Dec 2017 22:52:21 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:4-standalone`

```console
$ docker pull adminer@sha256:d622b6f2035a626067a8f61b6f0340f7b4cd195cfa397573e49057f69ad304e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `adminer:4-standalone` - linux; amd64

```console
$ docker pull adminer@sha256:906c5638e1a948b7ea0d3a08ccb01899dcb8bf83ecb55c64d5bc9c7c38ae35a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29195838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8cdeddc1de618dd5f11e2b88f8b141c7ada7ba3afaa2c06a8e56c8b6893b875`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 02:00:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 01 Dec 2017 02:00:42 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Fri, 01 Dec 2017 02:00:42 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 01 Dec 2017 02:00:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 02:00:43 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 02:00:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 02:00:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 02:00:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 02:39:22 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 01 Dec 2017 02:39:22 GMT
ENV PHP_VERSION=7.0.26
# Fri, 01 Dec 2017 02:39:22 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 02:39:23 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Fri, 01 Dec 2017 02:39:35 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 01 Dec 2017 02:39:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 02:43:05 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 02:43:06 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Fri, 01 Dec 2017 02:43:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 02:43:06 GMT
CMD ["php" "-a"]
# Fri, 01 Dec 2017 03:53:29 GMT
STOPSIGNAL [SIGINT]
# Fri, 01 Dec 2017 03:53:30 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 01 Dec 2017 03:53:30 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 03:53:33 GMT
RUN apk add --no-cache libpq
# Fri, 01 Dec 2017 03:53:53 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 01 Dec 2017 03:53:53 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Fri, 01 Dec 2017 03:53:53 GMT
ENV ADMINER_VERSION=4.3.1
# Fri, 01 Dec 2017 03:53:53 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Fri, 01 Dec 2017 03:53:54 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Fri, 01 Dec 2017 03:53:56 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 01 Dec 2017 03:53:57 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Fri, 01 Dec 2017 03:53:57 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 01 Dec 2017 03:53:57 GMT
USER [adminer]
# Fri, 01 Dec 2017 03:53:57 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 01 Dec 2017 03:53:57 GMT
EXPOSE 8080/tcp
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b36c84dd5f489a5a08bd99112752163cdccac63a29caa202e13c8a354a3c2cb1`  
		Last Modified: Fri, 01 Dec 2017 03:25:46 GMT  
		Size: 1.3 MB (1309150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba904b2760f4309c80b4a722c3feb578a3a3df1670e5382b3e434a58523bdf0`  
		Last Modified: Fri, 01 Dec 2017 03:25:45 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba216c3bb702bbf7f62655b995b73bca47d674ab824b4e133c9eb8aceed5142`  
		Last Modified: Fri, 01 Dec 2017 03:25:43 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedfa1e42856b8b806c8b1e2f3f4756aedb7472e5c08cdfe3b51eda088e6c31e`  
		Last Modified: Fri, 01 Dec 2017 03:30:54 GMT  
		Size: 12.0 MB (11985584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c45855201deaf1df7cfe051b30e268b42ad1d361d81a6b16619a9f17cbe4a0c`  
		Last Modified: Fri, 01 Dec 2017 03:30:53 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a41b9a6d86b4a2f02d2712e1b0910933f8601554beb73c94e79621729bbab0`  
		Last Modified: Fri, 01 Dec 2017 03:30:56 GMT  
		Size: 11.9 MB (11859175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf0e613d98d5cd506e8d367716201625f4156152b67a5f30e0b74721ff52101`  
		Last Modified: Fri, 01 Dec 2017 03:30:53 GMT  
		Size: 2.2 KB (2157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2825d80fec9ce37b5349d8ac0611a0745cfe64065012fee9a015925267519e35`  
		Last Modified: Fri, 01 Dec 2017 03:57:19 GMT  
		Size: 1.4 KB (1385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb0d2de5f934ec3162813e948d78f0a5f4874c7bd357838a8ab5b77f95aa55d`  
		Last Modified: Fri, 01 Dec 2017 03:57:17 GMT  
		Size: 1.2 MB (1211244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1fa1958f74987a19414954f703b9d534fdd1372a2f8e3edce17cf337b52f93`  
		Last Modified: Fri, 01 Dec 2017 03:57:15 GMT  
		Size: 119.2 KB (119164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a5f27da36436f4a76238d1ae78f89b3770cf8e9ced04c09d34ed296ca54fe6`  
		Last Modified: Fri, 01 Dec 2017 03:57:15 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f57f8f081555b83f40375c943fab7fd49eaa962aed1058775c972d2a4a6e9b`  
		Last Modified: Fri, 01 Dec 2017 03:57:15 GMT  
		Size: 319.1 KB (319106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc999f715979658e4f629d172ca9e38b99cf9737d2ac0c63799c4f1e54e7a9cc`  
		Last Modified: Fri, 01 Dec 2017 03:57:16 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:fastcgi`

```console
$ docker pull adminer@sha256:d501df853923dd08ca60c64236a268e2630b8e5c486e44cb1ed9c9cfc0f0c621
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `adminer:fastcgi` - linux; amd64

```console
$ docker pull adminer@sha256:bcfe9c0cdef048f1091944545e8cba0b7b554c2d311b8657aebe345b37e325a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31763397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6584e209a65e72f958e76a8fc0bfc9582b7e02bb7bcfda874e29327907390a19`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 19:13:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 01 Dec 2017 19:13:26 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Fri, 01 Dec 2017 19:13:27 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 01 Dec 2017 19:13:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 19:13:28 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 19:22:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 01 Dec 2017 19:22:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 19:22:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 19:22:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 19:39:02 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 01 Dec 2017 19:39:02 GMT
ENV PHP_VERSION=7.0.26
# Fri, 01 Dec 2017 19:39:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 19:39:03 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Fri, 01 Dec 2017 19:39:26 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 01 Dec 2017 19:39:30 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 19:43:45 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 19:43:45 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Fri, 01 Dec 2017 19:43:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 19:43:46 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 19:43:46 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 01 Dec 2017 19:43:47 GMT
EXPOSE 9000/tcp
# Fri, 01 Dec 2017 19:43:47 GMT
CMD ["php-fpm"]
# Fri, 01 Dec 2017 22:51:36 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 01 Dec 2017 22:51:39 GMT
RUN apk add --no-cache libpq
# Fri, 01 Dec 2017 22:52:00 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 01 Dec 2017 22:52:00 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Fri, 01 Dec 2017 22:52:01 GMT
ENV ADMINER_VERSION=4.3.1
# Fri, 01 Dec 2017 22:52:01 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Fri, 01 Dec 2017 22:52:01 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Fri, 01 Dec 2017 22:52:03 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 01 Dec 2017 22:52:04 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:52:04 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 01 Dec 2017 22:52:04 GMT
USER [adminer]
# Fri, 01 Dec 2017 22:52:04 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f3776db6e11947a5caa37560f77eb1e6e6bd66c4e7cfd7c0f42cdaaac9ef97`  
		Last Modified: Fri, 01 Dec 2017 20:15:06 GMT  
		Size: 1.3 MB (1309099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4aa03132010eaef600e00cc6d1634547f5d90b60af0ffda897ce78f7c73184`  
		Last Modified: Fri, 01 Dec 2017 20:15:05 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cb6bf51627dff594ce752437fdc6ecddfef0c70fa4410cf2dd9563426626bb`  
		Last Modified: Fri, 01 Dec 2017 20:15:03 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147eefec3e485c82ef2ba758950c1568a658e5e11867ed857de18e0e1c39f6ac`  
		Last Modified: Fri, 01 Dec 2017 20:22:28 GMT  
		Size: 12.0 MB (11985543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab80c2e7fa30a6a905cdb75086bec08726475a2e16e8c48717aa522c96ecbc91`  
		Last Modified: Fri, 01 Dec 2017 20:22:24 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83fb67f0029090430b018ca5e9bc0e0ac34586a2a341d9b7afc2be396a5bdf9`  
		Last Modified: Fri, 01 Dec 2017 20:22:28 GMT  
		Size: 14.4 MB (14416500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe3b8a5beef1627a27fe48ff63665b55a3cabf6d06d3af04301c143a0d2ef59`  
		Last Modified: Fri, 01 Dec 2017 20:22:23 GMT  
		Size: 2.2 KB (2165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885700b916f201b6b3c7feb147c0099628add7d3aaf8949a2ba3f7c3282f3c02`  
		Last Modified: Fri, 01 Dec 2017 20:22:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4157235264c300680929eccbf163107df67f101a2738325bc892241d0ec93fcc`  
		Last Modified: Fri, 01 Dec 2017 20:22:23 GMT  
		Size: 7.7 KB (7661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10dd9f03fc64b2cd982e93cf8599e6e720d85fa53679de8360bb9f3a8ca3f9df`  
		Last Modified: Fri, 01 Dec 2017 22:52:23 GMT  
		Size: 1.4 KB (1386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476da0d0897c7f1b8d31150e6bd69fdcb4ded1e14654eaa7ec54d5092a911daf`  
		Last Modified: Fri, 01 Dec 2017 22:52:21 GMT  
		Size: 1.2 MB (1211234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b857901ec06dc409663fe6c7c0b1fb584b0e3ce5cba57e4365c9209f71513d6a`  
		Last Modified: Fri, 01 Dec 2017 22:52:21 GMT  
		Size: 119.2 KB (119172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60887dbfe112200ff1173bcbf3f399e78670080a778664cc2a2ac43f5065aca9`  
		Last Modified: Fri, 01 Dec 2017 22:52:21 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b665a350d246848bebbf529ecbeffcf9c282931280559aed7505e2af1407d492`  
		Last Modified: Fri, 01 Dec 2017 22:52:21 GMT  
		Size: 319.1 KB (319110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a14f3398d39b8b82250683c69301a8abb9e870e0d00b4797cdca306e7e3c81`  
		Last Modified: Fri, 01 Dec 2017 22:52:21 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:latest`

```console
$ docker pull adminer@sha256:d622b6f2035a626067a8f61b6f0340f7b4cd195cfa397573e49057f69ad304e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `adminer:latest` - linux; amd64

```console
$ docker pull adminer@sha256:906c5638e1a948b7ea0d3a08ccb01899dcb8bf83ecb55c64d5bc9c7c38ae35a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29195838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8cdeddc1de618dd5f11e2b88f8b141c7ada7ba3afaa2c06a8e56c8b6893b875`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 02:00:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 01 Dec 2017 02:00:42 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Fri, 01 Dec 2017 02:00:42 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 01 Dec 2017 02:00:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 02:00:43 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 02:00:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 02:00:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 02:00:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 02:39:22 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 01 Dec 2017 02:39:22 GMT
ENV PHP_VERSION=7.0.26
# Fri, 01 Dec 2017 02:39:22 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 02:39:23 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Fri, 01 Dec 2017 02:39:35 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 01 Dec 2017 02:39:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 02:43:05 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 02:43:06 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Fri, 01 Dec 2017 02:43:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 02:43:06 GMT
CMD ["php" "-a"]
# Fri, 01 Dec 2017 03:53:29 GMT
STOPSIGNAL [SIGINT]
# Fri, 01 Dec 2017 03:53:30 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 01 Dec 2017 03:53:30 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 03:53:33 GMT
RUN apk add --no-cache libpq
# Fri, 01 Dec 2017 03:53:53 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 01 Dec 2017 03:53:53 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Fri, 01 Dec 2017 03:53:53 GMT
ENV ADMINER_VERSION=4.3.1
# Fri, 01 Dec 2017 03:53:53 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Fri, 01 Dec 2017 03:53:54 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Fri, 01 Dec 2017 03:53:56 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 01 Dec 2017 03:53:57 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Fri, 01 Dec 2017 03:53:57 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 01 Dec 2017 03:53:57 GMT
USER [adminer]
# Fri, 01 Dec 2017 03:53:57 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 01 Dec 2017 03:53:57 GMT
EXPOSE 8080/tcp
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b36c84dd5f489a5a08bd99112752163cdccac63a29caa202e13c8a354a3c2cb1`  
		Last Modified: Fri, 01 Dec 2017 03:25:46 GMT  
		Size: 1.3 MB (1309150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba904b2760f4309c80b4a722c3feb578a3a3df1670e5382b3e434a58523bdf0`  
		Last Modified: Fri, 01 Dec 2017 03:25:45 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba216c3bb702bbf7f62655b995b73bca47d674ab824b4e133c9eb8aceed5142`  
		Last Modified: Fri, 01 Dec 2017 03:25:43 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedfa1e42856b8b806c8b1e2f3f4756aedb7472e5c08cdfe3b51eda088e6c31e`  
		Last Modified: Fri, 01 Dec 2017 03:30:54 GMT  
		Size: 12.0 MB (11985584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c45855201deaf1df7cfe051b30e268b42ad1d361d81a6b16619a9f17cbe4a0c`  
		Last Modified: Fri, 01 Dec 2017 03:30:53 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a41b9a6d86b4a2f02d2712e1b0910933f8601554beb73c94e79621729bbab0`  
		Last Modified: Fri, 01 Dec 2017 03:30:56 GMT  
		Size: 11.9 MB (11859175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf0e613d98d5cd506e8d367716201625f4156152b67a5f30e0b74721ff52101`  
		Last Modified: Fri, 01 Dec 2017 03:30:53 GMT  
		Size: 2.2 KB (2157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2825d80fec9ce37b5349d8ac0611a0745cfe64065012fee9a015925267519e35`  
		Last Modified: Fri, 01 Dec 2017 03:57:19 GMT  
		Size: 1.4 KB (1385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb0d2de5f934ec3162813e948d78f0a5f4874c7bd357838a8ab5b77f95aa55d`  
		Last Modified: Fri, 01 Dec 2017 03:57:17 GMT  
		Size: 1.2 MB (1211244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1fa1958f74987a19414954f703b9d534fdd1372a2f8e3edce17cf337b52f93`  
		Last Modified: Fri, 01 Dec 2017 03:57:15 GMT  
		Size: 119.2 KB (119164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a5f27da36436f4a76238d1ae78f89b3770cf8e9ced04c09d34ed296ca54fe6`  
		Last Modified: Fri, 01 Dec 2017 03:57:15 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f57f8f081555b83f40375c943fab7fd49eaa962aed1058775c972d2a4a6e9b`  
		Last Modified: Fri, 01 Dec 2017 03:57:15 GMT  
		Size: 319.1 KB (319106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc999f715979658e4f629d172ca9e38b99cf9737d2ac0c63799c4f1e54e7a9cc`  
		Last Modified: Fri, 01 Dec 2017 03:57:16 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `adminer:standalone`

```console
$ docker pull adminer@sha256:d622b6f2035a626067a8f61b6f0340f7b4cd195cfa397573e49057f69ad304e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `adminer:standalone` - linux; amd64

```console
$ docker pull adminer@sha256:906c5638e1a948b7ea0d3a08ccb01899dcb8bf83ecb55c64d5bc9c7c38ae35a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29195838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8cdeddc1de618dd5f11e2b88f8b141c7ada7ba3afaa2c06a8e56c8b6893b875`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 02:00:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 01 Dec 2017 02:00:42 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Fri, 01 Dec 2017 02:00:42 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 01 Dec 2017 02:00:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 02:00:43 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 02:00:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 02:00:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 02:00:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 02:39:22 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 01 Dec 2017 02:39:22 GMT
ENV PHP_VERSION=7.0.26
# Fri, 01 Dec 2017 02:39:22 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 02:39:23 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Fri, 01 Dec 2017 02:39:35 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 01 Dec 2017 02:39:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 02:43:05 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 02:43:06 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Fri, 01 Dec 2017 02:43:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 02:43:06 GMT
CMD ["php" "-a"]
# Fri, 01 Dec 2017 03:53:29 GMT
STOPSIGNAL [SIGINT]
# Fri, 01 Dec 2017 03:53:30 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 01 Dec 2017 03:53:30 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 03:53:33 GMT
RUN apk add --no-cache libpq
# Fri, 01 Dec 2017 03:53:53 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 01 Dec 2017 03:53:53 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Fri, 01 Dec 2017 03:53:53 GMT
ENV ADMINER_VERSION=4.3.1
# Fri, 01 Dec 2017 03:53:53 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Fri, 01 Dec 2017 03:53:54 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Fri, 01 Dec 2017 03:53:56 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 01 Dec 2017 03:53:57 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Fri, 01 Dec 2017 03:53:57 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 01 Dec 2017 03:53:57 GMT
USER [adminer]
# Fri, 01 Dec 2017 03:53:57 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 01 Dec 2017 03:53:57 GMT
EXPOSE 8080/tcp
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b36c84dd5f489a5a08bd99112752163cdccac63a29caa202e13c8a354a3c2cb1`  
		Last Modified: Fri, 01 Dec 2017 03:25:46 GMT  
		Size: 1.3 MB (1309150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba904b2760f4309c80b4a722c3feb578a3a3df1670e5382b3e434a58523bdf0`  
		Last Modified: Fri, 01 Dec 2017 03:25:45 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba216c3bb702bbf7f62655b995b73bca47d674ab824b4e133c9eb8aceed5142`  
		Last Modified: Fri, 01 Dec 2017 03:25:43 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedfa1e42856b8b806c8b1e2f3f4756aedb7472e5c08cdfe3b51eda088e6c31e`  
		Last Modified: Fri, 01 Dec 2017 03:30:54 GMT  
		Size: 12.0 MB (11985584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c45855201deaf1df7cfe051b30e268b42ad1d361d81a6b16619a9f17cbe4a0c`  
		Last Modified: Fri, 01 Dec 2017 03:30:53 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a41b9a6d86b4a2f02d2712e1b0910933f8601554beb73c94e79621729bbab0`  
		Last Modified: Fri, 01 Dec 2017 03:30:56 GMT  
		Size: 11.9 MB (11859175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf0e613d98d5cd506e8d367716201625f4156152b67a5f30e0b74721ff52101`  
		Last Modified: Fri, 01 Dec 2017 03:30:53 GMT  
		Size: 2.2 KB (2157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2825d80fec9ce37b5349d8ac0611a0745cfe64065012fee9a015925267519e35`  
		Last Modified: Fri, 01 Dec 2017 03:57:19 GMT  
		Size: 1.4 KB (1385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb0d2de5f934ec3162813e948d78f0a5f4874c7bd357838a8ab5b77f95aa55d`  
		Last Modified: Fri, 01 Dec 2017 03:57:17 GMT  
		Size: 1.2 MB (1211244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1fa1958f74987a19414954f703b9d534fdd1372a2f8e3edce17cf337b52f93`  
		Last Modified: Fri, 01 Dec 2017 03:57:15 GMT  
		Size: 119.2 KB (119164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a5f27da36436f4a76238d1ae78f89b3770cf8e9ced04c09d34ed296ca54fe6`  
		Last Modified: Fri, 01 Dec 2017 03:57:15 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f57f8f081555b83f40375c943fab7fd49eaa962aed1058775c972d2a4a6e9b`  
		Last Modified: Fri, 01 Dec 2017 03:57:15 GMT  
		Size: 319.1 KB (319106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc999f715979658e4f629d172ca9e38b99cf9737d2ac0c63799c4f1e54e7a9cc`  
		Last Modified: Fri, 01 Dec 2017 03:57:16 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
