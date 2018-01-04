## `wordpress:4-php7.0-fpm`

```console
$ docker pull wordpress@sha256:0a47e10f4ff34e028309773c273bfdbc985542893a27ab7b0de195cfc7d8707d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `wordpress:4-php7.0-fpm` - linux; amd64

```console
$ docker pull wordpress@sha256:20b97638180bb08798942a323d8aec0ba104bf46c74e60f3d5f525555fdac0b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.1 MB (170145211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a029d33be3dedd4b40934788598a824775b9006e96006fe75cf6d58b5c128bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 20:02:28 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 19 Dec 2017 20:02:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 04 Jan 2018 02:17:45 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 04 Jan 2018 02:17:45 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 04 Jan 2018 02:17:46 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 04 Jan 2018 02:40:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 04 Jan 2018 02:40:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 04 Jan 2018 02:40:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 04 Jan 2018 02:40:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 04 Jan 2018 03:32:56 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 04 Jan 2018 03:32:57 GMT
ENV PHP_VERSION=7.0.26
# Thu, 04 Jan 2018 03:32:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Thu, 04 Jan 2018 03:32:57 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Thu, 04 Jan 2018 03:33:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 04 Jan 2018 03:33:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 04 Jan 2018 03:37:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 04 Jan 2018 03:43:28 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Thu, 04 Jan 2018 03:43:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 04 Jan 2018 03:43:29 GMT
WORKDIR /var/www/html
# Thu, 04 Jan 2018 03:43:30 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 04 Jan 2018 03:43:30 GMT
EXPOSE 9000/tcp
# Thu, 04 Jan 2018 03:43:30 GMT
CMD ["php-fpm"]
# Thu, 04 Jan 2018 06:34:15 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Jan 2018 06:41:31 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 04 Jan 2018 06:41:31 GMT
VOLUME [/var/www/html]
# Thu, 04 Jan 2018 06:41:32 GMT
ENV WORDPRESS_VERSION=4.9.1
# Thu, 04 Jan 2018 06:41:32 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Thu, 04 Jan 2018 06:41:34 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 04 Jan 2018 06:41:42 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Thu, 04 Jan 2018 06:41:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Jan 2018 06:41:43 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185616061386b6fbf50284203b0bfdefaca12fc92bbb65d2f65c3d51dd942ad9`  
		Last Modified: Tue, 19 Dec 2017 21:56:59 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc132db2e0d4529b0f1ecce1b0208d1415551c378edbbf72912b2da05b161b1`  
		Last Modified: Thu, 04 Jan 2018 04:57:51 GMT  
		Size: 80.2 MB (80245843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c1c323341aeccc9c187d1704349390ffbf8437718af11841e34591ff13d47f`  
		Last Modified: Thu, 04 Jan 2018 04:57:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba06e712ed55bbf0451a8178c93fe2739eda1d6e1a9869c42528a58df627189f`  
		Last Modified: Thu, 04 Jan 2018 05:06:32 GMT  
		Size: 12.3 MB (12301230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1df2154ca6e1b5871932bf2280d592c91cfc9683ee74dff94cd2e09255a832`  
		Last Modified: Thu, 04 Jan 2018 05:06:29 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9d725db0ad2717656bf905e0af88d83aaf879b7a92f2e914e83049c553b972`  
		Last Modified: Thu, 04 Jan 2018 05:06:33 GMT  
		Size: 14.5 MB (14524052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ee010f4bc688e6a219cab048d823e33a2eba8da1e6503021c49f4fcdd85f73`  
		Last Modified: Thu, 04 Jan 2018 05:06:29 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1a3bbe6ea4920d8d5131e3b10392ab4f55ae1905be45e35b3f1286a35bc65`  
		Last Modified: Thu, 04 Jan 2018 05:06:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a36f03a4c5a464f06927d3bd10f0087f23b7c96639901c3e27a8e85c5f4214f8`  
		Last Modified: Thu, 04 Jan 2018 05:06:29 GMT  
		Size: 7.7 KB (7682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf76222d81191e03af2f8054165fbe5c3e408dde74f163436553bc5b9df3d84`  
		Last Modified: Thu, 04 Jan 2018 08:12:49 GMT  
		Size: 988.5 KB (988494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2514be8d60ca31e9e63a8b5ebd5610e59795f2354b946fd53406880b9aa8dfb0`  
		Last Modified: Thu, 04 Jan 2018 08:12:49 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c1f7f73f9aec337b40b60d202a5118c2ac98ccc94d25e695e739f36db70159`  
		Last Modified: Thu, 04 Jan 2018 08:12:52 GMT  
		Size: 9.5 MB (9471277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa621a8df04e2a3f0746842a05537a398005b367f38c210c22190f79d03bae7`  
		Last Modified: Thu, 04 Jan 2018 08:12:48 GMT  
		Size: 3.4 KB (3362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php7.0-fpm` - linux; arm variant v5

```console
$ docker pull wordpress@sha256:010ccd571b1ea1d8be772994fa57b960b93caddfedfef3f6f94b67dd0dcbc7a9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150567337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2245ee39e41d9ad2a7771536e5528a8f0d078a4c1b3a4e8f3ee5316650f241`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 14:53:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 20 Dec 2017 14:53:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 20 Dec 2017 14:54:43 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 20 Dec 2017 14:54:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 20 Dec 2017 14:54:44 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 20 Dec 2017 15:03:35 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 20 Dec 2017 15:03:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 20 Dec 2017 15:03:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 20 Dec 2017 15:03:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 20 Dec 2017 15:20:02 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 20 Dec 2017 15:20:02 GMT
ENV PHP_VERSION=7.0.26
# Wed, 20 Dec 2017 15:20:02 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Wed, 20 Dec 2017 15:20:02 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Wed, 20 Dec 2017 15:20:40 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 20 Dec 2017 15:20:41 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 20 Dec 2017 15:24:01 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 20 Dec 2017 15:24:02 GMT
COPY multi:2e4df9268ce870f9ed83b38a2784f3778f2c2468c3e7ee600220221534e4e247 in /usr/local/bin/ 
# Wed, 20 Dec 2017 15:24:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 20 Dec 2017 15:24:02 GMT
WORKDIR /var/www/html
# Wed, 20 Dec 2017 15:24:03 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 20 Dec 2017 15:24:03 GMT
EXPOSE 9000/tcp
# Wed, 20 Dec 2017 15:24:04 GMT
CMD ["php-fpm"]
# Wed, 20 Dec 2017 16:25:19 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 20 Dec 2017 16:25:19 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 20 Dec 2017 16:25:20 GMT
VOLUME [/var/www/html]
# Wed, 20 Dec 2017 16:25:20 GMT
ENV WORDPRESS_VERSION=4.9.1
# Wed, 20 Dec 2017 16:25:20 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Wed, 20 Dec 2017 16:25:24 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 23 Dec 2017 20:07:00 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Sat, 23 Dec 2017 20:07:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 23 Dec 2017 20:07:01 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:940132a1efc5f029fd2e21473210940db3f7676ffdc20d10f0b84261dff9527a`  
		Last Modified: Wed, 20 Dec 2017 15:47:04 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57134c7bdb5dbc0e3200b811a384ab5c49322d05c86d04a02302d59c18c670ba`  
		Last Modified: Wed, 20 Dec 2017 15:47:22 GMT  
		Size: 62.9 MB (62945947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f685b787c17b000ae9517d904e7be35470174730049f76c0126d2a16aade647`  
		Last Modified: Wed, 20 Dec 2017 15:47:03 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b4ebd131a6cfcb306c239b3c848875673bc6976ea4d43a4460c5b5c0e0e565`  
		Last Modified: Wed, 20 Dec 2017 15:49:26 GMT  
		Size: 12.3 MB (12301644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f8c1f68bb7b4902cfc0bc4981f566fa6589d4f826260df2d7ddd8182e22eab`  
		Last Modified: Wed, 20 Dec 2017 15:49:23 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a800577c096b80d3f744f6dce4b07fce3c382e620f96ea938876a60cd78a69`  
		Last Modified: Wed, 20 Dec 2017 15:49:28 GMT  
		Size: 12.7 MB (12734374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076c581ea807b6fac9bf393a5187f174a4aee33a8d64a4c0e178a80aafbfb691`  
		Last Modified: Wed, 20 Dec 2017 15:49:23 GMT  
		Size: 2.2 KB (2188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bba01165cb7fd6b4108b9cb3085b62ba8c6ac9969f21e0d595ee5ee9d95a8fd`  
		Last Modified: Wed, 20 Dec 2017 15:49:23 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930ff04d112396e07781f0eb53a36d86965c41cbc71ce4576bbc9c475175e124`  
		Last Modified: Wed, 20 Dec 2017 15:49:23 GMT  
		Size: 7.7 KB (7680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7880ab64d38d89ae70e33b88262a89e5998970b486df0ea83a1dd16b1f8a0e7a`  
		Last Modified: Wed, 20 Dec 2017 16:34:46 GMT  
		Size: 2.2 MB (2216931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cc48397cd00bc8a9b1d901f1d413daaeefdc4af5e6dd93832b830051df63ff`  
		Last Modified: Wed, 20 Dec 2017 16:34:45 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d4dd5e3615ca786972865f09b54e64373c495eae6948664a7a65ae6e5e9e88`  
		Last Modified: Wed, 20 Dec 2017 16:34:50 GMT  
		Size: 9.5 MB (9471281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9714400b7869220c46caa2885953eac0b8312587ea1319ba3a0eb8352932d3f8`  
		Last Modified: Sat, 23 Dec 2017 20:08:48 GMT  
		Size: 3.4 KB (3355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php7.0-fpm` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:c2ac7ef7df35988eb694163e8e3d004c8a39d858d3ee78b95b9560c9786af888
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147842538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb97ed3a97dd60ae9cf87a1c9b9c5b3221ad31f00ea6f9b7ce130e9ebbffce1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 13:02:52 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 20 Dec 2017 13:02:52 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 20 Dec 2017 13:03:44 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 20 Dec 2017 13:03:45 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 20 Dec 2017 13:03:46 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 20 Dec 2017 13:11:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 20 Dec 2017 13:11:50 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 20 Dec 2017 13:11:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 20 Dec 2017 13:11:51 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 20 Dec 2017 13:27:28 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 20 Dec 2017 13:27:28 GMT
ENV PHP_VERSION=7.0.26
# Wed, 20 Dec 2017 13:27:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Wed, 20 Dec 2017 13:27:29 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Wed, 20 Dec 2017 13:28:06 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 20 Dec 2017 13:28:06 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 20 Dec 2017 13:31:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 20 Dec 2017 13:31:14 GMT
COPY multi:2e4df9268ce870f9ed83b38a2784f3778f2c2468c3e7ee600220221534e4e247 in /usr/local/bin/ 
# Wed, 20 Dec 2017 13:31:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 20 Dec 2017 13:31:14 GMT
WORKDIR /var/www/html
# Wed, 20 Dec 2017 13:31:15 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 20 Dec 2017 13:31:15 GMT
EXPOSE 9000/tcp
# Wed, 20 Dec 2017 13:31:15 GMT
CMD ["php-fpm"]
# Wed, 20 Dec 2017 14:19:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 20 Dec 2017 14:19:57 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 20 Dec 2017 14:19:57 GMT
VOLUME [/var/www/html]
# Wed, 20 Dec 2017 14:19:57 GMT
ENV WORDPRESS_VERSION=4.9.1
# Wed, 20 Dec 2017 14:19:58 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Wed, 20 Dec 2017 14:20:02 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 23 Dec 2017 21:04:05 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Sat, 23 Dec 2017 21:04:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 23 Dec 2017 21:04:06 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6b8e9a5cea34996ae971f312ad63b45e810b0446880a52e081ced2cbfa88b9`  
		Last Modified: Wed, 20 Dec 2017 13:52:32 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9415ce977e1a1470eec8e791c8d016c3117a74ee619f12c45c8777b0299cb320`  
		Last Modified: Wed, 20 Dec 2017 13:52:50 GMT  
		Size: 63.2 MB (63225230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbbfb6115657b91001e1408aefb1edd29d694f89af9da1efdd69b2f0b3a4743`  
		Last Modified: Wed, 20 Dec 2017 13:52:32 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be075ab7f4ab4f00e6eb22684989b74364f940ae405e58f5c5d7dd2a74051ac`  
		Last Modified: Wed, 20 Dec 2017 13:54:58 GMT  
		Size: 12.3 MB (12301630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26fb14722d41cea2f112181c18241ff430ce4a13ed0a8cd102e0de35c0855238`  
		Last Modified: Wed, 20 Dec 2017 13:54:55 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b457459f429c6b2848648df94f2dc2327936599d431641355e2d7ce9b2362b07`  
		Last Modified: Wed, 20 Dec 2017 13:54:59 GMT  
		Size: 12.0 MB (12006818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c74a945589053c9a786170be0343f876c6b7f5581f96f433ff5ded28a5f13f`  
		Last Modified: Wed, 20 Dec 2017 13:54:55 GMT  
		Size: 2.2 KB (2183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b429cc734f60a0977a68adf53ee01b0cbe8c72cb96997833319dc42f2f71bf3`  
		Last Modified: Wed, 20 Dec 2017 13:54:55 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a14a4fd4d474628db2f6e67d4152804ecf8603436aa725c057cf5a78746d1e0a`  
		Last Modified: Wed, 20 Dec 2017 13:54:55 GMT  
		Size: 7.7 KB (7679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66becdfa19fc4c3812040f47925c9e5def35da560af09959b8c661410c1206b6`  
		Last Modified: Wed, 20 Dec 2017 14:30:32 GMT  
		Size: 2.1 MB (2131159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ba0914e2126e04784049df9ecf6e5b7525e7d679245f2159fb8b35bfd1c73d`  
		Last Modified: Wed, 20 Dec 2017 14:30:31 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6c1aded05939dddf6f3d8bab8ac423ce1c5be152570999ea2d3f808751d925`  
		Last Modified: Wed, 20 Dec 2017 14:30:34 GMT  
		Size: 9.5 MB (9471280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d858763a0c74b3bdcc08bd6db2859b0a14a258d221955bd5f7b3a6e0db5813bc`  
		Last Modified: Sat, 23 Dec 2017 21:06:08 GMT  
		Size: 3.4 KB (3356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php7.0-fpm` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:196adee486590e584db99587f5c5835f9f7bd5005bebf898b3aad30e611abcc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.7 MB (148725055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad4c7518d4f50532b40a885ce310f7e267061cdcf2aad02263765edb82506d6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 03:34:00 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 20 Dec 2017 03:34:01 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 04 Jan 2018 03:35:42 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 04 Jan 2018 03:35:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 04 Jan 2018 03:35:44 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 04 Jan 2018 03:50:48 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 04 Jan 2018 03:50:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 04 Jan 2018 03:50:49 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 04 Jan 2018 03:50:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 04 Jan 2018 04:20:49 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 04 Jan 2018 04:20:50 GMT
ENV PHP_VERSION=7.0.26
# Thu, 04 Jan 2018 04:20:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Thu, 04 Jan 2018 04:20:51 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Thu, 04 Jan 2018 04:21:25 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 04 Jan 2018 04:21:25 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 04 Jan 2018 04:28:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 04 Jan 2018 04:28:16 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Thu, 04 Jan 2018 04:28:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 04 Jan 2018 04:28:17 GMT
WORKDIR /var/www/html
# Thu, 04 Jan 2018 04:28:19 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 04 Jan 2018 04:28:19 GMT
EXPOSE 9000/tcp
# Thu, 04 Jan 2018 04:28:20 GMT
CMD ["php-fpm"]
# Thu, 04 Jan 2018 05:54:48 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Jan 2018 05:54:51 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 04 Jan 2018 05:54:52 GMT
VOLUME [/var/www/html]
# Thu, 04 Jan 2018 05:54:53 GMT
ENV WORDPRESS_VERSION=4.9.1
# Thu, 04 Jan 2018 05:54:54 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Thu, 04 Jan 2018 05:55:03 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 04 Jan 2018 05:55:04 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Thu, 04 Jan 2018 05:55:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Jan 2018 05:55:06 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c8ee9610c809e6d2cfa5b61b3a45f6eb4705cf6c0eceabe5e8d63f713dfa2b3`  
		Last Modified: Wed, 20 Dec 2017 05:12:16 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e012cccb8aaf979c4f41c3c82588ed8c2a189ff2596f0baf0720141fd77ed39b`  
		Last Modified: Thu, 04 Jan 2018 05:18:21 GMT  
		Size: 62.5 MB (62543804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8046c037fcf61f0fb100a40e965687d3961e99d8974c11b059f64d34b4d504de`  
		Last Modified: Thu, 04 Jan 2018 05:17:57 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a39030882ed8ee9fb78033e8caeb2d1e6673bd8eabd2c982088fee747d4d4a`  
		Last Modified: Thu, 04 Jan 2018 05:23:10 GMT  
		Size: 12.3 MB (12299650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eadbfaee4b0696b9fdde48f88a4ab753b7f6319191de6a005cc0f0bb1d01c7bc`  
		Last Modified: Thu, 04 Jan 2018 05:23:06 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09719cb2a206e5e9c9b949b727a932475c04399fb4271d06cd2bb9f1d7c12ce6`  
		Last Modified: Thu, 04 Jan 2018 05:23:12 GMT  
		Size: 13.5 MB (13531601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0378bfe7341b3830626c756af2dc63e1280c6e359502c10d8af115dd52501ac0`  
		Last Modified: Thu, 04 Jan 2018 05:23:06 GMT  
		Size: 2.2 KB (2181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ba992ef18069b1a70a5dcb0c7e2677577bd04d04fc843cd74ac996403717826`  
		Last Modified: Thu, 04 Jan 2018 05:23:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e440d213b52ee602d68ba44df596935a86fcf3d4a98ced4c8cf40cb4263c3603`  
		Last Modified: Thu, 04 Jan 2018 05:23:07 GMT  
		Size: 7.7 KB (7680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d68ee1e6c82553ed9fbe25ba8f96f3bafee4fcae3dc7b17a0a172ee394d8ae1`  
		Last Modified: Thu, 04 Jan 2018 06:16:55 GMT  
		Size: 937.4 KB (937437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a909c2ff1c94ad397a4e536005ec89eeeeb52a017b866d3d1fc180acb0384eb5`  
		Last Modified: Thu, 04 Jan 2018 06:16:55 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491a6a65012fcf2c59f23f62316bf9ed981f7dce245755c1d2e80a1e112321a3`  
		Last Modified: Thu, 04 Jan 2018 06:16:59 GMT  
		Size: 9.5 MB (9471277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c57b222f6052610d0f82d70266ff1ed6b4754ce1919b862be25c7bcfbfe2840`  
		Last Modified: Thu, 04 Jan 2018 06:16:55 GMT  
		Size: 3.4 KB (3361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php7.0-fpm` - linux; 386

```console
$ docker pull wordpress@sha256:c70b5f6c60fb1408328cde7eefc7d0d66030e824fdc3bd8ff1acaea26995d97f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172668370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae0d7b30bcd526eee65de7d31432f489ad1a97f1b701d2622be04f84ae8c15a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 09:54:02 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 20 Dec 2017 09:54:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 21 Dec 2017 10:43:47 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 21 Dec 2017 10:43:48 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 21 Dec 2017 10:43:48 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 21 Dec 2017 11:08:49 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 21 Dec 2017 11:08:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 21 Dec 2017 11:08:49 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 21 Dec 2017 11:08:49 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 21 Dec 2017 12:05:24 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 21 Dec 2017 12:05:24 GMT
ENV PHP_VERSION=7.0.26
# Thu, 21 Dec 2017 12:05:24 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Thu, 21 Dec 2017 12:05:25 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Thu, 21 Dec 2017 12:05:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 21 Dec 2017 12:07:51 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 21 Dec 2017 12:12:56 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Dec 2017 12:19:30 GMT
COPY multi:2e4df9268ce870f9ed83b38a2784f3778f2c2468c3e7ee600220221534e4e247 in /usr/local/bin/ 
# Thu, 21 Dec 2017 12:19:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Dec 2017 12:19:30 GMT
WORKDIR /var/www/html
# Thu, 21 Dec 2017 12:19:31 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 21 Dec 2017 12:19:31 GMT
EXPOSE 9000/tcp
# Thu, 21 Dec 2017 12:19:31 GMT
CMD ["php-fpm"]
# Thu, 04 Jan 2018 06:36:08 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Jan 2018 06:39:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 04 Jan 2018 06:39:08 GMT
VOLUME [/var/www/html]
# Thu, 04 Jan 2018 06:39:08 GMT
ENV WORDPRESS_VERSION=4.9.1
# Thu, 04 Jan 2018 06:39:09 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Thu, 04 Jan 2018 06:39:12 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 04 Jan 2018 06:39:13 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Thu, 04 Jan 2018 06:39:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Jan 2018 06:39:13 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e78f833def8147f02d3b46ee9fa9bd4b7dc76472e6f78b04a44c617456a787`  
		Last Modified: Thu, 21 Dec 2017 13:06:53 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4492fe6baf12c1cb53325627eaecfad1d72eaa6eabae4d45daf393ff5463e8ee`  
		Last Modified: Thu, 21 Dec 2017 13:07:15 GMT  
		Size: 83.3 MB (83274659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f36bcbab0b68548acbc5635e3887aa5bc6eeeb8664ec759c12417f581cd52a5`  
		Last Modified: Thu, 21 Dec 2017 13:06:53 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eae5755935ab8434962e6824515674fb20d9bd78038b0b5f5710b8d37b44927`  
		Last Modified: Thu, 21 Dec 2017 13:14:49 GMT  
		Size: 12.3 MB (12302690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a39fd798a0aae4271a04c552bc9fca54037702e1fe075f2530824c8ede59577`  
		Last Modified: Thu, 21 Dec 2017 13:14:47 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8428c0730dea1655e589697d7a579da6637f70656f1d9fef3d5920569354621c`  
		Last Modified: Thu, 21 Dec 2017 13:14:51 GMT  
		Size: 13.8 MB (13809451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ecdef8a58ffa36c62768c97115e2a04fe50d074df497c8fb18cc71b8d0170b0`  
		Last Modified: Thu, 21 Dec 2017 13:14:47 GMT  
		Size: 2.2 KB (2189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41de0fa894d73aa89ebba9161244fb55665455fbc9222395a3e66d2092ff25eb`  
		Last Modified: Thu, 21 Dec 2017 13:14:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a94ab91622e1c2d7dc414f53cd1beb40ee0f21f2837247ea36cf3415dd5365`  
		Last Modified: Thu, 21 Dec 2017 13:14:47 GMT  
		Size: 7.7 KB (7682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:921fb202bb6ea285e7f6438e391ee10bdc00243e083033750b08be56d8398dad`  
		Last Modified: Thu, 04 Jan 2018 08:01:16 GMT  
		Size: 1.0 MB (1018295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953e91320ffc36c77f20a584c8e1dea622b432a4368941bb77167bebfd61e450`  
		Last Modified: Thu, 04 Jan 2018 08:01:15 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757aea8e3f4ddb9660fdeb757f9d1d0c587cd6d7364666fe8d80f2c735d58675`  
		Last Modified: Thu, 04 Jan 2018 08:01:19 GMT  
		Size: 9.5 MB (9471275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c98382c34dd503a2306825ebb23976cf82dabb38975571baf7ffd0f26442007`  
		Last Modified: Thu, 04 Jan 2018 08:01:15 GMT  
		Size: 3.4 KB (3364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php7.0-fpm` - linux; ppc64le

```console
$ docker pull wordpress@sha256:b5768532b11ac7c7d235800c11a5f3f8c132765fe7b5e4fd782ec8942cabe49a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.7 MB (158727813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc7a5c5f90adc59e01faf810fe3a6019ce5893a37ef932fdd13c9f5f77ef0bf9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 10:17:49 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 20 Dec 2017 10:17:50 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 20 Dec 2017 10:20:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 20 Dec 2017 10:20:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 20 Dec 2017 10:20:57 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 20 Dec 2017 10:33:42 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 20 Dec 2017 10:33:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 20 Dec 2017 10:33:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 20 Dec 2017 10:33:45 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 20 Dec 2017 10:53:48 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 20 Dec 2017 10:53:49 GMT
ENV PHP_VERSION=7.0.26
# Wed, 20 Dec 2017 10:53:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Wed, 20 Dec 2017 10:53:51 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Wed, 20 Dec 2017 10:54:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 20 Dec 2017 10:54:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 20 Dec 2017 10:58:42 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 20 Dec 2017 10:58:44 GMT
COPY multi:2e4df9268ce870f9ed83b38a2784f3778f2c2468c3e7ee600220221534e4e247 in /usr/local/bin/ 
# Wed, 20 Dec 2017 10:58:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 20 Dec 2017 10:58:47 GMT
WORKDIR /var/www/html
# Wed, 20 Dec 2017 10:58:50 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 20 Dec 2017 10:58:51 GMT
EXPOSE 9000/tcp
# Wed, 20 Dec 2017 10:58:52 GMT
CMD ["php-fpm"]
# Wed, 20 Dec 2017 12:23:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 20 Dec 2017 12:23:41 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 20 Dec 2017 12:23:45 GMT
VOLUME [/var/www/html]
# Wed, 20 Dec 2017 12:23:47 GMT
ENV WORDPRESS_VERSION=4.9.1
# Wed, 20 Dec 2017 12:23:49 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Wed, 20 Dec 2017 12:24:05 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 23 Dec 2017 17:26:12 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Sat, 23 Dec 2017 17:26:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 23 Dec 2017 17:26:14 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8bfe49b2829dba0fc576421805ceaeed1e1067c0f07d3052f0a36ade1e7a3e8`  
		Last Modified: Wed, 20 Dec 2017 11:27:45 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d555c52355ebf18d79c2b97ca467cdc2bd0ef1bb637822bfe5c6e252e1f1a1`  
		Last Modified: Wed, 20 Dec 2017 11:28:02 GMT  
		Size: 69.4 MB (69449320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79daed271a26509ea85bb1ed7617330318a9777a63bd96c2d6388d2c628b55fc`  
		Last Modified: Wed, 20 Dec 2017 11:27:41 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7299841f0bfead1815ffa07bfc9345ea489631f3145985c3ffc9e8b8564fbdc`  
		Last Modified: Wed, 20 Dec 2017 11:31:17 GMT  
		Size: 12.3 MB (12301598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fd669ad00ad1a1bf7fa4176209cce7fd77e082a4d67058c36aabd854b33000`  
		Last Modified: Wed, 20 Dec 2017 11:31:13 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b917fe69b64557f5c53f0d72f9a59cbd7b8ab87f4b624236eacfc873ed8eccae`  
		Last Modified: Wed, 20 Dec 2017 11:31:18 GMT  
		Size: 13.3 MB (13297835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5202826793041f07f0ac7689bf7bae22b260da874896ac0e7fbfeb80fe46528`  
		Last Modified: Wed, 20 Dec 2017 11:31:13 GMT  
		Size: 2.2 KB (2185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3710993cfada74964467d34c1f2e362750356e02cf467b547c737cee1cd437c`  
		Last Modified: Wed, 20 Dec 2017 11:31:14 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77106bf1c42a4ce31abb490f7f72ce2d8b533f910bfd8651a30edda599214eec`  
		Last Modified: Wed, 20 Dec 2017 11:31:13 GMT  
		Size: 7.7 KB (7674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d56c21410bcf1f4b38c46b81f3ed3d931b9d7c65b6cd0164926be9d72beb6`  
		Last Modified: Wed, 20 Dec 2017 12:38:15 GMT  
		Size: 2.4 MB (2384112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927ed2618af31a73c46bb84a0e632ff10ab5ed1eaa0811c9a150fdd6d1e159c5`  
		Last Modified: Wed, 20 Dec 2017 12:38:14 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4196310866f28a8455228c2f8e917e89756afabced15bf2162290542fb700242`  
		Last Modified: Wed, 20 Dec 2017 12:38:16 GMT  
		Size: 9.5 MB (9471279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8ac0d7e578fad1334dd5c6d1ba2ea546878793d7928312243f30e855673382`  
		Last Modified: Sat, 23 Dec 2017 17:29:38 GMT  
		Size: 3.4 KB (3359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:4-php7.0-fpm` - linux; s390x

```console
$ docker pull wordpress@sha256:d8ce51c2f8434a64b8454ad7195eeea44511108bc2d7f9d8bc82296e64a13bcb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.9 MB (154856811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63cf5ce27aaa783639115f379033f6b22700aad321e5205f4431ea4ca4826923`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Wed, 29 Nov 2017 00:05:09 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 29 Nov 2017 00:05:38 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 29 Nov 2017 00:05:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 29 Nov 2017 00:05:39 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 18:28:24 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 01 Dec 2017 18:28:24 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 18:28:24 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 18:28:24 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 18:40:32 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 01 Dec 2017 18:40:33 GMT
ENV PHP_VERSION=7.0.26
# Fri, 01 Dec 2017 18:40:33 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 18:40:33 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Fri, 01 Dec 2017 18:40:47 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Dec 2017 18:40:48 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 18:43:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 18:43:35 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Fri, 01 Dec 2017 18:43:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 18:43:35 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 18:43:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 01 Dec 2017 18:43:36 GMT
EXPOSE 9000/tcp
# Fri, 01 Dec 2017 18:43:36 GMT
CMD ["php-fpm"]
# Fri, 01 Dec 2017 19:23:00 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Fri, 01 Dec 2017 19:23:00 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 01 Dec 2017 19:23:01 GMT
VOLUME [/var/www/html]
# Fri, 01 Dec 2017 19:23:01 GMT
ENV WORDPRESS_VERSION=4.9.1
# Fri, 01 Dec 2017 19:23:01 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Fri, 01 Dec 2017 19:23:04 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 01 Dec 2017 19:23:04 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Fri, 01 Dec 2017 19:23:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 19:23:05 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42ca397ddc393770caaf87845ba868a919821518653dabeb8994b7f80d23681`  
		Last Modified: Fri, 01 Dec 2017 19:00:38 GMT  
		Size: 63.4 MB (63421543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feeb4e4f47c8cf604dacfbecf29d16580206ff508c9c83dccfe6d8568be2f09e`  
		Last Modified: Fri, 01 Dec 2017 19:00:24 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720b02f9485f40c5cbb6894f35356d537350fa930cb68df678fc067bb8d3e1ad`  
		Last Modified: Fri, 01 Dec 2017 19:04:20 GMT  
		Size: 12.3 MB (12301072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7b2331006059c8c27afc48945ac89eea6e7219c8cb8fd592523d587528b8a8`  
		Last Modified: Fri, 01 Dec 2017 19:04:19 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbbb5598138790b5d93f732570ad6d42a1da46abf4ea3b660e89c4e70c4dae80`  
		Last Modified: Fri, 01 Dec 2017 19:04:21 GMT  
		Size: 14.2 MB (14202934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c292b1dac2b0c2176de5bf40f882870b9a9d4403521e4c755c6ca9bd1d1ada`  
		Last Modified: Fri, 01 Dec 2017 19:04:19 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab8714575fd945d4ddf492856207de95abbe43c5661ee437586adc7af763373`  
		Last Modified: Fri, 01 Dec 2017 19:04:18 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7a82e2f0429f3dfacf0ecf2025da071f95411c95bd8ac8c01097a818ff5fb4`  
		Last Modified: Fri, 01 Dec 2017 19:04:18 GMT  
		Size: 7.7 KB (7676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722eaa050b18f2dab6b4726309b89b0364588361f2d6388566945f882ce07623`  
		Last Modified: Fri, 01 Dec 2017 19:27:49 GMT  
		Size: 2.7 MB (2656879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e192cd310824989e91340f1053e677a63777cc5fe203672ad8cbd5bcb28a506b`  
		Last Modified: Fri, 01 Dec 2017 19:27:47 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ceeb44bd1189d78cc595460e8577c39f8eb41b1a5772e8b5e71ef73c57930d`  
		Last Modified: Fri, 01 Dec 2017 19:27:49 GMT  
		Size: 9.5 MB (9471277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c1c61839779c65a38fd2c8939483122edf374e91c85ffc348597a44cb39328`  
		Last Modified: Fri, 01 Dec 2017 19:27:47 GMT  
		Size: 3.2 KB (3223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
