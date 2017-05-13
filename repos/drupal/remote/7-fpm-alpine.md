## `drupal:7-fpm-alpine`

```console
$ docker pull drupal@sha256:51d57459a41c1a1a63bd66bdcd27d0984df4984d23a2e4c960aa5e1de599434a
```

-	Platforms:
	-	linux; amd64

### `drupal:7-fpm-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36587086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b27bdeae6ac9c51a070d52662122253dcde96e5df2a4237d29e87b5144e6d774`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Sat, 13 May 2017 00:05:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Sat, 13 May 2017 00:05:40 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Sat, 13 May 2017 00:05:43 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Sat, 13 May 2017 00:05:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 13 May 2017 00:05:45 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 13 May 2017 00:22:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Sat, 13 May 2017 00:22:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:22:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:22:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 00:59:38 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 13 May 2017 00:59:39 GMT
ENV PHP_VERSION=7.0.19
# Sat, 13 May 2017 00:59:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.19.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.19.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 00:59:40 GMT
ENV PHP_SHA256=640e5e3377d15a6d19adce2b94a9d876eeddabdb862d154a5e347987f4225ef6 PHP_MD5=1a17e45c8be9ce28f036d884563e8ae7
# Sat, 13 May 2017 00:59:48 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 13 May 2017 00:59:49 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 13 May 2017 01:03:14 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Sat, 13 May 2017 01:03:16 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Sat, 13 May 2017 01:03:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 13 May 2017 01:03:17 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 01:03:18 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 13 May 2017 01:03:19 GMT
EXPOSE 9000/tcp
# Sat, 13 May 2017 01:03:19 GMT
CMD ["php-fpm"]
# Sat, 13 May 2017 03:13:45 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Sat, 13 May 2017 03:13:46 GMT
WORKDIR /var/www/html
# Sat, 13 May 2017 03:13:46 GMT
ENV DRUPAL_VERSION=7.54
# Sat, 13 May 2017 03:13:47 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Sat, 13 May 2017 03:13:49 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f0bf25c22e185588f5556af1e7b9d67bdc2879f6173fd516350f73a2deb29f`  
		Last Modified: Sat, 13 May 2017 01:40:36 GMT  
		Size: 1.1 MB (1081302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80549166a18f9060850abdc57136a60481cb83b1fa5dd7b8816907cb5bb7b611`  
		Last Modified: Sat, 13 May 2017 01:40:32 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a30cf12edf726e91cf3093d0c7aa86497903a99d4b0aca5589b746aeffeed3`  
		Last Modified: Sat, 13 May 2017 01:40:34 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c81350e5da9f146370c5a3654a19c46e6bbeaa6535952e2c0582d811d625bf`  
		Last Modified: Sat, 13 May 2017 01:54:35 GMT  
		Size: 12.8 MB (12769022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c8b6d5ee566bc7283f38b22fb9d03d0828e05165d55307a5847d9111b38a77`  
		Last Modified: Sat, 13 May 2017 01:54:32 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45dc02b30e53bbbebf03ae69caee5e81d88d3ad35769bcce8e1ff55864f86b21`  
		Last Modified: Sat, 13 May 2017 01:54:35 GMT  
		Size: 14.1 MB (14059677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa7439dd308fc7bf66b76913957287c37207e5068d5560a95a10a67e492ca5d`  
		Last Modified: Sat, 13 May 2017 01:54:33 GMT  
		Size: 2.1 KB (2109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2d7c6a317c14f5a1ed303ce413953a3a14f04cdff28b7c6c0a67fd47941943`  
		Last Modified: Sat, 13 May 2017 01:54:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97bb32e6d70e27fec8ad546fb7f0f3e0c26180a28f805df1cdc3f9d23fd820a2`  
		Last Modified: Sat, 13 May 2017 01:54:32 GMT  
		Size: 7.7 KB (7652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2bbace89ab26b22a95eb843b385b8dc30f8ddb00df9823acdd32f6e846577b`  
		Last Modified: Sat, 13 May 2017 03:22:43 GMT  
		Size: 3.0 MB (2982778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5e8bbf8eb2c33eedf61a857f283e5c35cb39b9d33615a35a2c4060795cbdc8`  
		Last Modified: Sat, 13 May 2017 03:22:44 GMT  
		Size: 3.3 MB (3299453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
