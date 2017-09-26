## `drupal:7-fpm-alpine`

```console
$ docker pull drupal@sha256:b9a73f4d23eaded14f955527cd2acfc35e3e300857eb5d76f62b760049c2d449
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `drupal:7-fpm-alpine` - linux; amd64

```console
$ docker pull drupal@sha256:628e7e626311c3c9481a8d22f71de8f3f9bc1bed2b1e2fc1235d44faeeb7119e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35953279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0dd7712f20c756d740b159f912379964880df296434f98014a9e643ad21a995`
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
# Fri, 15 Sep 2017 00:47:21 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 15 Sep 2017 00:47:21 GMT
ENV PHP_VERSION=7.0.23
# Fri, 15 Sep 2017 00:47:21 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Fri, 15 Sep 2017 00:47:21 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Fri, 15 Sep 2017 00:47:32 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 15 Sep 2017 00:47:33 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 26 Sep 2017 02:09:06 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 26 Sep 2017 02:11:25 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 26 Sep 2017 02:11:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 26 Sep 2017 02:11:25 GMT
WORKDIR /var/www/html
# Tue, 26 Sep 2017 02:11:26 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 26 Sep 2017 02:11:26 GMT
EXPOSE 9000/tcp
# Tue, 26 Sep 2017 02:11:26 GMT
CMD ["php-fpm"]
# Tue, 26 Sep 2017 03:28:41 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Tue, 26 Sep 2017 03:31:48 GMT
WORKDIR /var/www/html
# Tue, 26 Sep 2017 03:31:48 GMT
ENV DRUPAL_VERSION=7.56
# Tue, 26 Sep 2017 03:31:48 GMT
ENV DRUPAL_MD5=5d198f40f0f1cbf9cdf1bf3de842e534
# Tue, 26 Sep 2017 03:31:50 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:582aa00764aca1539e37e52dcaf8f9320dcadd771f16ce9806d2d3b4ba1204f2`  
		Last Modified: Fri, 15 Sep 2017 01:39:40 GMT  
		Size: 12.1 MB (12126600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f2e2294e58415776f341bb97b8d1f620130de4c2794e20a8db1da28d08ffc0`  
		Last Modified: Fri, 15 Sep 2017 01:39:34 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d412f409baa8904214d9a3612e6b0a502ff5d837482f8285e61eed845a2d87`  
		Last Modified: Tue, 26 Sep 2017 02:33:47 GMT  
		Size: 14.1 MB (14055354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec93d1b4c2eeef134a57d4a1927ec934b56908a66cad2daf021a2230e3b56d2b`  
		Last Modified: Tue, 26 Sep 2017 02:33:42 GMT  
		Size: 2.2 KB (2162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3389ede3f588640901242cea5c071721aa08ed4068255797c5d68dd83334208a`  
		Last Modified: Tue, 26 Sep 2017 02:33:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:700d225cac1d8959f81bb91a5bb80d870e3ec5f7bd0f5c2c036352d33d9a38b9`  
		Last Modified: Tue, 26 Sep 2017 02:33:42 GMT  
		Size: 7.7 KB (7664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba84680a75b9f07660a9b19d897a7863ef3b9d6dbcf3d8196772e340076d753e`  
		Last Modified: Tue, 26 Sep 2017 03:35:13 GMT  
		Size: 3.0 MB (2983268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64297e989eb7612af1703d12f48f4868a7793712e6d3e5d47172c0fe19ef495d`  
		Last Modified: Tue, 26 Sep 2017 03:35:15 GMT  
		Size: 3.3 MB (3302929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
