## `wordpress:cli-1-php5.6`

```console
$ docker pull wordpress@sha256:567f5adb26f081d5c095a33a6a94a4ca4cb93684348554c50450c8d72027ecd6
```

-	Platforms:
	-	linux; amd64

### `wordpress:cli-1-php5.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32282515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b86260575a86aec65526a670386689d7ca2af794a75318a0b0066ce1f9aa67fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 25 May 2017 23:31:54 GMT
ADD file:c34582524a7c4fa2ccb67d48efaa6edacff8bc8115a26a511b2385a03f56aa8e in / 
# Thu, 25 May 2017 23:31:55 GMT
CMD ["/bin/sh"]
# Fri, 26 May 2017 14:39:18 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Fri, 26 May 2017 14:39:22 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 26 May 2017 14:39:24 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 26 May 2017 14:39:25 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 26 May 2017 14:39:26 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 26 May 2017 14:39:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 26 May 2017 14:39:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 26 May 2017 14:39:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 26 May 2017 15:10:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 26 May 2017 15:10:52 GMT
ENV PHP_VERSION=5.6.30
# Fri, 26 May 2017 15:10:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 26 May 2017 15:10:53 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 26 May 2017 15:11:01 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 26 May 2017 15:11:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 02 Jun 2017 23:24:01 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 02 Jun 2017 23:31:37 GMT
COPY multi:a2a7a051ede432913cebaf532ceb4314b5a5c79d08a5a33e42d3563097520588 in /usr/local/bin/ 
# Fri, 02 Jun 2017 23:31:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 02 Jun 2017 23:31:39 GMT
CMD ["php" "-a"]
# Mon, 05 Jun 2017 20:57:55 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Mon, 05 Jun 2017 20:57:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 05 Jun 2017 20:58:00 GMT
RUN apk add --no-cache 		less 		mysql-client
# Mon, 05 Jun 2017 20:58:01 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Mon, 05 Jun 2017 20:58:02 GMT
WORKDIR /var/www/html
# Mon, 05 Jun 2017 20:58:03 GMT
VOLUME [/var/www/html]
# Mon, 05 Jun 2017 20:58:03 GMT
ENV WORDPRESS_CLI_GPG_KEY=3B9191625F3B1F1BF5DD3B47673A02042F6B6B7F
# Mon, 05 Jun 2017 20:58:04 GMT
ENV WORDPRESS_CLI_VERSION=1.1.0
# Mon, 05 Jun 2017 20:58:05 GMT
ENV WORDPRESS_CLI_SHA512=1fb4a3800441fc5188dac73efc6ca865076772ef698189ded379c53947d1fec30311e84eb4371455d415ef2cbb33d7593240fdf7b7f206277a12cfa8596d4b51
# Mon, 05 Jun 2017 20:58:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -r "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Mon, 05 Jun 2017 20:58:15 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Mon, 05 Jun 2017 20:58:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Jun 2017 20:58:16 GMT
USER [www-data]
# Mon, 05 Jun 2017 20:58:17 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:486a8e636d6250a74d15cdb3582f4dd198271a80118f5a2f59de3d9cd8433611`  
		Last Modified: Thu, 25 May 2017 23:35:56 GMT  
		Size: 2.4 MB (2383064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41812ec2cb654115fad6678a89cace781f0cf539e2316efe2005438e428db6df`  
		Last Modified: Fri, 26 May 2017 15:25:24 GMT  
		Size: 1.1 MB (1081315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e095add676785194f9c4d180e50bdeb9eac882406547f0428cf26be373adff6b`  
		Last Modified: Fri, 26 May 2017 15:25:21 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286dbb174b8d2bb248dcfc542bb4edd08165b8fd2d01f9fbf7ff36c68c8ee43c`  
		Last Modified: Fri, 26 May 2017 15:25:21 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8b0e2ce6a3ac03427edc73b8bfe82e4cf88cd977c8a99a6698caaf161d08e2`  
		Last Modified: Fri, 26 May 2017 15:43:49 GMT  
		Size: 12.6 MB (12623137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3fa54854ea1f106398dde9d33451c0fb0dd0c9ffcdd03eecd866bc65592150`  
		Last Modified: Fri, 26 May 2017 15:43:43 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6434dab5f5c51f1b63cd9e75b0e52281f85dcc31c65bd7dcb320af74d791cc3`  
		Last Modified: Sat, 03 Jun 2017 00:32:27 GMT  
		Size: 6.4 MB (6442662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a5314ec85dfd4087f1a0474772fd0baba9eccda96bd1c1fb25697b572dfaf6e`  
		Last Modified: Sat, 03 Jun 2017 00:32:23 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e05e203512f27b8dfa0090df3bb288b587beaf2ae695fc7ca2389f229c3c39`  
		Last Modified: Mon, 05 Jun 2017 21:28:08 GMT  
		Size: 731.0 KB (731016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33bd4196ef0e63d95e535f7e5fca268c4493a032709c304b36ede8bbbb5d4373`  
		Last Modified: Mon, 05 Jun 2017 21:28:11 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9175c21448efddc57ff1ce27e04ceb859fee1d3ec3a37bb7b0d0088d87addba8`  
		Last Modified: Mon, 05 Jun 2017 21:28:10 GMT  
		Size: 7.8 MB (7762293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d91f36c05f3e7cd67eb1564f4f6be0937cfd94a58fc9638db8e71253f27bdbf`  
		Last Modified: Mon, 05 Jun 2017 21:28:08 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3fc5fae48b7591f748fa77961503262e9fbbd1c91a57797eab77e4acd9a4af`  
		Last Modified: Mon, 05 Jun 2017 21:28:08 GMT  
		Size: 1.3 MB (1254132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40bb63aa9788a0e8f985937d1d8d728238722003432ecb01add9fa8017d02bf`  
		Last Modified: Mon, 05 Jun 2017 21:28:08 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
