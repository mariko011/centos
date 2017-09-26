## `wordpress:cli-1.3`

```console
$ docker pull wordpress@sha256:efa1175920ec1db9e69b2f14bd2589e9c0b31169b2adb2e36729c8e7f057f912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `wordpress:cli-1.3` - linux; amd64

```console
$ docker pull wordpress@sha256:bcc2e3eb05800c14830e7f671b55b0989b4ee926068425c3bf47153198b6f64b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (32002500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f008d97d7fdad895b9e1315463c6cbf6621a15819f7d7fa559a946543af0a06e`
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
# Fri, 15 Sep 2017 01:05:52 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 15 Sep 2017 01:05:52 GMT
ENV PHP_VERSION=5.6.31
# Fri, 15 Sep 2017 01:05:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Fri, 15 Sep 2017 01:05:53 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Fri, 15 Sep 2017 01:06:06 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 15 Sep 2017 01:06:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 15 Sep 2017 01:09:43 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 20:09:40 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:09:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 20:09:40 GMT
CMD ["php" "-a"]
# Tue, 26 Sep 2017 01:47:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 26 Sep 2017 01:47:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 26 Sep 2017 01:47:47 GMT
RUN apk add --no-cache 		less 		mysql-client
# Tue, 26 Sep 2017 01:47:48 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Tue, 26 Sep 2017 01:47:48 GMT
WORKDIR /var/www/html
# Tue, 26 Sep 2017 01:47:48 GMT
VOLUME [/var/www/html]
# Tue, 26 Sep 2017 01:47:48 GMT
ENV WORDPRESS_CLI_GPG_KEY=3B9191625F3B1F1BF5DD3B47673A02042F6B6B7F
# Tue, 26 Sep 2017 01:47:48 GMT
ENV WORDPRESS_CLI_VERSION=1.3.0
# Tue, 26 Sep 2017 01:47:49 GMT
ENV WORDPRESS_CLI_SHA512=710d41171358fbaff5962e23d1acfda1327e03cbc59bb7c5d8a7ff87fee009ac678bc8f8e690bc743f40bc54ae8907f1f16e4e5abd166c05dc7769cd15b00084
# Tue, 26 Sep 2017 01:48:02 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -r "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Tue, 26 Sep 2017 01:48:02 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:48:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 01:48:02 GMT
USER [www-data]
# Tue, 26 Sep 2017 01:48:02 GMT
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
	-	`sha256:65222d92af1a2dc61ff14a470e187427a6527c5238a5e2c5cb0cff4c0487b42a`  
		Last Modified: Fri, 15 Sep 2017 01:41:17 GMT  
		Size: 12.6 MB (12634899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5559a0eb90f31f842a81c7237a3c4bea84b676595a105cdb8b21c80d0868d77`  
		Last Modified: Fri, 15 Sep 2017 01:41:16 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a46494ac1d409cb74df271d20e72c381c8b1f8c9aa7f3d00991507c64059d81`  
		Last Modified: Fri, 15 Sep 2017 01:41:20 GMT  
		Size: 6.4 MB (6389565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8731aa09d1caddae52331e5d3dbc9e4f96b3a5d14e55aa9cf01bb992a20a280c`  
		Last Modified: Thu, 21 Sep 2017 20:21:10 GMT  
		Size: 2.2 KB (2160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0add5cc507ec13486abc56649a9e1c0b4da3a893e06ec06dc9be7021b716b7e9`  
		Last Modified: Tue, 26 Sep 2017 02:01:44 GMT  
		Size: 731.1 KB (731077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bfa81aa88414b9ecfa4c5b84f1ddba86023fae5ee3cf563e163d8ad8f6b40fc`  
		Last Modified: Tue, 26 Sep 2017 02:01:42 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61b70ebcdcf9cb90b1af145acfda241d1b30b234e475e53aaadedd7a49e6e39`  
		Last Modified: Tue, 26 Sep 2017 02:01:44 GMT  
		Size: 7.8 MB (7760633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381f1ac8b341ec37593c670619e43f78a5e05607b1fcfb59596d0b7f726e8d1a`  
		Last Modified: Tue, 26 Sep 2017 02:01:42 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a14ad2e321db26f290b748f86dfaf6fea63d5aeddb2e8b38d8d5350c9bdb001d`  
		Last Modified: Tue, 26 Sep 2017 02:01:42 GMT  
		Size: 1.0 MB (1008100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b15f4ee1bb1311a746377e07d5827cd811f140883d8c6332bfdc42e5b448212`  
		Last Modified: Tue, 26 Sep 2017 02:01:42 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
