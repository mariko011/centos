## `wordpress:fpm`

```console
$ docker pull wordpress@sha256:9425172ffac24a5d9751d6ffb22a7ab0a1e72f7d4c1af90638326cf550cbd7e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `wordpress:fpm` - linux; amd64

```console
$ docker pull wordpress@sha256:85ded4841e3dfd8e5f78fb3c9dd1c08802cc00d36565bb5159fa1a5bb1aade4a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.2 MB (142220373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5583e0f21c4c2958a70d8dc77667cc6870396b9035821cce51667c587320fc83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:39:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 05:39:44 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 05:39:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 05:39:45 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 05:49:04 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 12 Dec 2017 05:49:05 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 05:49:05 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 05:49:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 05:49:05 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 12 Dec 2017 05:49:05 GMT
ENV PHP_VERSION=7.2.0
# Tue, 12 Dec 2017 05:49:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 05:49:06 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Tue, 12 Dec 2017 05:49:20 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 05:49:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 05:53:56 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 13 Dec 2017 22:59:19 GMT
COPY multi:2e4df9268ce870f9ed83b38a2784f3778f2c2468c3e7ee600220221534e4e247 in /usr/local/bin/ 
# Wed, 13 Dec 2017 22:59:20 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 13 Dec 2017 22:59:20 GMT
WORKDIR /var/www/html
# Wed, 13 Dec 2017 22:59:21 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 13 Dec 2017 22:59:21 GMT
EXPOSE 9000/tcp
# Wed, 13 Dec 2017 22:59:21 GMT
CMD ["php-fpm"]
# Thu, 14 Dec 2017 01:55:52 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Thu, 14 Dec 2017 01:55:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 14 Dec 2017 01:55:53 GMT
VOLUME [/var/www/html]
# Thu, 14 Dec 2017 01:55:53 GMT
ENV WORDPRESS_VERSION=4.9.1
# Thu, 14 Dec 2017 01:55:53 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Thu, 14 Dec 2017 01:55:55 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 14 Dec 2017 01:55:55 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Thu, 14 Dec 2017 01:55:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 01:55:56 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2580aa42d1b63554a107884a25eb093e2cac76e26bd5621a86ac41a86c485be4`  
		Last Modified: Tue, 12 Dec 2017 07:10:39 GMT  
		Size: 81.8 MB (81775657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8abb84c6a33d964efa39951812f914a1fd7785e1e6bee95523008f1cd193a2`  
		Last Modified: Tue, 12 Dec 2017 07:10:18 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d52b9d1f45bbb64e7915ce15e473b4d6e4c5e9b15eb0f84d7c456c6c116d08d`  
		Last Modified: Tue, 12 Dec 2017 07:14:51 GMT  
		Size: 12.3 MB (12347317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd59e5d621b5d9e9ea3a901e8a370f796bbf4caf10c50ecaf042ad39297bacb8`  
		Last Modified: Tue, 12 Dec 2017 07:14:49 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d1c25571390fb5c0199cb80f1b1fdf17adf222deef7b88b2f3d5d084c15252`  
		Last Modified: Tue, 12 Dec 2017 07:14:52 GMT  
		Size: 14.6 MB (14620283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ce3e13552922da42c717eaa0e6df31cafceddb93bdbc1c6c68292a26d8617f`  
		Last Modified: Wed, 13 Dec 2017 23:39:18 GMT  
		Size: 2.2 KB (2186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72aa24ac344c0e6f3fb6f562ab4723ea46862f2bfbf74c3698a603cd7c70ee10`  
		Last Modified: Wed, 13 Dec 2017 23:39:19 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:361d549c43780b6fb76b86b1614fb272587c308d511c9e94b5fa25e25d229d62`  
		Last Modified: Wed, 13 Dec 2017 23:39:18 GMT  
		Size: 7.7 KB (7719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95dfae39efd4bbc7ea00480833a9db6a447a92b67f60bf2f27ab6df581104b11`  
		Last Modified: Thu, 14 Dec 2017 02:31:19 GMT  
		Size: 1.5 MB (1505833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855aec10660d1519f831e705ab5d51c64a6ede4763a691db4c5e20b4cb3bc6b2`  
		Last Modified: Thu, 14 Dec 2017 02:31:17 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a032782edc0f58c6813259bfe8fe32d7b195b31f0925248a631994d3b27d2d4`  
		Last Modified: Thu, 14 Dec 2017 02:31:20 GMT  
		Size: 9.5 MB (9471271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c06615c584725304fffe01099e2fe4a4b487b1466dd8ff99e90aa75be7bb82`  
		Last Modified: Thu, 14 Dec 2017 02:31:17 GMT  
		Size: 3.2 KB (3223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:fpm` - linux; arm variant v5

```console
$ docker pull wordpress@sha256:b96044e547271458b8ee07f19d885ce645c105ff5bf49d478ad6202dd7b076cd
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129627999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d650057f96a145c5b7bbbfc455c35bfc9aba1ca2f6eaaca2043609b8337a1cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:24:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 23:25:05 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:25:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 23:25:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 23:33:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 12 Dec 2017 23:33:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 23:33:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 23:33:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 23:33:37 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 12 Dec 2017 23:33:37 GMT
ENV PHP_VERSION=7.2.0
# Tue, 12 Dec 2017 23:33:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 23:33:38 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Tue, 12 Dec 2017 23:34:10 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 23:34:11 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 23:37:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 12 Dec 2017 23:37:34 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 12 Dec 2017 23:37:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 12 Dec 2017 23:37:35 GMT
WORKDIR /var/www/html
# Tue, 12 Dec 2017 23:37:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 12 Dec 2017 23:37:36 GMT
EXPOSE 9000/tcp
# Tue, 12 Dec 2017 23:37:36 GMT
CMD ["php-fpm"]
# Wed, 13 Dec 2017 03:48:24 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 13 Dec 2017 03:48:25 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 13 Dec 2017 03:48:25 GMT
VOLUME [/var/www/html]
# Wed, 13 Dec 2017 03:48:25 GMT
ENV WORDPRESS_VERSION=4.9.1
# Wed, 13 Dec 2017 03:48:26 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Wed, 13 Dec 2017 03:48:29 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 13 Dec 2017 03:48:30 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Wed, 13 Dec 2017 03:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 03:48:31 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf77d5ec6be7dba8e8a779deb8d34708c74de2b77c50fbee4c3b8a5faa19838`  
		Last Modified: Wed, 13 Dec 2017 00:35:23 GMT  
		Size: 71.5 MB (71490007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630d95b3fda46424c7d52fe0d1140d12603a0f8341e8376ca3c9a3cc82b19a9c`  
		Last Modified: Wed, 13 Dec 2017 00:35:01 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa92468e8212332710a08e6a77c3b59ac9ee1d9b3a8f9f3d549675a169349664`  
		Last Modified: Wed, 13 Dec 2017 00:38:59 GMT  
		Size: 12.3 MB (12344876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c28fe872714a454ee679a245f71d6f2326a35b1b00294a4273c3d2abf6810179`  
		Last Modified: Wed, 13 Dec 2017 00:38:56 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b634f1526f49c448838ee46de3f246cf9f9a1f392165970b04cdab33aa3e99e`  
		Last Modified: Wed, 13 Dec 2017 00:39:01 GMT  
		Size: 13.7 MB (13723346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16e4df2770e15faa74ac98293985f1645ef5dea7ceb956f92ca68c26279700d`  
		Last Modified: Wed, 13 Dec 2017 00:38:56 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484726f3463dcc93cd86d2259d81b8f273b21f08727da7a80ccf3e853fcab82b`  
		Last Modified: Wed, 13 Dec 2017 00:38:56 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32efe6b91cf61b85d5ae1e7ccb1f6ddc90e79a81a964794e2fb2f964d8b1c9ad`  
		Last Modified: Wed, 13 Dec 2017 00:38:57 GMT  
		Size: 7.7 KB (7713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c173446562a1486d623ee804cbae3745e76409a8a626d8f8d86ee57d3e2820c`  
		Last Modified: Wed, 13 Dec 2017 04:00:17 GMT  
		Size: 1.4 MB (1423532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68dbd12cd94be9d29ac9893a61785a62bcf88e9adda93dba247f84782a85f8b0`  
		Last Modified: Wed, 13 Dec 2017 04:00:16 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e07868a59f4222ca67ee07a66b417169d583c4eecc5d9e9a24bec7da474b96`  
		Last Modified: Wed, 13 Dec 2017 04:00:19 GMT  
		Size: 9.5 MB (9471275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138076836e28453e5378cc6cc9b32668db861ff3ba08f061a090cc968ff55adb`  
		Last Modified: Wed, 13 Dec 2017 04:00:16 GMT  
		Size: 3.2 KB (3222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:fpm` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:140c42525d28f98ec7f1d4dedc845fef7e15b336252780a9323599a2ed5e6c16
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.6 MB (122610707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7b898548aac163461c83fbe06070a3ff7401ea93fac66beebe90e4581204b9c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 15:03:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 15:03:50 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:03:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 15:03:52 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 15:11:38 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 12 Dec 2017 15:11:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 15:11:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 15:11:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 15:11:39 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 12 Dec 2017 15:11:40 GMT
ENV PHP_VERSION=7.2.0
# Tue, 12 Dec 2017 15:11:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 15:11:40 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Tue, 12 Dec 2017 15:11:52 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 15:11:52 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 15:14:52 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 14 Dec 2017 12:49:30 GMT
COPY multi:2e4df9268ce870f9ed83b38a2784f3778f2c2468c3e7ee600220221534e4e247 in /usr/local/bin/ 
# Thu, 14 Dec 2017 12:49:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 14 Dec 2017 12:49:31 GMT
WORKDIR /var/www/html
# Thu, 14 Dec 2017 12:49:32 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 14 Dec 2017 12:49:32 GMT
EXPOSE 9000/tcp
# Thu, 14 Dec 2017 12:49:32 GMT
CMD ["php-fpm"]
# Thu, 14 Dec 2017 13:51:29 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Thu, 14 Dec 2017 13:51:35 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 14 Dec 2017 13:51:35 GMT
VOLUME [/var/www/html]
# Thu, 14 Dec 2017 13:51:35 GMT
ENV WORDPRESS_VERSION=4.9.1
# Thu, 14 Dec 2017 13:51:36 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Thu, 14 Dec 2017 13:51:40 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 14 Dec 2017 13:51:40 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Thu, 14 Dec 2017 13:51:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 13:51:41 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ec78f2047564e610564c20cca47a364b72135f2ceec7e6f0c196b76186bc1c`  
		Last Modified: Tue, 12 Dec 2017 16:12:37 GMT  
		Size: 67.3 MB (67310137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc1935d15cd28eb3748735b1c13580004124f486e1e8aa2f31a23e6d4746960d`  
		Last Modified: Tue, 12 Dec 2017 16:12:16 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192588a52252661dbefa3ff661349189a03d9d62c700e0f963f5c65e905e7976`  
		Last Modified: Tue, 12 Dec 2017 16:17:21 GMT  
		Size: 12.3 MB (12344868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1c507937d74dfa8c7b215803aabed2c813908455d9773bd9a5a5dc81f8ecc45`  
		Last Modified: Tue, 12 Dec 2017 16:17:18 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b6215bbf24c69dbc10f874f76c6128e5bdd5d02ec0753bf6b6c68becb4afc9`  
		Last Modified: Tue, 12 Dec 2017 16:17:22 GMT  
		Size: 12.9 MB (12872835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8899dc0f2c3abdaa1e20613a43902392c9e794d7d915cf7be8314c579ead7a`  
		Last Modified: Thu, 14 Dec 2017 12:58:38 GMT  
		Size: 2.2 KB (2187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643e2e3cb58b2a4ac549d38ca2bffc8180f684dcbae8616cceb5936258fadfd9`  
		Last Modified: Thu, 14 Dec 2017 12:58:38 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c368a9331226fc57ca932ae9c3fdf8a4e71e4246ff4b87b573e8e6b6fa292bc5`  
		Last Modified: Thu, 14 Dec 2017 12:58:39 GMT  
		Size: 7.7 KB (7718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09bba7244b2f16d3cab6b15c8fae05f3512d1e08fd906bbe873bc091b16b429`  
		Last Modified: Thu, 14 Dec 2017 14:08:09 GMT  
		Size: 1.3 MB (1326210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4354565bd22b8ea5c5fdb4a163817b45d40e4f679560d83a206e44711b64844`  
		Last Modified: Thu, 14 Dec 2017 14:08:08 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024cf0c34605fef1b987527c741cf3be08a729b6196404f3aea880dc65058cf0`  
		Last Modified: Thu, 14 Dec 2017 14:08:11 GMT  
		Size: 9.5 MB (9471276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5826314773d8a086ebd33827da7c8f74fe35f4db97f9f6a747522b17f24220c5`  
		Last Modified: Thu, 14 Dec 2017 14:08:08 GMT  
		Size: 3.2 KB (3224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:fpm` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:cd71e7972db962c1c4368bef7b5d107bd9d44123b97935151bd51f5766493789
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (128966308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb0cf61900df76099765a1222b06f5d216cc42ebf3b39cb1007f18dacd09d8e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Fri, 01 Dec 2017 02:57:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 01 Dec 2017 02:58:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 01 Dec 2017 02:58:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 02:58:54 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 03:08:26 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 01 Dec 2017 03:08:26 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 03:08:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 03:08:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 03:08:28 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 01 Dec 2017 03:08:29 GMT
ENV PHP_VERSION=7.2.0
# Fri, 01 Dec 2017 03:08:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 03:08:30 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Fri, 01 Dec 2017 03:09:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Dec 2017 03:09:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 03:16:58 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 03:16:59 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Fri, 01 Dec 2017 03:17:00 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 03:17:01 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 03:17:02 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 01 Dec 2017 03:17:03 GMT
EXPOSE 9000/tcp
# Fri, 01 Dec 2017 03:17:03 GMT
CMD ["php-fpm"]
# Sat, 09 Dec 2017 21:10:23 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Sat, 09 Dec 2017 21:10:25 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 09 Dec 2017 21:10:26 GMT
VOLUME [/var/www/html]
# Sat, 09 Dec 2017 21:10:26 GMT
ENV WORDPRESS_VERSION=4.9.1
# Sat, 09 Dec 2017 21:10:27 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Sat, 09 Dec 2017 21:10:33 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 09 Dec 2017 21:10:34 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Sat, 09 Dec 2017 21:10:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 21:10:35 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3912d578b2a2749c2f3feb412600b0957f0224536731224e4b5f189948267283`  
		Last Modified: Fri, 01 Dec 2017 05:19:26 GMT  
		Size: 71.8 MB (71759515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3a6b16780944d2e043d122671360da00e8da1d4c6ebf8dbf896aa5ddfb77cc`  
		Last Modified: Fri, 01 Dec 2017 05:18:59 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885babe3852ddd8283ffe166213f272ad6c2dd842b63ccc46f5c2db6ce927372`  
		Last Modified: Fri, 01 Dec 2017 05:21:46 GMT  
		Size: 12.3 MB (12345189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0263c4b207b180598293432872da8dc92ccc708b38aa376ea88b79aa21fb55f2`  
		Last Modified: Fri, 01 Dec 2017 05:21:42 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb08a2a2d9feef675167d82b4c01d11180165c2ee5b88f239fec1c49dce70fb4`  
		Last Modified: Fri, 01 Dec 2017 05:21:49 GMT  
		Size: 13.6 MB (13638056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770013daba224b6698febfd0fb9a8cf5d501e83c2675ddf9e6eed976239ca4d0`  
		Last Modified: Fri, 01 Dec 2017 05:21:42 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701aec93e2510729ab15274ac58bef23929c8694fcc84540113459f8b83147bb`  
		Last Modified: Fri, 01 Dec 2017 05:21:43 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9710ff0d8e5199540d26cb5564425952b74ae3e2c4736669ebb891e64b378c`  
		Last Modified: Fri, 01 Dec 2017 05:21:41 GMT  
		Size: 7.7 KB (7713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb04ebe19ec5e0b336a08df6163263df2c6d311600c5a5ef9a3b4d4a0a0c470`  
		Last Modified: Sat, 09 Dec 2017 21:22:41 GMT  
		Size: 1.4 MB (1400853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1eb5ab3e347f79d63af839d6bb2aa38fb860e9c105229d586d9c0619b06d684`  
		Last Modified: Sat, 09 Dec 2017 21:22:40 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cdf1ec09f351bd4b1844c52f588c6f47ba06dcb9e1dcd29c0f18c1ec546ec3`  
		Last Modified: Sat, 09 Dec 2017 21:22:44 GMT  
		Size: 9.5 MB (9471277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6675ad4ca78625dfe0e49e38b47877fc1dfec4da03d82f68ec0e0903fc4aeb60`  
		Last Modified: Sat, 09 Dec 2017 21:22:40 GMT  
		Size: 3.2 KB (3224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:fpm` - linux; 386

```console
$ docker pull wordpress@sha256:78a0855b09430f539f98268798c1c429384699560eef6e34cd520ad8129a3394
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147678494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6a8bd5af6c438f9939ef8c6753a32555845b4af4d3e4136d79f7917c035f9cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:19:22 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 22:20:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:20:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 22:20:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 22:51:31 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 12 Dec 2017 22:51:31 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 22:51:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 22:51:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 22:51:32 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 12 Dec 2017 22:51:32 GMT
ENV PHP_VERSION=7.2.0
# Tue, 12 Dec 2017 22:51:32 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 22:51:32 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Tue, 12 Dec 2017 22:51:47 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 22:51:47 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 22:57:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 14 Dec 2017 09:37:25 GMT
COPY multi:2e4df9268ce870f9ed83b38a2784f3778f2c2468c3e7ee600220221534e4e247 in /usr/local/bin/ 
# Thu, 14 Dec 2017 09:37:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 14 Dec 2017 09:37:26 GMT
WORKDIR /var/www/html
# Thu, 14 Dec 2017 09:37:27 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 14 Dec 2017 09:37:27 GMT
EXPOSE 9000/tcp
# Thu, 14 Dec 2017 09:37:27 GMT
CMD ["php-fpm"]
# Thu, 14 Dec 2017 12:37:17 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Thu, 14 Dec 2017 12:41:12 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 14 Dec 2017 12:41:13 GMT
VOLUME [/var/www/html]
# Thu, 14 Dec 2017 12:41:13 GMT
ENV WORDPRESS_VERSION=4.9.1
# Thu, 14 Dec 2017 12:41:13 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Thu, 14 Dec 2017 12:41:15 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 14 Dec 2017 12:41:24 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Thu, 14 Dec 2017 12:41:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 12:41:25 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd1f46be349d3a28327cff92bc8447a84a4a042b93a89d27ce926a38879eb1f`  
		Last Modified: Wed, 13 Dec 2017 01:23:54 GMT  
		Size: 86.2 MB (86160804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbdeff0022781197525eacc3e11301ff0ec7d12ec93ed333c571c6cbcc78a4f4`  
		Last Modified: Wed, 13 Dec 2017 01:23:19 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401097a0833ee0ca08c55bf7c54a40c0e9bd8c5dfa4f41f91ad31f217a9becc8`  
		Last Modified: Wed, 13 Dec 2017 01:31:36 GMT  
		Size: 12.3 MB (12346898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c81f04e7c71ca4a348f84733ad8a06cedb6c2f27bdb23cc492f1df52228b0c`  
		Last Modified: Wed, 13 Dec 2017 01:31:36 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab513fcaa0bb7909b87c39256f569cb1809e757fd3271893ee0b162dcea9347`  
		Last Modified: Wed, 13 Dec 2017 01:31:42 GMT  
		Size: 15.0 MB (14986329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7220a05f91a1c71b7b99d0b58b877a220a4489b9a5ce89a807137845fd63321`  
		Last Modified: Thu, 14 Dec 2017 10:26:54 GMT  
		Size: 2.2 KB (2185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b4ff2373db52dfb279865d2e43fd0289d57d4ea43c1c3a6b353fc268ba7b4d`  
		Last Modified: Thu, 14 Dec 2017 10:26:54 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f82a0ebca0ee348162a95f1b752f1b2772c4e41c75d274ed1c9a361ae6cbc9`  
		Last Modified: Thu, 14 Dec 2017 10:26:54 GMT  
		Size: 7.7 KB (7724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d3f5fe389158e85da494ee736dc122a590bb3fad31d7ca77ed9eb0e5f82cab`  
		Last Modified: Thu, 14 Dec 2017 13:39:34 GMT  
		Size: 1.6 MB (1576433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb2f3ab510e35f004f3d3a435bd0508402257d00278bee4443b1d4f2d7bffa0`  
		Last Modified: Thu, 14 Dec 2017 13:39:33 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5cbdbef4b027da7c25fe5e0d32f5d6abc884131a47187adf4ed92df75dbb5fd`  
		Last Modified: Thu, 14 Dec 2017 13:39:38 GMT  
		Size: 9.5 MB (9471275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc63b0fe7e0b31f6f91607112e027890511283d8ef0a0a37d5dc98ba93a290ae`  
		Last Modified: Thu, 14 Dec 2017 13:39:33 GMT  
		Size: 3.2 KB (3223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:fpm` - linux; ppc64le

```console
$ docker pull wordpress@sha256:2adf0ae27544841cefb60f2bd0d8c855aa0d07dd30f6a86c7cdf49d882662b30
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136813545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba18a009407123886122b6d3aa34f48c292519f9e08889eb6f354adb6c4eb383`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 04:25:51 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 04:29:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 04:29:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 04:29:36 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 04:46:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 12 Dec 2017 04:46:47 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 04:46:49 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 04:46:53 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 04:46:54 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 12 Dec 2017 04:46:57 GMT
ENV PHP_VERSION=7.2.0
# Tue, 12 Dec 2017 04:46:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 04:47:00 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Tue, 12 Dec 2017 04:48:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 04:48:29 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 04:52:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 14 Dec 2017 09:49:13 GMT
COPY multi:2e4df9268ce870f9ed83b38a2784f3778f2c2468c3e7ee600220221534e4e247 in /usr/local/bin/ 
# Thu, 14 Dec 2017 09:49:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 14 Dec 2017 09:49:15 GMT
WORKDIR /var/www/html
# Thu, 14 Dec 2017 09:49:18 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 14 Dec 2017 09:49:19 GMT
EXPOSE 9000/tcp
# Thu, 14 Dec 2017 09:49:20 GMT
CMD ["php-fpm"]
# Thu, 14 Dec 2017 11:26:36 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Thu, 14 Dec 2017 11:26:40 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 14 Dec 2017 11:26:41 GMT
VOLUME [/var/www/html]
# Thu, 14 Dec 2017 11:26:43 GMT
ENV WORDPRESS_VERSION=4.9.1
# Thu, 14 Dec 2017 11:26:44 GMT
ENV WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903
# Thu, 14 Dec 2017 11:26:53 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 14 Dec 2017 11:26:54 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Thu, 14 Dec 2017 11:26:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 11:26:56 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e94387b059051e70aa103a00e5e7b9513818bfd61951a89911bf02423ac205`  
		Last Modified: Tue, 12 Dec 2017 06:16:34 GMT  
		Size: 76.3 MB (76302733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab8e1e546d66d742f64a7aaa7c241ed8124367d177cf80d156c8f528099cf79`  
		Last Modified: Tue, 12 Dec 2017 06:15:58 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb8062a5eb530a32d1f46341a49750820c952af54faf6ffd157fe8714250381`  
		Last Modified: Tue, 12 Dec 2017 06:19:11 GMT  
		Size: 12.3 MB (12345857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9dd914ba2cc3002b2658666fd790d077f50d8f74bdd145c247b8fa56c86ae66`  
		Last Modified: Tue, 12 Dec 2017 06:19:07 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f902315ad74d3c1024f268355e642bd034d6db00226d8abac0a3a5ee3c37eb3`  
		Last Modified: Tue, 12 Dec 2017 06:19:14 GMT  
		Size: 14.4 MB (14410061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63790c18428188e1c8706ce18b8d1810447807c45027be3654499bd83dede90c`  
		Last Modified: Thu, 14 Dec 2017 10:12:17 GMT  
		Size: 2.2 KB (2185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786539e1778a3cf3b51dc44534c9c4e6461bdd7851d0025e61ed0a62be9dd4c7`  
		Last Modified: Thu, 14 Dec 2017 10:12:17 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab10c023ae26827220509a63b94d73cd4eb6330fd48cfd67b7ec8ea653a1cb76`  
		Last Modified: Thu, 14 Dec 2017 10:12:17 GMT  
		Size: 7.7 KB (7714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a0a10775a5bc2120de3e4cc7eee3c84cad5ec9ccb26481ddcb66e73026bd1c`  
		Last Modified: Thu, 14 Dec 2017 11:39:03 GMT  
		Size: 1.5 MB (1529558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85f5c51bdf7ec9ca819d2872b1a8e19abe771663a6b204c21d7147470c800d5`  
		Last Modified: Thu, 14 Dec 2017 11:39:03 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d63cdc4b6e539f8827cda4137c21cc2d1797f3610411eb318537d5dee3fd60`  
		Last Modified: Thu, 14 Dec 2017 11:39:06 GMT  
		Size: 9.5 MB (9471276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f298034acfb11f19a41caf95d3bde40df5b1bfc29908f2464242c7c7ab8a92`  
		Last Modified: Thu, 14 Dec 2017 11:39:02 GMT  
		Size: 3.2 KB (3221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
