## `nextcloud:11-fpm`

```console
$ docker pull nextcloud@sha256:928fb37ecba2757a23fed3287f6882b9487568c83fdb11b9522af3540dd87015
```

-	Platforms:
	-	linux; amd64

### `nextcloud:11-fpm` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.2 MB (240191989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:939881d56e1e0188ac044645bdcbd539ba938d9d08c3185191fefc3c04cc2610`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:53:21 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Apr 2017 02:53:59 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 25 Apr 2017 02:54:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Apr 2017 02:54:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 25 Apr 2017 03:07:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 25 Apr 2017 03:07:47 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:07:48 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:07:48 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 25 Apr 2017 03:23:46 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 25 Apr 2017 03:23:46 GMT
ENV PHP_VERSION=7.1.4
# Tue, 25 Apr 2017 03:23:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.4.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.4.tar.xz.asc/from/this/mirror
# Tue, 25 Apr 2017 03:23:47 GMT
ENV PHP_SHA256=71514386adf3e963df087c2044a0b3747900b8b1fc8da3a99f0a0ae9180d300b PHP_MD5=a74c13f8779349872b365e6732e8c98e
# Tue, 25 Apr 2017 03:24:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 25 Apr 2017 03:24:01 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:32:00 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 25 Apr 2017 03:32:02 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:32:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Apr 2017 03:32:04 GMT
WORKDIR /var/www/html
# Tue, 25 Apr 2017 03:32:05 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 25 Apr 2017 03:32:06 GMT
EXPOSE 9000/tcp
# Tue, 25 Apr 2017 03:32:07 GMT
CMD ["php-fpm"]
# Tue, 25 Apr 2017 11:31:33 GMT
RUN apt-get update && apt-get install -y   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 11:33:28 GMT
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip
# Tue, 25 Apr 2017 11:33:30 GMT
RUN {     echo 'opcache.memory_consumption=128';     echo 'opcache.interned_strings_buffer=8';     echo 'opcache.max_accelerated_files=4000';     echo 'opcache.revalidate_freq=60';     echo 'opcache.fast_shutdown=1';     echo 'opcache.enable_cli=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 25 Apr 2017 11:33:57 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.2  && pecl install redis-3.1.1  && docker-php-ext-enable apcu redis memcached
# Tue, 25 Apr 2017 11:33:57 GMT
ENV NEXTCLOUD_VERSION=11.0.3
# Tue, 25 Apr 2017 11:33:58 GMT
VOLUME [/var/www/html]
# Tue, 25 Apr 2017 11:34:12 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2
# Tue, 25 Apr 2017 11:34:13 GMT
COPY file:c7f1f4a0f998c8c0da4d04648ceaf6cc3023bcb1ce16653971a83aa733746efc in /entrypoint.sh 
# Tue, 25 Apr 2017 11:34:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Apr 2017 11:34:14 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b8a88a0af049efa3c92b1c96a947f501ec7c751a568b0d3881b3c757a184a3`  
		Last Modified: Tue, 25 Apr 2017 04:02:19 GMT  
		Size: 78.8 MB (78849205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78c922dd678a8a2c701087b1ac1381c50cb83d0bf5fc1c55c86f1ce22c7c49f`  
		Last Modified: Tue, 25 Apr 2017 04:01:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3987eef7bd1f3e1979df114d457f28964496a65313e05cbb44ea1bf4cee25dfc`  
		Last Modified: Tue, 25 Apr 2017 04:08:10 GMT  
		Size: 12.9 MB (12905030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c4d9c334d87d5c269e651bad874c743e6021f7d9fa09847b05fdca44004f0a`  
		Last Modified: Tue, 25 Apr 2017 04:08:06 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d86b3e1fd2f1c5ed15544d4d11605b3e2a09147403522680e2f8124d5dc07ec`  
		Last Modified: Tue, 25 Apr 2017 04:08:09 GMT  
		Size: 13.6 MB (13590992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f312874ef5ddaca751d7c5f74a9d93d5379da9ba28b932db4d87e941324d2ba`  
		Last Modified: Tue, 25 Apr 2017 04:08:06 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb4523f49574820ecef0d584be305cb898b4cd11a25759e1c6ff009de92beb4`  
		Last Modified: Tue, 25 Apr 2017 04:08:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ccae9a16630cef32051920eee6bd6bd6a4c4846c5d8343177377c547561f8f`  
		Last Modified: Tue, 25 Apr 2017 04:08:06 GMT  
		Size: 7.7 KB (7677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22794938b4382933466cd17fa906d40de48aebefb762f5b377d1889f7e06fa4c`  
		Last Modified: Tue, 25 Apr 2017 19:43:23 GMT  
		Size: 35.4 MB (35407081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cb6870aa0e0f57fd451bb2af40b4163005bb58de0e17cb0d8f1b2236c05128`  
		Last Modified: Tue, 25 Apr 2017 19:43:12 GMT  
		Size: 1.9 MB (1903401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9cd6fdc1d096064ac803bc54f18445ce1a94261f025193d9fc4616e563d9bb`  
		Last Modified: Tue, 25 Apr 2017 19:43:13 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ffa5af3f6e4d569fa0ece51cff855bc721a638158332ff02136d19daa73a49`  
		Last Modified: Tue, 25 Apr 2017 19:43:11 GMT  
		Size: 1.3 MB (1321695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e7e1c123164265339e03a9992db43ea62712aceb2dc496ab16e285c7070c55`  
		Last Modified: Tue, 25 Apr 2017 19:43:32 GMT  
		Size: 43.7 MB (43653235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc59c2fdd963f3f91f9a0eb5b0a4fb1755f5d66fa225ab65bd632df9dd9940ed`  
		Last Modified: Tue, 25 Apr 2017 19:43:11 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
