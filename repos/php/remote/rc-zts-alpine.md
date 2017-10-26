## `php:rc-zts-alpine`

```console
$ docker pull php@sha256:d307c546259aaf4214102d52b52cc75e742c9028d31fb553b2a6a6c342a7069d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `php:rc-zts-alpine` - linux; amd64

```console
$ docker pull php@sha256:2fa87bc4277fa4ef8a2c9b7410195fbe3ff5066daca0ea45cec58b08aac979ae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26724319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:618b85a8f968e82cf9ebcfcb57b3b104c2383af338a827fdf6169de27553f29a`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:34:17 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Thu, 26 Oct 2017 01:34:29 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Thu, 26 Oct 2017 01:34:34 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 26 Oct 2017 01:34:35 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 26 Oct 2017 01:34:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 26 Oct 2017 01:57:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts
# Thu, 26 Oct 2017 01:57:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 01:57:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 01:57:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 26 Oct 2017 01:57:55 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 26 Oct 2017 01:57:55 GMT
ENV PHP_VERSION=7.2.0RC4
# Thu, 26 Oct 2017 01:57:56 GMT
ENV PHP_URL=https://downloads.php.net/~remi/php-7.2.0RC4.tar.xz PHP_ASC_URL=https://downloads.php.net/~remi/php-7.2.0RC4.tar.xz.asc
# Thu, 26 Oct 2017 01:57:56 GMT
ENV PHP_SHA256=08ee9e764891224d73f157e01594605fc85c63ffc9d4773d9ac29b0e3160c68f PHP_MD5=
# Thu, 26 Oct 2017 01:58:47 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 26 Oct 2017 01:58:47 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 26 Oct 2017 02:04:15 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 26 Oct 2017 02:08:37 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Thu, 26 Oct 2017 02:08:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 26 Oct 2017 02:08:38 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1d7a4834c665af8d61504e06b2d3ccbb0a219bef092367da2bc0efc0af0d83`  
		Last Modified: Thu, 26 Oct 2017 03:12:01 GMT  
		Size: 1.4 MB (1384686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdbe4d9435be14ba6c3ab77da2c1565208c789d30090b88d6807c9cd36840fa2`  
		Last Modified: Thu, 26 Oct 2017 03:12:00 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62704d819d6ef200a79bae23ce9a43b09a437db974d2042b692144793b72dfd1`  
		Last Modified: Thu, 26 Oct 2017 03:11:58 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b283aaa4bf43c02935849df8ce478616e1168690a4e9a8a106ce57f0a61d478`  
		Last Modified: Thu, 26 Oct 2017 03:15:22 GMT  
		Size: 12.0 MB (11999557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181c230a90e06c6d40603d2d9f503e6e27d13894848d8262657745c50802c755`  
		Last Modified: Thu, 26 Oct 2017 03:15:19 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd4e9bf9dffb72045f1415ad336b6a9194720132c8925802989a1eb9688bcdf`  
		Last Modified: Thu, 26 Oct 2017 03:15:23 GMT  
		Size: 11.3 MB (11344565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97f0a954c528d07e6d3091896603235afbfdf165223b7cccc95efb01b1d6585`  
		Last Modified: Thu, 26 Oct 2017 03:15:19 GMT  
		Size: 2.2 KB (2160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-zts-alpine` - linux; arm variant v6

```console
$ docker pull php@sha256:637c688be7ff8ca87666557de23fa015635eb960fe8dc0616755d8449e72c76c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27289044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03baba10b12bd612e81849762775f57c24bbb97968c2491bb6161e95626febd1`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:16:17 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Thu, 26 Oct 2017 05:16:20 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Thu, 26 Oct 2017 05:16:21 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 26 Oct 2017 05:16:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 26 Oct 2017 05:16:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 26 Oct 2017 05:20:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts
# Thu, 26 Oct 2017 05:20:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 05:20:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 26 Oct 2017 05:20:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 26 Oct 2017 05:20:13 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 26 Oct 2017 05:20:14 GMT
ENV PHP_VERSION=7.2.0RC4
# Thu, 26 Oct 2017 05:20:14 GMT
ENV PHP_URL=https://downloads.php.net/~remi/php-7.2.0RC4.tar.xz PHP_ASC_URL=https://downloads.php.net/~remi/php-7.2.0RC4.tar.xz.asc
# Thu, 26 Oct 2017 05:20:14 GMT
ENV PHP_SHA256=08ee9e764891224d73f157e01594605fc85c63ffc9d4773d9ac29b0e3160c68f PHP_MD5=
# Thu, 26 Oct 2017 05:20:21 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 26 Oct 2017 05:20:21 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:23:24 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 26 Oct 2017 05:23:25 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:23:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 26 Oct 2017 05:23:26 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2996b2ff4eaa561fdeacf3bc2012814adfb48cbd69588829033692e7b8f603fc`  
		Last Modified: Thu, 26 Oct 2017 05:23:37 GMT  
		Size: 1.4 MB (1375456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f428b6cefb9dee778efd31407485f73c997649a7557eb9c3125cd2394aff10e7`  
		Last Modified: Thu, 26 Oct 2017 05:23:36 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e82d0f9154e7a46f455c475627a4c8b5363c54a3ab6fdfd34cc86d4e35fb6e6`  
		Last Modified: Thu, 26 Oct 2017 05:23:35 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70b30f53dc1db0d732f9dfa544d898c05e6fa832170c5c6dd6dcab7ac038cca`  
		Last Modified: Thu, 26 Oct 2017 05:23:58 GMT  
		Size: 12.0 MB (11999938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce56026d6bce21c16aa0aa54f408c3bf45924fbf46404d8486b3c45771bbfedd`  
		Last Modified: Thu, 26 Oct 2017 05:23:56 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5507368eae67c39d17eddfd0701068d90d97eb4634b122c7a725b3ae0510888e`  
		Last Modified: Thu, 26 Oct 2017 05:24:01 GMT  
		Size: 11.9 MB (11943361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d55e802ca8363e607d67b6f712474d79763ebba773ad5a06380e36e20c60f2e`  
		Last Modified: Thu, 26 Oct 2017 05:23:56 GMT  
		Size: 2.2 KB (2160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
