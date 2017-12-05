## `nextcloud:12-fpm`

```console
$ docker pull nextcloud@sha256:789f3f6a3c4c9819cda66087ad4172de589babfa090f3b582257ccc6dee6a44d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7

### `nextcloud:12-fpm` - linux; amd64

```console
$ docker pull nextcloud@sha256:dcb0373e58475669166fa4f56c24e796b4e77e0f37c82fd150d92e5da7379ea4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.5 MB (248509082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e2a73f6c488477b2d3895d625a191506c8cd8765667bfe3c5afe0718dd7c43f`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Fri, 01 Dec 2017 01:52:06 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Dec 2017 01:52:06 GMT
ENV PHP_VERSION=7.1.12
# Fri, 01 Dec 2017 01:52:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.12.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 01:52:06 GMT
ENV PHP_SHA256=a0118850774571b1f2d4e30b4fe7a4b958ca66f07d07d65ebdc789c54ba6eeb3 PHP_MD5=
# Fri, 01 Dec 2017 01:52:21 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Dec 2017 01:52:26 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 01:56:06 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 01:56:07 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Fri, 01 Dec 2017 01:56:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 01:56:07 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 01:56:08 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 01 Dec 2017 01:56:08 GMT
EXPOSE 9000/tcp
# Fri, 01 Dec 2017 01:56:08 GMT
CMD ["php-fpm"]
# Fri, 01 Dec 2017 04:46:55 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 01 Dec 2017 04:49:16 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Fri, 01 Dec 2017 04:49:16 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 01 Dec 2017 04:49:48 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.4  && pecl install redis-3.1.4  && docker-php-ext-enable apcu redis memcached
# Tue, 05 Dec 2017 02:56:41 GMT
ENV NEXTCLOUD_VERSION=12.0.4
# Tue, 05 Dec 2017 02:56:42 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Tue, 05 Dec 2017 02:56:42 GMT
VOLUME [/var/www/html]
# Tue, 05 Dec 2017 02:56:56 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Tue, 05 Dec 2017 02:56:57 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Tue, 05 Dec 2017 02:56:57 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Tue, 05 Dec 2017 02:56:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Dec 2017 02:56:58 GMT
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
	-	`sha256:7253651deb60073d55df098c08edbf40d68f1f114f7a80d0fddced01f64d00c4`  
		Last Modified: Fri, 01 Dec 2017 03:24:35 GMT  
		Size: 12.5 MB (12531590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc37ca5689f987e2b021f1f0f786afda12de42fa1577ad6b4f78efc352177e4a`  
		Last Modified: Fri, 01 Dec 2017 03:24:31 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a76f2bf562d5cb60e633ec867cff3ec64e706d1e4872d9730724c34ffc44c01`  
		Last Modified: Fri, 01 Dec 2017 03:24:34 GMT  
		Size: 13.8 MB (13807563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d3ee329447186eb08b616bb1720907c990388e6bbf8797cd99ce960dace58d`  
		Last Modified: Fri, 01 Dec 2017 03:24:31 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3238748ca5c8dbdc95d39777d40c863a7383b3e49d3f9435dd1f6f9e8b27b630`  
		Last Modified: Fri, 01 Dec 2017 03:24:31 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f811c42f68bb323884013d2ee246175edda3ff6df5f2151a72546c3564ae73`  
		Last Modified: Fri, 01 Dec 2017 03:24:32 GMT  
		Size: 7.7 KB (7681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19c74975586b8a1981596a2366cb8029d9a2355a61e8b0c2e2e00d81b5c5029`  
		Last Modified: Fri, 01 Dec 2017 04:57:48 GMT  
		Size: 36.1 MB (36094355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed8912adf7876b984bcaedf8cd7115b4e9f75bedca675e03955157679d341f3b`  
		Last Modified: Fri, 01 Dec 2017 04:57:38 GMT  
		Size: 1.9 MB (1920162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f1d77282ac915a5bd7ecfe928751d94c66b8fe005137fae0596e3389247f04`  
		Last Modified: Fri, 01 Dec 2017 04:57:38 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48326181408ec12d72d542ec76d7f2cf81a4abc1b946d16e539895fdc692b5f0`  
		Last Modified: Fri, 01 Dec 2017 04:57:36 GMT  
		Size: 1.3 MB (1303105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b98b1c608428be7cd0a89f9bfdb6a9ecaf3717a92fffb4102e912044eed5174`  
		Last Modified: Fri, 01 Dec 2017 04:57:35 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b8faae2e6524be87cdf2df0a5e2e2b7a4d8dd3ff7db815b388aea643fd1312`  
		Last Modified: Tue, 05 Dec 2017 03:00:25 GMT  
		Size: 48.4 MB (48392280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea79a532375f9bab81bd99889ac964dd000c97a09311251607e3a01b3916e7ce`  
		Last Modified: Tue, 05 Dec 2017 03:00:17 GMT  
		Size: 939.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a1790d9a04c92001b3a4f43566bf25e13b7801897b348a518e7a7556d12c92c`  
		Last Modified: Tue, 05 Dec 2017 03:00:16 GMT  
		Size: 785.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:12-fpm` - linux; arm variant v5

```console
$ docker pull nextcloud@sha256:dcf85801248c574e3c4ada3f941a69f4dcc1389e3e30ffba2aa4f61ecaaf000f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.0 MB (227033182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbf72a7ac658208325403a0a1c42c42ef1d2f9db1513d3f0ae0331ff8f784360`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Fri, 01 Dec 2017 14:51:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 01 Dec 2017 14:52:44 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 01 Dec 2017 14:52:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 14:52:45 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 15:01:45 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 01 Dec 2017 15:01:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 15:01:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 15:01:46 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 15:01:46 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Dec 2017 15:01:47 GMT
ENV PHP_VERSION=7.1.12
# Fri, 01 Dec 2017 15:01:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.12.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 15:01:47 GMT
ENV PHP_SHA256=a0118850774571b1f2d4e30b4fe7a4b958ca66f07d07d65ebdc789c54ba6eeb3 PHP_MD5=
# Fri, 01 Dec 2017 15:02:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Dec 2017 15:02:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 15:05:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 15:05:49 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Fri, 01 Dec 2017 15:05:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 15:05:50 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 15:05:50 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 01 Dec 2017 15:05:51 GMT
EXPOSE 9000/tcp
# Fri, 01 Dec 2017 15:05:51 GMT
CMD ["php-fpm"]
# Fri, 01 Dec 2017 16:42:40 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 01 Dec 2017 16:47:04 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Fri, 01 Dec 2017 16:47:06 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 01 Dec 2017 16:47:55 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.4  && pecl install redis-3.1.4  && docker-php-ext-enable apcu redis memcached
# Tue, 05 Dec 2017 03:26:27 GMT
ENV NEXTCLOUD_VERSION=12.0.4
# Tue, 05 Dec 2017 03:26:28 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Tue, 05 Dec 2017 03:26:28 GMT
VOLUME [/var/www/html]
# Tue, 05 Dec 2017 03:26:48 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Tue, 05 Dec 2017 03:26:49 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Tue, 05 Dec 2017 03:26:50 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Tue, 05 Dec 2017 03:26:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Dec 2017 03:26:51 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf53b4f9577afd649617007c40bd4a5232f0b6328bf34dbe9ddb6f8cc6648a74`  
		Last Modified: Fri, 01 Dec 2017 15:47:52 GMT  
		Size: 62.9 MB (62920823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d8abfab1f7a413145e70b80ee9c2e9a9d99ec213144608d0b5186611d64410`  
		Last Modified: Fri, 01 Dec 2017 15:47:32 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d38fb50152c490077738ff07c166f81769d9f0ad6b11bc5f78a057284ae235f`  
		Last Modified: Fri, 01 Dec 2017 15:49:34 GMT  
		Size: 12.5 MB (12530252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109332de459492c1bf10997dcdb5efdb11c7f89ee8745f12798a3b637ea57e3c`  
		Last Modified: Fri, 01 Dec 2017 15:49:31 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7752166cfc651487be7c14167e55733b930ac3e562e71ffc933be9caf20361d`  
		Last Modified: Fri, 01 Dec 2017 15:49:36 GMT  
		Size: 13.1 MB (13078017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e76dd7d8f87cb8a229bdeea0eafaa0448bc56df204f776ac1d9b69ef5dd0b73`  
		Last Modified: Fri, 01 Dec 2017 15:49:31 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8eb2e5581ca7505fc9178616f26a7fe35daa7e4432e53db5baff66c21288723`  
		Last Modified: Fri, 01 Dec 2017 15:49:31 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227c7568ff1210dd4b35f56ce8031a8442bfbbbe7d5294b7fa5d7a23cd7ed21f`  
		Last Modified: Fri, 01 Dec 2017 15:49:30 GMT  
		Size: 7.7 KB (7684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40bfda0be83aa0d768c4ee7814ad4f2e792ed8393bf28fe3cba69577fcbd57db`  
		Last Modified: Fri, 01 Dec 2017 16:51:22 GMT  
		Size: 36.0 MB (36021957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:746cc5c6a710664054a36f6b352f2699a42b7df3cc9b812cae917c4d0e88e29a`  
		Last Modified: Fri, 01 Dec 2017 16:51:10 GMT  
		Size: 1.8 MB (1847667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38790f124182770ad27052b08533558f302d530f786fd21426e1397806157f97`  
		Last Modified: Fri, 01 Dec 2017 16:51:10 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba418eeb9b8c80319f78ed288c5fe9467073c12bc86bc9f8ba3426f7196d20d0`  
		Last Modified: Fri, 01 Dec 2017 16:51:10 GMT  
		Size: 1.3 MB (1349415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7192486499c9972b6b475569dfd0990b697379691999700be837a0c830ef3840`  
		Last Modified: Fri, 01 Dec 2017 16:51:09 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc1b34146d463dec12aa6e6e4e9f676c0022323f8e8ed27b9e1e84bfd4ec1bf`  
		Last Modified: Tue, 05 Dec 2017 03:30:37 GMT  
		Size: 48.4 MB (48392212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c8f8c811073d04c20149f58b064960c956f12758bd2bfa857ac9cd9e049cfe`  
		Last Modified: Tue, 05 Dec 2017 03:30:21 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:388bee3e6af477879932332309f16bf7db1bd5357f78d78c36924a2f9e10f256`  
		Last Modified: Tue, 05 Dec 2017 03:30:21 GMT  
		Size: 785.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:12-fpm` - linux; arm variant v7

```console
$ docker pull nextcloud@sha256:4df9b2a49af69d0aeee0974811b3cd34bbeb88f34f81ead37cf2b9427ed0b6c2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.7 MB (222663507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b850de5d2f786887638ff02294cfaa98830376518027957fb70f4d23898f7a75`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Fri, 01 Dec 2017 13:03:50 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 01 Dec 2017 13:04:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 01 Dec 2017 13:04:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 13:04:40 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 13:13:04 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 01 Dec 2017 13:13:04 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 13:13:04 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 13:13:04 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 13:13:05 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Dec 2017 13:13:05 GMT
ENV PHP_VERSION=7.1.12
# Fri, 01 Dec 2017 13:13:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.12.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 13:13:05 GMT
ENV PHP_SHA256=a0118850774571b1f2d4e30b4fe7a4b958ca66f07d07d65ebdc789c54ba6eeb3 PHP_MD5=
# Fri, 01 Dec 2017 13:13:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Dec 2017 13:13:44 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 13:16:51 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 13:16:52 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Fri, 01 Dec 2017 13:16:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 13:16:53 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 13:16:54 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 01 Dec 2017 13:16:54 GMT
EXPOSE 9000/tcp
# Fri, 01 Dec 2017 13:16:54 GMT
CMD ["php-fpm"]
# Fri, 01 Dec 2017 14:36:41 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 01 Dec 2017 14:41:05 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Fri, 01 Dec 2017 14:41:14 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 01 Dec 2017 14:42:01 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.4  && pecl install redis-3.1.4  && docker-php-ext-enable apcu redis memcached
# Tue, 05 Dec 2017 04:09:43 GMT
ENV NEXTCLOUD_VERSION=12.0.4
# Tue, 05 Dec 2017 04:09:44 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Tue, 05 Dec 2017 04:09:44 GMT
VOLUME [/var/www/html]
# Tue, 05 Dec 2017 04:10:04 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Tue, 05 Dec 2017 04:10:06 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Tue, 05 Dec 2017 04:10:07 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Tue, 05 Dec 2017 04:10:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Dec 2017 04:10:07 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f179d7e76816023118b5c778d5cb0f712aca7a2b601a9c3d0f1fe154bb3fb78b`  
		Last Modified: Fri, 01 Dec 2017 14:00:16 GMT  
		Size: 63.2 MB (63205563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b8b5310b6df1b1a0d967730f4f795c418a029821cdffddbb6a193f4af3fb8f`  
		Last Modified: Fri, 01 Dec 2017 13:59:59 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0351163543363affe06529f5b7f50e4cb10feaddc6039c196e3d873b9881f7`  
		Last Modified: Fri, 01 Dec 2017 14:02:28 GMT  
		Size: 12.5 MB (12530209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:098f5b493f4d3f8d4f1177e3efc38a94165fdbbc9c3e0845c5911234091cc5a6`  
		Last Modified: Fri, 01 Dec 2017 14:02:25 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e82bab297b373efbaa83baa1ff8dde178d2301741524aa7030182b242c3cc47a`  
		Last Modified: Fri, 01 Dec 2017 14:02:29 GMT  
		Size: 12.3 MB (12332003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a692613a64946b3d5963ced487eebf2dcb00d3d11d2eff51ed0a49290ca01ea`  
		Last Modified: Fri, 01 Dec 2017 14:02:26 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2b945d975b117816ebaa946237b679f3604d50eab313b68c07f113b76242ae`  
		Last Modified: Fri, 01 Dec 2017 14:02:26 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f883a391a0b8fbf60f1841a84757622246b4c51237ad18be594fafd52842791e`  
		Last Modified: Fri, 01 Dec 2017 14:02:26 GMT  
		Size: 7.7 KB (7685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102628e77a1702c8b9136febbd5d6c4425923d5d81dcac4a31795cdeb612e7f5`  
		Last Modified: Fri, 01 Dec 2017 14:47:31 GMT  
		Size: 34.4 MB (34404374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dced6de28e6806565f3bd05621152974beea5a98d1312c6e721c47517b765a0`  
		Last Modified: Fri, 01 Dec 2017 14:47:20 GMT  
		Size: 1.8 MB (1770399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e23231a9f101ad686e54f331f1e0a45ea3d7b12a170b19697136f7e7899748`  
		Last Modified: Fri, 01 Dec 2017 14:47:20 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c001204e346da5aba06ab3f06af3e3d3089719b51fd17c59ce6f80d4da40fa`  
		Last Modified: Fri, 01 Dec 2017 14:47:19 GMT  
		Size: 1.3 MB (1329493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1144880c2876e86ac2bd66dcb28021c5c3bc6c0525c57d4f3094fde4121100d`  
		Last Modified: Fri, 01 Dec 2017 14:47:19 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e73c99bf444acd95b4978b05bd7b40e43eb1b41d99cf0b5c9d92f297483aae`  
		Last Modified: Tue, 05 Dec 2017 04:14:40 GMT  
		Size: 48.4 MB (48392214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7af33acb7f783d497c1b27a8398a8b464fcd7610a585d1ea78be069ebfdea57`  
		Last Modified: Tue, 05 Dec 2017 04:14:24 GMT  
		Size: 939.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20783250c612c0c1651173885e08eacea0e7a8b57ac1dc0dbb82cba1abfe37cc`  
		Last Modified: Tue, 05 Dec 2017 04:14:24 GMT  
		Size: 784.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
