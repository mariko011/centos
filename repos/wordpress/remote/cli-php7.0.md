## `wordpress:cli-php7.0`

```console
$ docker pull wordpress@sha256:7ab4cee46b69289873fbda447e911ad34e0d2dfc625926be9e8690860bfa355c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `wordpress:cli-php7.0` - linux; amd64

```console
$ docker pull wordpress@sha256:ddc5aeaca9bb942e35d69a9a6893667fbce4735b974c8abfd69e187c405d40ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35473503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f11992f2e373fbf24ddf70468d616c56059d9cd787f0fc18b46a18618be70c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Fri, 15 Sep 2017 00:03:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Fri, 15 Sep 2017 00:03:15 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 15 Sep 2017 00:03:15 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 15 Sep 2017 00:03:17 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 15 Sep 2017 00:03:18 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 15 Sep 2017 00:03:18 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:03:18 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 15 Sep 2017 00:34:51 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 15 Sep 2017 00:34:51 GMT
ENV PHP_VERSION=7.0.23
# Fri, 15 Sep 2017 00:34:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Fri, 15 Sep 2017 00:34:51 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Fri, 15 Sep 2017 00:35:01 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 15 Sep 2017 00:35:01 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 15 Sep 2017 00:38:49 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 20:08:57 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:08:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 20:08:58 GMT
CMD ["php" "-a"]
# Tue, 26 Sep 2017 01:51:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 26 Sep 2017 01:51:30 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 26 Sep 2017 01:51:36 GMT
RUN apk add --no-cache 		less 		mysql-client
# Tue, 26 Sep 2017 01:51:37 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Tue, 26 Sep 2017 01:51:37 GMT
WORKDIR /var/www/html
# Tue, 26 Sep 2017 01:51:37 GMT
VOLUME [/var/www/html]
# Tue, 26 Sep 2017 01:51:37 GMT
ENV WORDPRESS_CLI_GPG_KEY=3B9191625F3B1F1BF5DD3B47673A02042F6B6B7F
# Tue, 26 Sep 2017 01:51:38 GMT
ENV WORDPRESS_CLI_VERSION=1.3.0
# Tue, 26 Sep 2017 01:51:38 GMT
ENV WORDPRESS_CLI_SHA512=710d41171358fbaff5962e23d1acfda1327e03cbc59bb7c5d8a7ff87fee009ac678bc8f8e690bc743f40bc54ae8907f1f16e4e5abd166c05dc7769cd15b00084
# Tue, 26 Sep 2017 01:53:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -r "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Tue, 26 Sep 2017 01:53:58 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:53:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 01:53:58 GMT
USER [www-data]
# Tue, 26 Sep 2017 01:53:59 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d492840e685267737473e580fa6f2db2646efbc5848a63b81bc8997307d7f4`  
		Last Modified: Fri, 15 Sep 2017 01:35:16 GMT  
		Size: 1.1 MB (1088226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac280ce7349e48c4493554b99b2c7cfe6b12b3d2b8d23eaef70a74c136bb527`  
		Last Modified: Fri, 15 Sep 2017 01:35:16 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90a95acfcd76e204e7bcc540738c88476e2046bfc3c773813239c36bc5503ba`  
		Last Modified: Fri, 15 Sep 2017 01:35:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44a1c922acc53f05e2752550df8c48c9091b5c9c44b73d2267006d180d5e239f`  
		Last Modified: Fri, 15 Sep 2017 01:38:31 GMT  
		Size: 12.1 MB (12126591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c61cda919309a5872638580894bc722fc4c1f3f2fe7046c84f56ccd18f13420`  
		Last Modified: Fri, 15 Sep 2017 01:38:29 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370c1d0d0c0811187f724f4f3ccda923ad2018b16e8d2cac62b78f20dac704ab`  
		Last Modified: Fri, 15 Sep 2017 01:38:33 GMT  
		Size: 10.4 MB (10356378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7423f3134ac09ef54d0872aa5662226f877ad30a04ad8932fd64a599a7206eb4`  
		Last Modified: Thu, 21 Sep 2017 20:19:00 GMT  
		Size: 2.2 KB (2159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317015017c0176fdc82f95647b1241ca572ec571fce007d841cb82118bce18dc`  
		Last Modified: Tue, 26 Sep 2017 02:05:51 GMT  
		Size: 743.6 KB (743608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a5edab8e98e98b9ccdf3b4db884926e4fc445bf95eb997f96eede5cfa6c994`  
		Last Modified: Tue, 26 Sep 2017 02:05:48 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf78b238b7039d3d1a3db10a964c61742fb6d7ba7145757960466843dd5dfbf`  
		Last Modified: Tue, 26 Sep 2017 02:05:51 GMT  
		Size: 7.8 MB (7760616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599bcb6a2241d0530ced9b53350f5bc231ccaa77238baf489a91776f51d06176`  
		Last Modified: Tue, 26 Sep 2017 02:05:49 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f05522be99195f5bb25af41cfec31ca2ec0710258628d6dc1f56602d8732dbc`  
		Last Modified: Tue, 26 Sep 2017 02:05:48 GMT  
		Size: 1.0 MB (1008093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb3c0d0c3c19384b103b7e3ea86c22195c8857880a09a21a755b5e96e1b37e5`  
		Last Modified: Tue, 26 Sep 2017 02:05:49 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
