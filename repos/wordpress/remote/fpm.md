## `wordpress:fpm`

```console
$ docker pull wordpress@sha256:a369ee9997b6bb5cbd829db68744e93c422d3cdccb6eb3ab7278eb622b13e8de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `wordpress:fpm` - linux; amd64

```console
$ docker pull wordpress@sha256:5b548c0d8f73b15e6afa1e328346321c95f37da2f952dc08ead43c5206192a11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.6 MB (168592764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3fb43444ed0f1b00f6f90626036acd45ce17ac7e34c7dfc9cd1c2a32c0972bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 10:11:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Sat, 04 Nov 2017 10:12:05 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:12:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 04 Nov 2017 10:12:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 04 Nov 2017 10:21:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Sat, 04 Nov 2017 10:21:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:21:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:21:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 04 Nov 2017 11:26:18 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 04 Nov 2017 11:26:18 GMT
ENV PHP_VERSION=5.6.32
# Sat, 04 Nov 2017 11:26:18 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Sat, 04 Nov 2017 11:26:18 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Sat, 04 Nov 2017 11:26:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 04 Nov 2017 11:26:33 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:30:30 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 04 Nov 2017 11:30:31 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:30:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 04 Nov 2017 11:30:31 GMT
WORKDIR /var/www/html
# Sat, 04 Nov 2017 11:30:32 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 04 Nov 2017 11:30:32 GMT
EXPOSE 9000/tcp
# Sat, 04 Nov 2017 11:30:32 GMT
CMD ["php-fpm"]
# Sat, 04 Nov 2017 21:01:42 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Sat, 04 Nov 2017 21:01:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 04 Nov 2017 21:01:43 GMT
VOLUME [/var/www/html]
# Tue, 21 Nov 2017 00:03:22 GMT
ENV WORDPRESS_VERSION=4.9
# Tue, 21 Nov 2017 00:03:22 GMT
ENV WORDPRESS_SHA1=6127bd2aed7b7c0a2c1789c8f17a2222a9081d6c
# Tue, 21 Nov 2017 00:03:24 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 21 Nov 2017 00:03:24 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Tue, 21 Nov 2017 00:03:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Nov 2017 00:03:25 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8204bc927258ee7d613ed166e9ee95041987ddbfddaf39594e54b403d55dc09`  
		Last Modified: Sat, 04 Nov 2017 11:53:46 GMT  
		Size: 82.5 MB (82497571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fc16bb18e4e7f7c6975e0cbef8949d968f35f0672b4ebd5006afb10c20ca10`  
		Last Modified: Sat, 04 Nov 2017 11:53:17 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e373d95597369ee3b074ccc1db856f2910557cbca2420e5675b9f0c74cb33ce8`  
		Last Modified: Sat, 04 Nov 2017 12:07:47 GMT  
		Size: 12.8 MB (12801459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea72132e8640652012ee0a59f8dcc5e493745e50b3c8deb245ead16c6be090d7`  
		Last Modified: Sat, 04 Nov 2017 12:07:43 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce16a7a57481224d6898080429c90f3bbdd009d19b9883e01f3ac952d78063e`  
		Last Modified: Sat, 04 Nov 2017 12:07:47 GMT  
		Size: 8.9 MB (8850979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8eeffa923158c860c62ebc0ef2f33101db91733210d9442fc9d8c736c07f1af`  
		Last Modified: Sat, 04 Nov 2017 12:07:43 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af1d66a9b9274dffe11f158216812564dfe0a9ef6986acc4986dd5397c97844`  
		Last Modified: Sat, 04 Nov 2017 12:07:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb42ac0b9f7c5e229ef66f30f36ccec9a2b79685e8a043456096a95c25ff5eee`  
		Last Modified: Sat, 04 Nov 2017 12:07:43 GMT  
		Size: 7.6 KB (7617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2074e0e19efdf986404e6b953d5e33f2228aa428bddfa5c14ff1df1976dca8b`  
		Last Modified: Sat, 04 Nov 2017 21:16:33 GMT  
		Size: 2.4 MB (2362074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22356bc8dadaeeb8891c21a5d50c7331a86c2f8e0d9ec86b0d938cd2fdff40a1`  
		Last Modified: Sat, 04 Nov 2017 21:16:32 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:584a0399fee7673fd87c348344500ec14badc806eec825ffdbc9b62eb52c485f`  
		Last Modified: Tue, 21 Nov 2017 00:06:40 GMT  
		Size: 9.5 MB (9471377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53829113f9dde1a2dc71f57fe747e1ccc56bb6bf1859f63c1b22d6c5b706d941`  
		Last Modified: Tue, 21 Nov 2017 00:06:39 GMT  
		Size: 3.2 KB (3224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:fpm` - linux; 386

```console
$ docker pull wordpress@sha256:f1cabe8554d2dc260391d9c8ebddb1ded133752b58b2cf3f0623df5b2a270bba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.9 MB (170949373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82fe1cbb7d16ee5fdb49e7af8b04fffb5c50023bfa0dcd37efb0bc1f2296fb73`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:46:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Tue, 10 Oct 2017 00:47:26 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:47:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 10 Oct 2017 00:48:10 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 10 Oct 2017 01:03:42 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 10 Oct 2017 01:03:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 01:03:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 01:03:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 10 Oct 2017 01:57:09 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 31 Oct 2017 09:20:58 GMT
ENV PHP_VERSION=5.6.32
# Tue, 31 Oct 2017 09:20:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Tue, 31 Oct 2017 09:20:58 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Fri, 03 Nov 2017 10:28:05 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 03 Nov 2017 10:28:05 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Nov 2017 10:32:15 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 03 Nov 2017 10:32:15 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Fri, 03 Nov 2017 10:32:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Nov 2017 10:32:16 GMT
WORKDIR /var/www/html
# Fri, 03 Nov 2017 10:32:17 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 03 Nov 2017 10:32:17 GMT
EXPOSE 9000/tcp
# Fri, 03 Nov 2017 10:32:17 GMT
CMD ["php-fpm"]
# Fri, 03 Nov 2017 11:23:24 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Fri, 03 Nov 2017 11:23:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 03 Nov 2017 11:23:25 GMT
VOLUME [/var/www/html]
# Tue, 21 Nov 2017 06:11:46 GMT
ENV WORDPRESS_VERSION=4.9
# Tue, 21 Nov 2017 06:11:46 GMT
ENV WORDPRESS_SHA1=6127bd2aed7b7c0a2c1789c8f17a2222a9081d6c
# Tue, 21 Nov 2017 06:11:49 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 21 Nov 2017 06:11:49 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Tue, 21 Nov 2017 06:11:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Nov 2017 06:11:49 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671377a40e7b26497e7f12a7eac26f6af150ea739eebde2bbba9d79637b86551`  
		Last Modified: Tue, 10 Oct 2017 02:12:39 GMT  
		Size: 83.9 MB (83886879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f42450014c192b9a7782838f21339b652510d23b58558735a45cb0c723651b`  
		Last Modified: Tue, 10 Oct 2017 02:12:21 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ba086ca2a3242a4a2715e7595e244d77cd85033799938c84d55c4f4ee2097c`  
		Last Modified: Fri, 03 Nov 2017 10:58:55 GMT  
		Size: 12.8 MB (12800897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4134ed6acd38af66f0e4ba33ed083e0ce9571089ed6d477504649b0a6b84e13a`  
		Last Modified: Fri, 03 Nov 2017 10:58:53 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c52e5fc37b83ff39bdaa565ee161d52454c68520932d9987e3af77370fe97fa`  
		Last Modified: Fri, 03 Nov 2017 10:58:57 GMT  
		Size: 9.7 MB (9718488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af038275c9a3d05ed8766390ad3d8a028426bee8a898d9109aaa059c3e2004e`  
		Last Modified: Fri, 03 Nov 2017 10:58:53 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2168ff9740f7080e140b1175a5f5b601b3063d2f0ab3db2e1b6c814d0e7bc40d`  
		Last Modified: Fri, 03 Nov 2017 10:58:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7df7b8107be96ce46aa459eb1fca7f518bc32c8b2373b986af1e4f2b9157797`  
		Last Modified: Fri, 03 Nov 2017 10:58:53 GMT  
		Size: 7.6 KB (7617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1a8b31d257b76ecf302355e577d899e01469d36f14467ed783d61b5bac7321`  
		Last Modified: Fri, 03 Nov 2017 11:48:06 GMT  
		Size: 2.3 MB (2283712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56776f18f4d58fe3b9e27c99a6be0fa055d84d8e7d301cc2c7a8b365e64e2d24`  
		Last Modified: Fri, 03 Nov 2017 11:48:05 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e5ad6aaf5772303fe8be38163ce601a87139a1ebfa026aa5f97313a2daf31e`  
		Last Modified: Tue, 21 Nov 2017 06:15:43 GMT  
		Size: 9.5 MB (9471369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e442eb2a0ed86bba05bc3f32607195ce93414131c7a3d88aeb53703be917e3`  
		Last Modified: Tue, 21 Nov 2017 06:15:40 GMT  
		Size: 3.2 KB (3225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:fpm` - linux; ppc64le

```console
$ docker pull wordpress@sha256:a0ddf9e6eca14bb86fa71027648206f03b94ba2f682de3a5958f385f274c8d6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.7 MB (155687603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2b2f3b15b011b4ce8474f10cb145229fc324ba1f55d959314a178b364f86a2a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 04:59:32 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Tue, 10 Oct 2017 05:07:27 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:07:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 10 Oct 2017 05:07:38 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 10 Oct 2017 05:24:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 10 Oct 2017 05:24:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 05:24:25 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 05:24:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 10 Oct 2017 06:26:21 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 31 Oct 2017 09:19:18 GMT
ENV PHP_VERSION=5.6.32
# Tue, 31 Oct 2017 09:19:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Tue, 31 Oct 2017 09:19:21 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Fri, 03 Nov 2017 10:02:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 03 Nov 2017 10:02:28 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Nov 2017 10:06:04 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 03 Nov 2017 10:06:05 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Fri, 03 Nov 2017 10:06:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Nov 2017 10:06:09 GMT
WORKDIR /var/www/html
# Fri, 03 Nov 2017 10:06:14 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 03 Nov 2017 10:06:15 GMT
EXPOSE 9000/tcp
# Fri, 03 Nov 2017 10:06:17 GMT
CMD ["php-fpm"]
# Fri, 03 Nov 2017 11:10:17 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Fri, 03 Nov 2017 11:10:28 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 03 Nov 2017 11:10:30 GMT
VOLUME [/var/www/html]
# Tue, 21 Nov 2017 17:26:11 GMT
ENV WORDPRESS_VERSION=4.9
# Tue, 21 Nov 2017 17:26:13 GMT
ENV WORDPRESS_SHA1=6127bd2aed7b7c0a2c1789c8f17a2222a9081d6c
# Tue, 21 Nov 2017 17:26:25 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 21 Nov 2017 17:26:26 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Tue, 21 Nov 2017 17:26:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Nov 2017 17:26:29 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc41d033d2921cba8c3fbd24aa09d8a180381ce21a996f56c5ba1b970a55b798`  
		Last Modified: Tue, 10 Oct 2017 06:45:18 GMT  
		Size: 70.0 MB (69979791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f923c00547c865a7523f58e49ceccbf4f04b88dc10b5cd3ee23729727731c2`  
		Last Modified: Tue, 10 Oct 2017 06:42:59 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8481a9258a6a1f10f8fa18b4e1a61901f2fc1158c817405db69966db6f7b56dd`  
		Last Modified: Fri, 03 Nov 2017 10:26:34 GMT  
		Size: 12.8 MB (12800223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d7c638ac5302b2e3c8907e24831291c76eb1132337433c7615cc110f4c81de`  
		Last Modified: Fri, 03 Nov 2017 10:26:29 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:585090d6adcef731f334e111f38a203c1360a6d0a7d8e333a159b33157c3dc0f`  
		Last Modified: Fri, 03 Nov 2017 10:26:33 GMT  
		Size: 9.2 MB (9239033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95fc7116c934037f2e34fd0e8c508570d3d5fc7ffed59a149738157ea25b801b`  
		Last Modified: Fri, 03 Nov 2017 10:26:29 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a924b09be0a3fa3c8f83d0dbdcb89578935aaca37a6e0160a54c546ffb0470a2`  
		Last Modified: Fri, 03 Nov 2017 10:26:29 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28fdeb4304b3fcd2885c101037eb0c990b426656920c8fe791c76c2047a7d64`  
		Last Modified: Fri, 03 Nov 2017 10:26:29 GMT  
		Size: 7.6 KB (7648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ffb746b3e3f7c78a8f3bed92330a2bba2e5edeb8707fbaf3a8492c846ecf5f`  
		Last Modified: Fri, 03 Nov 2017 11:23:52 GMT  
		Size: 2.4 MB (2373146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24deeb5306fce570466e965a137771187f877d03552b3d29d5fb3b041c0240c`  
		Last Modified: Fri, 03 Nov 2017 11:23:51 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553edb0a7957bb40e3d4b8ec39912af91522da31da3d5a306c8a37cc52c57ab0`  
		Last Modified: Tue, 21 Nov 2017 17:31:00 GMT  
		Size: 9.5 MB (9471396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a6c4c602f0be0eccbdfcc40801aa104939fddaf54b459be8bec4597ae0cb772`  
		Last Modified: Tue, 21 Nov 2017 17:30:58 GMT  
		Size: 3.2 KB (3226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:fpm` - linux; s390x

```console
$ docker pull wordpress@sha256:4c6bf05e96903460b3ab725ca284126908d686b89d95b40cb8558cce36d34356
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.3 MB (151313657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:186edfbc1a1e1e591c2464ca76ca7b0090b0f95b3d13b0d33004d833af906a5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:09 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Mon, 09 Oct 2017 22:55:37 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:55:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 09 Oct 2017 22:55:39 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 09 Oct 2017 23:02:28 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Mon, 09 Oct 2017 23:02:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 09 Oct 2017 23:02:28 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 09 Oct 2017 23:02:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Mon, 09 Oct 2017 23:29:09 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 31 Oct 2017 17:45:24 GMT
ENV PHP_VERSION=5.6.32
# Tue, 31 Oct 2017 17:45:24 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Tue, 31 Oct 2017 17:45:24 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Thu, 02 Nov 2017 23:49:49 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 02 Nov 2017 23:49:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 02 Nov 2017 23:55:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 02 Nov 2017 23:55:28 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Thu, 02 Nov 2017 23:55:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Nov 2017 23:55:28 GMT
WORKDIR /var/www/html
# Thu, 02 Nov 2017 23:55:29 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 02 Nov 2017 23:55:29 GMT
EXPOSE 9000/tcp
# Thu, 02 Nov 2017 23:55:30 GMT
CMD ["php-fpm"]
# Fri, 03 Nov 2017 00:54:47 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Fri, 03 Nov 2017 00:54:48 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 03 Nov 2017 00:54:48 GMT
VOLUME [/var/www/html]
# Tue, 21 Nov 2017 17:25:09 GMT
ENV WORDPRESS_VERSION=4.9
# Tue, 21 Nov 2017 17:25:09 GMT
ENV WORDPRESS_SHA1=6127bd2aed7b7c0a2c1789c8f17a2222a9081d6c
# Tue, 21 Nov 2017 17:25:13 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 21 Nov 2017 17:25:14 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Tue, 21 Nov 2017 17:25:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Nov 2017 17:25:14 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fb66856860b5de241911f00d4159df363cf63a303d18ae7437e405aa3162e7`  
		Last Modified: Mon, 09 Oct 2017 23:36:47 GMT  
		Size: 64.0 MB (63980038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b38a4e89ae8f8496f476f2092ceb43def00c3fc728237b0f3ced18375fcc3431`  
		Last Modified: Mon, 09 Oct 2017 23:36:16 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba8339edcc5a474a05cd97b701a7e8dcc1c8f4bf6f951419c27bff5d03312bc`  
		Last Modified: Fri, 03 Nov 2017 00:16:05 GMT  
		Size: 12.8 MB (12799164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b33b16d270e8a240b43a9e9a936a5f3a0e6fd11908d48db2c78ceb214713fc4`  
		Last Modified: Fri, 03 Nov 2017 00:16:02 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1fa78ab4aedef5dc991d0b25831e651690b7a242619ae729d043ca7034c821`  
		Last Modified: Fri, 03 Nov 2017 00:16:07 GMT  
		Size: 9.6 MB (9616879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572bb613d672441a4732b97ceff247651680361bbb24cee9eba4ba59d147da69`  
		Last Modified: Fri, 03 Nov 2017 00:16:02 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8bc5e5a0bd2aa10fd5656d752741564c944f6c9f03c0ed1df5a01b5156e9733`  
		Last Modified: Fri, 03 Nov 2017 00:16:02 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9e12c97bb010c83a98ffe82f69925127a8f718f609a805b6904b5cf8522ea2`  
		Last Modified: Fri, 03 Nov 2017 00:16:03 GMT  
		Size: 7.6 KB (7616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243b669dd27dfd57ec040d12e5850e632c96ac8f6509a45273d4635303db2a6f`  
		Last Modified: Fri, 03 Nov 2017 01:01:41 GMT  
		Size: 2.6 MB (2643153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f8be86fc3b058fb84f4de4f55574e4b57dd289ea7283e11cb9a3d5a28bc412`  
		Last Modified: Fri, 03 Nov 2017 01:01:40 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e555e564f8fe60d7736fcb7aece841cd53b20e426d66368d98485632eb3bf9a4`  
		Last Modified: Tue, 21 Nov 2017 17:27:42 GMT  
		Size: 9.5 MB (9471379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a783ae8bf40826391dfd80a62c75b88e7e9149e5ca2be1645b51b3c22eca10`  
		Last Modified: Tue, 21 Nov 2017 17:27:40 GMT  
		Size: 3.2 KB (3222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
