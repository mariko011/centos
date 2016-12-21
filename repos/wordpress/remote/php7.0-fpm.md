## `wordpress:php7.0-fpm`

```console
$ docker pull wordpress@sha256:253fc51c748e08e1b3da6765f7d9ee26b70bcbb396faef75b213119823aacf99
```

-	Platforms:
	-	linux; amd64

### `wordpress:php7.0-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164397935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e27f07be83dc1601be6bca889eeffa59bbe8ef6f9f70f3de04ab8fa17e837750`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 14:43:54 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Dec 2016 14:44:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:44:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Dec 2016 14:44:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Dec 2016 14:58:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Dec 2016 15:30:57 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Wed, 14 Dec 2016 15:30:58 GMT
ENV PHP_VERSION=7.0.14
# Wed, 14 Dec 2016 15:30:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror
# Wed, 14 Dec 2016 15:30:58 GMT
ENV PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89 PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476
# Wed, 14 Dec 2016 15:31:12 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Dec 2016 15:31:12 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 14 Dec 2016 15:34:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Mon, 19 Dec 2016 19:25:57 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Mon, 19 Dec 2016 19:25:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Dec 2016 19:25:58 GMT
WORKDIR /var/www/html
# Mon, 19 Dec 2016 19:25:59 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Dec 2016 19:25:59 GMT
EXPOSE 9000/tcp
# Mon, 19 Dec 2016 19:26:00 GMT
CMD ["php-fpm"]
# Wed, 21 Dec 2016 20:44:07 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 21 Dec 2016 20:44:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 21 Dec 2016 20:44:09 GMT
VOLUME [/var/www/html]
# Wed, 21 Dec 2016 20:44:09 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 21 Dec 2016 20:44:10 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 21 Dec 2016 20:44:12 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 21 Dec 2016 20:44:13 GMT
COPY file:6e1608064069d6a0efca7e7e6e05498565d1ec00015623fda652cccda073a77b in /usr/local/bin/ 
# Wed, 21 Dec 2016 20:44:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Dec 2016 20:44:14 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8a4e038be43b07879494a44b3b14e668537bd8b4be6d1cf2d22c7bf8b7f35`  
		Last Modified: Wed, 14 Dec 2016 16:18:52 GMT  
		Size: 77.6 MB (77591778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d4d961577a0338c7bf65f9811429611781ba5f6c7c7069e70f6035a0990e3f`  
		Last Modified: Wed, 14 Dec 2016 16:18:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56da5951c6dd5395fd0459f2f39d16fc3a5bdbc553bf689e98cd4703b3fbf8f7`  
		Last Modified: Wed, 14 Dec 2016 16:30:59 GMT  
		Size: 12.6 MB (12645620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e2e133211c8ad01fb8cc32d104b068c0b0a500c71f06cb4697e906b016fe81`  
		Last Modified: Wed, 14 Dec 2016 16:30:55 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80bd3027ec0242dc94657e7aad92008a167856cc7e9d0ec9518aeed696d08933`  
		Last Modified: Wed, 14 Dec 2016 16:30:58 GMT  
		Size: 12.8 MB (12835450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643ac79e86d7b4dd6cfe1585d2114c25032d2020bc293640171daace143eec76`  
		Last Modified: Mon, 19 Dec 2016 19:44:19 GMT  
		Size: 2.0 KB (2007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f6206070dd8c07a13c93b19c8d95ed6d7a0a399fe0bd594cac9020eb8f858c`  
		Last Modified: Mon, 19 Dec 2016 19:44:23 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc237f3a560a457c1c972e37bee2f9bdf9ca93a9b4cd1eeda5812c7ebec5342e`  
		Last Modified: Mon, 19 Dec 2016 19:44:19 GMT  
		Size: 7.7 KB (7691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d435a14e9eb11098057dfec0f12619ca64518fbd37724db1759b49f1d98503b5`  
		Last Modified: Wed, 21 Dec 2016 20:53:39 GMT  
		Size: 2.1 MB (2126413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed5961587702873f11d0f43cfbcc5cab704ded1c94cc73cd64ae69d5f545a01`  
		Last Modified: Wed, 21 Dec 2016 20:53:38 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f273b1677a37d1251c3c5ba2d5c72f352c5cb5fafdbe6fcd8f06f1db82de7ae5`  
		Last Modified: Wed, 21 Dec 2016 20:53:41 GMT  
		Size: 7.8 MB (7821778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6871fb9ba17086ce3b258e2cac480a96b669fbd5e56eb18f569af59c226b6a98`  
		Last Modified: Wed, 21 Dec 2016 20:53:38 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
