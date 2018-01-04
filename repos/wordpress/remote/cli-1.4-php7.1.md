## `wordpress:cli-1.4-php7.1`

```console
$ docker pull wordpress@sha256:01a2b03a2b05ee39a99d6ee403b74b5bcdf742caebaf3370a2660a7634f8c9b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `wordpress:cli-1.4-php7.1` - linux; amd64

```console
$ docker pull wordpress@sha256:7f7b549a78962abe4cd26b2670bf958fec64b6fd22470097aeb059a59e08515a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36457297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d8fbf175b33cd2c629d0dc1c9d5e0886ae7b410d3fb2406bfc66c12b39af73b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

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
# Fri, 01 Dec 2017 19:13:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 19:13:28 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 19:13:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 19:13:29 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Dec 2017 19:13:29 GMT
ENV PHP_VERSION=7.1.12
# Fri, 01 Dec 2017 19:13:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.12.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 19:13:29 GMT
ENV PHP_SHA256=a0118850774571b1f2d4e30b4fe7a4b958ca66f07d07d65ebdc789c54ba6eeb3 PHP_MD5=
# Fri, 01 Dec 2017 19:13:44 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 01 Dec 2017 19:13:44 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 19:18:03 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 04 Jan 2018 03:06:27 GMT
COPY multi:0de99b27377ea60c319e566076843370f751e856c1e3a64b2dcd283a35066564 in /usr/local/bin/ 
# Thu, 04 Jan 2018 03:06:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 04 Jan 2018 03:06:28 GMT
CMD ["php" "-a"]
# Thu, 04 Jan 2018 07:50:20 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 04 Jan 2018 07:50:26 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 04 Jan 2018 07:50:29 GMT
RUN apk add --no-cache 		less 		mysql-client
# Thu, 04 Jan 2018 07:50:38 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Thu, 04 Jan 2018 07:50:38 GMT
WORKDIR /var/www/html
# Thu, 04 Jan 2018 07:50:38 GMT
VOLUME [/var/www/html]
# Thu, 04 Jan 2018 07:50:39 GMT
ENV WORDPRESS_CLI_GPG_KEY=3B9191625F3B1F1BF5DD3B47673A02042F6B6B7F
# Thu, 04 Jan 2018 07:50:39 GMT
ENV WORDPRESS_CLI_VERSION=1.4.1
# Thu, 04 Jan 2018 07:50:39 GMT
ENV WORDPRESS_CLI_SHA512=f861b5499e0b555a791ab6d76a0f3b1f033ae22aaee63dcdfaf8a0bd44886876690d40c6c95366d60f32d55f6282273e55f8ecdfa8787aec7b435cffe45790e7
# Thu, 04 Jan 2018 07:50:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Thu, 04 Jan 2018 07:50:52 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Thu, 04 Jan 2018 07:50:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Jan 2018 07:50:52 GMT
USER [www-data]
# Thu, 04 Jan 2018 07:50:52 GMT
CMD ["wp" "shell"]
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
	-	`sha256:347bce958f177427c8b8b13e6fac512de84750379bc951e820f606029e1c5c63`  
		Last Modified: Fri, 01 Dec 2017 20:15:05 GMT  
		Size: 12.2 MB (12213523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa69122ce0bb130162c77cbe2b98e4e89f2587f4df8f976089d7d39211e4642`  
		Last Modified: Fri, 01 Dec 2017 20:15:03 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1d2243e700e88ccdd934115644b0b9a989f6352bdc9f66e0c83a47afd2ed9f`  
		Last Modified: Fri, 01 Dec 2017 20:15:06 GMT  
		Size: 10.9 MB (10910961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8892cc1034b053381ce316cf637b821f21db2f23aed2b09318eeb3195b0f7d2`  
		Last Modified: Thu, 04 Jan 2018 05:01:37 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c44e6ad21e9c3f84ac49cda9da4a62b781d3a8b04dc62daa274ad0c288f286`  
		Last Modified: Thu, 04 Jan 2018 08:40:24 GMT  
		Size: 829.9 KB (829878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de40524670530b8cd2647d611bad9299517c2c49a3afb184240b728897ac4cc`  
		Last Modified: Thu, 04 Jan 2018 08:40:22 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5445be8ce9cc2118bc03235398df425cd03b8d87f0634dc806467be7a6328f`  
		Last Modified: Thu, 04 Jan 2018 08:40:25 GMT  
		Size: 7.8 MB (7759986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d437b4832f79c66dfb436374b408c66b79a24ed59a1f0148e65b2890b3f2747e`  
		Last Modified: Thu, 04 Jan 2018 08:40:22 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9acb39f16acadc521d9895cf2c39dd318db249b1baa401b54c1e6a47d40cf1`  
		Last Modified: Thu, 04 Jan 2018 08:40:22 GMT  
		Size: 1.0 MB (1041318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc200b8c5d0d2fef680b6b211fc7167843af048174dd40c3d0f5853b15b6568b`  
		Last Modified: Thu, 04 Jan 2018 08:40:22 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
