## `wordpress:4-php7.2-fpm`

```console
$ docker pull wordpress@sha256:ceacc41f854cdf84bc34dfbd112d45b4317d9e58380ba84e5fdcababbb6c72cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `wordpress:4-php7.2-fpm` - linux; amd64

```console
$ docker pull wordpress@sha256:2ec95bc3404cb7a3e1e0e4c92f50ffa546148900d4a586bfee5ff903fe89ed5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.2 MB (141167786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f313b806aca2d9e25fe7f36386eab7d4bff47f62ab39cba593b6fac35d9a89da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 19:03:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 19 Dec 2017 19:03:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 04 Jan 2018 01:11:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 04 Jan 2018 01:16:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 04 Jan 2018 01:16:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 04 Jan 2018 01:47:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 04 Jan 2018 01:47:51 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 04 Jan 2018 01:47:51 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 04 Jan 2018 01:47:51 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 04 Jan 2018 01:47:51 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 04 Jan 2018 01:47:59 GMT
ENV PHP_VERSION=7.2.0
# Thu, 04 Jan 2018 01:48:00 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Thu, 04 Jan 2018 01:48:00 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Thu, 04 Jan 2018 01:48:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 04 Jan 2018 01:48:18 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 04 Jan 2018 01:53:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 04 Jan 2018 01:57:03 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Thu, 04 Jan 2018 01:57:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 04 Jan 2018 01:57:03 GMT
WORKDIR /var/www/html
# Thu, 04 Jan 2018 02:01:32 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 04 Jan 2018 02:01:32 GMT
EXPOSE 9000/tcp
# Thu, 04 Jan 2018 02:01:32 GMT
CMD ["php-fpm"]
# Thu, 04 Jan 2018 07:31:48 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Jan 2018 07:36:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 04 Jan 2018 07:36:47 GMT
VOLUME [/var/www/html]
# Thu, 04 Jan 2018 07:36:47 GMT
ENV WORDPRESS_VERSION=4.9.1
# Thu, 04 Jan 2018 07:36:47 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Thu, 04 Jan 2018 07:36:49 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 04 Jan 2018 07:36:50 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Thu, 04 Jan 2018 07:36:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Jan 2018 07:36:50 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75651f24782724147b4affe1885dbd9db84995cb19bc250712f4d2e1474180c9`  
		Last Modified: Tue, 19 Dec 2017 21:48:12 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcf8fd0150f5f07bcafefb9600b2927a27f0e245b8235756c5d057d77848c09`  
		Last Modified: Thu, 04 Jan 2018 04:36:08 GMT  
		Size: 67.4 MB (67422638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de80263f26f06fe00a02aac0cca3d2e7eabd68099d5d1f03f2578ad76967b248`  
		Last Modified: Thu, 04 Jan 2018 04:35:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f402f6af93852d1a5384655fb1c6f91b1d686992ac7148b961d42bceec06ef`  
		Last Modified: Thu, 04 Jan 2018 04:42:07 GMT  
		Size: 12.3 MB (12343178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ca730628328a84f4d34dad57f876563778a8a688090d3b51777977e392ccd7`  
		Last Modified: Thu, 04 Jan 2018 04:42:01 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2716a7e0cabc113dbada7b22a40dde70ab2d4b63b24e64ffd0ee869e08f162`  
		Last Modified: Thu, 04 Jan 2018 04:42:07 GMT  
		Size: 28.4 MB (28407711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01afa826258ccb18cca53da6cd41391e0e14b1a268a1476d64b4f12cc05d07a`  
		Last Modified: Thu, 04 Jan 2018 04:42:00 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92b0b4c91b7a1e3e716607717b8396fd17a61c8fabadd3986f615f3a6117482`  
		Last Modified: Thu, 04 Jan 2018 04:42:01 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfc14adcfe316683310c29c85fd1ea524603330d9652fdce659a0c67ffe5250`  
		Last Modified: Thu, 04 Jan 2018 04:42:00 GMT  
		Size: 7.7 KB (7716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c14061d08b441a78cf03cbb207aebf22c88acbd23b366e5f9b791253a0616e4a`  
		Last Modified: Thu, 04 Jan 2018 08:22:54 GMT  
		Size: 1.0 MB (1022613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714d398a6e621908df0c1cc4d2635a18874e61d6992ff10671c7f38e1bf19efd`  
		Last Modified: Thu, 04 Jan 2018 08:22:54 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b14f8eacdb6c014d91687fc850249497a6f49464368461e852c51bc8ddf3ae`  
		Last Modified: Thu, 04 Jan 2018 08:22:57 GMT  
		Size: 9.5 MB (9471274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e94b6beb1a94428232fe7701d57ff8e9962ebfacbb4babc3ca7df37190fdb73`  
		Last Modified: Thu, 04 Jan 2018 08:22:54 GMT  
		Size: 3.4 KB (3359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php7.2-fpm` - linux; arm variant v5

```console
$ docker pull wordpress@sha256:8e101e53a103aa10ba356eb5b885142543d589f6bdc601a63d4c6f22e9cefe8d
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129629038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5bfe281db721967c83c98935414b2673f61abfc63b974a52fb2d3b204602a18`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 14:37:27 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 20 Dec 2017 14:37:27 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 20 Dec 2017 14:38:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 20 Dec 2017 14:38:20 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 20 Dec 2017 14:38:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 20 Dec 2017 14:45:37 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 20 Dec 2017 14:45:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 20 Dec 2017 14:45:38 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 20 Dec 2017 14:45:38 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 20 Dec 2017 14:45:38 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 20 Dec 2017 14:45:38 GMT
ENV PHP_VERSION=7.2.0
# Wed, 20 Dec 2017 14:45:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Wed, 20 Dec 2017 14:45:39 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Wed, 20 Dec 2017 14:46:06 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 20 Dec 2017 14:46:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 20 Dec 2017 14:49:30 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 20 Dec 2017 14:49:30 GMT
COPY multi:2e4df9268ce870f9ed83b38a2784f3778f2c2468c3e7ee600220221534e4e247 in /usr/local/bin/ 
# Wed, 20 Dec 2017 14:49:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 20 Dec 2017 14:49:31 GMT
WORKDIR /var/www/html
# Wed, 20 Dec 2017 14:49:32 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 20 Dec 2017 14:49:32 GMT
EXPOSE 9000/tcp
# Wed, 20 Dec 2017 14:49:32 GMT
CMD ["php-fpm"]
# Wed, 20 Dec 2017 16:33:00 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 20 Dec 2017 16:33:01 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 20 Dec 2017 16:33:01 GMT
VOLUME [/var/www/html]
# Wed, 20 Dec 2017 16:33:02 GMT
ENV WORDPRESS_VERSION=4.9.1
# Wed, 20 Dec 2017 16:33:02 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Wed, 20 Dec 2017 16:33:06 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 23 Dec 2017 20:07:24 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Sat, 23 Dec 2017 20:07:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 23 Dec 2017 20:07:24 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d75cbd4d02eabd6b68933b14f0f9c5a2f6cc778ba44faa5ceba2ea4ffea30f8`  
		Last Modified: Wed, 20 Dec 2017 15:44:14 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6dabe559b6399f583fe0a41616a57429d2b336c7092c924a36cc8e365c9769`  
		Last Modified: Wed, 20 Dec 2017 15:44:47 GMT  
		Size: 71.5 MB (71490694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93cf4fd8a1c0334c3b02b1d3e546ce6754ad189bf7c8f7defd14b6229b89d614`  
		Last Modified: Wed, 20 Dec 2017 15:44:12 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff93458b14daf2331a7bf01e54d0841354af83a5d4517154be4a7df635d5da3`  
		Last Modified: Wed, 20 Dec 2017 15:46:09 GMT  
		Size: 12.3 MB (12344877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aa9c59e207712c36a43dd3ecad9d63e24220e9149d8c4419655584e6554d76a`  
		Last Modified: Wed, 20 Dec 2017 15:46:06 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da944f18ec7aa0859c0e9f41130243b5879e3de134d1ad705a02adc534246a72`  
		Last Modified: Wed, 20 Dec 2017 15:46:11 GMT  
		Size: 13.7 MB (13723347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c851d634b35de7c35e3d9f496f38b9d1ef2d790a6127a279e7db1e0d45f34bd`  
		Last Modified: Wed, 20 Dec 2017 15:46:06 GMT  
		Size: 2.2 KB (2183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f120778398d24ad054a92bf80e77af16121e226bba4e7630deeb256f166819ee`  
		Last Modified: Wed, 20 Dec 2017 15:46:06 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4085310e8ff982d89a214b3657a3a218563ee4941467089398bca5a56dcf12cb`  
		Last Modified: Wed, 20 Dec 2017 15:46:06 GMT  
		Size: 7.7 KB (7716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8d6b60415b90432dfb7ce42d8b2c6d685c64caea7eccedc74ebcada62088f5`  
		Last Modified: Wed, 20 Dec 2017 16:36:48 GMT  
		Size: 1.4 MB (1423505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8cff1138ada2429cd3c153181e21b88cd4dcad255f9e7b87158cde7a08b314b`  
		Last Modified: Wed, 20 Dec 2017 16:36:48 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f912f361b4d9263c254be685705909459c66b5d99fa8789f7d6df73ad624306f`  
		Last Modified: Wed, 20 Dec 2017 16:36:51 GMT  
		Size: 9.5 MB (9471273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db701860b621f03cd89ed1b1f048e07b7c32b3f2e287f0519fcc64aa90935e0f`  
		Last Modified: Sat, 23 Dec 2017 20:10:43 GMT  
		Size: 3.4 KB (3360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php7.2-fpm` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:f8678eca18898b7a84ee2ce22d7af4178b422f357dcbba25bb01fc071049bf91
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.6 MB (122611022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8df862ea87ae10d173b50426c1fcb670018ebbf13f79db0560c6dbd649608e81`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 12:48:28 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 20 Dec 2017 12:48:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 20 Dec 2017 12:49:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 20 Dec 2017 12:49:10 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 20 Dec 2017 12:49:11 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 20 Dec 2017 12:56:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 20 Dec 2017 12:56:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 20 Dec 2017 12:56:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 20 Dec 2017 12:56:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 20 Dec 2017 12:56:12 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 20 Dec 2017 12:56:12 GMT
ENV PHP_VERSION=7.2.0
# Wed, 20 Dec 2017 12:56:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Wed, 20 Dec 2017 12:56:13 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Wed, 20 Dec 2017 12:56:24 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 20 Dec 2017 12:56:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 20 Dec 2017 12:59:23 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 20 Dec 2017 12:59:24 GMT
COPY multi:2e4df9268ce870f9ed83b38a2784f3778f2c2468c3e7ee600220221534e4e247 in /usr/local/bin/ 
# Wed, 20 Dec 2017 12:59:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 20 Dec 2017 12:59:25 GMT
WORKDIR /var/www/html
# Wed, 20 Dec 2017 12:59:25 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 20 Dec 2017 12:59:26 GMT
EXPOSE 9000/tcp
# Wed, 20 Dec 2017 12:59:26 GMT
CMD ["php-fpm"]
# Wed, 20 Dec 2017 14:27:32 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 20 Dec 2017 14:27:33 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 20 Dec 2017 14:27:34 GMT
VOLUME [/var/www/html]
# Wed, 20 Dec 2017 14:27:34 GMT
ENV WORDPRESS_VERSION=4.9.1
# Wed, 20 Dec 2017 14:27:34 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Wed, 20 Dec 2017 14:27:38 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 23 Dec 2017 21:04:31 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Sat, 23 Dec 2017 21:04:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 23 Dec 2017 21:04:32 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:477433fde3a8ac52d95956a634c8c5402551ecb3581f8844b5f73b29d062fe10`  
		Last Modified: Wed, 20 Dec 2017 13:49:50 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3e10b2686d5f0fcaa907933d67ee7fa5386b834cd02d07a1198cc17b9cc3bf`  
		Last Modified: Wed, 20 Dec 2017 13:50:09 GMT  
		Size: 67.3 MB (67309946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3a6d4b43c1af7280f2ee9215d7b7472dcb1a2f4cd6c2d957103ed9860df726`  
		Last Modified: Wed, 20 Dec 2017 13:49:48 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6def92aef35e0104bc6cb6325d541caf6c3c7b40f36663bb6c56267cf7490219`  
		Last Modified: Wed, 20 Dec 2017 13:51:38 GMT  
		Size: 12.3 MB (12344914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620ad18ff790eb6cd739e562070fb99efc2ae54f39b7086c41f9f1c38bda9bef`  
		Last Modified: Wed, 20 Dec 2017 13:51:34 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0304ca956f381a3c021df9dda209fab9c0f59789d5acba1974e68ed52fbbb18`  
		Last Modified: Wed, 20 Dec 2017 13:51:38 GMT  
		Size: 12.9 MB (12872941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e114a2bf3a4b26e4be9383083df12469e7db016078b921568f5798e26ee5b5a`  
		Last Modified: Wed, 20 Dec 2017 13:51:34 GMT  
		Size: 2.2 KB (2187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57e517cf217095e7df22a4bba3fba98c50d05b084f1395d5fbc6a7139f9b935`  
		Last Modified: Wed, 20 Dec 2017 13:51:34 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7680bce60e0de6889c0fce7e353b1381cf031cd2f8394d3a267118b4f24a02`  
		Last Modified: Wed, 20 Dec 2017 13:51:34 GMT  
		Size: 7.7 KB (7713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e366e9cca93c30ccdae5bfdccf97670ac04f237a2ce904380952a405097cf9`  
		Last Modified: Wed, 20 Dec 2017 14:33:11 GMT  
		Size: 1.3 MB (1326208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af470f587b09b90bd51a89d83b858329b425cf1ee1ac0093eaf6ae218a151bfb`  
		Last Modified: Wed, 20 Dec 2017 14:33:10 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f66b8f926a621461dcee7120d1513b3787f564e41f20d537795b54cfffe93a`  
		Last Modified: Wed, 20 Dec 2017 14:33:13 GMT  
		Size: 9.5 MB (9471280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b762454ed036c551d7a3e2f9685dec990acc57e9b31daf1630954512619fa09c`  
		Last Modified: Sat, 23 Dec 2017 21:08:08 GMT  
		Size: 3.4 KB (3357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php7.2-fpm` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:b3259a264590df9b9a8c800427dea13511282a90d7bb576ae500598b7e590d26
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.0 MB (127981943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac62ec9d6d15ccdddf04d84aaf54a8a592b3f6ff43bfa31384edcabac0aad7d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 02:56:47 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 20 Dec 2017 02:56:47 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 04 Jan 2018 02:58:15 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 04 Jan 2018 02:58:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 04 Jan 2018 02:58:17 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 04 Jan 2018 03:14:41 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 04 Jan 2018 03:14:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 04 Jan 2018 03:14:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 04 Jan 2018 03:14:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 04 Jan 2018 03:14:44 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 04 Jan 2018 03:14:45 GMT
ENV PHP_VERSION=7.2.0
# Thu, 04 Jan 2018 03:14:46 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Thu, 04 Jan 2018 03:14:47 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Thu, 04 Jan 2018 03:15:20 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 04 Jan 2018 03:15:21 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 04 Jan 2018 03:23:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 04 Jan 2018 03:23:22 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Thu, 04 Jan 2018 03:23:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 04 Jan 2018 03:23:23 GMT
WORKDIR /var/www/html
# Thu, 04 Jan 2018 03:23:25 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 04 Jan 2018 03:23:25 GMT
EXPOSE 9000/tcp
# Thu, 04 Jan 2018 03:23:26 GMT
CMD ["php-fpm"]
# Thu, 04 Jan 2018 06:06:46 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Jan 2018 06:06:49 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 04 Jan 2018 06:06:49 GMT
VOLUME [/var/www/html]
# Thu, 04 Jan 2018 06:06:56 GMT
ENV WORDPRESS_VERSION=4.9.1
# Thu, 04 Jan 2018 06:06:57 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Thu, 04 Jan 2018 06:07:02 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 04 Jan 2018 06:07:05 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Thu, 04 Jan 2018 06:07:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Jan 2018 06:07:07 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6258639ee0c8534948f447e3c9ffebb5f124906bb7fb637bbc8fad3c3e091b21`  
		Last Modified: Wed, 20 Dec 2017 05:07:16 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c2d45ed979b216f6932560948e68f7f4d23fd39a583408f191ed89f0fcf58e3`  
		Last Modified: Thu, 04 Jan 2018 05:06:00 GMT  
		Size: 57.6 MB (57634016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74508622675ca3fe8ee9c7b089b5864042e068ef51437e644b8956800e41d189`  
		Last Modified: Thu, 04 Jan 2018 05:05:30 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5064b13db0d6a6dc5773e1e563da3983ce550ade81564644cf3c7a270df60a03`  
		Last Modified: Thu, 04 Jan 2018 05:09:20 GMT  
		Size: 12.3 MB (12341745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b3f40af2781ffbdea34273b7c4f771b78c4d1154a99c772a674b745446eb68`  
		Last Modified: Thu, 04 Jan 2018 05:09:16 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d968b4a25e078f8fb295e4962f3a2bbc9f35e7d8f980008f65e20caa141684`  
		Last Modified: Thu, 04 Jan 2018 05:09:26 GMT  
		Size: 27.2 MB (27230727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:462c0441392f26de89118b0064fbed51d688aced2e85da8f1f6fc940cb8a456d`  
		Last Modified: Thu, 04 Jan 2018 05:09:15 GMT  
		Size: 2.2 KB (2181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f838743e28b2b0aefeedce2ad01fd3497473c3e2ece766a5b1f3989f56f2d09f`  
		Last Modified: Thu, 04 Jan 2018 05:09:16 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476853ef4281082f40ae3c67353a501334625a7ef2c9bbd4fb510f34862ba5b2`  
		Last Modified: Thu, 04 Jan 2018 05:09:15 GMT  
		Size: 7.7 KB (7716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b93c5e301556181a1b051338952b4e2dc1cfd1d244289ae0585e284c7cb5e95`  
		Last Modified: Thu, 04 Jan 2018 06:21:53 GMT  
		Size: 958.3 KB (958260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4248e734c6926b1374da369b062d645b7cf898d3731fe3f783bac08de5e88944`  
		Last Modified: Thu, 04 Jan 2018 06:21:53 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2888d97373406dab2f30412a2ca8c80f89de9c587eea863a2157f49ea6710838`  
		Last Modified: Thu, 04 Jan 2018 06:21:56 GMT  
		Size: 9.5 MB (9471271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48b2a6acb18277d6021aff9d0cf24f8f6de60a14582dde518a01966d2df564f`  
		Last Modified: Thu, 04 Jan 2018 06:21:53 GMT  
		Size: 3.4 KB (3362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php7.2-fpm` - linux; 386

```console
$ docker pull wordpress@sha256:d1067ac3a465a2dd4d92cb268c4aa3f4ec8b38edf9f6b02112fc822c3b7fcf45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.2 MB (147159335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11ac95487172afd8f8b8232df254dfeb7fc79c774828e533213a0c5cc66fa8b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 09:37:08 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 20 Dec 2017 09:37:08 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 20 Dec 2017 09:38:34 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 20 Dec 2017 09:38:34 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 20 Dec 2017 09:38:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 20 Dec 2017 09:52:28 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 20 Dec 2017 09:52:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 20 Dec 2017 09:52:28 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 20 Dec 2017 09:52:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 20 Dec 2017 09:52:28 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 20 Dec 2017 09:52:29 GMT
ENV PHP_VERSION=7.2.0
# Wed, 20 Dec 2017 09:52:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Wed, 20 Dec 2017 09:52:29 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Thu, 21 Dec 2017 10:03:49 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 21 Dec 2017 10:03:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 21 Dec 2017 10:16:57 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Dec 2017 10:16:58 GMT
COPY multi:2e4df9268ce870f9ed83b38a2784f3778f2c2468c3e7ee600220221534e4e247 in /usr/local/bin/ 
# Thu, 21 Dec 2017 10:16:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Dec 2017 10:16:58 GMT
WORKDIR /var/www/html
# Thu, 21 Dec 2017 10:16:59 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 21 Dec 2017 10:16:59 GMT
EXPOSE 9000/tcp
# Thu, 21 Dec 2017 10:16:59 GMT
CMD ["php-fpm"]
# Thu, 04 Jan 2018 07:42:36 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Jan 2018 07:42:36 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 04 Jan 2018 07:42:37 GMT
VOLUME [/var/www/html]
# Thu, 04 Jan 2018 07:42:37 GMT
ENV WORDPRESS_VERSION=4.9.1
# Thu, 04 Jan 2018 07:42:37 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Thu, 04 Jan 2018 07:42:39 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 04 Jan 2018 07:42:40 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Thu, 04 Jan 2018 07:42:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Jan 2018 07:42:40 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1843fbcaf678474f1f97597600141be6e77de1fd7ed3a667dbfaf4d750b4c7f`  
		Last Modified: Wed, 20 Dec 2017 10:10:06 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9abc2bb4ac5a0c0dfd75890b128eda5749c151985826dd15150a6b51b47f57`  
		Last Modified: Wed, 20 Dec 2017 10:10:34 GMT  
		Size: 86.2 MB (86160685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66494f337f1311b108a6228204f7fef9a344a6e2606f63fba97843e9abe3603e`  
		Last Modified: Wed, 20 Dec 2017 10:10:06 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1787f6b5d1fc7684acd5ecbfb904a18c6824bd43ac6bdc4a89c21a361425b313`  
		Last Modified: Thu, 21 Dec 2017 13:03:28 GMT  
		Size: 12.3 MB (12346871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38eb84b1a0ef8fda858288b02f447bb0943134574e13fc53e3f5a6fc46c37673`  
		Last Modified: Thu, 21 Dec 2017 13:03:27 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4819ab9ae2164f6575fdd580ca784f89a9b97137f8110800e75ad54484685d1`  
		Last Modified: Thu, 21 Dec 2017 13:03:32 GMT  
		Size: 15.0 MB (14986303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbf4ac906bf542bcd9dc962dd2a4219a59469072bcfdf8c51fa3730ee5705cd`  
		Last Modified: Thu, 21 Dec 2017 13:03:27 GMT  
		Size: 2.2 KB (2184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40430a4d002a6e983c361a6ee369cdfd026d9b963e39de214875508ff159b0`  
		Last Modified: Thu, 21 Dec 2017 13:03:26 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5924acc4a382be427d5b7968d0cd0d0cafee30de8f762d8f1c777389b86a7a55`  
		Last Modified: Thu, 21 Dec 2017 13:03:27 GMT  
		Size: 7.7 KB (7714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c222e4fbe7bf6c6e3320bff7736eb6ea124f0b9f968d6f1e4c38c221669f840`  
		Last Modified: Thu, 04 Jan 2018 08:08:42 GMT  
		Size: 1.1 MB (1057090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa6164a21da8281f1159cff37948b885e2408ee26d57a921f40ab0cc63cffa6`  
		Last Modified: Thu, 04 Jan 2018 08:08:42 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f17b8105dc896deb4632195ec4dd0d472ff6a208d52339c3ff5e1d1dac4773`  
		Last Modified: Thu, 04 Jan 2018 08:08:46 GMT  
		Size: 9.5 MB (9471275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d087bbdbabb6e0d285b655245197873e685850cf295db205768fef12524b0b`  
		Last Modified: Thu, 04 Jan 2018 08:08:42 GMT  
		Size: 3.4 KB (3362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php7.2-fpm` - linux; ppc64le

```console
$ docker pull wordpress@sha256:ec4090882655ee173d230ab5ea64dac13df73abe4e4bf1481886116829dd2bda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136813017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f756e0592d9bd81262da748712e2f77bea68c4118c6bfa5f63ddd6f39133ec8e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 09:48:32 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 20 Dec 2017 09:48:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 20 Dec 2017 09:51:32 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 20 Dec 2017 09:51:34 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 20 Dec 2017 09:51:40 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 20 Dec 2017 10:05:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 20 Dec 2017 10:05:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 20 Dec 2017 10:05:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 20 Dec 2017 10:05:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 20 Dec 2017 10:05:22 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 20 Dec 2017 10:05:24 GMT
ENV PHP_VERSION=7.2.0
# Wed, 20 Dec 2017 10:05:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Wed, 20 Dec 2017 10:05:30 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Wed, 20 Dec 2017 10:06:24 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 20 Dec 2017 10:06:25 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 20 Dec 2017 10:10:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 20 Dec 2017 10:10:51 GMT
COPY multi:2e4df9268ce870f9ed83b38a2784f3778f2c2468c3e7ee600220221534e4e247 in /usr/local/bin/ 
# Wed, 20 Dec 2017 10:10:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 20 Dec 2017 10:10:53 GMT
WORKDIR /var/www/html
# Wed, 20 Dec 2017 10:11:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 20 Dec 2017 10:11:04 GMT
EXPOSE 9000/tcp
# Wed, 20 Dec 2017 10:11:05 GMT
CMD ["php-fpm"]
# Wed, 20 Dec 2017 12:34:20 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 20 Dec 2017 12:34:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 20 Dec 2017 12:34:30 GMT
VOLUME [/var/www/html]
# Wed, 20 Dec 2017 12:34:35 GMT
ENV WORDPRESS_VERSION=4.9.1
# Wed, 20 Dec 2017 12:34:41 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Wed, 20 Dec 2017 12:34:57 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 23 Dec 2017 17:26:45 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Sat, 23 Dec 2017 17:26:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 23 Dec 2017 17:26:50 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaecd59c3fac44f6f4929c30723d5195a99f9815d81d5675267d205c558beb06`  
		Last Modified: Wed, 20 Dec 2017 11:24:00 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd3ca2fb789c76017bbd96da4b7fc221a083503064145fddad5e4f958d86ac9`  
		Last Modified: Wed, 20 Dec 2017 11:24:21 GMT  
		Size: 76.3 MB (76302499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b49cf26905b949e534895a752d3d0112fe5207b8409d45eb7f6760b46fe8b0`  
		Last Modified: Wed, 20 Dec 2017 11:23:57 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86cf9a07eb5f2937d469fceb1920ede9768cf3bb7297923db720e2d332583970`  
		Last Modified: Wed, 20 Dec 2017 11:26:18 GMT  
		Size: 12.3 MB (12345607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0f9793344398854eb36a6c474aa6583c30c8635b9699486ef590e63e745031`  
		Last Modified: Wed, 20 Dec 2017 11:26:14 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89ad47a9f9e013c561b550d186521ffcca838c47059658fb96bb2830139c81e`  
		Last Modified: Wed, 20 Dec 2017 11:26:19 GMT  
		Size: 14.4 MB (14409931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35cec5853ec8403da18e8a370e59a5313fc9200389a48d9c78dedfec3254d315`  
		Last Modified: Wed, 20 Dec 2017 11:26:14 GMT  
		Size: 2.2 KB (2185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1feb254a5fb4f1e98eaffc8b45235d5a61d1c1f58c0ebafc12ac5f7c1d47b45`  
		Last Modified: Wed, 20 Dec 2017 11:26:14 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba2bc7df2075644c07a7f9db386013a4956d31ff1d20b3cfc735173be3a454f`  
		Last Modified: Wed, 20 Dec 2017 11:26:14 GMT  
		Size: 7.7 KB (7714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13e627ca76639707504d96a757b890ff27a0f23991849fc0ff591d3bdad5a15`  
		Last Modified: Wed, 20 Dec 2017 12:41:30 GMT  
		Size: 1.5 MB (1529275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4f93c07c16ca4163ff0c2066eb8d51789d3498f23492234da89b7b7bd1549f`  
		Last Modified: Wed, 20 Dec 2017 12:41:30 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4119370dc350b31a38a6baf50becb0e5d6e3265fb1fd7627a765aacaa74bbbe3`  
		Last Modified: Wed, 20 Dec 2017 12:41:32 GMT  
		Size: 9.5 MB (9471280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe26b82dec16feffc53ff0a9c8690e6bc91eecbe90ea88a548a937e5a26db923`  
		Last Modified: Sat, 23 Dec 2017 17:32:47 GMT  
		Size: 3.4 KB (3360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
