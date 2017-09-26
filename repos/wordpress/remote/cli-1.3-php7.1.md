## `wordpress:cli-1.3-php7.1`

```console
$ docker pull wordpress@sha256:f7c172a89f33e927d56981e7df7b7f4c3b1008ea761b65aec209b02bd2606a41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `wordpress:cli-1.3-php7.1` - linux; amd64

```console
$ docker pull wordpress@sha256:d9b29c579bdc56260a5f51c78d3b7f5483fd9eefe4627266e2c2f1ec9d3f5c7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36103628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39de4d83e848cc56e2b003f8d443cf3d1ef01af6cc2c1bc135a86e2d0df8ab60`
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
# Fri, 15 Sep 2017 00:03:19 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_VERSION=7.1.9
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 15 Sep 2017 00:03:19 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 15 Sep 2017 00:03:41 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 15 Sep 2017 00:03:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:40:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 26 Sep 2017 01:40:53 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:40:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 26 Sep 2017 01:40:53 GMT
CMD ["php" "-a"]
# Tue, 26 Sep 2017 01:54:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 26 Sep 2017 01:54:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 26 Sep 2017 01:54:50 GMT
RUN apk add --no-cache 		less 		mysql-client
# Tue, 26 Sep 2017 01:54:51 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Tue, 26 Sep 2017 01:54:51 GMT
WORKDIR /var/www/html
# Tue, 26 Sep 2017 01:54:51 GMT
VOLUME [/var/www/html]
# Tue, 26 Sep 2017 01:54:52 GMT
ENV WORDPRESS_CLI_GPG_KEY=3B9191625F3B1F1BF5DD3B47673A02042F6B6B7F
# Tue, 26 Sep 2017 01:54:52 GMT
ENV WORDPRESS_CLI_VERSION=1.3.0
# Tue, 26 Sep 2017 01:54:52 GMT
ENV WORDPRESS_CLI_SHA512=710d41171358fbaff5962e23d1acfda1327e03cbc59bb7c5d8a7ff87fee009ac678bc8f8e690bc743f40bc54ae8907f1f16e4e5abd166c05dc7769cd15b00084
# Tue, 26 Sep 2017 01:55:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -r "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Tue, 26 Sep 2017 01:58:05 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:58:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 01:58:06 GMT
USER [www-data]
# Tue, 26 Sep 2017 01:58:06 GMT
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
	-	`sha256:e942db381cbc139c389eb5d0ece79b61ad3e7572fd07c505f8ee09404e965c2f`  
		Last Modified: Fri, 15 Sep 2017 01:35:16 GMT  
		Size: 12.3 MB (12330567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea207a663075acdf3c2275d8913c89e4f3b79781ed5a70f6c018e1bc7a2e9711`  
		Last Modified: Fri, 15 Sep 2017 01:35:14 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52adf4c233d76de7b076ae1d01f271cbc78ff895fc374807aa7c6f79de04913`  
		Last Modified: Tue, 26 Sep 2017 02:06:41 GMT  
		Size: 10.7 MB (10697739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51959405ac447432368f32bd3378cab2068865728f6ca06dba627428ac27385`  
		Last Modified: Tue, 26 Sep 2017 02:06:34 GMT  
		Size: 2.2 KB (2162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:debac351c876e305942e2c583d8f0bff866a361c57e21a3d71a9ee6705293367`  
		Last Modified: Tue, 26 Sep 2017 02:06:34 GMT  
		Size: 828.4 KB (828373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8548abc3916c3a851556658a98c90bce834b5bc2ba37a0cf3d1703f0e7c04ad7`  
		Last Modified: Tue, 26 Sep 2017 02:06:32 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b53cafd313c7d497067f83bce4ddbe6d2dedf1212e42fd46f3d59cf5c7f6d428`  
		Last Modified: Tue, 26 Sep 2017 02:06:34 GMT  
		Size: 7.8 MB (7760651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e52c34c78b7784a5bbf24094aba83669233e237c396609ea064fd613e0f061`  
		Last Modified: Tue, 26 Sep 2017 02:06:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44db154aee130a23dbd0c08e8ebbd8ee2b5d993da03a86a8a137bdb4669e3f57`  
		Last Modified: Tue, 26 Sep 2017 02:06:32 GMT  
		Size: 1.0 MB (1008078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf8ed0c53511e3eeed93866359e7c38bff3313f7e5e9ea303d5d04ba7c9fe19`  
		Last Modified: Tue, 26 Sep 2017 02:06:31 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
