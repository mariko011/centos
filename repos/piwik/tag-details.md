<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `piwik`

-	[`piwik:3.0.0`](#piwik300)
-	[`piwik:3.0`](#piwik30)
-	[`piwik:3`](#piwik3)
-	[`piwik:latest`](#piwiklatest)

## `piwik:3.0.0`

```console
$ docker pull piwik@sha256:26169bd288cc99ed27c7265e2cde4586c0b7420bb0522c8b2cb38114c1c788b0
```

-	Platforms:
	-	linux; amd64

### `piwik:3.0.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.7 MB (183700619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656c564cd4f24bb589ab784b2b55607b90e37e3976d82e5c5325ae4e64024741`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:57:37 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:57:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:57:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 16:01:04 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:18 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:19 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:20 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Dec 2016 19:26:20 GMT
EXPOSE 9000/tcp
# Mon, 19 Dec 2016 19:26:21 GMT
CMD ["php-fpm"]
# Wed, 21 Dec 2016 19:03:00 GMT
MAINTAINER pierre@piwik.org
# Wed, 21 Dec 2016 19:03:12 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Wed, 21 Dec 2016 19:03:59 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Wed, 21 Dec 2016 19:04:06 GMT
RUN pecl install APCu geoip
# Wed, 21 Dec 2016 19:59:13 GMT
ENV PIWIK_VERSION=3.0.0
# Wed, 21 Dec 2016 19:59:22 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Wed, 21 Dec 2016 19:59:23 GMT
COPY file:abc0ff564b95b724deccad7ff48d69d7a3d7d34cdee0cce0a887f3ed0e726d21 in /usr/local/etc/php/php.ini 
# Wed, 21 Dec 2016 19:59:24 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Wed, 21 Dec 2016 19:59:25 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Wed, 21 Dec 2016 19:59:26 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 19:59:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Dec 2016 19:59:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54283fea14a4c4ba021ba260178aa1c3c7c26b2254d3a93b94a0b04392b71ba0`  
		Last Modified: Wed, 14 Dec 2016 16:37:09 GMT  
		Size: 12.6 MB (12556563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b82ddb6e57bfc8c4e5b31f6d835fda3dc99089f197d316edb0e5ee83c01b35`  
		Last Modified: Wed, 14 Dec 2016 16:37:04 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe532c7957188a214e0af6de42e16e31e94f0851067862fe771b6ed13068ca56`  
		Last Modified: Wed, 14 Dec 2016 16:37:07 GMT  
		Size: 8.8 MB (8763779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02389f3f13e01ffc75bfc899cfc486f335d9f947b24416d94166bba809930c8`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 2.0 KB (2009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5777f6cf03c51cbb0ddabad4f1a51770b3f9c216f3da58eddc960b602a60a0c0`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b45111f193e3f3fa5d7e118b2eb42b950bb1252313bf30b7f5b8268782d43b`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdeba687ac1ab2e6ff1a620ff0f4acd9de4098c282dd350989c62eb1e03c1b95`  
		Last Modified: Wed, 21 Dec 2016 19:04:40 GMT  
		Size: 7.0 MB (7015810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f6a8fc00b994f566f8555ab1734cef4a4d2766a5ceea6d6a463dbf48a79777`  
		Last Modified: Wed, 21 Dec 2016 19:04:37 GMT  
		Size: 1.1 MB (1103741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025de631ad2552def28b7bc54861b8a88888011307aa4c8e2057a94288b34a1d`  
		Last Modified: Wed, 21 Dec 2016 19:04:35 GMT  
		Size: 46.6 KB (46567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09dfccfcc5b9e5a20f3791cc07552719c6e10818357cf5a7013c993022720fb`  
		Last Modified: Wed, 21 Dec 2016 19:59:47 GMT  
		Size: 13.7 MB (13679030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fce25b80912c728e364188a1f1b753c5cc65ce416d54feb48398b8650c3352`  
		Last Modified: Wed, 21 Dec 2016 19:59:42 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beacb6cf6d43d6348ee5b6cecf0ab981b90c9c1368183e7919c8cca487a3553b`  
		Last Modified: Wed, 21 Dec 2016 19:59:45 GMT  
		Size: 11.6 MB (11569259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4935d03ca34501f7d555be3c8964029e5c5d4ee6cf6e4f7da219e08d6fd9ac91`  
		Last Modified: Wed, 21 Dec 2016 19:59:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3.0`

```console
$ docker pull piwik@sha256:26169bd288cc99ed27c7265e2cde4586c0b7420bb0522c8b2cb38114c1c788b0
```

-	Platforms:
	-	linux; amd64

### `piwik:3.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.7 MB (183700619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656c564cd4f24bb589ab784b2b55607b90e37e3976d82e5c5325ae4e64024741`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:57:37 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:57:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:57:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 16:01:04 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:18 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:19 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:20 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Dec 2016 19:26:20 GMT
EXPOSE 9000/tcp
# Mon, 19 Dec 2016 19:26:21 GMT
CMD ["php-fpm"]
# Wed, 21 Dec 2016 19:03:00 GMT
MAINTAINER pierre@piwik.org
# Wed, 21 Dec 2016 19:03:12 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Wed, 21 Dec 2016 19:03:59 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Wed, 21 Dec 2016 19:04:06 GMT
RUN pecl install APCu geoip
# Wed, 21 Dec 2016 19:59:13 GMT
ENV PIWIK_VERSION=3.0.0
# Wed, 21 Dec 2016 19:59:22 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Wed, 21 Dec 2016 19:59:23 GMT
COPY file:abc0ff564b95b724deccad7ff48d69d7a3d7d34cdee0cce0a887f3ed0e726d21 in /usr/local/etc/php/php.ini 
# Wed, 21 Dec 2016 19:59:24 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Wed, 21 Dec 2016 19:59:25 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Wed, 21 Dec 2016 19:59:26 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 19:59:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Dec 2016 19:59:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54283fea14a4c4ba021ba260178aa1c3c7c26b2254d3a93b94a0b04392b71ba0`  
		Last Modified: Wed, 14 Dec 2016 16:37:09 GMT  
		Size: 12.6 MB (12556563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b82ddb6e57bfc8c4e5b31f6d835fda3dc99089f197d316edb0e5ee83c01b35`  
		Last Modified: Wed, 14 Dec 2016 16:37:04 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe532c7957188a214e0af6de42e16e31e94f0851067862fe771b6ed13068ca56`  
		Last Modified: Wed, 14 Dec 2016 16:37:07 GMT  
		Size: 8.8 MB (8763779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02389f3f13e01ffc75bfc899cfc486f335d9f947b24416d94166bba809930c8`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 2.0 KB (2009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5777f6cf03c51cbb0ddabad4f1a51770b3f9c216f3da58eddc960b602a60a0c0`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b45111f193e3f3fa5d7e118b2eb42b950bb1252313bf30b7f5b8268782d43b`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdeba687ac1ab2e6ff1a620ff0f4acd9de4098c282dd350989c62eb1e03c1b95`  
		Last Modified: Wed, 21 Dec 2016 19:04:40 GMT  
		Size: 7.0 MB (7015810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f6a8fc00b994f566f8555ab1734cef4a4d2766a5ceea6d6a463dbf48a79777`  
		Last Modified: Wed, 21 Dec 2016 19:04:37 GMT  
		Size: 1.1 MB (1103741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025de631ad2552def28b7bc54861b8a88888011307aa4c8e2057a94288b34a1d`  
		Last Modified: Wed, 21 Dec 2016 19:04:35 GMT  
		Size: 46.6 KB (46567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09dfccfcc5b9e5a20f3791cc07552719c6e10818357cf5a7013c993022720fb`  
		Last Modified: Wed, 21 Dec 2016 19:59:47 GMT  
		Size: 13.7 MB (13679030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fce25b80912c728e364188a1f1b753c5cc65ce416d54feb48398b8650c3352`  
		Last Modified: Wed, 21 Dec 2016 19:59:42 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beacb6cf6d43d6348ee5b6cecf0ab981b90c9c1368183e7919c8cca487a3553b`  
		Last Modified: Wed, 21 Dec 2016 19:59:45 GMT  
		Size: 11.6 MB (11569259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4935d03ca34501f7d555be3c8964029e5c5d4ee6cf6e4f7da219e08d6fd9ac91`  
		Last Modified: Wed, 21 Dec 2016 19:59:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:3`

```console
$ docker pull piwik@sha256:26169bd288cc99ed27c7265e2cde4586c0b7420bb0522c8b2cb38114c1c788b0
```

-	Platforms:
	-	linux; amd64

### `piwik:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.7 MB (183700619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656c564cd4f24bb589ab784b2b55607b90e37e3976d82e5c5325ae4e64024741`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:57:37 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:57:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:57:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 16:01:04 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:18 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:19 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:20 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Dec 2016 19:26:20 GMT
EXPOSE 9000/tcp
# Mon, 19 Dec 2016 19:26:21 GMT
CMD ["php-fpm"]
# Wed, 21 Dec 2016 19:03:00 GMT
MAINTAINER pierre@piwik.org
# Wed, 21 Dec 2016 19:03:12 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Wed, 21 Dec 2016 19:03:59 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Wed, 21 Dec 2016 19:04:06 GMT
RUN pecl install APCu geoip
# Wed, 21 Dec 2016 19:59:13 GMT
ENV PIWIK_VERSION=3.0.0
# Wed, 21 Dec 2016 19:59:22 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Wed, 21 Dec 2016 19:59:23 GMT
COPY file:abc0ff564b95b724deccad7ff48d69d7a3d7d34cdee0cce0a887f3ed0e726d21 in /usr/local/etc/php/php.ini 
# Wed, 21 Dec 2016 19:59:24 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Wed, 21 Dec 2016 19:59:25 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Wed, 21 Dec 2016 19:59:26 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 19:59:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Dec 2016 19:59:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54283fea14a4c4ba021ba260178aa1c3c7c26b2254d3a93b94a0b04392b71ba0`  
		Last Modified: Wed, 14 Dec 2016 16:37:09 GMT  
		Size: 12.6 MB (12556563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b82ddb6e57bfc8c4e5b31f6d835fda3dc99089f197d316edb0e5ee83c01b35`  
		Last Modified: Wed, 14 Dec 2016 16:37:04 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe532c7957188a214e0af6de42e16e31e94f0851067862fe771b6ed13068ca56`  
		Last Modified: Wed, 14 Dec 2016 16:37:07 GMT  
		Size: 8.8 MB (8763779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02389f3f13e01ffc75bfc899cfc486f335d9f947b24416d94166bba809930c8`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 2.0 KB (2009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5777f6cf03c51cbb0ddabad4f1a51770b3f9c216f3da58eddc960b602a60a0c0`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b45111f193e3f3fa5d7e118b2eb42b950bb1252313bf30b7f5b8268782d43b`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdeba687ac1ab2e6ff1a620ff0f4acd9de4098c282dd350989c62eb1e03c1b95`  
		Last Modified: Wed, 21 Dec 2016 19:04:40 GMT  
		Size: 7.0 MB (7015810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f6a8fc00b994f566f8555ab1734cef4a4d2766a5ceea6d6a463dbf48a79777`  
		Last Modified: Wed, 21 Dec 2016 19:04:37 GMT  
		Size: 1.1 MB (1103741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025de631ad2552def28b7bc54861b8a88888011307aa4c8e2057a94288b34a1d`  
		Last Modified: Wed, 21 Dec 2016 19:04:35 GMT  
		Size: 46.6 KB (46567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09dfccfcc5b9e5a20f3791cc07552719c6e10818357cf5a7013c993022720fb`  
		Last Modified: Wed, 21 Dec 2016 19:59:47 GMT  
		Size: 13.7 MB (13679030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fce25b80912c728e364188a1f1b753c5cc65ce416d54feb48398b8650c3352`  
		Last Modified: Wed, 21 Dec 2016 19:59:42 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beacb6cf6d43d6348ee5b6cecf0ab981b90c9c1368183e7919c8cca487a3553b`  
		Last Modified: Wed, 21 Dec 2016 19:59:45 GMT  
		Size: 11.6 MB (11569259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4935d03ca34501f7d555be3c8964029e5c5d4ee6cf6e4f7da219e08d6fd9ac91`  
		Last Modified: Wed, 21 Dec 2016 19:59:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:latest`

```console
$ docker pull piwik@sha256:26169bd288cc99ed27c7265e2cde4586c0b7420bb0522c8b2cb38114c1c788b0
```

-	Platforms:
	-	linux; amd64

### `piwik:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.7 MB (183700619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656c564cd4f24bb589ab784b2b55607b90e37e3976d82e5c5325ae4e64024741`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:57:37 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_VERSION=5.6.29
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:57:38 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Wed, 14 Dec 2016 15:57:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:57:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 16:01:04 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:26:18 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:26:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:26:19 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:26:20 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Dec 2016 19:26:20 GMT
EXPOSE 9000/tcp
# Mon, 19 Dec 2016 19:26:21 GMT
CMD ["php-fpm"]
# Wed, 21 Dec 2016 19:03:00 GMT
MAINTAINER pierre@piwik.org
# Wed, 21 Dec 2016 19:03:12 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Wed, 21 Dec 2016 19:03:59 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Wed, 21 Dec 2016 19:04:06 GMT
RUN pecl install APCu geoip
# Wed, 21 Dec 2016 19:59:13 GMT
ENV PIWIK_VERSION=3.0.0
# Wed, 21 Dec 2016 19:59:22 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Wed, 21 Dec 2016 19:59:23 GMT
COPY file:abc0ff564b95b724deccad7ff48d69d7a3d7d34cdee0cce0a887f3ed0e726d21 in /usr/local/etc/php/php.ini 
# Wed, 21 Dec 2016 19:59:24 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Wed, 21 Dec 2016 19:59:25 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Wed, 21 Dec 2016 19:59:26 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 19:59:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Dec 2016 19:59:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54283fea14a4c4ba021ba260178aa1c3c7c26b2254d3a93b94a0b04392b71ba0`  
		Last Modified: Wed, 14 Dec 2016 16:37:09 GMT  
		Size: 12.6 MB (12556563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b82ddb6e57bfc8c4e5b31f6d835fda3dc99089f197d316edb0e5ee83c01b35`  
		Last Modified: Wed, 14 Dec 2016 16:37:04 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe532c7957188a214e0af6de42e16e31e94f0851067862fe771b6ed13068ca56`  
		Last Modified: Wed, 14 Dec 2016 16:37:07 GMT  
		Size: 8.8 MB (8763779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02389f3f13e01ffc75bfc899cfc486f335d9f947b24416d94166bba809930c8`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 2.0 KB (2009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5777f6cf03c51cbb0ddabad4f1a51770b3f9c216f3da58eddc960b602a60a0c0`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b45111f193e3f3fa5d7e118b2eb42b950bb1252313bf30b7f5b8268782d43b`  
		Last Modified: Mon, 19 Dec 2016 19:50:28 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdeba687ac1ab2e6ff1a620ff0f4acd9de4098c282dd350989c62eb1e03c1b95`  
		Last Modified: Wed, 21 Dec 2016 19:04:40 GMT  
		Size: 7.0 MB (7015810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f6a8fc00b994f566f8555ab1734cef4a4d2766a5ceea6d6a463dbf48a79777`  
		Last Modified: Wed, 21 Dec 2016 19:04:37 GMT  
		Size: 1.1 MB (1103741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025de631ad2552def28b7bc54861b8a88888011307aa4c8e2057a94288b34a1d`  
		Last Modified: Wed, 21 Dec 2016 19:04:35 GMT  
		Size: 46.6 KB (46567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09dfccfcc5b9e5a20f3791cc07552719c6e10818357cf5a7013c993022720fb`  
		Last Modified: Wed, 21 Dec 2016 19:59:47 GMT  
		Size: 13.7 MB (13679030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fce25b80912c728e364188a1f1b753c5cc65ce416d54feb48398b8650c3352`  
		Last Modified: Wed, 21 Dec 2016 19:59:42 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beacb6cf6d43d6348ee5b6cecf0ab981b90c9c1368183e7919c8cca487a3553b`  
		Last Modified: Wed, 21 Dec 2016 19:59:45 GMT  
		Size: 11.6 MB (11569259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4935d03ca34501f7d555be3c8964029e5c5d4ee6cf6e4f7da219e08d6fd9ac91`  
		Last Modified: Wed, 21 Dec 2016 19:59:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
