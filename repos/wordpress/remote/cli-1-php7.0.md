## `wordpress:cli-1-php7.0`

```console
$ docker pull wordpress@sha256:38001747e5c7532aa94142789fc29075f43afaf5fc3ad925ba09a17341d052ed
```

-	Platforms:
	-	linux; amd64

### `wordpress:cli-1-php7.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36812066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0ccd6e7e1eb023e7b46d7817b8cfb765772a73811637be8c6baa5417dc564b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

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
# Thu, 03 Aug 2017 22:20:28 GMT
ENV PHP_VERSION=7.0.22
# Thu, 03 Aug 2017 22:20:28 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.22.tar.xz.asc/from/this/mirror
# Thu, 03 Aug 2017 22:20:28 GMT
ENV PHP_SHA256=408c3fbc235ec940433bfac1f3ed4bf797f61b4a1693b9fb0b6a04b2c1832501 PHP_MD5=
# Thu, 03 Aug 2017 22:20:37 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 03 Aug 2017 22:20:38 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 03 Aug 2017 22:24:14 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 03 Aug 2017 22:25:36 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Thu, 03 Aug 2017 22:25:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 03 Aug 2017 22:25:36 GMT
CMD ["php" "-a"]
# Fri, 04 Aug 2017 00:23:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 04 Aug 2017 00:23:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 04 Aug 2017 00:23:18 GMT
RUN apk add --no-cache 		less 		mysql-client
# Fri, 04 Aug 2017 00:23:19 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Fri, 04 Aug 2017 00:23:19 GMT
WORKDIR /var/www/html
# Fri, 04 Aug 2017 00:23:19 GMT
VOLUME [/var/www/html]
# Fri, 04 Aug 2017 00:23:20 GMT
ENV WORDPRESS_CLI_GPG_KEY=3B9191625F3B1F1BF5DD3B47673A02042F6B6B7F
# Fri, 04 Aug 2017 00:23:20 GMT
ENV WORDPRESS_CLI_VERSION=1.2.1
# Fri, 04 Aug 2017 00:23:20 GMT
ENV WORDPRESS_CLI_SHA512=83e27ea9c8f735c651a6d9cb40f795aac5f26c899937f53059ee58c2611e969a83cc00d1f010dc47900a0747a393c9ae06fe0003871df51811681a8f313cedc5
# Fri, 04 Aug 2017 00:23:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -r "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Fri, 04 Aug 2017 00:23:29 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Fri, 04 Aug 2017 00:23:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 Aug 2017 00:23:29 GMT
USER [www-data]
# Fri, 04 Aug 2017 00:23:29 GMT
CMD ["wp" "shell"]
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
	-	`sha256:bb4802913059a041ce1cbdc5fa37f2bb9f2f91314dacd7af6c4dc71107e94663`  
		Last Modified: Thu, 03 Aug 2017 23:21:05 GMT  
		Size: 12.8 MB (12842248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f40f34172f3976ead0a2d351f9f068f75902f2dcc1f2125cdc3f331c16fc74`  
		Last Modified: Thu, 03 Aug 2017 23:21:04 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c152ed10b667ca5a6ed4e13a90e58bab384eb678be80737daafb30ef26da8ff`  
		Last Modified: Thu, 03 Aug 2017 23:21:09 GMT  
		Size: 10.4 MB (10365478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8578cddcaa07f148ca92c6323d8716e2129ae77ede9b866630f9cc98bf0a34de`  
		Last Modified: Thu, 03 Aug 2017 23:21:04 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18853f2ad56146cea067a95862ec33dbdbba65ace79ae0e50255d716cf36cff`  
		Last Modified: Fri, 04 Aug 2017 00:36:00 GMT  
		Size: 743.4 KB (743404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1f110f268b5c0d7f83340e400ad45d0060584da4359d143381282d90c4eac3`  
		Last Modified: Fri, 04 Aug 2017 00:35:59 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262dc8b1bf38aa62e401c3daf5927062b469e055fd1f04fbdf279e887cab7320`  
		Last Modified: Fri, 04 Aug 2017 00:36:01 GMT  
		Size: 7.8 MB (7762334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a086458a0c2b3c21113c9c992f32b1f0c6738c703dcdfc98238b30d64dbdf600`  
		Last Modified: Fri, 04 Aug 2017 00:35:59 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dd70e0ee3696cf6493e10e7276e3225745690142c39c0e26d85e41ca846b82`  
		Last Modified: Fri, 04 Aug 2017 00:35:59 GMT  
		Size: 1.6 MB (1627393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4664981009efdddd72cd73e934564f41e6a94aebbfa8b63af45d5cf185200547`  
		Last Modified: Fri, 04 Aug 2017 00:35:59 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
