## `drupal:8-fpm-alpine`

```console
$ docker pull drupal@sha256:04f2768d4b0176b0c572f451e3ef0728576fe4346009de009bf6f68d1dac842e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `drupal:8-fpm-alpine` - linux; amd64

```console
$ docker pull drupal@sha256:ba502971eb3ed4a0692d2a5107c8638750e03644f9a00a04f363a5ef8d194e55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 MB (46322688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a62b6d627c29a98b30ed2cf203a0ba730a714f354109f4840d0bae411ab583e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Fri, 15 Sep 2017 00:16:32 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 15 Sep 2017 00:16:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:16:32 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:16:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 15 Sep 2017 00:16:33 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 15 Sep 2017 00:16:33 GMT
ENV PHP_VERSION=7.1.9
# Fri, 15 Sep 2017 00:16:33 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 15 Sep 2017 00:16:35 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 15 Sep 2017 00:16:44 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 15 Sep 2017 00:16:44 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:47:57 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 26 Sep 2017 01:47:58 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:47:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 26 Sep 2017 01:47:58 GMT
WORKDIR /var/www/html
# Tue, 26 Sep 2017 01:47:59 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 26 Sep 2017 01:47:59 GMT
EXPOSE 9000/tcp
# Tue, 26 Sep 2017 01:47:59 GMT
CMD ["php-fpm"]
# Tue, 26 Sep 2017 03:23:59 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Tue, 26 Sep 2017 03:27:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 26 Sep 2017 03:27:14 GMT
WORKDIR /var/www/html
# Tue, 26 Sep 2017 03:27:43 GMT
ENV DRUPAL_VERSION=8.3.7
# Tue, 26 Sep 2017 03:27:46 GMT
ENV DRUPAL_MD5=e7b1f382d6bd2b18d4b4aca01d335bc0
# Tue, 26 Sep 2017 03:27:50 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:509a575e0fd000f68c3864f6356503facdbd47147b78f79212ababbaad4fe13a`  
		Last Modified: Fri, 15 Sep 2017 01:36:43 GMT  
		Size: 12.3 MB (12330574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c86b1414701f852dfe3f38b99a8d7d016bce69051249178ba3ccb0fa055ecbc`  
		Last Modified: Fri, 15 Sep 2017 01:36:39 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8dc4aaecc39e55376eaafeaaaafa24f0d68a306bdfb776e5651acc802e51394`  
		Last Modified: Tue, 26 Sep 2017 02:32:21 GMT  
		Size: 14.5 MB (14455033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3475875b6952a82cf5cdf9cc775a9f450c661b6f52e3ee66d5c9aa7b4353e29`  
		Last Modified: Tue, 26 Sep 2017 02:32:17 GMT  
		Size: 2.2 KB (2160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e21206df7a01b64420b07054c7fc76f03455626e3694a9dde29895f70d54372`  
		Last Modified: Tue, 26 Sep 2017 02:32:16 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac236e45bd7fac49737786fef848e9dcf93f8f737d40a02437fb51fbbdf415c5`  
		Last Modified: Tue, 26 Sep 2017 02:32:18 GMT  
		Size: 7.7 KB (7665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8369c61ddde8d890c5b5943831eebbf684898473968598d26cc5a997a8fd26a`  
		Last Modified: Tue, 26 Sep 2017 03:32:48 GMT  
		Size: 3.2 MB (3164747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdcc728b14ee317034e904817ac84172f129527e26b6dc5d4f03f5d476d51194`  
		Last Modified: Tue, 26 Sep 2017 03:32:48 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942cf5df674c7cea79f8c518240d4f68114b5558694f90285ce29368570f2c07`  
		Last Modified: Tue, 26 Sep 2017 03:34:15 GMT  
		Size: 12.9 MB (12886868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
