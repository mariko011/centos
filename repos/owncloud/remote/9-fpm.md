## `owncloud:9-fpm`

```console
$ docker pull owncloud@sha256:407e43ec1badeb04d5bd15a8a6e05c393671470ab8a9d105eaaca7d18a4079c8
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

### `owncloud:9-fpm` - linux; amd64

```console
$ docker pull owncloud@sha256:82d4037a0a5a672253f9a1803079301888a4f6a785d7e7329a5d54b0367184cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229494635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cc0f814b8a1e2cc4e06c1a4df59e8ee6b1ce051be3dd447f2f476449fb5db7b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Fri, 01 Dec 2017 01:42:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 01 Dec 2017 01:43:15 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 01 Dec 2017 01:43:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 01:43:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 01:52:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 01 Dec 2017 01:52:05 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 01:52:05 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 01:52:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 02:30:03 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 01 Dec 2017 02:30:03 GMT
ENV PHP_VERSION=7.0.26
# Fri, 01 Dec 2017 02:30:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 02:30:03 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Fri, 01 Dec 2017 02:30:18 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Dec 2017 02:30:19 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 02:34:24 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 02:34:25 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Fri, 01 Dec 2017 02:34:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 02:34:25 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 02:34:26 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 01 Dec 2017 02:34:26 GMT
EXPOSE 9000/tcp
# Fri, 01 Dec 2017 02:34:26 GMT
CMD ["php-fpm"]
# Fri, 01 Dec 2017 04:56:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng12-dev 		libpq-dev 		libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Dec 2017 04:58:41 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install exif gd intl ldap mbstring mcrypt opcache pdo pdo_mysql pdo_pgsql pgsql zip
# Fri, 01 Dec 2017 04:59:16 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 01 Dec 2017 04:59:51 GMT
RUN set -ex 	&& pecl install APCu-5.1.8 	&& pecl install memcached-3.0.3 	&& pecl install redis-3.1.2 	&& docker-php-ext-enable apcu memcached redis
# Fri, 01 Dec 2017 05:05:50 GMT
ENV OWNCLOUD_VERSION=9.1.6
# Fri, 01 Dec 2017 05:05:50 GMT
VOLUME [/var/www/html]
# Fri, 01 Dec 2017 05:06:03 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Fri, 01 Dec 2017 05:06:05 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Fri, 01 Dec 2017 05:06:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 01 Dec 2017 05:06:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 05:06:06 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c266283065ed384496a48d17b330b2fe844c74558ded1397d54b3ad1ecf61699`  
		Last Modified: Fri, 01 Dec 2017 03:22:49 GMT  
		Size: 81.9 MB (81852025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec99b99d75b15e7271800232999805dbbd2b22b461813e170fd6c625a494eabc`  
		Last Modified: Fri, 01 Dec 2017 03:22:30 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ebad121aa64a68239b5ca7123e2d56baa43a4262307503eec77252dac2a29f`  
		Last Modified: Fri, 01 Dec 2017 03:29:45 GMT  
		Size: 12.3 MB (12303258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee3b47999a08c76a3a421bc5ee2822f71d582a67de4159425f5c559488ee197`  
		Last Modified: Fri, 01 Dec 2017 03:29:42 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4410e28fefff290506e1853c14f64c51134eab03e73161d9cd16cadf77228a57`  
		Last Modified: Fri, 01 Dec 2017 03:29:45 GMT  
		Size: 13.4 MB (13398913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a94b5954dafbc5980f57f2a46d170fbc81c76ffca7e0dbab2223ebc8a1f4e01`  
		Last Modified: Fri, 01 Dec 2017 03:29:42 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e067777e0b9f72e034ee585a6f316257ee869aece724b1eacf22c135cc5a795`  
		Last Modified: Fri, 01 Dec 2017 03:29:42 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bee50bb11febba9b8ce4bc6961a5ab75c6cdc9870c88a17dd93c987627f8ae0`  
		Last Modified: Fri, 01 Dec 2017 03:29:42 GMT  
		Size: 7.7 KB (7676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524e59f015825c90d3b8aa0187fc5ad2483f8aa3d6a77b2fa01c68241ca3f18c`  
		Last Modified: Fri, 01 Dec 2017 05:10:09 GMT  
		Size: 34.3 MB (34321608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdbd3370422fe2ea37df849a284531aa988ca495031e3563125351cfd82b6b9a`  
		Last Modified: Fri, 01 Dec 2017 05:09:57 GMT  
		Size: 1.8 MB (1814448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39923fbd171687e9db607a608868555ca66eb8df473fd5344293411c05412737`  
		Last Modified: Fri, 01 Dec 2017 05:09:56 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af01402bdd01d9bb4cebad9e6a5eb2529bfbe363db5fdf6839c1afdf024eb3a`  
		Last Modified: Fri, 01 Dec 2017 05:09:57 GMT  
		Size: 1.3 MB (1328051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09578c9a18eaaa40619282a9b4e5584b28cd26c7d3438bd796c6a5d8d332d838`  
		Last Modified: Fri, 01 Dec 2017 05:12:19 GMT  
		Size: 31.9 MB (31869737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0fd6bbe9acf0cd5a39eb3ac1edf30ff44ae466625b8a1f80602c9b119bdbcec`  
		Last Modified: Fri, 01 Dec 2017 05:12:06 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c18b43f5b700bfb7af03b22b34639721368853b3e978d7ee40e284c5a91080`  
		Last Modified: Fri, 01 Dec 2017 05:12:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:9-fpm` - linux; arm variant v5

```console
$ docker pull owncloud@sha256:d1eac918f3852ceb65b16b004402815c600e4a257a93ad1c9670235747b309e9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.0 MB (210038311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07cadeaa646c3512b488363ba8390f7ccb514e9f2694fdef88ec1a0ae0d6c54e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:44:50 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Mon, 09 Oct 2017 22:45:58 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:45:58 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 09 Oct 2017 22:46:00 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 09 Oct 2017 22:55:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Mon, 09 Oct 2017 22:55:05 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 09 Oct 2017 22:55:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 09 Oct 2017 22:55:06 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Mon, 09 Oct 2017 23:13:07 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Nov 2017 15:03:06 GMT
ENV PHP_VERSION=7.0.26
# Tue, 28 Nov 2017 15:03:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Tue, 28 Nov 2017 15:03:07 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Tue, 28 Nov 2017 15:03:46 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 28 Nov 2017 15:03:46 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Nov 2017 15:07:05 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 28 Nov 2017 15:07:06 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 28 Nov 2017 15:07:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Nov 2017 15:07:07 GMT
WORKDIR /var/www/html
# Tue, 28 Nov 2017 15:07:08 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Nov 2017 15:07:08 GMT
EXPOSE 9000/tcp
# Tue, 28 Nov 2017 15:07:08 GMT
CMD ["php-fpm"]
# Tue, 28 Nov 2017 15:42:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng12-dev 		libpq-dev 		libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Nov 2017 15:47:00 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install exif gd intl ldap mbstring mcrypt opcache pdo pdo_mysql pdo_pgsql pgsql zip
# Tue, 28 Nov 2017 15:47:01 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 28 Nov 2017 15:47:54 GMT
RUN set -ex 	&& pecl install APCu-5.1.8 	&& pecl install memcached-3.0.3 	&& pecl install redis-3.1.2 	&& docker-php-ext-enable apcu memcached redis
# Tue, 28 Nov 2017 15:49:01 GMT
ENV OWNCLOUD_VERSION=9.1.6
# Tue, 28 Nov 2017 15:49:01 GMT
VOLUME [/var/www/html]
# Tue, 28 Nov 2017 15:49:17 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Tue, 28 Nov 2017 15:49:18 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Tue, 28 Nov 2017 15:49:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 28 Nov 2017 15:49:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Nov 2017 15:49:19 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad1ba133bf708efd9b75cf971201a4ed647286864942a66d5c9d86b126f9b92`  
		Last Modified: Mon, 09 Oct 2017 23:39:58 GMT  
		Size: 63.5 MB (63526955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa24f60e9c2ee1e5256863f0b528469123443a094ca2c8a19dfe9890a89b664a`  
		Last Modified: Mon, 09 Oct 2017 23:39:37 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9c1d91f1bd94af35a7e29496b50f899c532946551e5a685ab56978ae0ca43e`  
		Last Modified: Tue, 28 Nov 2017 15:18:46 GMT  
		Size: 12.3 MB (12302164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7274f6153395d266ce609b87d80aab0cbbcad1a19be05956486054979ae29c`  
		Last Modified: Tue, 28 Nov 2017 15:18:42 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b747e0d1881054607b471ec97c7381762b37318fbd96d782f60d085d5fa4244a`  
		Last Modified: Tue, 28 Nov 2017 15:18:48 GMT  
		Size: 14.1 MB (14079461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4f05d32ca3c2ead4a7ae94885176a37b4aba6346b927dcec01fc1ec3911ac9`  
		Last Modified: Tue, 28 Nov 2017 15:18:42 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ad239c990e73d9e439ac0919dbb5ad2febc4a2cfb1ab713ed62b9e02649c6f`  
		Last Modified: Tue, 28 Nov 2017 15:18:43 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3515754413b49c0678374bf5dc2ec4e2b845b34a94f76f65fb4e1be436736b`  
		Last Modified: Tue, 28 Nov 2017 15:18:42 GMT  
		Size: 7.7 KB (7677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d625ff0b09dc4834c97dd9f510413e04c78e19e95ed58f162ce657db483828d6`  
		Last Modified: Tue, 28 Nov 2017 15:52:29 GMT  
		Size: 34.2 MB (34242517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8982928481f99d3c07c34d1882920c508546bfc454fa929c5cc0e1d9c20e8f`  
		Last Modified: Tue, 28 Nov 2017 15:52:18 GMT  
		Size: 1.7 MB (1745140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca5ca040556ed69d8c3edc0616f9bd67ded20eec7f829e72a69911b52f8d1c0`  
		Last Modified: Tue, 28 Nov 2017 15:52:17 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e91764d78efc3245aa123f67833703f31d456e53ba0a1ae66ceefce68a68af`  
		Last Modified: Tue, 28 Nov 2017 15:52:17 GMT  
		Size: 1.4 MB (1381126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095f0b2bcdc4739490ce2bbaddabe310481f2b53b7cc1429eee1648b0683f517`  
		Last Modified: Tue, 28 Nov 2017 15:54:39 GMT  
		Size: 31.9 MB (31869514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a4ee7a135a22f19c48bfac2ff22a555e251aab87d7533c76d2381b9759a1b4`  
		Last Modified: Tue, 28 Nov 2017 15:54:27 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e80674c888bbb7218ad2004130890e57e6e6c9f1beb4b30e5e1b689898a2e56`  
		Last Modified: Tue, 28 Nov 2017 15:54:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:9-fpm` - linux; arm variant v7

```console
$ docker pull owncloud@sha256:9d274dc56c688ce4ab48123b61dbfec6125fda1476577ff1067e2d503b31ae08
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.7 MB (205680370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fbb6055ca31a3979e870706c5a44594264a47ab214421be9c52c5cc2e19d7dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:08:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Mon, 09 Oct 2017 23:10:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:10:03 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 09 Oct 2017 23:10:04 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 09 Oct 2017 23:19:26 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Mon, 09 Oct 2017 23:19:26 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 09 Oct 2017 23:19:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 09 Oct 2017 23:19:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Mon, 09 Oct 2017 23:36:21 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Nov 2017 13:13:03 GMT
ENV PHP_VERSION=7.0.26
# Tue, 28 Nov 2017 13:13:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Tue, 28 Nov 2017 13:13:04 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Tue, 28 Nov 2017 13:13:42 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 28 Nov 2017 13:13:43 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Nov 2017 13:16:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 28 Nov 2017 13:16:49 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 28 Nov 2017 13:16:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Nov 2017 13:16:50 GMT
WORKDIR /var/www/html
# Tue, 28 Nov 2017 13:16:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Nov 2017 13:16:51 GMT
EXPOSE 9000/tcp
# Tue, 28 Nov 2017 13:16:51 GMT
CMD ["php-fpm"]
# Tue, 28 Nov 2017 13:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng12-dev 		libpq-dev 		libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Nov 2017 14:01:48 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install exif gd intl ldap mbstring mcrypt opcache pdo pdo_mysql pdo_pgsql pgsql zip
# Tue, 28 Nov 2017 14:01:55 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 28 Nov 2017 14:02:50 GMT
RUN set -ex 	&& pecl install APCu-5.1.8 	&& pecl install memcached-3.0.3 	&& pecl install redis-3.1.2 	&& docker-php-ext-enable apcu memcached redis
# Tue, 28 Nov 2017 14:04:17 GMT
ENV OWNCLOUD_VERSION=9.1.6
# Tue, 28 Nov 2017 14:04:17 GMT
VOLUME [/var/www/html]
# Tue, 28 Nov 2017 14:06:05 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Tue, 28 Nov 2017 14:06:12 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Tue, 28 Nov 2017 14:06:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 28 Nov 2017 14:06:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Nov 2017 14:06:21 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be530d54777d3b6901a69cebe98eb5b0bde4c6c3d6ab1447b9c76a1b7c86069d`  
		Last Modified: Tue, 10 Oct 2017 00:03:17 GMT  
		Size: 63.8 MB (63794787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4780c6a3912aa6ac660ed0fc0c12bba611f9ef448dfa9a5ba381e9f64e6c5e9`  
		Last Modified: Tue, 10 Oct 2017 00:02:59 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fef737e3db5f33deebc8256d4dbeae76392b40e604c0c65a99245d07145fefa`  
		Last Modified: Tue, 28 Nov 2017 13:30:54 GMT  
		Size: 12.3 MB (12302135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c14e09253dfe8e47e7f1e1f0ade71da27a6fb1398b8893a177d6ee50a6d19f`  
		Last Modified: Tue, 28 Nov 2017 13:30:50 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670e62106754609973ac8b3aeb3c365e5e2b4f6f8a79b4d3a111eecc204486a5`  
		Last Modified: Tue, 28 Nov 2017 13:30:55 GMT  
		Size: 13.3 MB (13309997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1129ddb16a4be5aa42f3058329490d8cd203d2b3cd0bbf614abd5d77403f0f60`  
		Last Modified: Tue, 28 Nov 2017 13:30:50 GMT  
		Size: 2.2 KB (2177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29b3220f31e6781741981d9179eb20e7fb9916311723735f0257eae4e83eecd`  
		Last Modified: Tue, 28 Nov 2017 13:30:51 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a34e54bb19b277a0b67d2feb1885b492b6c466f47c68c8b09319fdbfa352b0d`  
		Last Modified: Tue, 28 Nov 2017 13:30:50 GMT  
		Size: 7.7 KB (7680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc0a77af894d8659b224c4f67e9de5dd7c82d645f87477710b2a86ee7ac3322`  
		Last Modified: Tue, 28 Nov 2017 14:12:49 GMT  
		Size: 32.7 MB (32655451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83ca4ec695cfba94a496ce3d3765ca10e40949682cd08ca0eca1803a34db21e`  
		Last Modified: Tue, 28 Nov 2017 14:12:38 GMT  
		Size: 1.7 MB (1677545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9db28039a2c0056b180bb467881343b8837b280351368dc4038a10a4581ffd`  
		Last Modified: Tue, 28 Nov 2017 14:12:38 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a63786a26bbbfdcd336789e030bcca695421667ad8c02633d93e9083a0f33a1`  
		Last Modified: Tue, 28 Nov 2017 14:12:39 GMT  
		Size: 1.4 MB (1373089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b86ccd78a4a794289cd0c701c9d89ffee0f74dec4fed0b1bbae6ecc3b2085b2`  
		Last Modified: Tue, 28 Nov 2017 14:15:51 GMT  
		Size: 31.9 MB (31869511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551055e312509ee96554d3f93a23e10f90ac8891f9ddcde9742b7598d4f81e21`  
		Last Modified: Tue, 28 Nov 2017 14:15:39 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9353e201a072863d0512147c9f9edde1a57e45bec3ad22c49b3ae9ff73afaaf2`  
		Last Modified: Tue, 28 Nov 2017 14:15:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:9-fpm` - linux; arm64 variant v8

```console
$ docker pull owncloud@sha256:bf6d777441d8b6b5172be7cc4d9998d4b44598d345d8cb6a41e611384aa35932
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.7 MB (207733835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0df9dd478f8ad1651664d7625bdf32d6540f6b690ad4d790eec9370a8314622d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Fri, 01 Dec 2017 03:46:11 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 01 Dec 2017 03:47:40 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 01 Dec 2017 03:47:41 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 03:47:43 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 04:02:51 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 01 Dec 2017 04:02:51 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 04:02:52 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 04:02:53 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 04:33:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 01 Dec 2017 04:33:50 GMT
ENV PHP_VERSION=7.0.26
# Fri, 01 Dec 2017 04:33:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 04:33:52 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Fri, 01 Dec 2017 04:34:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Dec 2017 04:34:27 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 04:41:15 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 04:41:16 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Fri, 01 Dec 2017 04:41:17 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 04:41:17 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 04:41:19 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 01 Dec 2017 04:41:20 GMT
EXPOSE 9000/tcp
# Fri, 01 Dec 2017 04:41:20 GMT
CMD ["php-fpm"]
# Fri, 01 Dec 2017 06:56:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng12-dev 		libpq-dev 		libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Dec 2017 07:01:56 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install exif gd intl ldap mbstring mcrypt opcache pdo pdo_mysql pdo_pgsql pgsql zip
# Fri, 01 Dec 2017 07:01:57 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 01 Dec 2017 07:03:22 GMT
RUN set -ex 	&& pecl install APCu-5.1.8 	&& pecl install memcached-3.0.3 	&& pecl install redis-3.1.2 	&& docker-php-ext-enable apcu memcached redis
# Fri, 01 Dec 2017 07:04:57 GMT
ENV OWNCLOUD_VERSION=9.1.6
# Fri, 01 Dec 2017 07:04:58 GMT
VOLUME [/var/www/html]
# Fri, 01 Dec 2017 07:05:19 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Fri, 01 Dec 2017 07:05:21 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Fri, 01 Dec 2017 07:05:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 01 Dec 2017 07:05:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 07:05:24 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15549262adfe5dc78f0081f04cadbd5a304611bd5ad5b51d511d052a886b89b7`  
		Last Modified: Fri, 01 Dec 2017 05:33:32 GMT  
		Size: 64.0 MB (64003216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7232e190700610c3a83624b4e6e98c34f21e63af443674f5c424f0b2fa2efe45`  
		Last Modified: Fri, 01 Dec 2017 05:33:10 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbaeec6530a0973bcc649f80646c5c506e37ddf187affa96aa073845fd36c3be`  
		Last Modified: Fri, 01 Dec 2017 05:43:07 GMT  
		Size: 12.3 MB (12301316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1888247f6c7b08bad67d1fe87826644b32d884b97e59ff80df04c8c5a841ffde`  
		Last Modified: Fri, 01 Dec 2017 05:43:04 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac0013c0274c0e50c5f0212fff8a52956af0e55125579da0e792e920e99c44b`  
		Last Modified: Fri, 01 Dec 2017 05:43:09 GMT  
		Size: 12.5 MB (12513134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05aca72f071ec5bf1446d6d75fdd402894a79a629002d38345b39e6428d9235d`  
		Last Modified: Fri, 01 Dec 2017 05:43:04 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c490d17b525373d01c4e987527ff66b7dc1e36e9bb5af052872364b847ddc5f`  
		Last Modified: Fri, 01 Dec 2017 05:43:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11114058624abc34234c5d8c5df5585c1befcce6533e79e9d919d2cedf971968`  
		Last Modified: Fri, 01 Dec 2017 05:43:05 GMT  
		Size: 7.7 KB (7679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc38524e27ae7b8f38702a6e279d5ca56a35fea887a5e9af055f1632d7e0162`  
		Last Modified: Fri, 01 Dec 2017 07:11:35 GMT  
		Size: 34.0 MB (33987927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9407b5251c1d67c88090520552e7c5042225d1f88ca09cf12fa82d701ff6236b`  
		Last Modified: Fri, 01 Dec 2017 07:11:17 GMT  
		Size: 1.7 MB (1715912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab44ccafb8d9ed29c0149689f4ed0bcc5e1aa80cc7a52b0144c8f854e4cef52`  
		Last Modified: Fri, 01 Dec 2017 07:11:17 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968168d59b1c1168a09eac0f9a4bfaf72987a25c3e389979a9cebf6257c57a70`  
		Last Modified: Fri, 01 Dec 2017 07:11:17 GMT  
		Size: 1.4 MB (1401795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb55149a5100ac9f3a5be659d0df5df0383870f7ad4951e2d0bcfb6a5b9b8159`  
		Last Modified: Fri, 01 Dec 2017 07:15:43 GMT  
		Size: 31.9 MB (31869749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d442eb62134e2eb47bb80b337cdb2326949f449553d2c4807d6f0066ff4b13`  
		Last Modified: Fri, 01 Dec 2017 07:15:30 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4c365de070ee190c6226ebdc71749c9b7ddd413c13fee3f43736ad71790291`  
		Last Modified: Fri, 01 Dec 2017 07:15:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:9-fpm` - linux; 386

```console
$ docker pull owncloud@sha256:36592c8e117663e78577109c16d5473427479ce2c279c0fcf2606c6484ee2b3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.0 MB (235968478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2103fd98e9d0f8e066dae3693c92a89eec540ed18d3203b63c6cb611e5baa210`
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
# Tue, 10 Oct 2017 01:34:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Nov 2017 10:51:18 GMT
ENV PHP_VERSION=7.0.26
# Tue, 28 Nov 2017 10:51:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Tue, 28 Nov 2017 10:51:19 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Tue, 28 Nov 2017 10:51:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 28 Nov 2017 10:51:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Nov 2017 10:57:01 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 28 Nov 2017 10:57:02 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 28 Nov 2017 10:57:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Nov 2017 10:57:02 GMT
WORKDIR /var/www/html
# Tue, 28 Nov 2017 10:57:03 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Nov 2017 10:57:03 GMT
EXPOSE 9000/tcp
# Tue, 28 Nov 2017 10:57:04 GMT
CMD ["php-fpm"]
# Tue, 28 Nov 2017 13:13:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng12-dev 		libpq-dev 		libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Nov 2017 13:16:02 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install exif gd intl ldap mbstring mcrypt opcache pdo pdo_mysql pdo_pgsql pgsql zip
# Tue, 28 Nov 2017 13:20:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 28 Nov 2017 13:21:29 GMT
RUN set -ex 	&& pecl install APCu-5.1.8 	&& pecl install memcached-3.0.3 	&& pecl install redis-3.1.2 	&& docker-php-ext-enable apcu memcached redis
# Tue, 28 Nov 2017 13:34:01 GMT
ENV OWNCLOUD_VERSION=9.1.6
# Tue, 28 Nov 2017 13:34:01 GMT
VOLUME [/var/www/html]
# Tue, 28 Nov 2017 13:35:53 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Tue, 28 Nov 2017 13:39:35 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Tue, 28 Nov 2017 13:39:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 28 Nov 2017 13:39:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Nov 2017 13:39:36 GMT
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
	-	`sha256:5325523b3f4809f5ce69b150a8479f9b07fb0c69f6465997e0ffecc7a8bbae22`  
		Last Modified: Tue, 28 Nov 2017 11:27:20 GMT  
		Size: 12.3 MB (12303324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd037cb0d3000a1cdd3fed5ee66e9ef6bd71e9cf34f51efaafacfeb85abdd95`  
		Last Modified: Tue, 28 Nov 2017 11:27:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58119723bff5de39118395562b9d9e1218094ee07c383f3c5a76a36e9664ea30`  
		Last Modified: Tue, 28 Nov 2017 11:27:24 GMT  
		Size: 17.4 MB (17433770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a76f337ae9ee3b4e5ef292e5ccc3024a7bf66ef0685edc23a07d6317723a46`  
		Last Modified: Tue, 28 Nov 2017 11:27:19 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1e5735b2a86078f2ac562606004d1742af528c8ba783cc95eb451a8850d4e0`  
		Last Modified: Tue, 28 Nov 2017 11:27:18 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a63a65431db4231e779b2c687113c4632cf2d2e038bc168edc0c7edd68edee`  
		Last Modified: Tue, 28 Nov 2017 11:27:19 GMT  
		Size: 7.7 KB (7678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0365c8039b8323499e4d08996cf5e097901c83e82831d3c7d15edaff24113e`  
		Last Modified: Tue, 28 Nov 2017 13:51:39 GMT  
		Size: 34.6 MB (34568534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b641705bf5fa0a55fa6cff4323d45b3faa2d96c3c33b3652ac8fac9cd9167d`  
		Last Modified: Tue, 28 Nov 2017 13:51:27 GMT  
		Size: 1.8 MB (1837805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce46434e7f9ced33738e47f9bce22b44c2c7bbfb4221d69eaa66ce0cc5290e2e`  
		Last Modified: Tue, 28 Nov 2017 13:51:25 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9b8b4713ed82b4b9ecc0bc6aa279a7078df8399036cf90ad914a56ba2052ff`  
		Last Modified: Tue, 28 Nov 2017 13:51:26 GMT  
		Size: 1.3 MB (1283103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818122bc3c2531a436f2265e058de4371204be3a55cd8c55b509c990309da850`  
		Last Modified: Tue, 28 Nov 2017 14:01:02 GMT  
		Size: 31.9 MB (31869737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d3816cec1e7e5c93eeb255080d878df85eab8217237ea449a2f8c9b4568427`  
		Last Modified: Tue, 28 Nov 2017 14:00:36 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103fdcd917a31404e66162109d88b952e6415fec971e5f409d8940b3580b8533`  
		Last Modified: Tue, 28 Nov 2017 14:00:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:9-fpm` - linux; ppc64le

```console
$ docker pull owncloud@sha256:3f6819b2f627fe07ea3adc32f8070ff1db2aacb187492cdbd4b04f8e61f4450b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.7 MB (218705955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:969ca5b7463b99665311d3c70e2c035096ce0688aadd73e3e9bde86e19f77f1a`
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
# Tue, 10 Oct 2017 05:55:07 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Nov 2017 10:20:01 GMT
ENV PHP_VERSION=7.0.26
# Tue, 28 Nov 2017 10:20:02 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Tue, 28 Nov 2017 10:20:03 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Tue, 28 Nov 2017 10:20:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 28 Nov 2017 10:20:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Nov 2017 10:23:55 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 28 Nov 2017 10:23:57 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 28 Nov 2017 10:23:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Nov 2017 10:23:59 GMT
WORKDIR /var/www/html
# Tue, 28 Nov 2017 10:24:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Nov 2017 10:24:02 GMT
EXPOSE 9000/tcp
# Tue, 28 Nov 2017 10:24:03 GMT
CMD ["php-fpm"]
# Tue, 28 Nov 2017 11:00:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng12-dev 		libpq-dev 		libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Nov 2017 11:03:49 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install exif gd intl ldap mbstring mcrypt opcache pdo pdo_mysql pdo_pgsql pgsql zip
# Tue, 28 Nov 2017 11:03:51 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 28 Nov 2017 11:04:35 GMT
RUN set -ex 	&& pecl install APCu-5.1.8 	&& pecl install memcached-3.0.3 	&& pecl install redis-3.1.2 	&& docker-php-ext-enable apcu memcached redis
# Tue, 28 Nov 2017 11:07:56 GMT
ENV OWNCLOUD_VERSION=9.1.6
# Tue, 28 Nov 2017 11:07:57 GMT
VOLUME [/var/www/html]
# Tue, 28 Nov 2017 11:08:24 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Tue, 28 Nov 2017 11:08:26 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Tue, 28 Nov 2017 11:08:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 28 Nov 2017 11:08:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Nov 2017 11:08:36 GMT
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
	-	`sha256:cd7ce22bcd6201aa7e00125684045d719fe925da084579402898013666ef7ca5`  
		Last Modified: Tue, 28 Nov 2017 10:34:09 GMT  
		Size: 12.3 MB (12302622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34822795b2609c5c6767fcf45ad1497ab123dea4243bbfa6d5e641d80da7d23b`  
		Last Modified: Tue, 28 Nov 2017 10:34:05 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b95ada402abfc9471a27f281288d779c29ef2841a1149d477a18aadf98bbaa`  
		Last Modified: Tue, 28 Nov 2017 10:34:09 GMT  
		Size: 14.7 MB (14731792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43352f8db398672a21df8bad0d60f60a1397d32b41a88d6d57ec733d1441099`  
		Last Modified: Tue, 28 Nov 2017 10:34:05 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b62e2ab504b479522fd8dde311b8d40b6dcf09e80353baf93380e0e8bc6115`  
		Last Modified: Tue, 28 Nov 2017 10:34:05 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05effeb0e44bd1c9e4ca82fc579057a3bd6e671d93d9f576edc4ead498aaf09`  
		Last Modified: Tue, 28 Nov 2017 10:34:05 GMT  
		Size: 7.7 KB (7680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cacf3e3be67523d12688668b3a687505d1fd720ff1890e08203991f58340bb`  
		Last Modified: Tue, 28 Nov 2017 11:13:45 GMT  
		Size: 34.8 MB (34762944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c916b51e4fdbf357b8d97a688b890c924584988a26ebb2fabdac57023719bf`  
		Last Modified: Tue, 28 Nov 2017 11:13:32 GMT  
		Size: 1.8 MB (1814699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8452aee3cee7088556caaa2621b55adc7f7a7069e67bedbda1820a18a03bd0fd`  
		Last Modified: Tue, 28 Nov 2017 11:13:31 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50669debf80908cd1bba088d4798523977cad1a8c1b67198609b43f63add6cdd`  
		Last Modified: Tue, 28 Nov 2017 11:13:32 GMT  
		Size: 1.4 MB (1423315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea556e12612397923f7a7ef3ae9a73f73e9cb32eb02a742cc764f1dbedc44c9`  
		Last Modified: Tue, 28 Nov 2017 11:15:19 GMT  
		Size: 31.9 MB (31869512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1783a3550e96853189a210383e77518c3b632c7bbf67d426e898bfd177b1a0`  
		Last Modified: Tue, 28 Nov 2017 11:15:05 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722859bdb5a3edc5ab0b1d0c95ac8aaaa49a584855bda1f425dfcdcdd5a32a37`  
		Last Modified: Tue, 28 Nov 2017 11:15:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:9-fpm` - linux; s390x

```console
$ docker pull owncloud@sha256:9a52a6777571f4ed03d4df9301013f208a9f7ca932a2dc896a1de029705abc6d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214669521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:828d331fc6f66db762e059d891620d6514f2a3932ce574c20c96e05b690ac65e`
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
# Mon, 09 Oct 2017 23:16:10 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Nov 2017 18:46:25 GMT
ENV PHP_VERSION=7.0.26
# Tue, 28 Nov 2017 18:46:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.26.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.26.tar.xz.asc/from/this/mirror
# Tue, 28 Nov 2017 18:46:25 GMT
ENV PHP_SHA256=ed5cbb4bbb0ddef8985f100bba2e94002ad22a230b5da2dccfe148915df5f199 PHP_MD5=
# Tue, 28 Nov 2017 18:46:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 28 Nov 2017 18:46:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Nov 2017 18:49:12 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 28 Nov 2017 18:49:12 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 28 Nov 2017 18:49:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Nov 2017 18:49:13 GMT
WORKDIR /var/www/html
# Tue, 28 Nov 2017 18:49:13 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Nov 2017 18:49:13 GMT
EXPOSE 9000/tcp
# Tue, 28 Nov 2017 18:49:14 GMT
CMD ["php-fpm"]
# Tue, 28 Nov 2017 19:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng12-dev 		libpq-dev 		libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Nov 2017 19:28:40 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install exif gd intl ldap mbstring mcrypt opcache pdo pdo_mysql pdo_pgsql pgsql zip
# Tue, 28 Nov 2017 19:28:41 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 28 Nov 2017 19:29:06 GMT
RUN set -ex 	&& pecl install APCu-5.1.8 	&& pecl install memcached-3.0.3 	&& pecl install redis-3.1.2 	&& docker-php-ext-enable apcu memcached redis
# Tue, 28 Nov 2017 19:29:52 GMT
ENV OWNCLOUD_VERSION=9.1.6
# Tue, 28 Nov 2017 19:29:52 GMT
VOLUME [/var/www/html]
# Tue, 28 Nov 2017 19:30:03 GMT
RUN curl -fsSL -o owncloud.tar.bz2 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" 	&& curl -fsSL -o owncloud.tar.bz2.asc 		"https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26 	&& gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2 	&& rm -r "$GNUPGHOME" owncloud.tar.bz2.asc 	&& tar -xjf owncloud.tar.bz2 -C /usr/src/ 	&& rm owncloud.tar.bz2
# Tue, 28 Nov 2017 19:30:04 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Tue, 28 Nov 2017 19:30:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 28 Nov 2017 19:30:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Nov 2017 19:30:05 GMT
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
	-	`sha256:c110b0224c5de6afbdb82e6fae5813cff51e1346121a4b8b4cc9d243931d468d`  
		Last Modified: Tue, 28 Nov 2017 18:58:05 GMT  
		Size: 12.3 MB (12301631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c838ee4f5eb637556a33f4bc4efd8973095d1cdd1c72e9f9b4b847b956eee08f`  
		Last Modified: Tue, 28 Nov 2017 18:58:02 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e582f8688dc49f410d29f62ce89a4af412056ba58ece2cd26a0f9ec6a0630d`  
		Last Modified: Tue, 28 Nov 2017 18:58:06 GMT  
		Size: 15.4 MB (15430145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c745b870ffdf0ab6a06f3afe74e273c9071c7904fa46d8d1bf74a015a727a34`  
		Last Modified: Tue, 28 Nov 2017 18:58:02 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca93faf0603b88192cd37edf3fd17cce897ce6467915aa8e1461787646e3d7b4`  
		Last Modified: Tue, 28 Nov 2017 18:58:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd8b3c106e92fbb4715b9c3b96e4243f09b64ac07b8c2d786b1e0f987188c93`  
		Last Modified: Tue, 28 Nov 2017 18:58:02 GMT  
		Size: 7.7 KB (7676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a6733e8d71b7472e8f2081b08740a324ef94f876fd3749e1dffd42bdfedd2b`  
		Last Modified: Tue, 28 Nov 2017 19:32:36 GMT  
		Size: 35.0 MB (35028191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8629911256c8abf9c8758f0926990f85856d08694284d8cd1579df7130140d`  
		Last Modified: Tue, 28 Nov 2017 19:32:29 GMT  
		Size: 1.9 MB (1853133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d533a8f63d17180cc2f6f4233ee3dfcf83d32ad7c0e9d48219b894580b81eed4`  
		Last Modified: Tue, 28 Nov 2017 19:32:29 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18eaca3bb4a2f1e00d25f5161b0a83d3c56dc00c8fc96a4184cdfd9bee693722`  
		Last Modified: Tue, 28 Nov 2017 19:32:29 GMT  
		Size: 1.4 MB (1406291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f19c960a8768dd1dfe7f938f3e6a46f08737f5a8140b1401fa89ad92dc3133b`  
		Last Modified: Tue, 28 Nov 2017 19:33:50 GMT  
		Size: 31.9 MB (31869749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a02f991acb0fe5bfeb352bffd89f3f09524a1bb052e26abd6181ffaed41a8262`  
		Last Modified: Tue, 28 Nov 2017 19:33:44 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aeffd0f782ca04d52dfc12af32ae15a033b724dd8b1344a6259830774c1c123`  
		Last Modified: Tue, 28 Nov 2017 19:33:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
