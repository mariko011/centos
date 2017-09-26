<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `backdrop`

-	[`backdrop:1`](#backdrop1)
-	[`backdrop:1.7`](#backdrop17)
-	[`backdrop:1.7.2`](#backdrop172)
-	[`backdrop:1.7.2-apache`](#backdrop172-apache)
-	[`backdrop:1.7.2-fpm`](#backdrop172-fpm)
-	[`backdrop:1.7-apache`](#backdrop17-apache)
-	[`backdrop:1.7-fpm`](#backdrop17-fpm)
-	[`backdrop:1-apache`](#backdrop1-apache)
-	[`backdrop:1-fpm`](#backdrop1-fpm)
-	[`backdrop:apache`](#backdropapache)
-	[`backdrop:fpm`](#backdropfpm)
-	[`backdrop:latest`](#backdroplatest)

## `backdrop:1`

```console
$ docker pull backdrop@sha256:41feb8376b5a07c93d70114a95d8653b919ae7a2c4ad7ff79c95277735405050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `backdrop:1` - linux; amd64

```console
$ docker pull backdrop@sha256:36b8229121816ef6fbd0493ea39a83ea9a398ac528b690eb5439f7732813c302
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175573247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6184848d3bd292f82311083755a1afc2cd7ca1ad145850709a65b5633f2dcd6b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Fri, 15 Sep 2017 00:08:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 00:08:17 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 15 Sep 2017 00:08:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 15 Sep 2017 00:08:18 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 15 Sep 2017 00:08:19 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 15 Sep 2017 00:08:19 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 15 Sep 2017 00:08:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 15 Sep 2017 00:08:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 15 Sep 2017 00:08:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 15 Sep 2017 01:10:01 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 15 Sep 2017 01:10:02 GMT
ENV PHP_VERSION=5.6.31
# Fri, 15 Sep 2017 01:10:02 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Fri, 15 Sep 2017 01:10:02 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Fri, 15 Sep 2017 01:10:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 15 Sep 2017 01:10:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 15 Sep 2017 01:13:03 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 20:09:46 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:09:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 20:09:47 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:09:47 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 20:09:47 GMT
EXPOSE 80/tcp
# Thu, 21 Sep 2017 20:09:48 GMT
CMD ["apache2-foreground"]
# Tue, 26 Sep 2017 02:53:51 GMT
RUN a2enmod rewrite
# Tue, 26 Sep 2017 02:55:20 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 26 Sep 2017 02:57:31 GMT
WORKDIR /var/www/html
# Tue, 26 Sep 2017 02:57:31 GMT
ENV BACKDROP_VERSION=1.7.2
# Tue, 26 Sep 2017 02:57:31 GMT
ENV BACKDROP_MD5=8c83ae79a18d13b2c4f2993cab9f6b37
# Tue, 26 Sep 2017 02:57:34 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Tue, 26 Sep 2017 02:57:34 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh 
# Tue, 26 Sep 2017 02:57:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Sep 2017 02:57:35 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:3638d91a90398e9b21e86d5f58ce592dcef089e461ed52559ddcc99d1021c04b`  
		Last Modified: Fri, 15 Sep 2017 01:35:48 GMT  
		Size: 3.0 MB (3012522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3646a95ab6778f36ca28c448f0217a571157bd80a83faa94284a046540d9b90e`  
		Last Modified: Fri, 15 Sep 2017 01:35:46 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628b8373e193144e4047261fde47c3b10881e013cc4730690c28281e30f340d4`  
		Last Modified: Fri, 15 Sep 2017 01:35:45 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24a2b2280edf466db78ea09cb8f23295781c7472f63e5ee7ebd5302e6ef3c45`  
		Last Modified: Fri, 15 Sep 2017 01:35:45 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f968b84cbbbc7f23c623c4ae9ad247431a59a370333ec20de8191284b4838b54`  
		Last Modified: Fri, 15 Sep 2017 01:35:44 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74cc3c21f7f15dc7174cd2588ae8a05cb9533d9b5a6e4a9d1392b339409fb495`  
		Last Modified: Fri, 15 Sep 2017 01:41:40 GMT  
		Size: 12.8 MB (12815680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27fb12209ba49e3ed4b3316a64275ff5b0c53bfbf9eb8003964a9dce443e7b1c`  
		Last Modified: Fri, 15 Sep 2017 01:41:38 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cac49c13da3cda3f9419767bfa2404c772a9e1300b49a5018895a2b7c61bd0`  
		Last Modified: Fri, 15 Sep 2017 01:41:41 GMT  
		Size: 9.2 MB (9175413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5584daf41d7414a142cb3eef092b1c26d354b1e363c80ba234ddc23e09717f26`  
		Last Modified: Thu, 21 Sep 2017 20:21:29 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf3158704e34e445cb10e8c1d37858f822a2c5314ca8847a862b9e054ff9876`  
		Last Modified: Thu, 21 Sep 2017 20:21:29 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babc19bf1636d0fba0ff0dca3c142f938b0bf42b55f81a9b16c7eee67fa198a1`  
		Last Modified: Tue, 26 Sep 2017 03:02:10 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60862ab4ad51a797215f4c93741700859f9002a0811e2179007fa0a67e5f98b1`  
		Last Modified: Tue, 26 Sep 2017 03:02:13 GMT  
		Size: 7.2 MB (7199904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec43dfe836e15fb93a7614dc713ab811cb8e2426b968297d15436fb1a5f55b0`  
		Last Modified: Tue, 26 Sep 2017 03:02:15 GMT  
		Size: 8.3 MB (8270771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fb0560980ece2eac133b40a444cc833d8b5d8467bd07c505d389858dcf1ea1`  
		Last Modified: Tue, 26 Sep 2017 03:02:10 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:1.7`

```console
$ docker pull backdrop@sha256:41feb8376b5a07c93d70114a95d8653b919ae7a2c4ad7ff79c95277735405050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `backdrop:1.7` - linux; amd64

```console
$ docker pull backdrop@sha256:36b8229121816ef6fbd0493ea39a83ea9a398ac528b690eb5439f7732813c302
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175573247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6184848d3bd292f82311083755a1afc2cd7ca1ad145850709a65b5633f2dcd6b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Fri, 15 Sep 2017 00:08:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 00:08:17 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 15 Sep 2017 00:08:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 15 Sep 2017 00:08:18 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 15 Sep 2017 00:08:19 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 15 Sep 2017 00:08:19 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 15 Sep 2017 00:08:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 15 Sep 2017 00:08:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 15 Sep 2017 00:08:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 15 Sep 2017 01:10:01 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 15 Sep 2017 01:10:02 GMT
ENV PHP_VERSION=5.6.31
# Fri, 15 Sep 2017 01:10:02 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Fri, 15 Sep 2017 01:10:02 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Fri, 15 Sep 2017 01:10:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 15 Sep 2017 01:10:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 15 Sep 2017 01:13:03 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 20:09:46 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:09:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 20:09:47 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:09:47 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 20:09:47 GMT
EXPOSE 80/tcp
# Thu, 21 Sep 2017 20:09:48 GMT
CMD ["apache2-foreground"]
# Tue, 26 Sep 2017 02:53:51 GMT
RUN a2enmod rewrite
# Tue, 26 Sep 2017 02:55:20 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 26 Sep 2017 02:57:31 GMT
WORKDIR /var/www/html
# Tue, 26 Sep 2017 02:57:31 GMT
ENV BACKDROP_VERSION=1.7.2
# Tue, 26 Sep 2017 02:57:31 GMT
ENV BACKDROP_MD5=8c83ae79a18d13b2c4f2993cab9f6b37
# Tue, 26 Sep 2017 02:57:34 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Tue, 26 Sep 2017 02:57:34 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh 
# Tue, 26 Sep 2017 02:57:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Sep 2017 02:57:35 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:3638d91a90398e9b21e86d5f58ce592dcef089e461ed52559ddcc99d1021c04b`  
		Last Modified: Fri, 15 Sep 2017 01:35:48 GMT  
		Size: 3.0 MB (3012522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3646a95ab6778f36ca28c448f0217a571157bd80a83faa94284a046540d9b90e`  
		Last Modified: Fri, 15 Sep 2017 01:35:46 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628b8373e193144e4047261fde47c3b10881e013cc4730690c28281e30f340d4`  
		Last Modified: Fri, 15 Sep 2017 01:35:45 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24a2b2280edf466db78ea09cb8f23295781c7472f63e5ee7ebd5302e6ef3c45`  
		Last Modified: Fri, 15 Sep 2017 01:35:45 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f968b84cbbbc7f23c623c4ae9ad247431a59a370333ec20de8191284b4838b54`  
		Last Modified: Fri, 15 Sep 2017 01:35:44 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74cc3c21f7f15dc7174cd2588ae8a05cb9533d9b5a6e4a9d1392b339409fb495`  
		Last Modified: Fri, 15 Sep 2017 01:41:40 GMT  
		Size: 12.8 MB (12815680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27fb12209ba49e3ed4b3316a64275ff5b0c53bfbf9eb8003964a9dce443e7b1c`  
		Last Modified: Fri, 15 Sep 2017 01:41:38 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cac49c13da3cda3f9419767bfa2404c772a9e1300b49a5018895a2b7c61bd0`  
		Last Modified: Fri, 15 Sep 2017 01:41:41 GMT  
		Size: 9.2 MB (9175413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5584daf41d7414a142cb3eef092b1c26d354b1e363c80ba234ddc23e09717f26`  
		Last Modified: Thu, 21 Sep 2017 20:21:29 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf3158704e34e445cb10e8c1d37858f822a2c5314ca8847a862b9e054ff9876`  
		Last Modified: Thu, 21 Sep 2017 20:21:29 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babc19bf1636d0fba0ff0dca3c142f938b0bf42b55f81a9b16c7eee67fa198a1`  
		Last Modified: Tue, 26 Sep 2017 03:02:10 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60862ab4ad51a797215f4c93741700859f9002a0811e2179007fa0a67e5f98b1`  
		Last Modified: Tue, 26 Sep 2017 03:02:13 GMT  
		Size: 7.2 MB (7199904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec43dfe836e15fb93a7614dc713ab811cb8e2426b968297d15436fb1a5f55b0`  
		Last Modified: Tue, 26 Sep 2017 03:02:15 GMT  
		Size: 8.3 MB (8270771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fb0560980ece2eac133b40a444cc833d8b5d8467bd07c505d389858dcf1ea1`  
		Last Modified: Tue, 26 Sep 2017 03:02:10 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:1.7.2`

```console
$ docker pull backdrop@sha256:41feb8376b5a07c93d70114a95d8653b919ae7a2c4ad7ff79c95277735405050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `backdrop:1.7.2` - linux; amd64

```console
$ docker pull backdrop@sha256:36b8229121816ef6fbd0493ea39a83ea9a398ac528b690eb5439f7732813c302
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175573247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6184848d3bd292f82311083755a1afc2cd7ca1ad145850709a65b5633f2dcd6b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Fri, 15 Sep 2017 00:08:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 00:08:17 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 15 Sep 2017 00:08:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 15 Sep 2017 00:08:18 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 15 Sep 2017 00:08:19 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 15 Sep 2017 00:08:19 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 15 Sep 2017 00:08:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 15 Sep 2017 00:08:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 15 Sep 2017 00:08:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 15 Sep 2017 01:10:01 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 15 Sep 2017 01:10:02 GMT
ENV PHP_VERSION=5.6.31
# Fri, 15 Sep 2017 01:10:02 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Fri, 15 Sep 2017 01:10:02 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Fri, 15 Sep 2017 01:10:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 15 Sep 2017 01:10:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 15 Sep 2017 01:13:03 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 20:09:46 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:09:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 20:09:47 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:09:47 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 20:09:47 GMT
EXPOSE 80/tcp
# Thu, 21 Sep 2017 20:09:48 GMT
CMD ["apache2-foreground"]
# Tue, 26 Sep 2017 02:53:51 GMT
RUN a2enmod rewrite
# Tue, 26 Sep 2017 02:55:20 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 26 Sep 2017 02:57:31 GMT
WORKDIR /var/www/html
# Tue, 26 Sep 2017 02:57:31 GMT
ENV BACKDROP_VERSION=1.7.2
# Tue, 26 Sep 2017 02:57:31 GMT
ENV BACKDROP_MD5=8c83ae79a18d13b2c4f2993cab9f6b37
# Tue, 26 Sep 2017 02:57:34 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Tue, 26 Sep 2017 02:57:34 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh 
# Tue, 26 Sep 2017 02:57:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Sep 2017 02:57:35 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:3638d91a90398e9b21e86d5f58ce592dcef089e461ed52559ddcc99d1021c04b`  
		Last Modified: Fri, 15 Sep 2017 01:35:48 GMT  
		Size: 3.0 MB (3012522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3646a95ab6778f36ca28c448f0217a571157bd80a83faa94284a046540d9b90e`  
		Last Modified: Fri, 15 Sep 2017 01:35:46 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628b8373e193144e4047261fde47c3b10881e013cc4730690c28281e30f340d4`  
		Last Modified: Fri, 15 Sep 2017 01:35:45 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24a2b2280edf466db78ea09cb8f23295781c7472f63e5ee7ebd5302e6ef3c45`  
		Last Modified: Fri, 15 Sep 2017 01:35:45 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f968b84cbbbc7f23c623c4ae9ad247431a59a370333ec20de8191284b4838b54`  
		Last Modified: Fri, 15 Sep 2017 01:35:44 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74cc3c21f7f15dc7174cd2588ae8a05cb9533d9b5a6e4a9d1392b339409fb495`  
		Last Modified: Fri, 15 Sep 2017 01:41:40 GMT  
		Size: 12.8 MB (12815680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27fb12209ba49e3ed4b3316a64275ff5b0c53bfbf9eb8003964a9dce443e7b1c`  
		Last Modified: Fri, 15 Sep 2017 01:41:38 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cac49c13da3cda3f9419767bfa2404c772a9e1300b49a5018895a2b7c61bd0`  
		Last Modified: Fri, 15 Sep 2017 01:41:41 GMT  
		Size: 9.2 MB (9175413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5584daf41d7414a142cb3eef092b1c26d354b1e363c80ba234ddc23e09717f26`  
		Last Modified: Thu, 21 Sep 2017 20:21:29 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf3158704e34e445cb10e8c1d37858f822a2c5314ca8847a862b9e054ff9876`  
		Last Modified: Thu, 21 Sep 2017 20:21:29 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babc19bf1636d0fba0ff0dca3c142f938b0bf42b55f81a9b16c7eee67fa198a1`  
		Last Modified: Tue, 26 Sep 2017 03:02:10 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60862ab4ad51a797215f4c93741700859f9002a0811e2179007fa0a67e5f98b1`  
		Last Modified: Tue, 26 Sep 2017 03:02:13 GMT  
		Size: 7.2 MB (7199904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec43dfe836e15fb93a7614dc713ab811cb8e2426b968297d15436fb1a5f55b0`  
		Last Modified: Tue, 26 Sep 2017 03:02:15 GMT  
		Size: 8.3 MB (8270771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fb0560980ece2eac133b40a444cc833d8b5d8467bd07c505d389858dcf1ea1`  
		Last Modified: Tue, 26 Sep 2017 03:02:10 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:1.7.2-apache`

```console
$ docker pull backdrop@sha256:41feb8376b5a07c93d70114a95d8653b919ae7a2c4ad7ff79c95277735405050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `backdrop:1.7.2-apache` - linux; amd64

```console
$ docker pull backdrop@sha256:36b8229121816ef6fbd0493ea39a83ea9a398ac528b690eb5439f7732813c302
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175573247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6184848d3bd292f82311083755a1afc2cd7ca1ad145850709a65b5633f2dcd6b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Fri, 15 Sep 2017 00:08:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 00:08:17 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 15 Sep 2017 00:08:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 15 Sep 2017 00:08:18 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 15 Sep 2017 00:08:19 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 15 Sep 2017 00:08:19 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 15 Sep 2017 00:08:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 15 Sep 2017 00:08:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 15 Sep 2017 00:08:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 15 Sep 2017 01:10:01 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 15 Sep 2017 01:10:02 GMT
ENV PHP_VERSION=5.6.31
# Fri, 15 Sep 2017 01:10:02 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Fri, 15 Sep 2017 01:10:02 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Fri, 15 Sep 2017 01:10:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 15 Sep 2017 01:10:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 15 Sep 2017 01:13:03 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 20:09:46 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:09:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 20:09:47 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:09:47 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 20:09:47 GMT
EXPOSE 80/tcp
# Thu, 21 Sep 2017 20:09:48 GMT
CMD ["apache2-foreground"]
# Tue, 26 Sep 2017 02:53:51 GMT
RUN a2enmod rewrite
# Tue, 26 Sep 2017 02:55:20 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 26 Sep 2017 02:57:31 GMT
WORKDIR /var/www/html
# Tue, 26 Sep 2017 02:57:31 GMT
ENV BACKDROP_VERSION=1.7.2
# Tue, 26 Sep 2017 02:57:31 GMT
ENV BACKDROP_MD5=8c83ae79a18d13b2c4f2993cab9f6b37
# Tue, 26 Sep 2017 02:57:34 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Tue, 26 Sep 2017 02:57:34 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh 
# Tue, 26 Sep 2017 02:57:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Sep 2017 02:57:35 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:3638d91a90398e9b21e86d5f58ce592dcef089e461ed52559ddcc99d1021c04b`  
		Last Modified: Fri, 15 Sep 2017 01:35:48 GMT  
		Size: 3.0 MB (3012522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3646a95ab6778f36ca28c448f0217a571157bd80a83faa94284a046540d9b90e`  
		Last Modified: Fri, 15 Sep 2017 01:35:46 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628b8373e193144e4047261fde47c3b10881e013cc4730690c28281e30f340d4`  
		Last Modified: Fri, 15 Sep 2017 01:35:45 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24a2b2280edf466db78ea09cb8f23295781c7472f63e5ee7ebd5302e6ef3c45`  
		Last Modified: Fri, 15 Sep 2017 01:35:45 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f968b84cbbbc7f23c623c4ae9ad247431a59a370333ec20de8191284b4838b54`  
		Last Modified: Fri, 15 Sep 2017 01:35:44 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74cc3c21f7f15dc7174cd2588ae8a05cb9533d9b5a6e4a9d1392b339409fb495`  
		Last Modified: Fri, 15 Sep 2017 01:41:40 GMT  
		Size: 12.8 MB (12815680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27fb12209ba49e3ed4b3316a64275ff5b0c53bfbf9eb8003964a9dce443e7b1c`  
		Last Modified: Fri, 15 Sep 2017 01:41:38 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cac49c13da3cda3f9419767bfa2404c772a9e1300b49a5018895a2b7c61bd0`  
		Last Modified: Fri, 15 Sep 2017 01:41:41 GMT  
		Size: 9.2 MB (9175413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5584daf41d7414a142cb3eef092b1c26d354b1e363c80ba234ddc23e09717f26`  
		Last Modified: Thu, 21 Sep 2017 20:21:29 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf3158704e34e445cb10e8c1d37858f822a2c5314ca8847a862b9e054ff9876`  
		Last Modified: Thu, 21 Sep 2017 20:21:29 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babc19bf1636d0fba0ff0dca3c142f938b0bf42b55f81a9b16c7eee67fa198a1`  
		Last Modified: Tue, 26 Sep 2017 03:02:10 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60862ab4ad51a797215f4c93741700859f9002a0811e2179007fa0a67e5f98b1`  
		Last Modified: Tue, 26 Sep 2017 03:02:13 GMT  
		Size: 7.2 MB (7199904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec43dfe836e15fb93a7614dc713ab811cb8e2426b968297d15436fb1a5f55b0`  
		Last Modified: Tue, 26 Sep 2017 03:02:15 GMT  
		Size: 8.3 MB (8270771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fb0560980ece2eac133b40a444cc833d8b5d8467bd07c505d389858dcf1ea1`  
		Last Modified: Tue, 26 Sep 2017 03:02:10 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:1.7.2-fpm`

```console
$ docker pull backdrop@sha256:723a2f7c231e094b3c760e411b441cc747b036e673e831a1f99f231fe7bfe356
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `backdrop:1.7.2-fpm` - linux; amd64

```console
$ docker pull backdrop@sha256:99c6aae553f35d9b688186e0ecb649612c6b5a006dc3fb3fbda3938f987530e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.2 MB (172202964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a054ab79107bf17e4bdc206687ed6065a5c4498aad28b92473768a391cf440`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Fri, 15 Sep 2017 01:13:11 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 15 Sep 2017 01:13:11 GMT
ENV PHP_VERSION=5.6.31
# Fri, 15 Sep 2017 01:13:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Fri, 15 Sep 2017 01:13:12 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Fri, 15 Sep 2017 01:13:34 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 15 Sep 2017 01:13:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 15 Sep 2017 01:17:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 20:09:52 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:09:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 20:09:53 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 20:09:53 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 21 Sep 2017 20:09:54 GMT
EXPOSE 9000/tcp
# Thu, 21 Sep 2017 20:09:54 GMT
CMD ["php-fpm"]
# Tue, 26 Sep 2017 03:00:26 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 26 Sep 2017 03:00:26 GMT
WORKDIR /var/www/html
# Tue, 26 Sep 2017 03:00:26 GMT
ENV BACKDROP_VERSION=1.7.2
# Tue, 26 Sep 2017 03:00:26 GMT
ENV BACKDROP_MD5=8c83ae79a18d13b2c4f2993cab9f6b37
# Tue, 26 Sep 2017 03:00:28 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Tue, 26 Sep 2017 03:00:29 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh 
# Tue, 26 Sep 2017 03:00:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Sep 2017 03:00:29 GMT
CMD ["php-fpm"]
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
	-	`sha256:65252ab2f158a369ac1ecec42a948e70b474f483764bc7a12a560ab16eee7afb`  
		Last Modified: Fri, 15 Sep 2017 01:42:04 GMT  
		Size: 12.8 MB (12798392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a326d9d2ac1d26e21bbe71d8ab8c85b1719d885daeb2097a8b99c63f4b1bbd`  
		Last Modified: Fri, 15 Sep 2017 01:42:01 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7b31f0e5e1e003315b2ae70b461af2bee74dcc57d05b49cac734d4e2857244`  
		Last Modified: Fri, 15 Sep 2017 01:42:04 GMT  
		Size: 8.9 MB (8850530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b404da08dda70d021cead232b460cb635ac79c0033aef2a9f5ed48b9fe821b40`  
		Last Modified: Thu, 21 Sep 2017 20:21:44 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:772835571a18e344c8b5defe6e0dabf3bfca4168e9f1a170aef9e501fa79b69e`  
		Last Modified: Thu, 21 Sep 2017 20:21:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892a28f31a4764530d1d7d4af93eb8ebeb50838894062b14b63a43883ed5ea2e`  
		Last Modified: Thu, 21 Sep 2017 20:21:44 GMT  
		Size: 7.6 KB (7623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e858cecfa40ffdd99a12fd9a63e7326817164848c4f08ced6172600faede98`  
		Last Modified: Tue, 26 Sep 2017 03:06:26 GMT  
		Size: 7.2 MB (7180227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4988b0dc45936199f20eddfe134f8aee7ef4a9171c5c690855c30473a9bec22a`  
		Last Modified: Tue, 26 Sep 2017 03:06:27 GMT  
		Size: 8.3 MB (8270726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf1f086479a4c71ba1e41e71d6347c490d0d38b39c2492779c04b037929fbb5`  
		Last Modified: Tue, 26 Sep 2017 03:06:24 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:1.7-apache`

```console
$ docker pull backdrop@sha256:41feb8376b5a07c93d70114a95d8653b919ae7a2c4ad7ff79c95277735405050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `backdrop:1.7-apache` - linux; amd64

```console
$ docker pull backdrop@sha256:36b8229121816ef6fbd0493ea39a83ea9a398ac528b690eb5439f7732813c302
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175573247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6184848d3bd292f82311083755a1afc2cd7ca1ad145850709a65b5633f2dcd6b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Fri, 15 Sep 2017 00:08:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 00:08:17 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 15 Sep 2017 00:08:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 15 Sep 2017 00:08:18 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 15 Sep 2017 00:08:19 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 15 Sep 2017 00:08:19 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 15 Sep 2017 00:08:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 15 Sep 2017 00:08:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 15 Sep 2017 00:08:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 15 Sep 2017 01:10:01 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 15 Sep 2017 01:10:02 GMT
ENV PHP_VERSION=5.6.31
# Fri, 15 Sep 2017 01:10:02 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Fri, 15 Sep 2017 01:10:02 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Fri, 15 Sep 2017 01:10:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 15 Sep 2017 01:10:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 15 Sep 2017 01:13:03 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 20:09:46 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:09:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 20:09:47 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:09:47 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 20:09:47 GMT
EXPOSE 80/tcp
# Thu, 21 Sep 2017 20:09:48 GMT
CMD ["apache2-foreground"]
# Tue, 26 Sep 2017 02:53:51 GMT
RUN a2enmod rewrite
# Tue, 26 Sep 2017 02:55:20 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 26 Sep 2017 02:57:31 GMT
WORKDIR /var/www/html
# Tue, 26 Sep 2017 02:57:31 GMT
ENV BACKDROP_VERSION=1.7.2
# Tue, 26 Sep 2017 02:57:31 GMT
ENV BACKDROP_MD5=8c83ae79a18d13b2c4f2993cab9f6b37
# Tue, 26 Sep 2017 02:57:34 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Tue, 26 Sep 2017 02:57:34 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh 
# Tue, 26 Sep 2017 02:57:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Sep 2017 02:57:35 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:3638d91a90398e9b21e86d5f58ce592dcef089e461ed52559ddcc99d1021c04b`  
		Last Modified: Fri, 15 Sep 2017 01:35:48 GMT  
		Size: 3.0 MB (3012522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3646a95ab6778f36ca28c448f0217a571157bd80a83faa94284a046540d9b90e`  
		Last Modified: Fri, 15 Sep 2017 01:35:46 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628b8373e193144e4047261fde47c3b10881e013cc4730690c28281e30f340d4`  
		Last Modified: Fri, 15 Sep 2017 01:35:45 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24a2b2280edf466db78ea09cb8f23295781c7472f63e5ee7ebd5302e6ef3c45`  
		Last Modified: Fri, 15 Sep 2017 01:35:45 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f968b84cbbbc7f23c623c4ae9ad247431a59a370333ec20de8191284b4838b54`  
		Last Modified: Fri, 15 Sep 2017 01:35:44 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74cc3c21f7f15dc7174cd2588ae8a05cb9533d9b5a6e4a9d1392b339409fb495`  
		Last Modified: Fri, 15 Sep 2017 01:41:40 GMT  
		Size: 12.8 MB (12815680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27fb12209ba49e3ed4b3316a64275ff5b0c53bfbf9eb8003964a9dce443e7b1c`  
		Last Modified: Fri, 15 Sep 2017 01:41:38 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cac49c13da3cda3f9419767bfa2404c772a9e1300b49a5018895a2b7c61bd0`  
		Last Modified: Fri, 15 Sep 2017 01:41:41 GMT  
		Size: 9.2 MB (9175413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5584daf41d7414a142cb3eef092b1c26d354b1e363c80ba234ddc23e09717f26`  
		Last Modified: Thu, 21 Sep 2017 20:21:29 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf3158704e34e445cb10e8c1d37858f822a2c5314ca8847a862b9e054ff9876`  
		Last Modified: Thu, 21 Sep 2017 20:21:29 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babc19bf1636d0fba0ff0dca3c142f938b0bf42b55f81a9b16c7eee67fa198a1`  
		Last Modified: Tue, 26 Sep 2017 03:02:10 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60862ab4ad51a797215f4c93741700859f9002a0811e2179007fa0a67e5f98b1`  
		Last Modified: Tue, 26 Sep 2017 03:02:13 GMT  
		Size: 7.2 MB (7199904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec43dfe836e15fb93a7614dc713ab811cb8e2426b968297d15436fb1a5f55b0`  
		Last Modified: Tue, 26 Sep 2017 03:02:15 GMT  
		Size: 8.3 MB (8270771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fb0560980ece2eac133b40a444cc833d8b5d8467bd07c505d389858dcf1ea1`  
		Last Modified: Tue, 26 Sep 2017 03:02:10 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:1.7-fpm`

```console
$ docker pull backdrop@sha256:723a2f7c231e094b3c760e411b441cc747b036e673e831a1f99f231fe7bfe356
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `backdrop:1.7-fpm` - linux; amd64

```console
$ docker pull backdrop@sha256:99c6aae553f35d9b688186e0ecb649612c6b5a006dc3fb3fbda3938f987530e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.2 MB (172202964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a054ab79107bf17e4bdc206687ed6065a5c4498aad28b92473768a391cf440`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Fri, 15 Sep 2017 01:13:11 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 15 Sep 2017 01:13:11 GMT
ENV PHP_VERSION=5.6.31
# Fri, 15 Sep 2017 01:13:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Fri, 15 Sep 2017 01:13:12 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Fri, 15 Sep 2017 01:13:34 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 15 Sep 2017 01:13:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 15 Sep 2017 01:17:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 20:09:52 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:09:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 20:09:53 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 20:09:53 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 21 Sep 2017 20:09:54 GMT
EXPOSE 9000/tcp
# Thu, 21 Sep 2017 20:09:54 GMT
CMD ["php-fpm"]
# Tue, 26 Sep 2017 03:00:26 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 26 Sep 2017 03:00:26 GMT
WORKDIR /var/www/html
# Tue, 26 Sep 2017 03:00:26 GMT
ENV BACKDROP_VERSION=1.7.2
# Tue, 26 Sep 2017 03:00:26 GMT
ENV BACKDROP_MD5=8c83ae79a18d13b2c4f2993cab9f6b37
# Tue, 26 Sep 2017 03:00:28 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Tue, 26 Sep 2017 03:00:29 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh 
# Tue, 26 Sep 2017 03:00:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Sep 2017 03:00:29 GMT
CMD ["php-fpm"]
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
	-	`sha256:65252ab2f158a369ac1ecec42a948e70b474f483764bc7a12a560ab16eee7afb`  
		Last Modified: Fri, 15 Sep 2017 01:42:04 GMT  
		Size: 12.8 MB (12798392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a326d9d2ac1d26e21bbe71d8ab8c85b1719d885daeb2097a8b99c63f4b1bbd`  
		Last Modified: Fri, 15 Sep 2017 01:42:01 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7b31f0e5e1e003315b2ae70b461af2bee74dcc57d05b49cac734d4e2857244`  
		Last Modified: Fri, 15 Sep 2017 01:42:04 GMT  
		Size: 8.9 MB (8850530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b404da08dda70d021cead232b460cb635ac79c0033aef2a9f5ed48b9fe821b40`  
		Last Modified: Thu, 21 Sep 2017 20:21:44 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:772835571a18e344c8b5defe6e0dabf3bfca4168e9f1a170aef9e501fa79b69e`  
		Last Modified: Thu, 21 Sep 2017 20:21:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892a28f31a4764530d1d7d4af93eb8ebeb50838894062b14b63a43883ed5ea2e`  
		Last Modified: Thu, 21 Sep 2017 20:21:44 GMT  
		Size: 7.6 KB (7623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e858cecfa40ffdd99a12fd9a63e7326817164848c4f08ced6172600faede98`  
		Last Modified: Tue, 26 Sep 2017 03:06:26 GMT  
		Size: 7.2 MB (7180227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4988b0dc45936199f20eddfe134f8aee7ef4a9171c5c690855c30473a9bec22a`  
		Last Modified: Tue, 26 Sep 2017 03:06:27 GMT  
		Size: 8.3 MB (8270726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf1f086479a4c71ba1e41e71d6347c490d0d38b39c2492779c04b037929fbb5`  
		Last Modified: Tue, 26 Sep 2017 03:06:24 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:1-apache`

```console
$ docker pull backdrop@sha256:41feb8376b5a07c93d70114a95d8653b919ae7a2c4ad7ff79c95277735405050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `backdrop:1-apache` - linux; amd64

```console
$ docker pull backdrop@sha256:36b8229121816ef6fbd0493ea39a83ea9a398ac528b690eb5439f7732813c302
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175573247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6184848d3bd292f82311083755a1afc2cd7ca1ad145850709a65b5633f2dcd6b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Fri, 15 Sep 2017 00:08:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 00:08:17 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 15 Sep 2017 00:08:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 15 Sep 2017 00:08:18 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 15 Sep 2017 00:08:19 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 15 Sep 2017 00:08:19 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 15 Sep 2017 00:08:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 15 Sep 2017 00:08:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 15 Sep 2017 00:08:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 15 Sep 2017 01:10:01 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 15 Sep 2017 01:10:02 GMT
ENV PHP_VERSION=5.6.31
# Fri, 15 Sep 2017 01:10:02 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Fri, 15 Sep 2017 01:10:02 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Fri, 15 Sep 2017 01:10:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 15 Sep 2017 01:10:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 15 Sep 2017 01:13:03 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 20:09:46 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:09:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 20:09:47 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:09:47 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 20:09:47 GMT
EXPOSE 80/tcp
# Thu, 21 Sep 2017 20:09:48 GMT
CMD ["apache2-foreground"]
# Tue, 26 Sep 2017 02:53:51 GMT
RUN a2enmod rewrite
# Tue, 26 Sep 2017 02:55:20 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 26 Sep 2017 02:57:31 GMT
WORKDIR /var/www/html
# Tue, 26 Sep 2017 02:57:31 GMT
ENV BACKDROP_VERSION=1.7.2
# Tue, 26 Sep 2017 02:57:31 GMT
ENV BACKDROP_MD5=8c83ae79a18d13b2c4f2993cab9f6b37
# Tue, 26 Sep 2017 02:57:34 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Tue, 26 Sep 2017 02:57:34 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh 
# Tue, 26 Sep 2017 02:57:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Sep 2017 02:57:35 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:3638d91a90398e9b21e86d5f58ce592dcef089e461ed52559ddcc99d1021c04b`  
		Last Modified: Fri, 15 Sep 2017 01:35:48 GMT  
		Size: 3.0 MB (3012522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3646a95ab6778f36ca28c448f0217a571157bd80a83faa94284a046540d9b90e`  
		Last Modified: Fri, 15 Sep 2017 01:35:46 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628b8373e193144e4047261fde47c3b10881e013cc4730690c28281e30f340d4`  
		Last Modified: Fri, 15 Sep 2017 01:35:45 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24a2b2280edf466db78ea09cb8f23295781c7472f63e5ee7ebd5302e6ef3c45`  
		Last Modified: Fri, 15 Sep 2017 01:35:45 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f968b84cbbbc7f23c623c4ae9ad247431a59a370333ec20de8191284b4838b54`  
		Last Modified: Fri, 15 Sep 2017 01:35:44 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74cc3c21f7f15dc7174cd2588ae8a05cb9533d9b5a6e4a9d1392b339409fb495`  
		Last Modified: Fri, 15 Sep 2017 01:41:40 GMT  
		Size: 12.8 MB (12815680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27fb12209ba49e3ed4b3316a64275ff5b0c53bfbf9eb8003964a9dce443e7b1c`  
		Last Modified: Fri, 15 Sep 2017 01:41:38 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cac49c13da3cda3f9419767bfa2404c772a9e1300b49a5018895a2b7c61bd0`  
		Last Modified: Fri, 15 Sep 2017 01:41:41 GMT  
		Size: 9.2 MB (9175413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5584daf41d7414a142cb3eef092b1c26d354b1e363c80ba234ddc23e09717f26`  
		Last Modified: Thu, 21 Sep 2017 20:21:29 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf3158704e34e445cb10e8c1d37858f822a2c5314ca8847a862b9e054ff9876`  
		Last Modified: Thu, 21 Sep 2017 20:21:29 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babc19bf1636d0fba0ff0dca3c142f938b0bf42b55f81a9b16c7eee67fa198a1`  
		Last Modified: Tue, 26 Sep 2017 03:02:10 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60862ab4ad51a797215f4c93741700859f9002a0811e2179007fa0a67e5f98b1`  
		Last Modified: Tue, 26 Sep 2017 03:02:13 GMT  
		Size: 7.2 MB (7199904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec43dfe836e15fb93a7614dc713ab811cb8e2426b968297d15436fb1a5f55b0`  
		Last Modified: Tue, 26 Sep 2017 03:02:15 GMT  
		Size: 8.3 MB (8270771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fb0560980ece2eac133b40a444cc833d8b5d8467bd07c505d389858dcf1ea1`  
		Last Modified: Tue, 26 Sep 2017 03:02:10 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:1-fpm`

```console
$ docker pull backdrop@sha256:723a2f7c231e094b3c760e411b441cc747b036e673e831a1f99f231fe7bfe356
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `backdrop:1-fpm` - linux; amd64

```console
$ docker pull backdrop@sha256:99c6aae553f35d9b688186e0ecb649612c6b5a006dc3fb3fbda3938f987530e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.2 MB (172202964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a054ab79107bf17e4bdc206687ed6065a5c4498aad28b92473768a391cf440`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Fri, 15 Sep 2017 01:13:11 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 15 Sep 2017 01:13:11 GMT
ENV PHP_VERSION=5.6.31
# Fri, 15 Sep 2017 01:13:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Fri, 15 Sep 2017 01:13:12 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Fri, 15 Sep 2017 01:13:34 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 15 Sep 2017 01:13:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 15 Sep 2017 01:17:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 20:09:52 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:09:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 20:09:53 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 20:09:53 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 21 Sep 2017 20:09:54 GMT
EXPOSE 9000/tcp
# Thu, 21 Sep 2017 20:09:54 GMT
CMD ["php-fpm"]
# Tue, 26 Sep 2017 03:00:26 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 26 Sep 2017 03:00:26 GMT
WORKDIR /var/www/html
# Tue, 26 Sep 2017 03:00:26 GMT
ENV BACKDROP_VERSION=1.7.2
# Tue, 26 Sep 2017 03:00:26 GMT
ENV BACKDROP_MD5=8c83ae79a18d13b2c4f2993cab9f6b37
# Tue, 26 Sep 2017 03:00:28 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Tue, 26 Sep 2017 03:00:29 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh 
# Tue, 26 Sep 2017 03:00:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Sep 2017 03:00:29 GMT
CMD ["php-fpm"]
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
	-	`sha256:65252ab2f158a369ac1ecec42a948e70b474f483764bc7a12a560ab16eee7afb`  
		Last Modified: Fri, 15 Sep 2017 01:42:04 GMT  
		Size: 12.8 MB (12798392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a326d9d2ac1d26e21bbe71d8ab8c85b1719d885daeb2097a8b99c63f4b1bbd`  
		Last Modified: Fri, 15 Sep 2017 01:42:01 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7b31f0e5e1e003315b2ae70b461af2bee74dcc57d05b49cac734d4e2857244`  
		Last Modified: Fri, 15 Sep 2017 01:42:04 GMT  
		Size: 8.9 MB (8850530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b404da08dda70d021cead232b460cb635ac79c0033aef2a9f5ed48b9fe821b40`  
		Last Modified: Thu, 21 Sep 2017 20:21:44 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:772835571a18e344c8b5defe6e0dabf3bfca4168e9f1a170aef9e501fa79b69e`  
		Last Modified: Thu, 21 Sep 2017 20:21:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892a28f31a4764530d1d7d4af93eb8ebeb50838894062b14b63a43883ed5ea2e`  
		Last Modified: Thu, 21 Sep 2017 20:21:44 GMT  
		Size: 7.6 KB (7623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e858cecfa40ffdd99a12fd9a63e7326817164848c4f08ced6172600faede98`  
		Last Modified: Tue, 26 Sep 2017 03:06:26 GMT  
		Size: 7.2 MB (7180227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4988b0dc45936199f20eddfe134f8aee7ef4a9171c5c690855c30473a9bec22a`  
		Last Modified: Tue, 26 Sep 2017 03:06:27 GMT  
		Size: 8.3 MB (8270726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf1f086479a4c71ba1e41e71d6347c490d0d38b39c2492779c04b037929fbb5`  
		Last Modified: Tue, 26 Sep 2017 03:06:24 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:apache`

```console
$ docker pull backdrop@sha256:41feb8376b5a07c93d70114a95d8653b919ae7a2c4ad7ff79c95277735405050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `backdrop:apache` - linux; amd64

```console
$ docker pull backdrop@sha256:36b8229121816ef6fbd0493ea39a83ea9a398ac528b690eb5439f7732813c302
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175573247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6184848d3bd292f82311083755a1afc2cd7ca1ad145850709a65b5633f2dcd6b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Fri, 15 Sep 2017 00:08:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 00:08:17 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 15 Sep 2017 00:08:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 15 Sep 2017 00:08:18 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 15 Sep 2017 00:08:19 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 15 Sep 2017 00:08:19 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 15 Sep 2017 00:08:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 15 Sep 2017 00:08:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 15 Sep 2017 00:08:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 15 Sep 2017 01:10:01 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 15 Sep 2017 01:10:02 GMT
ENV PHP_VERSION=5.6.31
# Fri, 15 Sep 2017 01:10:02 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Fri, 15 Sep 2017 01:10:02 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Fri, 15 Sep 2017 01:10:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 15 Sep 2017 01:10:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 15 Sep 2017 01:13:03 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 20:09:46 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:09:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 20:09:47 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:09:47 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 20:09:47 GMT
EXPOSE 80/tcp
# Thu, 21 Sep 2017 20:09:48 GMT
CMD ["apache2-foreground"]
# Tue, 26 Sep 2017 02:53:51 GMT
RUN a2enmod rewrite
# Tue, 26 Sep 2017 02:55:20 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 26 Sep 2017 02:57:31 GMT
WORKDIR /var/www/html
# Tue, 26 Sep 2017 02:57:31 GMT
ENV BACKDROP_VERSION=1.7.2
# Tue, 26 Sep 2017 02:57:31 GMT
ENV BACKDROP_MD5=8c83ae79a18d13b2c4f2993cab9f6b37
# Tue, 26 Sep 2017 02:57:34 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Tue, 26 Sep 2017 02:57:34 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh 
# Tue, 26 Sep 2017 02:57:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Sep 2017 02:57:35 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:3638d91a90398e9b21e86d5f58ce592dcef089e461ed52559ddcc99d1021c04b`  
		Last Modified: Fri, 15 Sep 2017 01:35:48 GMT  
		Size: 3.0 MB (3012522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3646a95ab6778f36ca28c448f0217a571157bd80a83faa94284a046540d9b90e`  
		Last Modified: Fri, 15 Sep 2017 01:35:46 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628b8373e193144e4047261fde47c3b10881e013cc4730690c28281e30f340d4`  
		Last Modified: Fri, 15 Sep 2017 01:35:45 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24a2b2280edf466db78ea09cb8f23295781c7472f63e5ee7ebd5302e6ef3c45`  
		Last Modified: Fri, 15 Sep 2017 01:35:45 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f968b84cbbbc7f23c623c4ae9ad247431a59a370333ec20de8191284b4838b54`  
		Last Modified: Fri, 15 Sep 2017 01:35:44 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74cc3c21f7f15dc7174cd2588ae8a05cb9533d9b5a6e4a9d1392b339409fb495`  
		Last Modified: Fri, 15 Sep 2017 01:41:40 GMT  
		Size: 12.8 MB (12815680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27fb12209ba49e3ed4b3316a64275ff5b0c53bfbf9eb8003964a9dce443e7b1c`  
		Last Modified: Fri, 15 Sep 2017 01:41:38 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cac49c13da3cda3f9419767bfa2404c772a9e1300b49a5018895a2b7c61bd0`  
		Last Modified: Fri, 15 Sep 2017 01:41:41 GMT  
		Size: 9.2 MB (9175413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5584daf41d7414a142cb3eef092b1c26d354b1e363c80ba234ddc23e09717f26`  
		Last Modified: Thu, 21 Sep 2017 20:21:29 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf3158704e34e445cb10e8c1d37858f822a2c5314ca8847a862b9e054ff9876`  
		Last Modified: Thu, 21 Sep 2017 20:21:29 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babc19bf1636d0fba0ff0dca3c142f938b0bf42b55f81a9b16c7eee67fa198a1`  
		Last Modified: Tue, 26 Sep 2017 03:02:10 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60862ab4ad51a797215f4c93741700859f9002a0811e2179007fa0a67e5f98b1`  
		Last Modified: Tue, 26 Sep 2017 03:02:13 GMT  
		Size: 7.2 MB (7199904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec43dfe836e15fb93a7614dc713ab811cb8e2426b968297d15436fb1a5f55b0`  
		Last Modified: Tue, 26 Sep 2017 03:02:15 GMT  
		Size: 8.3 MB (8270771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fb0560980ece2eac133b40a444cc833d8b5d8467bd07c505d389858dcf1ea1`  
		Last Modified: Tue, 26 Sep 2017 03:02:10 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:fpm`

```console
$ docker pull backdrop@sha256:723a2f7c231e094b3c760e411b441cc747b036e673e831a1f99f231fe7bfe356
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `backdrop:fpm` - linux; amd64

```console
$ docker pull backdrop@sha256:99c6aae553f35d9b688186e0ecb649612c6b5a006dc3fb3fbda3938f987530e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.2 MB (172202964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a054ab79107bf17e4bdc206687ed6065a5c4498aad28b92473768a391cf440`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Fri, 15 Sep 2017 01:13:11 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 15 Sep 2017 01:13:11 GMT
ENV PHP_VERSION=5.6.31
# Fri, 15 Sep 2017 01:13:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Fri, 15 Sep 2017 01:13:12 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Fri, 15 Sep 2017 01:13:34 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 15 Sep 2017 01:13:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 15 Sep 2017 01:17:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 20:09:52 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:09:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 20:09:53 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 20:09:53 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 21 Sep 2017 20:09:54 GMT
EXPOSE 9000/tcp
# Thu, 21 Sep 2017 20:09:54 GMT
CMD ["php-fpm"]
# Tue, 26 Sep 2017 03:00:26 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 26 Sep 2017 03:00:26 GMT
WORKDIR /var/www/html
# Tue, 26 Sep 2017 03:00:26 GMT
ENV BACKDROP_VERSION=1.7.2
# Tue, 26 Sep 2017 03:00:26 GMT
ENV BACKDROP_MD5=8c83ae79a18d13b2c4f2993cab9f6b37
# Tue, 26 Sep 2017 03:00:28 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz 	&& echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f backdrop.tar.gz 	&& rm backdrop.tar.gz 	&& chown -R www-data:www-data sites
# Tue, 26 Sep 2017 03:00:29 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh 
# Tue, 26 Sep 2017 03:00:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Sep 2017 03:00:29 GMT
CMD ["php-fpm"]
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
	-	`sha256:65252ab2f158a369ac1ecec42a948e70b474f483764bc7a12a560ab16eee7afb`  
		Last Modified: Fri, 15 Sep 2017 01:42:04 GMT  
		Size: 12.8 MB (12798392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a326d9d2ac1d26e21bbe71d8ab8c85b1719d885daeb2097a8b99c63f4b1bbd`  
		Last Modified: Fri, 15 Sep 2017 01:42:01 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7b31f0e5e1e003315b2ae70b461af2bee74dcc57d05b49cac734d4e2857244`  
		Last Modified: Fri, 15 Sep 2017 01:42:04 GMT  
		Size: 8.9 MB (8850530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b404da08dda70d021cead232b460cb635ac79c0033aef2a9f5ed48b9fe821b40`  
		Last Modified: Thu, 21 Sep 2017 20:21:44 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:772835571a18e344c8b5defe6e0dabf3bfca4168e9f1a170aef9e501fa79b69e`  
		Last Modified: Thu, 21 Sep 2017 20:21:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892a28f31a4764530d1d7d4af93eb8ebeb50838894062b14b63a43883ed5ea2e`  
		Last Modified: Thu, 21 Sep 2017 20:21:44 GMT  
		Size: 7.6 KB (7623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e858cecfa40ffdd99a12fd9a63e7326817164848c4f08ced6172600faede98`  
		Last Modified: Tue, 26 Sep 2017 03:06:26 GMT  
		Size: 7.2 MB (7180227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4988b0dc45936199f20eddfe134f8aee7ef4a9171c5c690855c30473a9bec22a`  
		Last Modified: Tue, 26 Sep 2017 03:06:27 GMT  
		Size: 8.3 MB (8270726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf1f086479a4c71ba1e41e71d6347c490d0d38b39c2492779c04b037929fbb5`  
		Last Modified: Tue, 26 Sep 2017 03:06:24 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `backdrop:latest`

```console
$ docker pull backdrop@sha256:41feb8376b5a07c93d70114a95d8653b919ae7a2c4ad7ff79c95277735405050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `backdrop:latest` - linux; amd64

```console
$ docker pull backdrop@sha256:36b8229121816ef6fbd0493ea39a83ea9a398ac528b690eb5439f7732813c302
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175573247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6184848d3bd292f82311083755a1afc2cd7ca1ad145850709a65b5633f2dcd6b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Fri, 15 Sep 2017 00:08:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 00:08:17 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 15 Sep 2017 00:08:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 15 Sep 2017 00:08:18 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 15 Sep 2017 00:08:19 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 15 Sep 2017 00:08:19 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 15 Sep 2017 00:08:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 15 Sep 2017 00:08:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 15 Sep 2017 00:08:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 15 Sep 2017 00:08:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 15 Sep 2017 01:10:01 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 15 Sep 2017 01:10:02 GMT
ENV PHP_VERSION=5.6.31
# Fri, 15 Sep 2017 01:10:02 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Fri, 15 Sep 2017 01:10:02 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Fri, 15 Sep 2017 01:10:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 15 Sep 2017 01:10:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 15 Sep 2017 01:13:03 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 20:09:46 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:09:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 20:09:47 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:09:47 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 20:09:47 GMT
EXPOSE 80/tcp
# Thu, 21 Sep 2017 20:09:48 GMT
CMD ["apache2-foreground"]
# Tue, 26 Sep 2017 02:53:51 GMT
RUN a2enmod rewrite
# Tue, 26 Sep 2017 02:55:20 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 26 Sep 2017 02:57:31 GMT
WORKDIR /var/www/html
# Tue, 26 Sep 2017 02:57:31 GMT
ENV BACKDROP_VERSION=1.7.2
# Tue, 26 Sep 2017 02:57:31 GMT
ENV BACKDROP_MD5=8c83ae79a18d13b2c4f2993cab9f6b37
# Tue, 26 Sep 2017 02:57:34 GMT
RUN curl -fSL "https://github.com/backdrop/backdrop/archive/${BACKDROP_VERSION}.tar.gz" -o backdrop.tar.gz   && echo "${BACKDROP_MD5} *backdrop.tar.gz" | md5sum -c -   && tar -xz --strip-components=1 -f backdrop.tar.gz   && rm backdrop.tar.gz   && chown -R www-data:www-data sites
# Tue, 26 Sep 2017 02:57:34 GMT
COPY file:c0486d85988902f1e562ad397588637d225d7c83881bf98527f6b5585f66ee13 in /entrypoint.sh 
# Tue, 26 Sep 2017 02:57:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Sep 2017 02:57:35 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:3638d91a90398e9b21e86d5f58ce592dcef089e461ed52559ddcc99d1021c04b`  
		Last Modified: Fri, 15 Sep 2017 01:35:48 GMT  
		Size: 3.0 MB (3012522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3646a95ab6778f36ca28c448f0217a571157bd80a83faa94284a046540d9b90e`  
		Last Modified: Fri, 15 Sep 2017 01:35:46 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628b8373e193144e4047261fde47c3b10881e013cc4730690c28281e30f340d4`  
		Last Modified: Fri, 15 Sep 2017 01:35:45 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24a2b2280edf466db78ea09cb8f23295781c7472f63e5ee7ebd5302e6ef3c45`  
		Last Modified: Fri, 15 Sep 2017 01:35:45 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f968b84cbbbc7f23c623c4ae9ad247431a59a370333ec20de8191284b4838b54`  
		Last Modified: Fri, 15 Sep 2017 01:35:44 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74cc3c21f7f15dc7174cd2588ae8a05cb9533d9b5a6e4a9d1392b339409fb495`  
		Last Modified: Fri, 15 Sep 2017 01:41:40 GMT  
		Size: 12.8 MB (12815680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27fb12209ba49e3ed4b3316a64275ff5b0c53bfbf9eb8003964a9dce443e7b1c`  
		Last Modified: Fri, 15 Sep 2017 01:41:38 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cac49c13da3cda3f9419767bfa2404c772a9e1300b49a5018895a2b7c61bd0`  
		Last Modified: Fri, 15 Sep 2017 01:41:41 GMT  
		Size: 9.2 MB (9175413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5584daf41d7414a142cb3eef092b1c26d354b1e363c80ba234ddc23e09717f26`  
		Last Modified: Thu, 21 Sep 2017 20:21:29 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf3158704e34e445cb10e8c1d37858f822a2c5314ca8847a862b9e054ff9876`  
		Last Modified: Thu, 21 Sep 2017 20:21:29 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babc19bf1636d0fba0ff0dca3c142f938b0bf42b55f81a9b16c7eee67fa198a1`  
		Last Modified: Tue, 26 Sep 2017 03:02:10 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60862ab4ad51a797215f4c93741700859f9002a0811e2179007fa0a67e5f98b1`  
		Last Modified: Tue, 26 Sep 2017 03:02:13 GMT  
		Size: 7.2 MB (7199904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec43dfe836e15fb93a7614dc713ab811cb8e2426b968297d15436fb1a5f55b0`  
		Last Modified: Tue, 26 Sep 2017 03:02:15 GMT  
		Size: 8.3 MB (8270771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fb0560980ece2eac133b40a444cc833d8b5d8467bd07c505d389858dcf1ea1`  
		Last Modified: Tue, 26 Sep 2017 03:02:10 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
