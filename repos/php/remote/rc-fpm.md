## `php:rc-fpm`

```console
$ docker pull php@sha256:ff486b10ad74cc1a5b0e6ada855a4da0a5309ca9a5c48c0a7ec4e92e316100e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `php:rc-fpm` - linux; amd64

```console
$ docker pull php@sha256:98fac278502cc14f18d5374b02951136b8479c92f4189ef488d803fb065b4cdc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131697673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cddaac8d59be5ff5edbf6b89c01a3449e6f9494f444523b966eaca83d975603`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:48 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Wed, 13 Sep 2017 08:41:49 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 23:28:47 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 14 Sep 2017 23:29:09 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:29:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 14 Sep 2017 23:29:10 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 14 Sep 2017 23:39:23 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 14 Sep 2017 23:39:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 14 Sep 2017 23:39:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 14 Sep 2017 23:39:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 14 Sep 2017 23:39:24 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 15 Sep 2017 20:35:47 GMT
ENV PHP_VERSION=7.2.0RC2
# Fri, 15 Sep 2017 20:35:47 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC2.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC2.tar.xz.asc
# Fri, 15 Sep 2017 20:35:47 GMT
ENV PHP_SHA256=0406366fcd5be4ee5e76e3c6a4279e04f93a1827a44d27c4f57fbed9e01cd281 PHP_MD5=
# Fri, 15 Sep 2017 20:36:06 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 15 Sep 2017 20:36:06 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 15 Sep 2017 20:42:00 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 15 Sep 2017 20:42:00 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 15 Sep 2017 20:42:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 15 Sep 2017 20:42:01 GMT
WORKDIR /var/www/html
# Fri, 15 Sep 2017 20:42:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 15 Sep 2017 20:42:02 GMT
EXPOSE 9000/tcp
# Fri, 15 Sep 2017 20:42:02 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e451c07da66eb4f500e1d29a8cdc706c103dba21dca64995694f45d57abfb0`  
		Last Modified: Fri, 15 Sep 2017 01:31:57 GMT  
		Size: 82.7 MB (82742526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5db9240fe881223f0b850a7d220c7695eadf6f8c5f85d2e9e585f70e9a363db`  
		Last Modified: Fri, 15 Sep 2017 01:31:32 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98fa430b21a6e923b9bbd168003ca1d2d6533d6fead7aec88c897f2dd337617`  
		Last Modified: Fri, 15 Sep 2017 21:07:36 GMT  
		Size: 12.4 MB (12383479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7244c94d63517ffccea005af09779682689b3bea945ee8ce9e09955cb29ae8e9`  
		Last Modified: Fri, 15 Sep 2017 21:07:32 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f842d18d4004363aa147422ecec6c48e23f3ab7aa5a1f3e7dea2687865d9ffb7`  
		Last Modified: Fri, 15 Sep 2017 21:07:36 GMT  
		Size: 14.1 MB (14072961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d63b8e18994aed435400bfcdce9b211e8695e16dc90e22940f2fc3bf47b9aa56`  
		Last Modified: Fri, 15 Sep 2017 21:07:32 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b39e0b1ce231c6ce8090fa83520e9f8408162f8710c762e4a226bc11bfd85781`  
		Last Modified: Fri, 15 Sep 2017 21:07:32 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d79a69c6a8427be032f21e7484d6fb1f253865a20f74b1b087eaa784c840905`  
		Last Modified: Fri, 15 Sep 2017 21:07:32 GMT  
		Size: 7.7 KB (7712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-fpm` - linux; arm variant v7

```console
$ docker pull php@sha256:0d84277dd9c20b27d164d017636c60095f3b7c9d5993e62f1156cf2722752d91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.1 MB (112148207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:624400e4965d47c705641a7dcfe8ab9018f8f2bc996f605ab9d31046d123aa77`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 09 Sep 2017 01:45:09 GMT
ADD file:c64f62f8baccded9d94037c0935c477d3dd18839a9c4e565679657d4c9df92c8 in / 
# Sat, 09 Sep 2017 01:45:10 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 07:23:45 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Tue, 19 Sep 2017 07:26:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 19 Sep 2017 07:26:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 19 Sep 2017 07:26:18 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 19 Sep 2017 08:04:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 19 Sep 2017 08:04:03 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Sep 2017 08:04:05 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 19 Sep 2017 08:04:06 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 19 Sep 2017 08:04:08 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 19 Sep 2017 08:04:09 GMT
ENV PHP_VERSION=7.2.0RC2
# Tue, 19 Sep 2017 08:04:11 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC2.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC2.tar.xz.asc
# Tue, 19 Sep 2017 08:04:12 GMT
ENV PHP_SHA256=0406366fcd5be4ee5e76e3c6a4279e04f93a1827a44d27c4f57fbed9e01cd281 PHP_MD5=
# Tue, 19 Sep 2017 08:17:37 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 19 Sep 2017 08:17:38 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 19 Sep 2017 08:39:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 19 Sep 2017 08:39:35 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Tue, 19 Sep 2017 08:39:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 19 Sep 2017 08:39:37 GMT
WORKDIR /var/www/html
# Tue, 19 Sep 2017 08:39:39 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 19 Sep 2017 08:39:40 GMT
EXPOSE 9000/tcp
# Tue, 19 Sep 2017 08:39:41 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:07ff66d25cfd7ff46d2bd66b7005ca8b45d0e37e780d439e3032785bd84d99a4`  
		Last Modified: Sat, 09 Sep 2017 01:58:27 GMT  
		Size: 19.3 MB (19277906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04161deb4ef82c250d62244d823c4b0a47f0e5c57c62c5633466c34bf38ffee0`  
		Last Modified: Tue, 19 Sep 2017 12:56:38 GMT  
		Size: 68.1 MB (68099153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34848349fdd167bbbe654325b076a806a37e2ca244afa5c6c6c8eaa18199d506`  
		Last Modified: Tue, 19 Sep 2017 12:55:56 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7add4b235fc60278853b35bc687568873dd760f38ba1523dae3d888d358b7c4e`  
		Last Modified: Tue, 19 Sep 2017 12:58:26 GMT  
		Size: 12.4 MB (12382102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f698abeb65dcc045cdd0ea79e7c46f43062850d257a01898d6bea78d304e221d`  
		Last Modified: Tue, 19 Sep 2017 12:58:20 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebf9847f2ff0ff0c721b80a7f8e21c05a6f3a54f605d79e535da359207dba50`  
		Last Modified: Tue, 19 Sep 2017 12:58:28 GMT  
		Size: 12.4 MB (12378396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e827865d3304d4ed4f8933f14a88a79cb8968eb76c620e1d6100c69aeb62ff`  
		Last Modified: Tue, 19 Sep 2017 12:58:20 GMT  
		Size: 2.1 KB (2125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb9a3cf50722ff21182e56eeac304a9468a876d940dbf28dabc08055d699255`  
		Last Modified: Tue, 19 Sep 2017 12:58:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19b43771e597e36eab44f5eb8db9ba7fe04ae4b3db3c470990619da0fad1d92`  
		Last Modified: Tue, 19 Sep 2017 12:58:20 GMT  
		Size: 7.7 KB (7712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-fpm` - linux; arm64 variant v8

```console
$ docker pull php@sha256:5f6f3fb5e41292b1f6c87e76fe03d5e854c48e4761532696a7213dbb21d1451e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118446270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1d0fa5dc77d0d31dda5d2260e31520004d1916c3fe964d24f132b2a1857c8d2`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 08 Sep 2017 17:29:09 GMT
ADD file:16391f421551b998f1ff496c48dc67f34dd2003077158fd1af78a898ea367e1d in / 
# Fri, 08 Sep 2017 17:29:10 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 22:57:47 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 22:59:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 22:59:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 22:59:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 23:16:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 08 Sep 2017 23:16:50 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 23:16:51 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 23:16:52 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 23:16:52 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 15 Sep 2017 20:15:58 GMT
ENV PHP_VERSION=7.2.0RC2
# Fri, 15 Sep 2017 20:15:59 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC2.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC2.tar.xz.asc
# Fri, 15 Sep 2017 20:15:59 GMT
ENV PHP_SHA256=0406366fcd5be4ee5e76e3c6a4279e04f93a1827a44d27c4f57fbed9e01cd281 PHP_MD5=
# Fri, 15 Sep 2017 20:16:35 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 15 Sep 2017 20:16:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 15 Sep 2017 20:24:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 15 Sep 2017 20:24:35 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 15 Sep 2017 20:24:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 15 Sep 2017 20:24:36 GMT
WORKDIR /var/www/html
# Fri, 15 Sep 2017 20:24:37 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 15 Sep 2017 20:24:38 GMT
EXPOSE 9000/tcp
# Fri, 15 Sep 2017 20:24:38 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:0bd6dbb95c7a219839ea8345519110bbccc30c113a72119bbd92c7fe2a3f1e78`  
		Last Modified: Fri, 08 Sep 2017 17:43:38 GMT  
		Size: 20.3 MB (20337273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9820490ae1ca284939458ff97fb0957dae3f8ee89338f6d3faf22b3a78696a8d`  
		Last Modified: Sat, 09 Sep 2017 01:17:58 GMT  
		Size: 72.6 MB (72578726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6b8ab8677eb295b4c6e08aac739a39898f8ec74db0d1e79147837527b6a5ab`  
		Last Modified: Sat, 09 Sep 2017 01:17:27 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbcdada2d55e4f342db8ff7225ef4444d7f89579b156d7ff78f6fe3f54536e6`  
		Last Modified: Fri, 15 Sep 2017 20:36:42 GMT  
		Size: 12.4 MB (12381708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9451de942edc7626132be3301e95da085b021028960da33410a468fba571e1b`  
		Last Modified: Fri, 15 Sep 2017 20:36:37 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ca53e05a083b17dd7a6b5ddd5f8953585df060e108c0221df90f64e8716f17`  
		Last Modified: Fri, 15 Sep 2017 20:36:42 GMT  
		Size: 13.1 MB (13137917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa11c58b3ae15eb40718f69d14f6c91ffda3bfd0129c7df5f4228a79c752594b`  
		Last Modified: Fri, 15 Sep 2017 20:36:37 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aff2e074d81d9e3ba1bf7bb312f1aaac35344366e1bced33d6b0eba71ce4fa9`  
		Last Modified: Fri, 15 Sep 2017 20:36:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149fea9bfacf4eaac6b5c35352ecbcf6b22e3e7452149e8449875590e859ad6a`  
		Last Modified: Fri, 15 Sep 2017 20:36:37 GMT  
		Size: 7.7 KB (7711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-fpm` - linux; 386

```console
$ docker pull php@sha256:e36c0a6ec26d3ad44837fb6c8592d83b475644931f5d6dd242238054c0ceb784
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.1 MB (137061157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d05d29e57bfa3f81d540468f0de44fcafaf227be311ac475e4416ff21897b460`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:57 GMT
ADD file:637a2d4ad21512f6aa9863626de3b678f1aff76377357d7e15fc6a381ec94689 in / 
# Fri, 08 Sep 2017 13:19:57 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:17:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 15:17:48 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 15:17:49 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 15:17:49 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 15:31:40 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 08 Sep 2017 15:31:40 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 15:31:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 15:31:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 15:31:41 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 15 Sep 2017 20:59:30 GMT
ENV PHP_VERSION=7.2.0RC2
# Fri, 15 Sep 2017 20:59:30 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC2.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC2.tar.xz.asc
# Fri, 15 Sep 2017 20:59:30 GMT
ENV PHP_SHA256=0406366fcd5be4ee5e76e3c6a4279e04f93a1827a44d27c4f57fbed9e01cd281 PHP_MD5=
# Fri, 15 Sep 2017 21:00:05 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 15 Sep 2017 21:00:05 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 15 Sep 2017 21:04:55 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 15 Sep 2017 21:07:44 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 15 Sep 2017 21:07:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 15 Sep 2017 21:07:44 GMT
WORKDIR /var/www/html
# Fri, 15 Sep 2017 21:07:45 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 15 Sep 2017 21:07:45 GMT
EXPOSE 9000/tcp
# Fri, 15 Sep 2017 21:07:45 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:2f5ca21e3ce4be74a6720d0866b1c95e310ae9d9494d9e5155a3633cd5cd62cd`  
		Last Modified: Fri, 08 Sep 2017 13:27:56 GMT  
		Size: 23.1 MB (23125784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbec0cf4ee45016841e2dad09305c70a0c8e6e4f2938e431bab50dd47ed171f`  
		Last Modified: Fri, 08 Sep 2017 17:13:25 GMT  
		Size: 87.1 MB (87113078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d182af2847e1d1f9eab0ededcaea45c5d6861784ff12b89f465914fd34b3459`  
		Last Modified: Fri, 08 Sep 2017 17:12:58 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bfc18e0e2005c1e065f5948270da267e4f2f76b24b37663b86c3ad669b6a9e`  
		Last Modified: Fri, 15 Sep 2017 21:17:30 GMT  
		Size: 12.4 MB (12382950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec56b2eba48bc3f57ae9c0a20dbcf2952e7e3931ea8e21ebbb774faf5fce1228`  
		Last Modified: Fri, 15 Sep 2017 21:17:28 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4b84fe426112ac8ce89c25f3e1b3f7c7ae178cc9b578af3607b4cbfd6927a2`  
		Last Modified: Fri, 15 Sep 2017 21:17:39 GMT  
		Size: 14.4 MB (14428690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78630d921ef04a1bba8e641967c8d15d175d290ac3fa9c8475d7a94fdcd29b7`  
		Last Modified: Fri, 15 Sep 2017 21:17:28 GMT  
		Size: 2.1 KB (2127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4001cc73ad18c63e6f028141a929c9060f3523d3ae110c9530a7dedc8b26da`  
		Last Modified: Fri, 15 Sep 2017 21:17:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8b90edc407af4c7d69172dacdd7c46defc3997057d2d255d11eb50dcffa117`  
		Last Modified: Fri, 15 Sep 2017 21:17:28 GMT  
		Size: 7.7 KB (7720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-fpm` - linux; ppc64le

```console
$ docker pull php@sha256:210e483785bc2a5ba4cc5eeba5596a3397fb47fb5574ee975c82de6c1d5c5c40
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.2 MB (126210980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40bf44c262520183ca368888722e1c234c2be18006793bde0a9772c94f99cca8`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:22 GMT
ADD file:1422f50e4e998477f6c3b2fcee6853da10eb8bca7926ec70e494ff485f6284d7 in / 
# Fri, 08 Sep 2017 00:34:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:33:28 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 01:33:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:33:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 01:33:54 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 01:40:42 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 08 Sep 2017 01:40:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 01:40:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 01:40:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 01:40:43 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 15 Sep 2017 21:11:37 GMT
ENV PHP_VERSION=7.2.0RC2
# Fri, 15 Sep 2017 21:11:41 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC2.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC2.tar.xz.asc
# Fri, 15 Sep 2017 21:11:46 GMT
ENV PHP_SHA256=0406366fcd5be4ee5e76e3c6a4279e04f93a1827a44d27c4f57fbed9e01cd281 PHP_MD5=
# Fri, 15 Sep 2017 21:14:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 15 Sep 2017 21:14:26 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 15 Sep 2017 21:20:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 15 Sep 2017 21:20:11 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 15 Sep 2017 21:20:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 15 Sep 2017 21:20:21 GMT
WORKDIR /var/www/html
# Fri, 15 Sep 2017 21:20:29 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 15 Sep 2017 21:20:33 GMT
EXPOSE 9000/tcp
# Fri, 15 Sep 2017 21:20:36 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7ff7f6fdf12a09feca6f75b5d90b860059bdccf4185a9dab7c2c5b9e6e90123a`  
		Last Modified: Fri, 08 Sep 2017 00:41:42 GMT  
		Size: 22.7 MB (22746060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b96ac02ce000b277d5a01d33d037f5fb4dce85a0e4191eb99d01b1dcbfb282`  
		Last Modified: Fri, 08 Sep 2017 02:32:54 GMT  
		Size: 77.2 MB (77212670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a6eb3c72d3a7e35e3477a8631430ac9fea6ed22f438b29979e4a745ecdfef1`  
		Last Modified: Fri, 08 Sep 2017 02:32:02 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b6efabd26cc9377b546bbe09694db91b5a6c5bd0e310f2554a724c952238d3`  
		Last Modified: Fri, 15 Sep 2017 21:32:24 GMT  
		Size: 12.4 MB (12381869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0689208de6b9503c389a1505972ae57a77bc2f45419c399e6678e02625de34a9`  
		Last Modified: Fri, 15 Sep 2017 21:32:19 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b0e4168512c6071266a366da9f02ba6507e6b6e03375ee3632bbe51a108487`  
		Last Modified: Fri, 15 Sep 2017 21:32:24 GMT  
		Size: 13.9 MB (13859668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344ecd214caede9e1620442534a5b6538b9701f838a9ff9038bd69cd877c97f7`  
		Last Modified: Fri, 15 Sep 2017 21:32:20 GMT  
		Size: 2.1 KB (2127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442a1da0f174824dbad3adda155bc73bf3dbe16b6e6e3da369e399ccbac8795c`  
		Last Modified: Fri, 15 Sep 2017 21:32:19 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2560cddf8e05362510810e4a94a6c1e95c2cd4fa99848e0473755e73b8d832`  
		Last Modified: Fri, 15 Sep 2017 21:32:19 GMT  
		Size: 7.7 KB (7715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
