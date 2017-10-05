## `drupal:fpm`

```console
$ docker pull drupal@sha256:a6d51ed55ddc7a2d3afbe591c4aa2643a5835a871b539b4a83211230eb185a77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `drupal:fpm` - linux; amd64

```console
$ docker pull drupal@sha256:7ec3664d4415635392fc5a074cd7d108f9d609708545e69c562b3130a490e28c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.5 MB (176543994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c6949d3f1fa180fc00e18e1e160671b3e556000cdfa221caba7308f7fb35d17`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 23:57:45 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 14 Sep 2017 23:58:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:58:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 14 Sep 2017 23:58:24 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 15 Sep 2017 00:11:52 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 15 Sep 2017 00:11:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:11:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:11:53 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 15 Sep 2017 00:11:53 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 29 Sep 2017 23:11:28 GMT
ENV PHP_VERSION=7.1.10
# Fri, 29 Sep 2017 23:11:28 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.10.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.10.tar.xz.asc/from/this/mirror
# Fri, 29 Sep 2017 23:11:28 GMT
ENV PHP_SHA256=2b8efa771a2ead0bb3ae67b530ca505b5b286adc873cca9ce97a6e1d6815c50b PHP_MD5=
# Fri, 29 Sep 2017 23:11:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 29 Sep 2017 23:11:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 29 Sep 2017 23:15:31 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 29 Sep 2017 23:15:32 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Fri, 29 Sep 2017 23:15:32 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 29 Sep 2017 23:15:32 GMT
WORKDIR /var/www/html
# Fri, 29 Sep 2017 23:15:33 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 29 Sep 2017 23:15:33 GMT
EXPOSE 9000/tcp
# Fri, 29 Sep 2017 23:15:33 GMT
CMD ["php-fpm"]
# Sat, 30 Sep 2017 00:12:28 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 30 Sep 2017 00:15:46 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 30 Sep 2017 00:15:46 GMT
WORKDIR /var/www/html
# Thu, 05 Oct 2017 18:58:39 GMT
ENV DRUPAL_VERSION=8.4.0
# Thu, 05 Oct 2017 18:58:39 GMT
ENV DRUPAL_MD5=074795a2f5fc0b599a7dcfb9d1fb03f5
# Thu, 05 Oct 2017 18:58:43 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d5f85af454812aec1820ce0e52e003b81e4569823e2da5b0cccb58e31b136f`  
		Last Modified: Fri, 15 Sep 2017 01:34:31 GMT  
		Size: 82.5 MB (82495988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca642e7826b9552669a262d36f5488e3a478c2f9f97a98db37b203194ea6248`  
		Last Modified: Fri, 15 Sep 2017 01:34:12 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff34603499c181c92c51e325481fc8c58be12af4f87196a2626e343ce6018f37`  
		Last Modified: Fri, 29 Sep 2017 23:44:13 GMT  
		Size: 12.5 MB (12502799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bdde6852c52e107b78f2f4ee8e87df8d2f947ef92968c6554ad76fb885bbb4e`  
		Last Modified: Fri, 29 Sep 2017 23:44:09 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69603d1e2d7989134328523f835dc55841abc84f103c2ae6093fb800de3152b0`  
		Last Modified: Fri, 29 Sep 2017 23:44:13 GMT  
		Size: 13.3 MB (13312896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3c35c02552f771d42fac61f35b2cf03acafffd27028d876d0d7fd2294eb3df`  
		Last Modified: Fri, 29 Sep 2017 23:44:09 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50866b881d5c3e8b49c8b912bde7c2f8b52d829d30d134811f3ab463e0d204a2`  
		Last Modified: Fri, 29 Sep 2017 23:44:09 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d799e0ba2f40a013778d763121be868ea2f0c734c6eb9e5f8f01fbbb69d37d41`  
		Last Modified: Fri, 29 Sep 2017 23:44:09 GMT  
		Size: 7.7 KB (7684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f07a9c34b918be5bcdf3dff8f196b67fd338a5addfe74c6084a677a7b54c9f`  
		Last Modified: Sat, 30 Sep 2017 00:24:07 GMT  
		Size: 2.1 MB (2086778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65314b19ca5ee1dea39ea4cb7c71d8fd5264f9ca7a815a6023c0649f735e070b`  
		Last Modified: Sat, 30 Sep 2017 00:24:06 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da2f31012d235f23c66d5d6f8a843460c4072843b634cc3af5c6b7cf3238098`  
		Last Modified: Thu, 05 Oct 2017 19:01:08 GMT  
		Size: 13.5 MB (13538961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
