## `nextcloud:12-fpm`

```console
$ docker pull nextcloud@sha256:06b41e5a5b827d27de7bb29b868f13b9c2199f5216477adc62af5ef8dfcf9d17
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

### `nextcloud:12-fpm` - linux; amd64

```console
$ docker pull nextcloud@sha256:520d6c6fd9b7dba13f6800df9b9356ea1160711e3ced1bc79d63ba0ff71515f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.5 MB (248540004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b84577b2fc7d2748de46341336e99c849a3a9098f9aa87a5684f1a3def1f8fb5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:04:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 06:04:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:04:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 06:04:52 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 06:17:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 06:17:03 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 12 Dec 2017 06:17:03 GMT
ENV PHP_VERSION=7.1.12
# Tue, 12 Dec 2017 06:17:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.12.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 06:17:03 GMT
ENV PHP_SHA256=a0118850774571b1f2d4e30b4fe7a4b958ca66f07d07d65ebdc789c54ba6eeb3 PHP_MD5=
# Tue, 12 Dec 2017 06:17:18 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 06:17:21 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 06:21:17 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 13 Dec 2017 23:28:15 GMT
COPY multi:2e4df9268ce870f9ed83b38a2784f3778f2c2468c3e7ee600220221534e4e247 in /usr/local/bin/ 
# Wed, 13 Dec 2017 23:28:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 13 Dec 2017 23:28:15 GMT
WORKDIR /var/www/html
# Wed, 13 Dec 2017 23:28:16 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 13 Dec 2017 23:28:16 GMT
EXPOSE 9000/tcp
# Wed, 13 Dec 2017 23:28:16 GMT
CMD ["php-fpm"]
# Thu, 14 Dec 2017 01:19:44 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 01:21:50 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Thu, 14 Dec 2017 01:28:15 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 14 Dec 2017 01:28:45 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.4  && pecl install redis-3.1.4  && docker-php-ext-enable apcu redis memcached
# Thu, 14 Dec 2017 01:31:03 GMT
ENV NEXTCLOUD_VERSION=12.0.4
# Thu, 14 Dec 2017 01:31:04 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Thu, 14 Dec 2017 01:31:04 GMT
VOLUME [/var/www/html]
# Thu, 14 Dec 2017 01:31:19 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Thu, 14 Dec 2017 01:31:20 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Thu, 14 Dec 2017 01:31:21 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Thu, 14 Dec 2017 01:31:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Dec 2017 01:31:21 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abfca402d9b38de54362ba77d7a6841e1862028622caf32fe05fb90a49f4d36`  
		Last Modified: Tue, 12 Dec 2017 07:18:06 GMT  
		Size: 81.9 MB (81876790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502a4f90da606173fb3b788d076ecd2b2e620a8cfd18e60930c1d821bbb25715`  
		Last Modified: Tue, 12 Dec 2017 07:17:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf53b866d324815a8f97c37ccdd80397969f8eaa81fa6a35b6b254801f03043`  
		Last Modified: Tue, 12 Dec 2017 07:20:37 GMT  
		Size: 12.5 MB (12531509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f45e5f6933f7eff181d60ae524956a497015085f78f61dad023cee02a6ce75`  
		Last Modified: Tue, 12 Dec 2017 07:20:34 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848da306086a248b8b83ade54f57e17b771c8f17ffe8468c4aba0412b0c7d885`  
		Last Modified: Tue, 12 Dec 2017 07:20:38 GMT  
		Size: 13.8 MB (13807599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb974c14e36502ed2965c8bb4fddee5d29babc16a9cd8b5bc605816c073e38c6`  
		Last Modified: Wed, 13 Dec 2017 23:53:54 GMT  
		Size: 2.2 KB (2187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb25f427c239c20ec5d6252215892c968a3b77a9fd6ee1fb09da65bcfab63c8`  
		Last Modified: Wed, 13 Dec 2017 23:53:54 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7911d986b77f096de1989ac098dda355428ea34ee6be45073a51a235da29d42d`  
		Last Modified: Wed, 13 Dec 2017 23:53:53 GMT  
		Size: 7.7 KB (7689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65621b0361d524b8f4a84a612241c14511c2ac688d10c8e4da79fd4aee61b77b`  
		Last Modified: Thu, 14 Dec 2017 01:33:32 GMT  
		Size: 36.1 MB (36095909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73996b89a098c8c55aca5b5d69ff40f6ec3f0786a4d7d6e47fb35190ccaf1036`  
		Last Modified: Thu, 14 Dec 2017 01:33:24 GMT  
		Size: 1.9 MB (1920166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cd6da310895d4d3cf5a67c94a0c9664c4ae0dcb5658ff3e928de64dc138530`  
		Last Modified: Thu, 14 Dec 2017 01:33:23 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d1cd994389fae92b55eba1188025853b2d65c5017511a6ec6516ba01cb8e30`  
		Last Modified: Thu, 14 Dec 2017 01:33:20 GMT  
		Size: 1.3 MB (1303197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561c47959b150ae8e936ef9812891ad6452e058ff9ceefe0ee142c165ab57447`  
		Last Modified: Thu, 14 Dec 2017 01:33:20 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e0565f03e80bc017a2e9dc42f69c91a45cc6105daa12ab1667f2aabfb09461`  
		Last Modified: Thu, 14 Dec 2017 01:37:00 GMT  
		Size: 48.4 MB (48392231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa03fa82ccec5cee302eb412bce97aadf3962232bb03b3223a77c1ddd98623e`  
		Last Modified: Thu, 14 Dec 2017 01:36:41 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4edd4feecbcc7d9ec4726fe5d1db6732a814f54c70cb1109a91fff26ba106af`  
		Last Modified: Thu, 14 Dec 2017 01:36:41 GMT  
		Size: 788.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:12-fpm` - linux; arm variant v5

```console
$ docker pull nextcloud@sha256:2cb1c5c5035e94d3afe58a63327ee3168c773d791edfa966fd00ef10d5ea39e4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.1 MB (227062361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e86b925803f3a96cfc8c6615654cc0293278fb502bdf044ba25a1a3272f7a821`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:41:51 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 23:42:43 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:42:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 23:42:45 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 23:52:01 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 12 Dec 2017 23:52:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 23:52:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 23:52:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 23:52:02 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 12 Dec 2017 23:52:02 GMT
ENV PHP_VERSION=7.1.12
# Tue, 12 Dec 2017 23:52:02 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.12.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 23:52:03 GMT
ENV PHP_SHA256=a0118850774571b1f2d4e30b4fe7a4b958ca66f07d07d65ebdc789c54ba6eeb3 PHP_MD5=
# Tue, 12 Dec 2017 23:52:42 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 23:52:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 23:55:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 12 Dec 2017 23:56:01 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 12 Dec 2017 23:56:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 12 Dec 2017 23:56:01 GMT
WORKDIR /var/www/html
# Tue, 12 Dec 2017 23:56:02 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 12 Dec 2017 23:56:03 GMT
EXPOSE 9000/tcp
# Tue, 12 Dec 2017 23:56:03 GMT
CMD ["php-fpm"]
# Wed, 13 Dec 2017 03:40:23 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 03:45:08 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Wed, 13 Dec 2017 03:45:09 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 13 Dec 2017 03:45:59 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.4  && pecl install redis-3.1.4  && docker-php-ext-enable apcu redis memcached
# Wed, 13 Dec 2017 03:47:32 GMT
ENV NEXTCLOUD_VERSION=12.0.4
# Wed, 13 Dec 2017 03:47:33 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Wed, 13 Dec 2017 03:47:33 GMT
VOLUME [/var/www/html]
# Wed, 13 Dec 2017 03:47:53 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Wed, 13 Dec 2017 03:47:55 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Wed, 13 Dec 2017 03:47:55 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Wed, 13 Dec 2017 03:47:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Dec 2017 03:47:56 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3aeb68ccd88ec475484283ba13f3dab79cd05d35fd68bc49ff3bc488d04303b`  
		Last Modified: Wed, 13 Dec 2017 00:41:38 GMT  
		Size: 62.9 MB (62945997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47114ce3b6917fc40fec7177efac4a2f14a13b5b20024e69a71a8c17a4b78c94`  
		Last Modified: Wed, 13 Dec 2017 00:41:19 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8826293f27eeea8aca1dd13a5678c532a55d453f8ca8981cee939cc957a5b7dc`  
		Last Modified: Wed, 13 Dec 2017 00:43:29 GMT  
		Size: 12.5 MB (12530192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3c3c4c94980c3bd431cbb2bbaa0ee9bdabd744327e6a2c2ead33333f0b48c2`  
		Last Modified: Wed, 13 Dec 2017 00:43:25 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1244f1b884046cba7e960ad9554c637d3cd5622910d79e6c7bec1677d43aca`  
		Last Modified: Wed, 13 Dec 2017 00:43:30 GMT  
		Size: 13.1 MB (13077913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38cd26001b6b02c4d741aeacf9f9d6752e0bd9a1722fd07cc6159ab5ea97dd8`  
		Last Modified: Wed, 13 Dec 2017 00:43:25 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc713221d60df85b859b98382b2cb7bc2f121a73d36fe75324ea7e3b302a6e9`  
		Last Modified: Wed, 13 Dec 2017 00:43:25 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8491da8213fbc2f55ea571832f6bdf3bfe60d9a3a8f25b3da303ad88c8050b4`  
		Last Modified: Wed, 13 Dec 2017 00:43:26 GMT  
		Size: 7.7 KB (7684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16390a4030f439d672d0b7dc9fcdbc361cc193f797dff0bd0b2f3bceace4836`  
		Last Modified: Wed, 13 Dec 2017 03:50:16 GMT  
		Size: 36.0 MB (36023246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c082321eba1d342be2984cd3ad18544bd117f69c0c430ffecbf1d15a0479e3`  
		Last Modified: Wed, 13 Dec 2017 03:50:05 GMT  
		Size: 1.8 MB (1847688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d71ef0338cd475274522836b14cb5da2b1b069eb4a1579d953cc456eb2a12a`  
		Last Modified: Wed, 13 Dec 2017 03:50:04 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc68413c34aa03b544bf147fc5321852824990966d2fba5609c2f96310100e0e`  
		Last Modified: Wed, 13 Dec 2017 03:50:03 GMT  
		Size: 1.3 MB (1349666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f31531ab993adcf73117b96893cc09ce2311764351c2badaec0c6dc4790b6f`  
		Last Modified: Wed, 13 Dec 2017 03:50:04 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d491ecee512a167afb93ae842a22e1189f378018d398e051b8b14a7f4d1efe`  
		Last Modified: Wed, 13 Dec 2017 03:53:54 GMT  
		Size: 48.4 MB (48392232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280c58666a06c37f4e7397d33c126dfd90cd14f8d35ac9d3cad93b96178b72c7`  
		Last Modified: Wed, 13 Dec 2017 03:53:34 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5efb08984884d4b7b783790b7218686513312bc0c0f2b9187416612378197c4b`  
		Last Modified: Wed, 13 Dec 2017 03:53:34 GMT  
		Size: 784.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:12-fpm` - linux; arm variant v7

```console
$ docker pull nextcloud@sha256:1e3be5000f7749c82c2455396c805594279e4d86a256ab2df519d6a81e5afb15
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.7 MB (222689137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c05627f28d545a2416a991629f3b03caaf874de42adaa3240fa7246671bde8e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 15:19:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 15:19:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:20:03 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 15:20:04 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 15:29:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 12 Dec 2017 15:29:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 15:29:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 15:29:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 15:29:10 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 12 Dec 2017 15:29:10 GMT
ENV PHP_VERSION=7.1.12
# Tue, 12 Dec 2017 15:29:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.12.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 15:29:11 GMT
ENV PHP_SHA256=a0118850774571b1f2d4e30b4fe7a4b958ca66f07d07d65ebdc789c54ba6eeb3 PHP_MD5=
# Tue, 12 Dec 2017 15:29:48 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 15:29:49 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 15:32:55 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 14 Dec 2017 12:50:38 GMT
COPY multi:2e4df9268ce870f9ed83b38a2784f3778f2c2468c3e7ee600220221534e4e247 in /usr/local/bin/ 
# Thu, 14 Dec 2017 12:50:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 14 Dec 2017 12:50:39 GMT
WORKDIR /var/www/html
# Thu, 14 Dec 2017 12:50:40 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 14 Dec 2017 12:50:40 GMT
EXPOSE 9000/tcp
# Thu, 14 Dec 2017 12:50:40 GMT
CMD ["php-fpm"]
# Thu, 14 Dec 2017 13:40:49 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 13:44:56 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Thu, 14 Dec 2017 13:45:08 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 14 Dec 2017 13:45:53 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.4  && pecl install redis-3.1.4  && docker-php-ext-enable apcu redis memcached
# Thu, 14 Dec 2017 13:48:32 GMT
ENV NEXTCLOUD_VERSION=12.0.4
# Thu, 14 Dec 2017 13:48:33 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Thu, 14 Dec 2017 13:48:44 GMT
VOLUME [/var/www/html]
# Thu, 14 Dec 2017 13:49:05 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Thu, 14 Dec 2017 13:49:14 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Thu, 14 Dec 2017 13:49:16 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Thu, 14 Dec 2017 13:49:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Dec 2017 13:49:16 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72625e92d9e0a5984667c23c8fa5f90848e418d38193d28dfd6e0b3a1db5aab`  
		Last Modified: Tue, 12 Dec 2017 16:21:10 GMT  
		Size: 63.2 MB (63224569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27e9abf527a4d10b9db8438904ae53de526b6a662452ca246a9504717977fe1`  
		Last Modified: Tue, 12 Dec 2017 16:20:53 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c9914db4fe7dea4b3b916a340a51804c90c26aff35a7490fc45bd1d67d0116`  
		Last Modified: Tue, 12 Dec 2017 16:23:34 GMT  
		Size: 12.5 MB (12530209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf19ca2628e044bb5e39e5caf63a93e7e810db7924d6e346a0e0a544e1c804b7`  
		Last Modified: Tue, 12 Dec 2017 16:23:31 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181c6d8f8fb7109b7631931e586ac92596176abe3026eb6a1ec91107b9c948a1`  
		Last Modified: Tue, 12 Dec 2017 16:23:35 GMT  
		Size: 12.3 MB (12332047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:700e14c39454dd38161c38338ec967e93d6b2c0fc3f8813aae62b8a1cc106b13`  
		Last Modified: Thu, 14 Dec 2017 13:04:19 GMT  
		Size: 2.2 KB (2186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c498725e980207aaf98b7eb4fb7d94ea6d28520ed2cb07a27019aa8b486de275`  
		Last Modified: Thu, 14 Dec 2017 13:04:20 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2d8dbf7ea4e52a85a55f4895cbe79b340c754ca4187ee7e8253873b94704a0`  
		Last Modified: Thu, 14 Dec 2017 13:04:20 GMT  
		Size: 7.7 KB (7689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8589b670b09330ca28e19ebef7745ad64b744b906bc042887e21d79a6fe94ca`  
		Last Modified: Thu, 14 Dec 2017 13:51:48 GMT  
		Size: 34.4 MB (34405479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff23de8ff10dd51f39d972a55ddc6c5df9208a4f0d4f8f4f9f781968e94426c`  
		Last Modified: Thu, 14 Dec 2017 13:51:37 GMT  
		Size: 1.8 MB (1770391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a5bcafd44fa354bb3e2597822687558ec76527a459876201f5a159b38eb8e0`  
		Last Modified: Thu, 14 Dec 2017 13:51:37 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a4b94d7ca9e9522e7479a9fb3f7d68bd1c9e8518016273380bf9f2f2ceb181`  
		Last Modified: Thu, 14 Dec 2017 13:51:36 GMT  
		Size: 1.3 MB (1329493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0b4021b246e4aea895ae612d84c3af6bcc1b8bf4c19dce505fd80621783e1d`  
		Last Modified: Thu, 14 Dec 2017 13:51:36 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa5366fc538bb9fafd51d4787759672026e6fd1b51a0157c3128167eca6b2759`  
		Last Modified: Thu, 14 Dec 2017 13:56:30 GMT  
		Size: 48.4 MB (48392231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a8f959196a4a14df03b45430f7f1f80e133822b8a5ef76edb06940d1701c0d`  
		Last Modified: Thu, 14 Dec 2017 13:56:13 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fac19ebd0bf47b985542a2ce86459a072a4578b9bd9ac552677d1b5dd520ef`  
		Last Modified: Thu, 14 Dec 2017 13:56:13 GMT  
		Size: 785.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:12-fpm` - linux; arm64 variant v8

```console
$ docker pull nextcloud@sha256:d35c1faa9b9b39887c432c61203900b725c28a36e4f33766bdd6324a92255a3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.7 MB (226679336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d0d8d34cc34d979c69bcca96fbc9fa9d5fb4f2b99bf6f7ee82a673031955e76`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Fri, 01 Dec 2017 04:02:53 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Dec 2017 04:02:54 GMT
ENV PHP_VERSION=7.1.12
# Fri, 01 Dec 2017 04:02:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.12.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 04:02:55 GMT
ENV PHP_SHA256=a0118850774571b1f2d4e30b4fe7a4b958ca66f07d07d65ebdc789c54ba6eeb3 PHP_MD5=
# Fri, 01 Dec 2017 04:03:37 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Dec 2017 04:03:37 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 04:10:47 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 04:10:49 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Fri, 01 Dec 2017 04:10:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 04:10:50 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 04:10:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 01 Dec 2017 04:10:52 GMT
EXPOSE 9000/tcp
# Fri, 01 Dec 2017 04:10:52 GMT
CMD ["php-fpm"]
# Fri, 01 Dec 2017 06:46:08 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 01 Dec 2017 06:52:07 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Fri, 01 Dec 2017 06:52:09 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 01 Dec 2017 06:53:17 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.4  && pecl install redis-3.1.4  && docker-php-ext-enable apcu redis memcached
# Tue, 05 Dec 2017 09:38:11 GMT
ENV NEXTCLOUD_VERSION=12.0.4
# Tue, 05 Dec 2017 09:38:14 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Tue, 05 Dec 2017 09:38:14 GMT
VOLUME [/var/www/html]
# Tue, 05 Dec 2017 09:38:43 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Tue, 05 Dec 2017 09:38:45 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Tue, 05 Dec 2017 09:38:46 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Tue, 05 Dec 2017 09:38:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Dec 2017 09:38:48 GMT
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
	-	`sha256:86625fc19c4cc9f94a6db34d5884fec888f9b8d34cd21ea329202be68cc1cf6f`  
		Last Modified: Fri, 01 Dec 2017 05:37:10 GMT  
		Size: 12.5 MB (12529969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e76f844704b6737179b1d5b39caa6554acbda97985b80cdc017017fcdaa8c5a`  
		Last Modified: Fri, 01 Dec 2017 05:37:06 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c3ddf6bad3a1ccdf7dd04b8531706027df5843b5692de036c202ee8397125e`  
		Last Modified: Fri, 01 Dec 2017 05:37:12 GMT  
		Size: 12.9 MB (12881645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6338fbd84a065e3972a1cebee1b631f6f110db012b97c64659cb031a7c509c58`  
		Last Modified: Fri, 01 Dec 2017 05:37:06 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df5dd41a63d3093d92bcd258d2d7cc70c6130776aa004e2a2d2957ded6e9afc`  
		Last Modified: Fri, 01 Dec 2017 05:37:06 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893347a4eb119541d2bf74c6530062dc26d3fa14f5975f119ea0fd4e83b2dd88`  
		Last Modified: Fri, 01 Dec 2017 05:37:08 GMT  
		Size: 7.7 KB (7681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b066a5f7652b2699083da0ae4423d90571e1aa04600c5b66488d0e4de6b39d`  
		Last Modified: Fri, 01 Dec 2017 06:58:47 GMT  
		Size: 35.7 MB (35739728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb2d4bf4aa9857a10beb3c837ae7bb025defc6adf5fe0131b3080a691cdea4b`  
		Last Modified: Fri, 01 Dec 2017 06:58:34 GMT  
		Size: 1.8 MB (1817179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef121c3720442c78f92329ebc46f8fae18f5229e331325fdc4c095d12bc3dec6`  
		Last Modified: Fri, 01 Dec 2017 06:58:33 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048f8770af252fdeb61db07635fe1f32e406d49d80832bc880c75ea359b1aee3`  
		Last Modified: Fri, 01 Dec 2017 06:58:32 GMT  
		Size: 1.4 MB (1373171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36dd0876d8e57b90acc2e43b85be9608c166743f2c622920c8acc5b566cd456c`  
		Last Modified: Fri, 01 Dec 2017 06:58:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada34b7b2295c477e38463306c574686530c5897b1557e9e833e4abc3d442821`  
		Last Modified: Tue, 05 Dec 2017 09:46:51 GMT  
		Size: 48.4 MB (48392241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1040830778a72c96ceee764da67b319c67c79bc3159359bd57e183ce231fa3ae`  
		Last Modified: Tue, 05 Dec 2017 09:46:21 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:452ce03781825830b31c6714eaf8db5a4e305542674c6834290d88c68e339e86`  
		Last Modified: Tue, 05 Dec 2017 09:46:21 GMT  
		Size: 786.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:12-fpm` - linux; 386

```console
$ docker pull nextcloud@sha256:bebaceee77ed1ada9d18f44ae7731f77c2841725731ef365e9e7212548415339
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250774848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c559d32dfdf10184a1aacfc8c1fab9e2ffc72bef527fc8fe940e99e3b3676739`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:17:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 23:18:45 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:18:45 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 23:18:46 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 23:42:06 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 12 Dec 2017 23:42:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 23:42:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 23:42:06 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 23:42:06 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 12 Dec 2017 23:42:07 GMT
ENV PHP_VERSION=7.1.12
# Tue, 12 Dec 2017 23:42:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.12.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 23:42:07 GMT
ENV PHP_SHA256=a0118850774571b1f2d4e30b4fe7a4b958ca66f07d07d65ebdc789c54ba6eeb3 PHP_MD5=
# Tue, 12 Dec 2017 23:42:41 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 23:42:44 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 23:48:25 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 14 Dec 2017 10:19:37 GMT
COPY multi:2e4df9268ce870f9ed83b38a2784f3778f2c2468c3e7ee600220221534e4e247 in /usr/local/bin/ 
# Thu, 14 Dec 2017 10:19:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 14 Dec 2017 10:19:38 GMT
WORKDIR /var/www/html
# Thu, 14 Dec 2017 10:19:39 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 14 Dec 2017 10:19:39 GMT
EXPOSE 9000/tcp
# Thu, 14 Dec 2017 10:19:39 GMT
CMD ["php-fpm"]
# Thu, 14 Dec 2017 11:25:22 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 11:27:46 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Thu, 14 Dec 2017 11:31:21 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 14 Dec 2017 11:31:55 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.4  && pecl install redis-3.1.4  && docker-php-ext-enable apcu redis memcached
# Thu, 14 Dec 2017 11:42:15 GMT
ENV NEXTCLOUD_VERSION=12.0.4
# Thu, 14 Dec 2017 11:42:16 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Thu, 14 Dec 2017 11:42:17 GMT
VOLUME [/var/www/html]
# Thu, 14 Dec 2017 11:42:36 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Thu, 14 Dec 2017 11:44:14 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Thu, 14 Dec 2017 11:44:15 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Thu, 14 Dec 2017 11:44:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Dec 2017 11:44:15 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505d222090fac145eca05d5e47522f2315ebc8896e9c145635f09980445d24ee`  
		Last Modified: Wed, 13 Dec 2017 01:40:58 GMT  
		Size: 83.3 MB (83275013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28abbcc628ef51fb925482083f07f6ebb1ec025e73ba7fdefbb7f0a3715c293e`  
		Last Modified: Wed, 13 Dec 2017 01:40:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3171dc7773659cfce42a7e74117d4e6bdf4c86da07ac97d7949e4a59ec221992`  
		Last Modified: Wed, 13 Dec 2017 01:53:41 GMT  
		Size: 12.5 MB (12531065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea7d838c552c43014451af18516bcee562d38ecc9402ede235893dda6fb81a8`  
		Last Modified: Wed, 13 Dec 2017 01:53:39 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc30cf84785b26f84934f967c960b509e04a7807f8f48d9a5aaf67776e8c5d4`  
		Last Modified: Wed, 13 Dec 2017 01:53:45 GMT  
		Size: 14.2 MB (14213245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143350a2fb01efcecd0393312617b7c9bb30acdd52b954e67e12fd071272cabc`  
		Last Modified: Thu, 14 Dec 2017 10:42:02 GMT  
		Size: 2.2 KB (2184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b5125200d4ce9d6056cdb3309f1a1d1fb8ea35063c06a0e635f923278f8c48`  
		Last Modified: Thu, 14 Dec 2017 10:42:01 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0eb39335466c95d844c7990c68a44a52600b4a27fe300fc6bc6c7d65985417`  
		Last Modified: Thu, 14 Dec 2017 10:42:01 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4ecb61b966835c823c3d7d41f5158b44762b3a55d23f7a1c7b6b9b976b29f7`  
		Last Modified: Thu, 14 Dec 2017 12:22:13 GMT  
		Size: 36.3 MB (36347983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbd4f5171598bb76582b07946d1102ad03ab1b62ee379c2c018166844ca7fc8`  
		Last Modified: Thu, 14 Dec 2017 12:22:00 GMT  
		Size: 1.9 MB (1940014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fa4ce0a5820c5d916778d5074d0afd80d2f8e619be4a28630c2568c617168fc`  
		Last Modified: Thu, 14 Dec 2017 12:22:00 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0740fecd8ae120801c7b2dab06b3cd3956534c9f15c5ff8aa1276e9a6f0bba`  
		Last Modified: Thu, 14 Dec 2017 12:22:00 GMT  
		Size: 1.3 MB (1284994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e7ecd2af3defa8e00be38254c59626ca0c3820274cec3ecb95eb8428566486`  
		Last Modified: Thu, 14 Dec 2017 12:21:59 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376ab08077c635e40e6efa973ec5242fb932f663b15ccecf6fb9848c3361f582`  
		Last Modified: Thu, 14 Dec 2017 12:49:16 GMT  
		Size: 48.4 MB (48392268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7016d32544e242b03bf8a510822bd6cdedf2b5a8a30eaaf53d160e0e30ee541e`  
		Last Modified: Thu, 14 Dec 2017 12:48:52 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a16526242d43f6431596e71633a1cacde2acacca2b94e39ccf60e98c5a31017`  
		Last Modified: Thu, 14 Dec 2017 12:48:52 GMT  
		Size: 785.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:12-fpm` - linux; ppc64le

```console
$ docker pull nextcloud@sha256:3b79aa357a8fd62b902009959168a3f583d148262c6382917718126d32cdcbd8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.7 MB (235749248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dd05b40fbbf09d085e692483223ce2b9093f19b4c4181b725e547482bccb728`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 04:59:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 05:02:29 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 05:02:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 05:02:36 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 05:16:29 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 12 Dec 2017 05:16:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 05:16:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 05:16:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 05:16:37 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 12 Dec 2017 05:16:38 GMT
ENV PHP_VERSION=7.1.12
# Tue, 12 Dec 2017 05:16:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.12.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 05:16:43 GMT
ENV PHP_SHA256=a0118850774571b1f2d4e30b4fe7a4b958ca66f07d07d65ebdc789c54ba6eeb3 PHP_MD5=
# Tue, 12 Dec 2017 05:17:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 05:17:29 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 05:21:25 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 14 Dec 2017 10:05:38 GMT
COPY multi:2e4df9268ce870f9ed83b38a2784f3778f2c2468c3e7ee600220221534e4e247 in /usr/local/bin/ 
# Thu, 14 Dec 2017 10:05:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 14 Dec 2017 10:05:40 GMT
WORKDIR /var/www/html
# Thu, 14 Dec 2017 10:05:44 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 14 Dec 2017 10:05:47 GMT
EXPOSE 9000/tcp
# Thu, 14 Dec 2017 10:05:49 GMT
CMD ["php-fpm"]
# Thu, 14 Dec 2017 10:56:04 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 10:59:59 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Thu, 14 Dec 2017 11:00:03 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 14 Dec 2017 11:00:50 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.4  && pecl install redis-3.1.4  && docker-php-ext-enable apcu redis memcached
# Thu, 14 Dec 2017 11:03:35 GMT
ENV NEXTCLOUD_VERSION=12.0.4
# Thu, 14 Dec 2017 11:03:39 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Thu, 14 Dec 2017 11:03:45 GMT
VOLUME [/var/www/html]
# Thu, 14 Dec 2017 11:04:24 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Thu, 14 Dec 2017 11:04:32 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Thu, 14 Dec 2017 11:04:35 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Thu, 14 Dec 2017 11:04:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Dec 2017 11:04:45 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa79ec1eb43aa76b00d70bf8757fbf93471bad759289ee7c4294dcb373e805a4`  
		Last Modified: Tue, 12 Dec 2017 06:21:19 GMT  
		Size: 69.4 MB (69449520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64a40f8c0f44a4f7daea0d4dd93881398ae7305d0c42d4a2c39a8301194ee6f9`  
		Last Modified: Tue, 12 Dec 2017 06:20:55 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:accce98436f6b9d4e73595484c824399222bed5dd679b4320b783df5995b8f6c`  
		Last Modified: Tue, 12 Dec 2017 06:22:52 GMT  
		Size: 12.5 MB (12530420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cacfef48114fc34c9dcc3fad8b5bcf9a57f5ea9c1341da43b2cc4a5d3696467e`  
		Last Modified: Tue, 12 Dec 2017 06:22:48 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49815095ae6346d53215efe9a8f3404cdd31c647b9fa7bb5e4569236ffe3b8c`  
		Last Modified: Tue, 12 Dec 2017 06:22:52 GMT  
		Size: 13.7 MB (13692074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268fe07ea9765f39f27c997ba153ec35f8fa44e2996366d1dddce045bb2005da`  
		Last Modified: Thu, 14 Dec 2017 10:21:04 GMT  
		Size: 2.2 KB (2181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e55dadb911d586da31b0e10c3d361588988b712badfea1ca2f04282709a366d`  
		Last Modified: Thu, 14 Dec 2017 10:21:05 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a978b74628ab09fa41844a2a163e9ecaccc12cfc6504316e77aeb2e30ec07f07`  
		Last Modified: Thu, 14 Dec 2017 10:21:04 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3371ba0f9ae812dd99e737c29c9b113bab2c415714393806723c0e6012e3d49b`  
		Last Modified: Thu, 14 Dec 2017 11:07:03 GMT  
		Size: 36.5 MB (36533507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ceb17691b5dceb68cd75936716e875ef531c62c79083b3e2b98a73dab9f62d2`  
		Last Modified: Thu, 14 Dec 2017 11:06:48 GMT  
		Size: 1.9 MB (1927448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c0a34deb3ddc479ff9255d595463657e886fd45a4637d91e67b42c0dafaa1c`  
		Last Modified: Thu, 14 Dec 2017 11:06:47 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060d7c7ae48e85eddc1a80f87af8975634872904e6135a4ecaee05328f92c191`  
		Last Modified: Thu, 14 Dec 2017 11:06:48 GMT  
		Size: 1.4 MB (1402092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0261182a12401d07e78bcec064570890d2db1016d201e57b46bdb964ad48a3c5`  
		Last Modified: Thu, 14 Dec 2017 11:06:45 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec708c429664d73e82878d6751c9926dfc267c0ecce331a266bb0609f9c6ddc`  
		Last Modified: Thu, 14 Dec 2017 11:09:18 GMT  
		Size: 48.4 MB (48392233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a280e0aeb9c77244fae1bde0520bfe47a291a55580ee9e322f18dce7b5c1ef92`  
		Last Modified: Thu, 14 Dec 2017 11:09:03 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a34abafbf00a8cf3e22629ab2e48da87414062e05d0ae929afe67abbeaec52`  
		Last Modified: Thu, 14 Dec 2017 11:09:03 GMT  
		Size: 786.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:12-fpm` - linux; s390x

```console
$ docker pull nextcloud@sha256:43333b6f41e8102c8bdb91b577a10410d250883943ee34dee60e82b574e9f55f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.9 MB (231932434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:513a3c13bbada07208fbd419378d365a26f5e1c0d490546cb1dc3750c41fd14c`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Fri, 01 Dec 2017 18:28:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Dec 2017 18:28:25 GMT
ENV PHP_VERSION=7.1.12
# Fri, 01 Dec 2017 18:28:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.12.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 18:28:25 GMT
ENV PHP_SHA256=a0118850774571b1f2d4e30b4fe7a4b958ca66f07d07d65ebdc789c54ba6eeb3 PHP_MD5=
# Fri, 01 Dec 2017 18:28:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Dec 2017 18:28:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 18:31:23 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 18:31:23 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Fri, 01 Dec 2017 18:31:23 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 18:31:23 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 18:31:24 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 01 Dec 2017 18:31:24 GMT
EXPOSE 9000/tcp
# Fri, 01 Dec 2017 18:31:24 GMT
CMD ["php-fpm"]
# Fri, 01 Dec 2017 20:05:01 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Fri, 01 Dec 2017 20:09:09 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Fri, 01 Dec 2017 20:09:10 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 01 Dec 2017 20:09:52 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.4  && pecl install redis-3.1.4  && docker-php-ext-enable apcu redis memcached
# Wed, 06 Dec 2017 00:01:55 GMT
ENV NEXTCLOUD_VERSION=12.0.4
# Wed, 06 Dec 2017 00:01:56 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Wed, 06 Dec 2017 00:01:56 GMT
VOLUME [/var/www/html]
# Wed, 06 Dec 2017 00:02:11 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Wed, 06 Dec 2017 00:02:14 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Wed, 06 Dec 2017 00:02:18 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Wed, 06 Dec 2017 00:02:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Dec 2017 00:02:18 GMT
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
	-	`sha256:11ede21be58ca702897f56e8fd9f03265c2ebb9bbbc20fe90ecc528c468ed80f`  
		Last Modified: Fri, 01 Dec 2017 19:02:00 GMT  
		Size: 12.5 MB (12529687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec1dcaaa01a07f8290ac1ceeb3ae3afc70fe86922cede5dd6f613a348fd9fc2`  
		Last Modified: Fri, 01 Dec 2017 19:01:58 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73226b4277972d129c7e5686f81b3f7cf4b3daa3c5aedcd5f2d0ecf950a581e7`  
		Last Modified: Fri, 01 Dec 2017 19:02:01 GMT  
		Size: 14.6 MB (14636425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee215333d137bc420eb9bda2cb075b34d959127df7b86801db9cac829936366`  
		Last Modified: Fri, 01 Dec 2017 19:01:58 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f04642d01edbeb23a0e457591cc611d4cb9048ed442f9ab903fdf2023f2b18`  
		Last Modified: Fri, 01 Dec 2017 19:01:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3286059776d0e363f258a02d75cbbff38ca611363fda69bc7521d0385d4885`  
		Last Modified: Fri, 01 Dec 2017 19:01:58 GMT  
		Size: 7.7 KB (7682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde2672f7cadd1573d8a106ee4597617f9f8f105df243501236cf9c2ed83c6ad`  
		Last Modified: Fri, 01 Dec 2017 20:12:50 GMT  
		Size: 36.8 MB (36810697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c81698b085dcbad2472bdfc437604f2d6f238144507e952c5732ddc735a378`  
		Last Modified: Fri, 01 Dec 2017 20:12:38 GMT  
		Size: 2.0 MB (1963930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ae98187edc726d6d403a9af1de34dbe242bc86ed39c5b9b35ed98bbd4a2f202`  
		Last Modified: Fri, 01 Dec 2017 20:12:37 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297d8fca5c4ed82ea50c2bd2b7d530281137e7d45549b0baf13442d1636a2a3f`  
		Last Modified: Fri, 01 Dec 2017 20:12:37 GMT  
		Size: 1.4 MB (1376161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85840bcd9e9a85aed082698d4146031c7c3756378ff8802b23dd19f147c01944`  
		Last Modified: Fri, 01 Dec 2017 20:12:36 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04e7ffcef9d337ddcaac7ac1d33515d08e8cd5c9fb682095ca7fa825a98a970a`  
		Last Modified: Wed, 06 Dec 2017 00:05:01 GMT  
		Size: 48.4 MB (48392243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816d33c16377f32be3cf2437fe6eaec180af085544f94382c852dc9de156e467`  
		Last Modified: Wed, 06 Dec 2017 00:04:51 GMT  
		Size: 939.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44aa53e58b7f9e51e47de5d557e2e78f5a9f8af69b082943fc93aa4355f38f91`  
		Last Modified: Wed, 06 Dec 2017 00:04:51 GMT  
		Size: 787.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
