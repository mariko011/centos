## `adminer:standalone`

```console
$ docker pull adminer@sha256:c46afbc2bfe5cb2de391ad70f348868b249620817bb11c1775fcda8d631ee9e0
```

-	Platforms:
	-	linux; amd64

### `adminer:standalone` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28286743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd2a9b62b329a448773d069d19d69dc2fb4a74886a03db36ef75faaac7d415aa`
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
# Mon, 10 Jul 2017 17:44:49 GMT
ENV PHP_VERSION=7.0.21
# Mon, 10 Jul 2017 17:44:49 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.21.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.21.tar.xz.asc/from/this/mirror
# Mon, 10 Jul 2017 17:44:50 GMT
ENV PHP_SHA256=6713fe3024365d661593235b525235045ef81f18d0043654658c9de1bcb8b9e3 PHP_MD5=
# Thu, 13 Jul 2017 18:01:53 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 13 Jul 2017 18:01:54 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 13 Jul 2017 18:05:16 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 13 Jul 2017 18:05:18 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Thu, 13 Jul 2017 18:05:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 13 Jul 2017 18:05:18 GMT
CMD ["php" "-a"]
# Fri, 21 Jul 2017 16:10:08 GMT
STOPSIGNAL [SIGINT]
# Fri, 21 Jul 2017 16:10:09 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir -p /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Fri, 21 Jul 2017 16:10:10 GMT
WORKDIR /var/www/html
# Fri, 21 Jul 2017 16:10:13 GMT
RUN apk add --no-cache libpq
# Fri, 21 Jul 2017 16:10:33 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev &&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite &&	apk del .build-deps
# Fri, 21 Jul 2017 16:10:33 GMT
COPY multi:515cdb7e8ed0278965e56c4b579e89987c42be4b42a309c70682464e9c9451c5 in /var/www/html/ 
# Fri, 21 Jul 2017 16:10:34 GMT
ENV ADMINER_VERSION=4.3.1
# Fri, 21 Jul 2017 16:10:34 GMT
ENV ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491
# Fri, 21 Jul 2017 16:10:35 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953
# Fri, 21 Jul 2017 16:10:38 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION-en.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz
# Fri, 21 Jul 2017 16:10:38 GMT
COPY file:7d0b9a0787be28f6522891c0b9e7249e1c7d88759916642b95d9d3296ed72be5 in /usr/local/bin/ 
# Fri, 21 Jul 2017 16:10:39 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 21 Jul 2017 16:10:39 GMT
USER [adminer]
# Fri, 21 Jul 2017 16:10:40 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 21 Jul 2017 16:10:40 GMT
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
	-	`sha256:b80fee7a9d8e302d0a29c38162f8d48662cccf669defd0e2b98b173c2fc09bbd`  
		Last Modified: Thu, 13 Jul 2017 19:11:11 GMT  
		Size: 12.8 MB (12799909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbbe1d64a5ca4fb79d308f46f2a181929334b366e3da967956d3d57fa6cae03`  
		Last Modified: Thu, 13 Jul 2017 19:11:09 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2dcb816f1c881b7aaf4863d9224af77229a399d8a212a7ca8245e657edfd3bf`  
		Last Modified: Thu, 13 Jul 2017 19:11:16 GMT  
		Size: 10.4 MB (10365481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292d24dc53f25e01884db560c2dd5e16eab757e683e82b917f62c177fb691490`  
		Last Modified: Thu, 13 Jul 2017 19:11:09 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17a1751d2c857fde011aceb7a2b568b48fc538d803b7926a2878bfe8ea9a668`  
		Last Modified: Fri, 21 Jul 2017 16:11:41 GMT  
		Size: 1.4 KB (1385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5af311893fa6f3fec91ee9a9041d993cb191a0ace7a8e30cda9344c56ffe8a`  
		Last Modified: Fri, 21 Jul 2017 16:11:41 GMT  
		Size: 1.2 MB (1210636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103c72a850bc372aa327a4f988d3d5e040c85bd84154b1141de6e5fd96fe3fb4`  
		Last Modified: Fri, 21 Jul 2017 16:11:40 GMT  
		Size: 118.0 KB (117970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee874fd8f348deb651ff0da893e2cf147bfee27b8eb366b06b2f8cbf057ab427`  
		Last Modified: Fri, 21 Jul 2017 16:11:40 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39714c08ed41cb11215ff28258bf3510933280cd21e689de9431e2748741fd57`  
		Last Modified: Fri, 21 Jul 2017 16:11:40 GMT  
		Size: 319.1 KB (319102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268eddf11dbba37ee3ef0ae9a0277d13e599b7e66f67d28c6e2c8fd5774e3bb1`  
		Last Modified: Fri, 21 Jul 2017 16:11:40 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
