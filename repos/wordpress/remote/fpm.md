## `wordpress:fpm`

```console
$ docker pull wordpress@sha256:d00c7e8480e521628685e12a67aadf48385a093e820fae3444ac5f3f21b3db6d
```

-	Platforms:
	-	linux; amd64

### `wordpress:fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160240327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22d484960bf0cdc1a964b139054f387599da8a40e460408847bffad25eb10ccc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:54:13 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jan 2017 18:54:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:54:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jan 2017 18:54:40 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jan 2017 19:00:40 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 17 Jan 2017 19:00:40 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 19:00:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 19:00:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 17 Jan 2017 19:00:41 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 17 Jan 2017 19:00:41 GMT
ENV PHP_VERSION=5.6.29
# Tue, 17 Jan 2017 19:00:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror
# Tue, 17 Jan 2017 19:00:42 GMT
ENV PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7 PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164
# Tue, 17 Jan 2017 19:00:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jan 2017 19:00:51 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:04:03 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 17 Jan 2017 19:04:04 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:04:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 17 Jan 2017 19:04:05 GMT
WORKDIR /var/www/html
# Tue, 17 Jan 2017 19:04:05 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 17 Jan 2017 19:04:06 GMT
EXPOSE 9000/tcp
# Tue, 17 Jan 2017 19:04:06 GMT
CMD ["php-fpm"]
# Tue, 17 Jan 2017 21:09:00 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Tue, 17 Jan 2017 21:09:01 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 17 Jan 2017 21:09:02 GMT
VOLUME [/var/www/html]
# Tue, 17 Jan 2017 21:09:02 GMT
ENV WORDPRESS_VERSION=4.7.1
# Tue, 17 Jan 2017 21:09:02 GMT
ENV WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6
# Tue, 17 Jan 2017 21:09:04 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 17 Jan 2017 21:09:05 GMT
COPY file:0d5c945fedcf9886801149dd830388361dfc1a00e4f95510833987f19e98e986 in /usr/local/bin/ 
# Tue, 17 Jan 2017 21:09:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 21:09:05 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dce68541a55fd0fb33021383e3921145275a1f87d925f37f1246b682baf0b`  
		Last Modified: Wed, 18 Jan 2017 03:05:48 GMT  
		Size: 77.6 MB (77606810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a832068e64c0a907e1585adac98802eb69cf9fc878ba00941d59e7be57c4b93`  
		Last Modified: Wed, 18 Jan 2017 03:05:21 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383c7d7b892766d10ab9d9c3fce8dcd0000df742d3fd9879001644fc34958ae1`  
		Last Modified: Wed, 18 Jan 2017 03:08:09 GMT  
		Size: 12.6 MB (12556256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31625978708571731cda4e2865c6cfab9165681f88a748ef3d3d126704f0a233`  
		Last Modified: Wed, 18 Jan 2017 03:08:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550961f464a7226935b9919af92334765c490f38b09fc99ae5105047e0176a87`  
		Last Modified: Wed, 18 Jan 2017 03:08:09 GMT  
		Size: 8.8 MB (8763476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24727762dda53523f878dc7fdc5d4a022d1a202e227301b51649b0d54ae4e97`  
		Last Modified: Wed, 18 Jan 2017 03:08:05 GMT  
		Size: 2.0 KB (2015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c9f543564e9445472f7df1d6915e7db756cb22b8b104f97fc0ab61056446ba`  
		Last Modified: Wed, 18 Jan 2017 03:08:01 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa54785de131453fb773c0ea0a6b9b0b3ab7ca1c1069653831046622d4b6601`  
		Last Modified: Wed, 18 Jan 2017 03:08:01 GMT  
		Size: 7.6 KB (7627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c577a52d23b792380dfc8063a7ba3547dd8178bdc73f49398016040d04c80d`  
		Last Modified: Wed, 18 Jan 2017 08:05:13 GMT  
		Size: 2.1 MB (2112684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bfa64ee14a40b37c8329af121ffe45520503ea97c0728162415750aef3d60e`  
		Last Modified: Wed, 18 Jan 2017 08:05:13 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275150abf19e04b8f8cde14e3dbb2b3db486311566b53fa3f5e667e600ff745d`  
		Last Modified: Wed, 18 Jan 2017 08:05:16 GMT  
		Size: 7.8 MB (7826187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf701efa905342e152387f7ab2d719a28a9d3991bd7a3535d1f8ce436e44b78`  
		Last Modified: Wed, 18 Jan 2017 08:05:12 GMT  
		Size: 2.9 KB (2933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
