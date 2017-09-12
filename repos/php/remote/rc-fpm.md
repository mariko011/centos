## `php:rc-fpm`

```console
$ docker pull php@sha256:87a5abdab7288d46a1c7f36d849a80936140f2275fe53e5212a2b1b85530aeb6
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
$ docker pull php@sha256:018585d8108f036d4c6b9e83f72f0e0f3782e848d193f3469421e663710de614
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131170736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edb0979d5cac740dab13eea7da7652cedee0da19012ee1086359ed284c4ef361`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:49:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 01:50:11 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:50:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 01:50:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 02:08:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 08 Sep 2017 02:08:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:08:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:08:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 02:08:37 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 08 Sep 2017 02:08:38 GMT
ENV PHP_VERSION=7.2.0RC1
# Fri, 08 Sep 2017 02:08:38 GMT
ENV PHP_URL=https://downloads.php.net/~remi/php-7.2.0RC1.tar.xz PHP_ASC_URL=https://downloads.php.net/~remi/php-7.2.0RC1.tar.xz.asc
# Fri, 08 Sep 2017 02:08:38 GMT
ENV PHP_SHA256=04f68d9accb60e56adecc34a80b84bde16edb255a13eef701ea2d6c2b13dc15b PHP_MD5=
# Fri, 08 Sep 2017 02:08:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 02:08:54 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 02:17:52 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Sep 2017 02:17:53 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 08 Sep 2017 02:17:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Sep 2017 02:17:54 GMT
WORKDIR /var/www/html
# Fri, 08 Sep 2017 02:17:55 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 08 Sep 2017 02:17:56 GMT
EXPOSE 9000/tcp
# Fri, 08 Sep 2017 02:17:56 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d535fd0d7eb4c5eeb172117c36bea736dc8ffe1cb697fe3d7784da113e5144`  
		Last Modified: Fri, 08 Sep 2017 04:59:35 GMT  
		Size: 82.7 MB (82742297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c24feb29ad454ba677c0833066879e1d04d4906e6a98e2f5a72f81a4c2c77b`  
		Last Modified: Fri, 08 Sep 2017 04:59:06 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e87c736be0dd88989b3c7de0b43339da817fd1c138c6436c7c9a928b22749b5`  
		Last Modified: Fri, 08 Sep 2017 05:03:26 GMT  
		Size: 12.1 MB (12080474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db7776ea8d0f5c60e7274e9952fe9ac54d428a47b5e8096da6343f0a9ecb7f9`  
		Last Modified: Fri, 08 Sep 2017 05:03:25 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc5b3dc41c718c777110a6fdf2efa87b60dd97268701d430a05ee857017f5e8`  
		Last Modified: Fri, 08 Sep 2017 05:03:30 GMT  
		Size: 13.8 MB (13849289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a508b84e352a449442fc610b63ed72036314edc59d1dd28330bad3f013bd797`  
		Last Modified: Fri, 08 Sep 2017 05:03:24 GMT  
		Size: 2.1 KB (2116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c262ed914f049b756f75f48dba00ed06f6a37e3c24a440c7d9a891393982381e`  
		Last Modified: Fri, 08 Sep 2017 05:03:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf68b96a3a7950e904513ce493b22865cb6f61202fc03d67f329de883efc9e87`  
		Last Modified: Fri, 08 Sep 2017 05:03:24 GMT  
		Size: 7.7 KB (7702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-fpm` - linux; arm variant v7

```console
$ docker pull php@sha256:471d5c6fcac55826073b05734de59b12bceb7534e1ba8962525dfe891f4e0106
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112763382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5444d3d1dcb04d149905b2bc362914e0672f47d99fd4a80c599b1fa817a078ba`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 25 Jul 2017 12:59:09 GMT
ADD file:636ebbf39ac07d1dbb03c6fba0f51c6353c9f7b671a9bbbec30f169f2bef5b3e in / 
# Tue, 25 Jul 2017 12:59:10 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 23:33:37 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Tue, 25 Jul 2017 23:36:08 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 25 Jul 2017 23:36:10 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Jul 2017 23:36:13 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 26 Jul 2017 00:25:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 26 Jul 2017 00:25:47 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 26 Jul 2017 00:25:48 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 26 Jul 2017 00:25:49 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 26 Jul 2017 00:25:49 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 01 Sep 2017 12:50:36 GMT
ENV PHP_VERSION=7.2.0RC1
# Fri, 01 Sep 2017 12:50:37 GMT
ENV PHP_URL=https://downloads.php.net/~remi/php-7.2.0RC1.tar.xz PHP_ASC_URL=https://downloads.php.net/~remi/php-7.2.0RC1.tar.xz.asc
# Fri, 01 Sep 2017 12:50:37 GMT
ENV PHP_SHA256=04f68d9accb60e56adecc34a80b84bde16edb255a13eef701ea2d6c2b13dc15b PHP_MD5=
# Fri, 01 Sep 2017 12:53:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Sep 2017 12:53:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Sep 2017 13:24:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Sep 2017 13:24:28 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 01 Sep 2017 13:24:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Sep 2017 13:24:30 GMT
WORKDIR /var/www/html
# Fri, 01 Sep 2017 13:24:32 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 01 Sep 2017 13:24:33 GMT
EXPOSE 9000/tcp
# Fri, 01 Sep 2017 13:24:34 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:bede1b4bf4737f594ec715f5e1dc0b6385fc61288ba97f8911986105a9d3929d`  
		Last Modified: Tue, 25 Jul 2017 13:13:48 GMT  
		Size: 19.3 MB (19271612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2402622e22c900f7d59a82e1b44b4ee0e67674eedf67e7cb9f84d64f938ce464`  
		Last Modified: Sat, 29 Jul 2017 17:06:20 GMT  
		Size: 68.1 MB (68106007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c13c0d3dccaa89ee719cdbd03707ae3353df41628887788c32326322422492`  
		Last Modified: Sat, 29 Jul 2017 17:05:17 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca92136a835b91413be84438d4ad41024f82fe583be9f5596a7816576401819c`  
		Last Modified: Fri, 01 Sep 2017 16:08:15 GMT  
		Size: 12.3 MB (12300941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae81872e6e72ae767c6f54bd75b4cc95bae108f0bfa25e8d5fc69fd57530eb40`  
		Last Modified: Fri, 01 Sep 2017 16:08:03 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f386c00035f065c0f4e5d51ecbc89cc50c509b2bd3e200a0158e51040281347`  
		Last Modified: Fri, 01 Sep 2017 16:08:16 GMT  
		Size: 13.1 MB (13074163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62565ee72bf2085a60885b945cf9e9efb557ce0d6eb31c3abbfeaf687f77881`  
		Last Modified: Fri, 01 Sep 2017 16:08:03 GMT  
		Size: 2.1 KB (2128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7b5b32a90604abbcdf0b632148ce1f4e8e84970417d7118073f0a6fad120e0`  
		Last Modified: Fri, 01 Sep 2017 16:08:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc6d803923d9fed1988529f44b178765bfa29f21095b13ea6d06e9fb579bfd74`  
		Last Modified: Fri, 01 Sep 2017 16:08:03 GMT  
		Size: 7.7 KB (7714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-fpm` - linux; arm64 variant v8

```console
$ docker pull php@sha256:4abee1db74bf4e67b8a582ac3ba48f4783d612acd8862e83b15adf518b8f45f5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118366598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1863ce300dc1875ea8847d397a828377354dad1144d13533c36e41457799a503`
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
# Fri, 08 Sep 2017 23:16:53 GMT
ENV PHP_VERSION=7.2.0RC1
# Fri, 08 Sep 2017 23:16:53 GMT
ENV PHP_URL=https://downloads.php.net/~remi/php-7.2.0RC1.tar.xz PHP_ASC_URL=https://downloads.php.net/~remi/php-7.2.0RC1.tar.xz.asc
# Fri, 08 Sep 2017 23:16:54 GMT
ENV PHP_SHA256=04f68d9accb60e56adecc34a80b84bde16edb255a13eef701ea2d6c2b13dc15b PHP_MD5=
# Fri, 08 Sep 2017 23:18:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 23:18:10 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 23:26:43 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Sep 2017 23:26:44 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 08 Sep 2017 23:26:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Sep 2017 23:26:45 GMT
WORKDIR /var/www/html
# Fri, 08 Sep 2017 23:26:47 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 08 Sep 2017 23:26:47 GMT
EXPOSE 9000/tcp
# Fri, 08 Sep 2017 23:26:48 GMT
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
	-	`sha256:9bc20e41501c5821ed542cd0b92dc12845d3b6d2a3133adcf85104bedd7b94ac`  
		Last Modified: Sat, 09 Sep 2017 01:19:22 GMT  
		Size: 12.3 MB (12300750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e3ae9b09d846a90a578fc002341b7f2b507b8bd66977d42f50a2bc86a03e2e`  
		Last Modified: Sat, 09 Sep 2017 01:19:19 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1831b82b47b69bc4e92ee5fc8e01ceb36e1df86e5cc3c1257f78da2b646a0d`  
		Last Modified: Sat, 09 Sep 2017 01:19:24 GMT  
		Size: 13.1 MB (13139205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fed3c8239811dc5f01477ef35df6ad8b77a4faefeb18bde76921abf8d17149e`  
		Last Modified: Sat, 09 Sep 2017 01:19:18 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6e266b6d5a0fbd249319da3711378d52835b453960d66bbe239b85331c9877`  
		Last Modified: Sat, 09 Sep 2017 01:19:18 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e42a44918ad02468d62d1ade0aa4f3fc7c2cd5cdca6afc802711b67d12bfe8`  
		Last Modified: Sat, 09 Sep 2017 01:19:18 GMT  
		Size: 7.7 KB (7712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-fpm` - linux; 386

```console
$ docker pull php@sha256:982f3385b6e3a9731e869cde0464e3a7863691b3a1f712b7eba2da8703064f13
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.0 MB (136979797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b92631ee412852a686717181ba0e0702c07a242643e37a61ca92271b817f5546`
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
# Fri, 08 Sep 2017 15:31:41 GMT
ENV PHP_VERSION=7.2.0RC1
# Fri, 08 Sep 2017 15:31:41 GMT
ENV PHP_URL=https://downloads.php.net/~remi/php-7.2.0RC1.tar.xz PHP_ASC_URL=https://downloads.php.net/~remi/php-7.2.0RC1.tar.xz.asc
# Fri, 08 Sep 2017 15:31:41 GMT
ENV PHP_SHA256=04f68d9accb60e56adecc34a80b84bde16edb255a13eef701ea2d6c2b13dc15b PHP_MD5=
# Fri, 08 Sep 2017 15:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 15:31:56 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 15:36:52 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Sep 2017 15:36:52 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 08 Sep 2017 15:36:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Sep 2017 15:36:53 GMT
WORKDIR /var/www/html
# Fri, 08 Sep 2017 15:36:53 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 08 Sep 2017 15:36:54 GMT
EXPOSE 9000/tcp
# Fri, 08 Sep 2017 15:36:54 GMT
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
	-	`sha256:ec2cd4fdda96d6013aa7bf889dcd83feff033d4f4c70998654138f76717b925a`  
		Last Modified: Fri, 08 Sep 2017 17:14:37 GMT  
		Size: 12.3 MB (12301971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b84d4d3527c79f8bef0e7cd37e65c9e8570b6e40fff5be9541d018a8b0386a44`  
		Last Modified: Fri, 08 Sep 2017 17:14:36 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292480e85808da92bd28d30674fa44f77f1e7b5b60cc294355ee1e0962e9ee48`  
		Last Modified: Fri, 08 Sep 2017 17:14:41 GMT  
		Size: 14.4 MB (14428316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b1018601422858336ca35b26082af52161c6649dffe1b67eef0a803e018920`  
		Last Modified: Fri, 08 Sep 2017 17:14:36 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e319be505a18bc19cc47bf1e5b53c11943b98398bc00c2313ecc6a37b7b2725d`  
		Last Modified: Fri, 08 Sep 2017 17:14:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0a1cb86649c724e60d88e9233bb8853e9bdb50245f50acd1ba3b2cf9a5ab19`  
		Last Modified: Fri, 08 Sep 2017 17:14:36 GMT  
		Size: 7.7 KB (7712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-fpm` - linux; ppc64le

```console
$ docker pull php@sha256:f2575ca0771c692575f618553bb6bbd02ee7e5670fce193979e1ccb108410bc0
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126128938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d07c917aae202a4752708d4db77bfa66daf57a92410155e4ef67527243cd39b3`
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
# Fri, 08 Sep 2017 01:40:43 GMT
ENV PHP_VERSION=7.2.0RC1
# Fri, 08 Sep 2017 01:40:43 GMT
ENV PHP_URL=https://downloads.php.net/~remi/php-7.2.0RC1.tar.xz PHP_ASC_URL=https://downloads.php.net/~remi/php-7.2.0RC1.tar.xz.asc
# Fri, 08 Sep 2017 01:40:43 GMT
ENV PHP_SHA256=04f68d9accb60e56adecc34a80b84bde16edb255a13eef701ea2d6c2b13dc15b PHP_MD5=
# Fri, 08 Sep 2017 01:41:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 01:41:03 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 01:44:29 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Sep 2017 01:44:30 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 08 Sep 2017 01:44:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Sep 2017 01:44:30 GMT
WORKDIR /var/www/html
# Fri, 08 Sep 2017 01:44:31 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 08 Sep 2017 01:44:31 GMT
EXPOSE 9000/tcp
# Fri, 08 Sep 2017 01:44:31 GMT
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
	-	`sha256:8e1598fc60d406d28c100302a2651455224c3bf3e2568a069a8c27535856c1c8`  
		Last Modified: Fri, 08 Sep 2017 02:34:09 GMT  
		Size: 12.3 MB (12300462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88d585152a8c83342072aa059713b707a126fb99e934ad79db59b24d50d118d`  
		Last Modified: Fri, 08 Sep 2017 02:34:07 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baba9ca587ad9a0785226bc57668e80e5cc39b99042d740b1dce694b94f943fb`  
		Last Modified: Fri, 08 Sep 2017 02:34:11 GMT  
		Size: 13.9 MB (13859038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de2d9b1d7765ac1ae69ffa433c10e140faf0c5ce07fc7579139323414c9d1d4`  
		Last Modified: Fri, 08 Sep 2017 02:34:05 GMT  
		Size: 2.1 KB (2125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c835101bafd0126e3036d673d4294bb3aeefc2ee86689b90fe56b898dfdb96`  
		Last Modified: Fri, 08 Sep 2017 02:34:05 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abb01b2050ff4eaf762197c344fe0e87b6296c8d423ed4c398e3b1fe89d93dc`  
		Last Modified: Fri, 08 Sep 2017 02:34:07 GMT  
		Size: 7.7 KB (7711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
