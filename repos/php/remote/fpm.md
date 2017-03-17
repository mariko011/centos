## `php:fpm`

```console
$ docker pull php@sha256:0f4967cde301806cfa5250884901a94aa0f6be59995c2aac07a061168140b6cd
```

-	Platforms:
	-	linux; amd64

### `php:fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.1 MB (155125884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57ec0dd5fa15139ea899ff41f11fa55be80adec938580a516322a790d852beb4`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:34:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:34:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:47:32 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 17 Mar 2017 22:21:17 GMT
ENV PHP_VERSION=7.1.3
# Fri, 17 Mar 2017 22:21:18 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.3.tar.xz.asc/from/this/mirror
# Fri, 17 Mar 2017 22:21:18 GMT
ENV PHP_SHA256=e4887c2634778e37fd962fbdf5c4a7d32cd708482fe07b448804625570cb0bb0 PHP_MD5=d604d688be17f4a05b99dbb7fb9581f4
# Fri, 17 Mar 2017 22:21:26 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 17 Mar 2017 22:21:26 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 17 Mar 2017 22:25:02 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 17 Mar 2017 22:25:03 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 17 Mar 2017 22:25:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 17 Mar 2017 22:25:04 GMT
WORKDIR /var/www/html
# Fri, 17 Mar 2017 22:25:05 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 17 Mar 2017 22:25:05 GMT
EXPOSE 9000/tcp
# Fri, 17 Mar 2017 22:25:05 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de89c9111d894cb5b6ffd9a4144e298f3d2eb069c2594d24af42a73abaaad3b`  
		Last Modified: Fri, 17 Mar 2017 23:11:30 GMT  
		Size: 12.9 MB (12900068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54b56f8dfff6f28300867776f389c2579addeb9617b5a0d7336444952fa0fb2`  
		Last Modified: Fri, 17 Mar 2017 23:11:25 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f07afdba5d41c3e9f5ff95ae2c92bb3aa7817fb31d4a37ff9e85dea7daf5f2`  
		Last Modified: Fri, 17 Mar 2017 23:11:29 GMT  
		Size: 13.2 MB (13244422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f7920d8667bd1eec1af90a35ceff2c064618edc47a8e927fa356e801d42257`  
		Last Modified: Fri, 17 Mar 2017 23:11:24 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf844ea390f98448c4b46967361bb600c42309bc7a73fb165684bef3ccfd402`  
		Last Modified: Fri, 17 Mar 2017 23:11:24 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eda53de3ccb965d1c69abc630aacb2258f69a0037d7cd12667c2d52184ab87d`  
		Last Modified: Fri, 17 Mar 2017 23:11:26 GMT  
		Size: 7.7 KB (7690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
