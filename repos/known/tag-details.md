<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `known`

-	[`known:0`](#known0)
-	[`known:0.9`](#known09)
-	[`known:0.9.2`](#known092)
-	[`known:latest`](#knownlatest)

## `known:0`

```console
$ docker pull known@sha256:106ee2fd3d5a4ffaad1395368cf58c150bf8f4d4b185843598cdb7ffda130fd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `known:0` - linux; amd64

```console
$ docker pull known@sha256:1fc01f3edc0eaff92b389cbcdc8364a1dd437138a4835f9478307da9440c1d0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.2 MB (226154869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1200dbc119bcb3ee6de01c87d26e3914997e25494b413e30fd1042fb733e9281`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Thu, 04 Jan 2018 04:17:39 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 04 Jan 2018 04:17:39 GMT
ENV PHP_VERSION=5.6.32
# Thu, 04 Jan 2018 04:17:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Thu, 04 Jan 2018 04:17:40 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Thu, 04 Jan 2018 04:17:57 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 04 Jan 2018 04:17:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 04 Jan 2018 04:21:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 04 Jan 2018 04:23:26 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Thu, 04 Jan 2018 04:23:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 04 Jan 2018 04:24:54 GMT
WORKDIR /var/www/html
# Thu, 04 Jan 2018 04:24:54 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 04 Jan 2018 04:24:55 GMT
EXPOSE 9000/tcp
# Thu, 04 Jan 2018 04:25:03 GMT
CMD ["php-fpm"]
# Thu, 04 Jan 2018 08:17:00 GMT
MAINTAINER hello@withknown.com
# Thu, 04 Jan 2018 08:17:18 GMT
RUN apt-get update && apt-get install -y       bzip2       libcurl4-openssl-dev       libfreetype6-dev       libicu-dev       libjpeg-dev       libmcrypt-dev       libpng12-dev       libpq-dev       libxml2-dev       mysql-client       unzip  && rm -rf /var/lib/apt/lists/*
# Thu, 04 Jan 2018 08:17:20 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "53DE 5B99 2244 9132 8B92  7516 052D B5AC 742E 3B47"
# Thu, 04 Jan 2018 08:19:21 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr  && docker-php-ext-install exif gd intl mbstring mcrypt mysql opcache pdo_mysql zip json xmlrpc
# Thu, 04 Jan 2018 08:19:23 GMT
RUN {   echo 'opcache.memory_consumption=128';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=4000';   echo 'opcache.revalidate_freq=60';   echo 'opcache.fast_shutdown=1';   echo 'opcache.enable_cli=1'; } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 04 Jan 2018 08:19:34 GMT
RUN pecl install APCu-4.0.10  && docker-php-ext-enable apcu
# Thu, 04 Jan 2018 08:19:34 GMT
ENV KNOWN_VERSION=0.9.2
# Thu, 04 Jan 2018 08:19:35 GMT
VOLUME [/var/www/html]
# Thu, 04 Jan 2018 08:19:39 GMT
RUN curl -o known.zip -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.zip  && curl -o known.zip.sig -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.zip.sig  && gpg --batch --verify known.zip.sig known.zip  && unzip known.zip -d /usr/src/known/  && rm known.zip*
# Thu, 04 Jan 2018 08:19:46 GMT
COPY file:6d2bbeccad440fd875b308488484f3081838a6ed7c7f5ec2ad4488f753cd87e0 in /entrypoint.sh 
# Thu, 04 Jan 2018 08:19:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 04 Jan 2018 08:19:47 GMT
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
	-	`sha256:768019bfa727647dd25967891816d2a2230598ce5e8ec6a43ebae9cbad901c03`  
		Last Modified: Thu, 04 Jan 2018 05:14:04 GMT  
		Size: 12.8 MB (12798744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1765452576975f8244563af4c932161782ad0f0aa923e1562749c3be63960a0c`  
		Last Modified: Thu, 04 Jan 2018 05:14:00 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85554aba6d66228cd5eb30675c22ff8b6236483fff9e9cd6d6c12d7672020314`  
		Last Modified: Thu, 04 Jan 2018 05:14:04 GMT  
		Size: 10.3 MB (10334778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40ba977efd9cf19830f7e735696ff204c2643b64ccbf5b8fefd5b084887125f`  
		Last Modified: Thu, 04 Jan 2018 05:14:00 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a7f433be4da4ad991a0310cf9652a58f9646a50b13e028655ef6163f81b841`  
		Last Modified: Thu, 04 Jan 2018 05:14:00 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae13c2bca4cee95f089ebf4653c445181c728204feb3a6f18981abd317fc9b25`  
		Last Modified: Thu, 04 Jan 2018 05:14:00 GMT  
		Size: 7.6 KB (7622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d02ed579e5224d6c4a393a1c8d65c1c23086430ba831fb88a57ed5f15135363`  
		Last Modified: Thu, 04 Jan 2018 08:20:31 GMT  
		Size: 47.2 MB (47223986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1afecf5f35ab93bb208394e19a0013061164e059f90f35dc6fd8d81db2be6a3`  
		Last Modified: Thu, 04 Jan 2018 08:20:23 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbe8a6b9721241b59d3ed8c7a6e3dc6743da362b1be9521a2c2375db50bd0a4`  
		Last Modified: Thu, 04 Jan 2018 08:20:21 GMT  
		Size: 1.7 MB (1700139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8784becc4d940271d2e883e294c48c170d112082716747ada68358b0daa14ad`  
		Last Modified: Thu, 04 Jan 2018 08:20:20 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a385abd31cf8f8685ee228bc13bf70b9c01a464a59f76fe36de0390e7cd7b5fd`  
		Last Modified: Thu, 04 Jan 2018 08:20:20 GMT  
		Size: 365.1 KB (365096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2c2c4be05a3f3493e8b4525e6804d2685b6d0dd3ef0215b5195aa989a0b72ea`  
		Last Modified: Thu, 04 Jan 2018 08:20:23 GMT  
		Size: 20.9 MB (20867361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed56085e17f1020e6db968fbb8da91dc5a73bd2c5f73c1ad4561504c4c3f64e4`  
		Last Modified: Thu, 04 Jan 2018 08:20:21 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `known:0.9`

```console
$ docker pull known@sha256:106ee2fd3d5a4ffaad1395368cf58c150bf8f4d4b185843598cdb7ffda130fd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `known:0.9` - linux; amd64

```console
$ docker pull known@sha256:1fc01f3edc0eaff92b389cbcdc8364a1dd437138a4835f9478307da9440c1d0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.2 MB (226154869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1200dbc119bcb3ee6de01c87d26e3914997e25494b413e30fd1042fb733e9281`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Thu, 04 Jan 2018 04:17:39 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 04 Jan 2018 04:17:39 GMT
ENV PHP_VERSION=5.6.32
# Thu, 04 Jan 2018 04:17:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Thu, 04 Jan 2018 04:17:40 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Thu, 04 Jan 2018 04:17:57 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 04 Jan 2018 04:17:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 04 Jan 2018 04:21:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 04 Jan 2018 04:23:26 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Thu, 04 Jan 2018 04:23:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 04 Jan 2018 04:24:54 GMT
WORKDIR /var/www/html
# Thu, 04 Jan 2018 04:24:54 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 04 Jan 2018 04:24:55 GMT
EXPOSE 9000/tcp
# Thu, 04 Jan 2018 04:25:03 GMT
CMD ["php-fpm"]
# Thu, 04 Jan 2018 08:17:00 GMT
MAINTAINER hello@withknown.com
# Thu, 04 Jan 2018 08:17:18 GMT
RUN apt-get update && apt-get install -y       bzip2       libcurl4-openssl-dev       libfreetype6-dev       libicu-dev       libjpeg-dev       libmcrypt-dev       libpng12-dev       libpq-dev       libxml2-dev       mysql-client       unzip  && rm -rf /var/lib/apt/lists/*
# Thu, 04 Jan 2018 08:17:20 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "53DE 5B99 2244 9132 8B92  7516 052D B5AC 742E 3B47"
# Thu, 04 Jan 2018 08:19:21 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr  && docker-php-ext-install exif gd intl mbstring mcrypt mysql opcache pdo_mysql zip json xmlrpc
# Thu, 04 Jan 2018 08:19:23 GMT
RUN {   echo 'opcache.memory_consumption=128';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=4000';   echo 'opcache.revalidate_freq=60';   echo 'opcache.fast_shutdown=1';   echo 'opcache.enable_cli=1'; } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 04 Jan 2018 08:19:34 GMT
RUN pecl install APCu-4.0.10  && docker-php-ext-enable apcu
# Thu, 04 Jan 2018 08:19:34 GMT
ENV KNOWN_VERSION=0.9.2
# Thu, 04 Jan 2018 08:19:35 GMT
VOLUME [/var/www/html]
# Thu, 04 Jan 2018 08:19:39 GMT
RUN curl -o known.zip -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.zip  && curl -o known.zip.sig -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.zip.sig  && gpg --batch --verify known.zip.sig known.zip  && unzip known.zip -d /usr/src/known/  && rm known.zip*
# Thu, 04 Jan 2018 08:19:46 GMT
COPY file:6d2bbeccad440fd875b308488484f3081838a6ed7c7f5ec2ad4488f753cd87e0 in /entrypoint.sh 
# Thu, 04 Jan 2018 08:19:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 04 Jan 2018 08:19:47 GMT
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
	-	`sha256:768019bfa727647dd25967891816d2a2230598ce5e8ec6a43ebae9cbad901c03`  
		Last Modified: Thu, 04 Jan 2018 05:14:04 GMT  
		Size: 12.8 MB (12798744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1765452576975f8244563af4c932161782ad0f0aa923e1562749c3be63960a0c`  
		Last Modified: Thu, 04 Jan 2018 05:14:00 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85554aba6d66228cd5eb30675c22ff8b6236483fff9e9cd6d6c12d7672020314`  
		Last Modified: Thu, 04 Jan 2018 05:14:04 GMT  
		Size: 10.3 MB (10334778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40ba977efd9cf19830f7e735696ff204c2643b64ccbf5b8fefd5b084887125f`  
		Last Modified: Thu, 04 Jan 2018 05:14:00 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a7f433be4da4ad991a0310cf9652a58f9646a50b13e028655ef6163f81b841`  
		Last Modified: Thu, 04 Jan 2018 05:14:00 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae13c2bca4cee95f089ebf4653c445181c728204feb3a6f18981abd317fc9b25`  
		Last Modified: Thu, 04 Jan 2018 05:14:00 GMT  
		Size: 7.6 KB (7622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d02ed579e5224d6c4a393a1c8d65c1c23086430ba831fb88a57ed5f15135363`  
		Last Modified: Thu, 04 Jan 2018 08:20:31 GMT  
		Size: 47.2 MB (47223986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1afecf5f35ab93bb208394e19a0013061164e059f90f35dc6fd8d81db2be6a3`  
		Last Modified: Thu, 04 Jan 2018 08:20:23 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbe8a6b9721241b59d3ed8c7a6e3dc6743da362b1be9521a2c2375db50bd0a4`  
		Last Modified: Thu, 04 Jan 2018 08:20:21 GMT  
		Size: 1.7 MB (1700139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8784becc4d940271d2e883e294c48c170d112082716747ada68358b0daa14ad`  
		Last Modified: Thu, 04 Jan 2018 08:20:20 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a385abd31cf8f8685ee228bc13bf70b9c01a464a59f76fe36de0390e7cd7b5fd`  
		Last Modified: Thu, 04 Jan 2018 08:20:20 GMT  
		Size: 365.1 KB (365096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2c2c4be05a3f3493e8b4525e6804d2685b6d0dd3ef0215b5195aa989a0b72ea`  
		Last Modified: Thu, 04 Jan 2018 08:20:23 GMT  
		Size: 20.9 MB (20867361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed56085e17f1020e6db968fbb8da91dc5a73bd2c5f73c1ad4561504c4c3f64e4`  
		Last Modified: Thu, 04 Jan 2018 08:20:21 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `known:0.9.2`

```console
$ docker pull known@sha256:106ee2fd3d5a4ffaad1395368cf58c150bf8f4d4b185843598cdb7ffda130fd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `known:0.9.2` - linux; amd64

```console
$ docker pull known@sha256:1fc01f3edc0eaff92b389cbcdc8364a1dd437138a4835f9478307da9440c1d0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.2 MB (226154869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1200dbc119bcb3ee6de01c87d26e3914997e25494b413e30fd1042fb733e9281`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Thu, 04 Jan 2018 04:17:39 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 04 Jan 2018 04:17:39 GMT
ENV PHP_VERSION=5.6.32
# Thu, 04 Jan 2018 04:17:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Thu, 04 Jan 2018 04:17:40 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Thu, 04 Jan 2018 04:17:57 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 04 Jan 2018 04:17:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 04 Jan 2018 04:21:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 04 Jan 2018 04:23:26 GMT
COPY multi:f9544e5c6b9d1d1292fca43464fe1e77b631547ac2baa8503de318853c0536d0 in /usr/local/bin/ 
# Thu, 04 Jan 2018 04:23:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 04 Jan 2018 04:24:54 GMT
WORKDIR /var/www/html
# Thu, 04 Jan 2018 04:24:54 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 04 Jan 2018 04:24:55 GMT
EXPOSE 9000/tcp
# Thu, 04 Jan 2018 04:25:03 GMT
CMD ["php-fpm"]
# Thu, 04 Jan 2018 08:17:00 GMT
MAINTAINER hello@withknown.com
# Thu, 04 Jan 2018 08:17:18 GMT
RUN apt-get update && apt-get install -y       bzip2       libcurl4-openssl-dev       libfreetype6-dev       libicu-dev       libjpeg-dev       libmcrypt-dev       libpng12-dev       libpq-dev       libxml2-dev       mysql-client       unzip  && rm -rf /var/lib/apt/lists/*
# Thu, 04 Jan 2018 08:17:20 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "53DE 5B99 2244 9132 8B92  7516 052D B5AC 742E 3B47"
# Thu, 04 Jan 2018 08:19:21 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr  && docker-php-ext-install exif gd intl mbstring mcrypt mysql opcache pdo_mysql zip json xmlrpc
# Thu, 04 Jan 2018 08:19:23 GMT
RUN {   echo 'opcache.memory_consumption=128';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=4000';   echo 'opcache.revalidate_freq=60';   echo 'opcache.fast_shutdown=1';   echo 'opcache.enable_cli=1'; } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 04 Jan 2018 08:19:34 GMT
RUN pecl install APCu-4.0.10  && docker-php-ext-enable apcu
# Thu, 04 Jan 2018 08:19:34 GMT
ENV KNOWN_VERSION=0.9.2
# Thu, 04 Jan 2018 08:19:35 GMT
VOLUME [/var/www/html]
# Thu, 04 Jan 2018 08:19:39 GMT
RUN curl -o known.zip -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.zip  && curl -o known.zip.sig -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.zip.sig  && gpg --batch --verify known.zip.sig known.zip  && unzip known.zip -d /usr/src/known/  && rm known.zip*
# Thu, 04 Jan 2018 08:19:46 GMT
COPY file:6d2bbeccad440fd875b308488484f3081838a6ed7c7f5ec2ad4488f753cd87e0 in /entrypoint.sh 
# Thu, 04 Jan 2018 08:19:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 04 Jan 2018 08:19:47 GMT
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
	-	`sha256:768019bfa727647dd25967891816d2a2230598ce5e8ec6a43ebae9cbad901c03`  
		Last Modified: Thu, 04 Jan 2018 05:14:04 GMT  
		Size: 12.8 MB (12798744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1765452576975f8244563af4c932161782ad0f0aa923e1562749c3be63960a0c`  
		Last Modified: Thu, 04 Jan 2018 05:14:00 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85554aba6d66228cd5eb30675c22ff8b6236483fff9e9cd6d6c12d7672020314`  
		Last Modified: Thu, 04 Jan 2018 05:14:04 GMT  
		Size: 10.3 MB (10334778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40ba977efd9cf19830f7e735696ff204c2643b64ccbf5b8fefd5b084887125f`  
		Last Modified: Thu, 04 Jan 2018 05:14:00 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a7f433be4da4ad991a0310cf9652a58f9646a50b13e028655ef6163f81b841`  
		Last Modified: Thu, 04 Jan 2018 05:14:00 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae13c2bca4cee95f089ebf4653c445181c728204feb3a6f18981abd317fc9b25`  
		Last Modified: Thu, 04 Jan 2018 05:14:00 GMT  
		Size: 7.6 KB (7622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d02ed579e5224d6c4a393a1c8d65c1c23086430ba831fb88a57ed5f15135363`  
		Last Modified: Thu, 04 Jan 2018 08:20:31 GMT  
		Size: 47.2 MB (47223986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1afecf5f35ab93bb208394e19a0013061164e059f90f35dc6fd8d81db2be6a3`  
		Last Modified: Thu, 04 Jan 2018 08:20:23 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbe8a6b9721241b59d3ed8c7a6e3dc6743da362b1be9521a2c2375db50bd0a4`  
		Last Modified: Thu, 04 Jan 2018 08:20:21 GMT  
		Size: 1.7 MB (1700139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8784becc4d940271d2e883e294c48c170d112082716747ada68358b0daa14ad`  
		Last Modified: Thu, 04 Jan 2018 08:20:20 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a385abd31cf8f8685ee228bc13bf70b9c01a464a59f76fe36de0390e7cd7b5fd`  
		Last Modified: Thu, 04 Jan 2018 08:20:20 GMT  
		Size: 365.1 KB (365096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2c2c4be05a3f3493e8b4525e6804d2685b6d0dd3ef0215b5195aa989a0b72ea`  
		Last Modified: Thu, 04 Jan 2018 08:20:23 GMT  
		Size: 20.9 MB (20867361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed56085e17f1020e6db968fbb8da91dc5a73bd2c5f73c1ad4561504c4c3f64e4`  
		Last Modified: Thu, 04 Jan 2018 08:20:21 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `known:latest`

```console
$ docker pull known@sha256:bd68bb8d3ef7859f49c348af711cb35673e883cb238c95570d154d53be695a90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `known:latest` - linux; amd64

```console
$ docker pull known@sha256:aedb511ee238990903364bce92dc09dae5447ae5a2cb1e8076cd5c81829ec1ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.7 MB (226662683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8570e16286bffcbab8b25e044f916e15e47c4f79f3349842b39b2d0ccedaa9b0`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Tue, 19 Dec 2017 20:03:07 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 19 Dec 2017 20:03:12 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 19 Dec 2017 20:03:13 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 19 Dec 2017 20:27:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 19 Dec 2017 20:27:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Dec 2017 20:27:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Dec 2017 20:27:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 19 Dec 2017 21:38:04 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 19 Dec 2017 21:38:04 GMT
ENV PHP_VERSION=5.6.32
# Tue, 19 Dec 2017 21:38:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Tue, 19 Dec 2017 21:38:05 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Tue, 19 Dec 2017 21:38:20 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 19 Dec 2017 21:38:21 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 19 Dec 2017 21:42:18 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 19 Dec 2017 21:42:19 GMT
COPY multi:2e4df9268ce870f9ed83b38a2784f3778f2c2468c3e7ee600220221534e4e247 in /usr/local/bin/ 
# Tue, 19 Dec 2017 21:42:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 19 Dec 2017 21:42:19 GMT
WORKDIR /var/www/html
# Tue, 19 Dec 2017 21:42:20 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 19 Dec 2017 21:42:20 GMT
EXPOSE 9000/tcp
# Tue, 19 Dec 2017 21:42:20 GMT
CMD ["php-fpm"]
# Tue, 19 Dec 2017 22:43:44 GMT
MAINTAINER hello@withknown.com
# Tue, 19 Dec 2017 22:44:03 GMT
RUN apt-get update && apt-get install -y       bzip2       libcurl4-openssl-dev       libfreetype6-dev       libicu-dev       libjpeg-dev       libmcrypt-dev       libpng12-dev       libpq-dev       libxml2-dev       mysql-client       unzip  && rm -rf /var/lib/apt/lists/*
# Tue, 19 Dec 2017 22:44:05 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "53DE 5B99 2244 9132 8B92  7516 052D B5AC 742E 3B47"
# Tue, 19 Dec 2017 22:45:53 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr  && docker-php-ext-install exif gd intl mbstring mcrypt mysql opcache pdo_mysql zip json xmlrpc
# Tue, 19 Dec 2017 22:49:27 GMT
RUN {   echo 'opcache.memory_consumption=128';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=4000';   echo 'opcache.revalidate_freq=60';   echo 'opcache.fast_shutdown=1';   echo 'opcache.enable_cli=1'; } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 19 Dec 2017 22:49:40 GMT
RUN pecl install APCu-4.0.10  && docker-php-ext-enable apcu
# Tue, 19 Dec 2017 22:49:47 GMT
ENV KNOWN_VERSION=0.9.2
# Tue, 19 Dec 2017 22:49:47 GMT
VOLUME [/var/www/html]
# Tue, 19 Dec 2017 22:49:51 GMT
RUN curl -o known.zip -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.zip  && curl -o known.zip.sig -fSL http://assets.withknown.com/releases/known-${KNOWN_VERSION}.zip.sig  && gpg --batch --verify known.zip.sig known.zip  && unzip known.zip -d /usr/src/known/  && rm known.zip*
# Tue, 19 Dec 2017 22:49:59 GMT
COPY file:6d2bbeccad440fd875b308488484f3081838a6ed7c7f5ec2ad4488f753cd87e0 in /entrypoint.sh 
# Tue, 19 Dec 2017 22:49:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Dec 2017 22:49:59 GMT
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
	-	`sha256:4330d62fa9e0e115103c33903ce48ec4a996fbbc967d707908cca0a721695202`  
		Last Modified: Tue, 19 Dec 2017 21:57:20 GMT  
		Size: 81.9 MB (81876656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457292eacdcc16e211a85cefa9639a958bf302d7ed9a1e7f346f4bce2723e861`  
		Last Modified: Tue, 19 Dec 2017 21:56:57 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3df6976e78544ee6926c4a713ee1f93c5d579ca8c23d2f84f08be3cc6d0d917`  
		Last Modified: Tue, 19 Dec 2017 22:08:00 GMT  
		Size: 12.8 MB (12800900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7117e8781403ac153a4849f8bb2ef4ba70fcee31225a99055c2c8f051d4135f0`  
		Last Modified: Tue, 19 Dec 2017 22:07:55 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c46172e2d5bcf6a0ef10338a1939ef7a6ab4227af6dbb72330694b3caae877`  
		Last Modified: Tue, 19 Dec 2017 22:07:58 GMT  
		Size: 9.2 MB (9209508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4c6341238e16e8a90dcc25ea63c63bbd248103cf3f6804cffbf16066c7921c`  
		Last Modified: Tue, 19 Dec 2017 22:07:55 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0985e46fa23ac8e195abfd6bf1ac1ea367cb80562cd4e72946a135b217d1069`  
		Last Modified: Tue, 19 Dec 2017 22:07:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92828b8d5a03a7879d78421cc38b701e6aca219b6197bdf85812355f887d3869`  
		Last Modified: Tue, 19 Dec 2017 22:07:55 GMT  
		Size: 7.6 KB (7617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb3e9e073146c116116724ca4147e1ffebbc2a40e8194925d64b7b48cbf87cd`  
		Last Modified: Tue, 19 Dec 2017 22:50:32 GMT  
		Size: 47.2 MB (47224077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67203aead12e6f2250019e608f26f02ea91e671c5145961280df3494d660b455`  
		Last Modified: Tue, 19 Dec 2017 22:50:23 GMT  
		Size: 6.8 KB (6795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f796acdb09c8ff0be073bc6c82f95a01391a32768ce64304c3e62a61dbb1b2`  
		Last Modified: Tue, 19 Dec 2017 22:50:20 GMT  
		Size: 1.7 MB (1700132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1de8aa412c524accb04198bb4639d60931bdad9a37ed1e32be22bee204f0d6`  
		Last Modified: Tue, 19 Dec 2017 22:50:19 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3467294cb9b8c0c727d6778d14ea1d477200029aa6f169f01416d9f45f24989f`  
		Last Modified: Tue, 19 Dec 2017 22:50:20 GMT  
		Size: 365.1 KB (365104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50282b5dc392e77a6a946a02fa79e8a97cf3dbae41e3f957b9bf0799422b35b0`  
		Last Modified: Tue, 19 Dec 2017 22:50:23 GMT  
		Size: 20.9 MB (20867380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7865ce3a3ba1a03755658de8e84143e6ff2cdd04938ce11215a7b9aeaa082342`  
		Last Modified: Tue, 19 Dec 2017 22:50:19 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
