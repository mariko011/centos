## `drupal:7-fpm-alpine`

```console
$ docker pull drupal@sha256:1db5c9b2e78be76e5c31b060a128ccfbcf41a583947c99da7f107a1c50588c2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `drupal:7-fpm-alpine` - linux; amd64

```console
$ docker pull drupal@sha256:87208cd9f5da8e780e55657a8098d616bd07f531a001af7bcd0298bed6b533ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36397619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c9f597626e5337a10130d4b844f167f0003b4e6cf843aa01a6f6bd909a64824`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Fri, 01 Dec 2017 19:22:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 01 Dec 2017 19:22:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 19:22:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 19:22:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 19:39:02 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 01 Dec 2017 19:39:02 GMT
ENV PHP_VERSION=7.0.26
# Fri, 01 Dec 2017 19:39:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 19:39:03 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Fri, 01 Dec 2017 19:39:26 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 01 Dec 2017 19:39:30 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 19:43:45 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 19:43:45 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Fri, 01 Dec 2017 19:43:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 19:43:46 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 19:43:46 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 01 Dec 2017 19:43:47 GMT
EXPOSE 9000/tcp
# Fri, 01 Dec 2017 19:43:47 GMT
CMD ["php-fpm"]
# Fri, 01 Dec 2017 23:06:57 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Fri, 01 Dec 2017 23:06:57 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 23:06:57 GMT
ENV DRUPAL_VERSION=7.56
# Fri, 01 Dec 2017 23:06:57 GMT
ENV DRUPAL_MD5=5d198f40f0f1cbf9cdf1bf3de842e534
# Fri, 01 Dec 2017 23:06:58 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:147eefec3e485c82ef2ba758950c1568a658e5e11867ed857de18e0e1c39f6ac`  
		Last Modified: Fri, 01 Dec 2017 20:22:28 GMT  
		Size: 12.0 MB (11985543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab80c2e7fa30a6a905cdb75086bec08726475a2e16e8c48717aa522c96ecbc91`  
		Last Modified: Fri, 01 Dec 2017 20:22:24 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83fb67f0029090430b018ca5e9bc0e0ac34586a2a341d9b7afc2be396a5bdf9`  
		Last Modified: Fri, 01 Dec 2017 20:22:28 GMT  
		Size: 14.4 MB (14416500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe3b8a5beef1627a27fe48ff63665b55a3cabf6d06d3af04301c143a0d2ef59`  
		Last Modified: Fri, 01 Dec 2017 20:22:23 GMT  
		Size: 2.2 KB (2165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885700b916f201b6b3c7feb147c0099628add7d3aaf8949a2ba3f7c3282f3c02`  
		Last Modified: Fri, 01 Dec 2017 20:22:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4157235264c300680929eccbf163107df67f101a2738325bc892241d0ec93fcc`  
		Last Modified: Fri, 01 Dec 2017 20:22:23 GMT  
		Size: 7.7 KB (7661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c0fae9ade6f8b33b42f4a8bc6a1ec8820fcba10c67e1b692d4c1912bb270d7`  
		Last Modified: Fri, 01 Dec 2017 23:13:16 GMT  
		Size: 3.0 MB (2984131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed96eb7e03183860906cb01a3e93d2caddaf3f86a5a932c1d43937ad746dd8c`  
		Last Modified: Fri, 01 Dec 2017 23:13:17 GMT  
		Size: 3.3 MB (3302922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
