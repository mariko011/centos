## `wordpress:php7.0`

```console
$ docker pull wordpress@sha256:e2a4c49a1acbcc29168bc07089526c909ae308877b906b05ea12eb05be523a07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `wordpress:php7.0` - linux; amd64

```console
$ docker pull wordpress@sha256:bd2fc94fe30aa29159c1be4b652d750a9842a927bddd38d26f12d2e5c747762c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173580633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6547f5b43e871b2bb56c89415ab5310a0bcaca6ea34ccffca9329b69cde67881`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:37:07 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 02:38:08 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:38:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 02:38:10 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 02:50:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:51:29 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 02:51:30 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 02:51:31 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 02:51:32 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 02:51:34 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 02:51:35 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 02:51:35 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 02:51:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 02:51:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:51:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 02:51:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 03:43:39 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 08 Sep 2017 03:43:40 GMT
ENV PHP_VERSION=7.0.23
# Fri, 08 Sep 2017 03:43:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 03:43:41 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Fri, 08 Sep 2017 03:44:16 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 03:44:17 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 03:50:19 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Sep 2017 03:50:20 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 08 Sep 2017 03:50:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Sep 2017 03:50:21 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 08 Sep 2017 03:50:22 GMT
WORKDIR /var/www/html
# Fri, 08 Sep 2017 03:50:22 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 03:50:22 GMT
CMD ["apache2-foreground"]
# Wed, 13 Sep 2017 01:06:09 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 13 Sep 2017 01:06:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 13 Sep 2017 01:06:10 GMT
RUN a2enmod rewrite expires
# Wed, 13 Sep 2017 01:06:10 GMT
VOLUME [/var/www/html]
# Wed, 13 Sep 2017 01:06:10 GMT
ENV WORDPRESS_VERSION=4.8.1
# Wed, 13 Sep 2017 01:06:10 GMT
ENV WORDPRESS_SHA1=5376cf41403ae26d51ca55c32666ef68b10e35a4
# Wed, 13 Sep 2017 01:06:12 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 13 Sep 2017 01:06:12 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Wed, 13 Sep 2017 01:06:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 01:06:13 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a924c2479bb6777905f96cfb605b402d9a8021e3176dc0891fed25027369f86`  
		Last Modified: Fri, 08 Sep 2017 05:05:06 GMT  
		Size: 82.5 MB (82494887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e34513d1c6fa28a895a9038631ce0f01eac1112e553e52ec255d08c29ab8586`  
		Last Modified: Fri, 08 Sep 2017 05:04:39 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ffa64ac1d4100965fdab1cb78896787937def3ac6e334e0599325563d946aa`  
		Last Modified: Fri, 08 Sep 2017 05:32:23 GMT  
		Size: 2.8 MB (2784936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e287078ab3e5cedce81066c35d7202dbe85c5ed7b06f994ea282a4a2f2eb197d`  
		Last Modified: Fri, 08 Sep 2017 05:32:21 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa908359a8ab8fdc571f9f235057a85b57e1d9f3638136b00aa56e15e68f6f8b`  
		Last Modified: Fri, 08 Sep 2017 05:32:20 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da80a4729d52be4f51c2f78d2cb9ee332f747c22d66a2f8b2e29941b87fbd717`  
		Last Modified: Fri, 08 Sep 2017 05:32:20 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892d5ce128a6e695fe5b770feb07ccf9d67524bfa28fa890d2ab7e3c771cba9a`  
		Last Modified: Fri, 08 Sep 2017 05:32:18 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0fd5b856bd1df7dedb150872a6feb657722fe691885b6916bae79e461e440c`  
		Last Modified: Fri, 08 Sep 2017 05:35:34 GMT  
		Size: 12.1 MB (12080241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25451c077de6fdb001d6f089682210d43c0b43522638e2a1138e383585fca8b6`  
		Last Modified: Fri, 08 Sep 2017 05:35:32 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e75f60a44024860d4e6126dbc241918b4386081d56ed202755911a48220118`  
		Last Modified: Fri, 08 Sep 2017 05:35:38 GMT  
		Size: 13.2 MB (13211935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c81b51e595c3727cf96b0c3f4aca8f9fb23f6004f9508304848862c7b4033a`  
		Last Modified: Fri, 08 Sep 2017 05:35:32 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1df9bff0666f7b02c98fa406a069c4af8a7d0eda36a8e4f378190ec7ac585f`  
		Last Modified: Fri, 08 Sep 2017 05:35:32 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e272388099c6be33abebaf7d90d8cca63399b7bbf958bb924d80ca0ca61c9086`  
		Last Modified: Thu, 14 Sep 2017 23:14:54 GMT  
		Size: 2.4 MB (2393492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5147ea6a75998665afb92645cf902235277960fc38f3229d69dddcb5040ae1dd`  
		Last Modified: Thu, 14 Sep 2017 23:14:53 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:037d8a019e56ed829193b4274ce68b5a54a3f7cd7f574542c27b601792fe0366`  
		Last Modified: Thu, 14 Sep 2017 23:14:53 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bbb0a495806a8a516cfaf211f419cf96f67d14417a0ad66c2f59ba82d2808b3`  
		Last Modified: Thu, 14 Sep 2017 23:14:57 GMT  
		Size: 8.0 MB (8009623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc010cdb835626a28f7abf0e9d5631b6e0073adbd4561b7d89294f74fc3624a`  
		Last Modified: Thu, 14 Sep 2017 23:14:55 GMT  
		Size: 3.2 KB (3217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php7.0` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:9307f61dca3651aca203cf073fc8c3acff5bd064e7a211918ab31257c6ee7d7b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.4 MB (150422630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a31fff3093a28e068b823d0359f251749cdbc5cfa1f2a7079bea6c896a83ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 25 Jul 2017 12:47:49 GMT
ADD file:0448b2cd9da7d0c40fa8f3ee9ac6db219379c4631011ee1495ec8ad66be4f52e in / 
# Tue, 25 Jul 2017 12:47:52 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 01:27:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 26 Jul 2017 01:34:08 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 26 Jul 2017 01:34:10 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 26 Jul 2017 01:34:13 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Jul 2017 12:19:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Jul 2017 12:19:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Jul 2017 12:19:57 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Jul 2017 12:20:00 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 29 Jul 2017 12:20:02 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Jul 2017 12:20:04 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 29 Jul 2017 12:20:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Jul 2017 12:20:07 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Jul 2017 12:20:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 29 Jul 2017 12:20:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Jul 2017 12:20:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Jul 2017 12:20:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Jul 2017 14:08:52 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 01 Sep 2017 14:37:51 GMT
ENV PHP_VERSION=7.0.23
# Fri, 01 Sep 2017 14:37:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Fri, 01 Sep 2017 14:37:54 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Fri, 01 Sep 2017 14:41:31 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Sep 2017 14:41:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Sep 2017 15:08:18 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Sep 2017 15:08:20 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 01 Sep 2017 15:08:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Sep 2017 15:08:21 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 01 Sep 2017 15:08:22 GMT
WORKDIR /var/www/html
# Fri, 01 Sep 2017 15:08:23 GMT
EXPOSE 80/tcp
# Fri, 01 Sep 2017 15:08:24 GMT
CMD ["apache2-foreground"]
# Thu, 07 Sep 2017 20:06:51 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Thu, 07 Sep 2017 20:06:54 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 07 Sep 2017 20:06:56 GMT
RUN a2enmod rewrite expires
# Thu, 07 Sep 2017 20:06:56 GMT
VOLUME [/var/www/html]
# Thu, 07 Sep 2017 20:06:58 GMT
ENV WORDPRESS_VERSION=4.8.1
# Thu, 07 Sep 2017 20:06:59 GMT
ENV WORDPRESS_SHA1=5376cf41403ae26d51ca55c32666ef68b10e35a4
# Thu, 07 Sep 2017 20:07:15 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 07 Sep 2017 20:07:16 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Thu, 07 Sep 2017 20:07:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Sep 2017 20:07:18 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5e32d580a9d26e16dd26eaf656c25de16f6fc4a5e2cf51e5d73de3d0b5a0966c`  
		Last Modified: Tue, 25 Jul 2017 13:05:41 GMT  
		Size: 48.7 MB (48691924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff8ce68cf6c0fb7a0df99490754415d5e1e4c666008bf8c720adeb72bb540f8`  
		Last Modified: Sat, 29 Jul 2017 17:09:55 GMT  
		Size: 63.8 MB (63791145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6211db034033589ffed338d2fa542f9cb83e59e8034dfcc1830a2196af0001c`  
		Last Modified: Sat, 29 Jul 2017 17:09:03 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7959a831d58026d6f22c5b578e0eca3a637bb7e51d91fb91de7a98b171797d29`  
		Last Modified: Sat, 29 Jul 2017 17:11:07 GMT  
		Size: 2.7 MB (2679079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21c44079c8b1ad12d792b21beed84a3043a57422e88cce07dee7b41709f28db`  
		Last Modified: Sat, 29 Jul 2017 17:11:03 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3d38c6ea0a28640c4f66f5d990382d9e44486b228ded70dda506d74363249d`  
		Last Modified: Sat, 29 Jul 2017 17:11:03 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf5f2cdb028dd8e8607949710db1ad2d8a93e15cadf9b0a7d3a27615329ba81`  
		Last Modified: Sat, 29 Jul 2017 17:11:03 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0883c04ecf78e4af1df3af38ad48d896e0a051ff0f14cbf4c4160d7825fe51d0`  
		Last Modified: Sat, 29 Jul 2017 17:11:03 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69cd0f678b9a49fe34fe9bff6c42a64d538645fec3d14184740868ab1816cfc2`  
		Last Modified: Fri, 01 Sep 2017 16:10:24 GMT  
		Size: 12.3 MB (12306072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f25c7478479cc2db271ac651ea6e33cf8bee822ab596529413b91f98363f8e4`  
		Last Modified: Fri, 01 Sep 2017 16:10:19 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01fe5bc2905e9e5dd06057458f15ca89858e981bbf2c4a3fc6cf325251b19b29`  
		Last Modified: Fri, 01 Sep 2017 16:10:27 GMT  
		Size: 12.8 MB (12782425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fac835467d3045e2806e5fde80eda8fecf73cd99a06b788c69e42bf8cc7c30`  
		Last Modified: Fri, 01 Sep 2017 16:10:20 GMT  
		Size: 2.1 KB (2137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8444075fad33b4461728b6275100e423f7a85f7f7c792a159b738668a92595ab`  
		Last Modified: Fri, 01 Sep 2017 16:10:20 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041b73d984276fcd1ad05205005fef23f8f304ee98cadcca3c90d94809ceee77`  
		Last Modified: Thu, 07 Sep 2017 20:27:13 GMT  
		Size: 2.2 MB (2152289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc1f5b038b623a84bb0498d1c5dfeee1e3fb201254b0dbc2db67d0c63641e2d`  
		Last Modified: Thu, 07 Sep 2017 20:27:11 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6aeb5fd4638ed80bbd7cfb5e341d238742664003a1f2f13f6c344d80655314c`  
		Last Modified: Thu, 07 Sep 2017 20:27:11 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e6109f3964503c46e6da48bad0b7a608e688d3f46617f66178b380725881be`  
		Last Modified: Thu, 07 Sep 2017 20:27:16 GMT  
		Size: 8.0 MB (8009630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b364cb9c4002144499014c23857d04ea3b904948baefe4b0e47cc9caad306f73`  
		Last Modified: Thu, 07 Sep 2017 20:27:11 GMT  
		Size: 3.2 KB (3225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php7.0` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:c6f43045792cacf1465deb3d726cc35c1b51d5cbb9a76e55553d8193060e0b3b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152360174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b71abfb4e16373f0b72399111f5428c4ebead29a565d5a1a288bc340c2005b80`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 23:36:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 23:39:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 23:39:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 23:39:17 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 23:51:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 23:51:22 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 23:51:24 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 23:51:32 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 23:51:39 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 23:51:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 23:51:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 23:51:51 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 23:51:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 23:51:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 23:51:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 23:51:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 09 Sep 2017 00:23:13 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 09 Sep 2017 00:23:14 GMT
ENV PHP_VERSION=7.0.23
# Sat, 09 Sep 2017 00:23:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Sat, 09 Sep 2017 00:23:15 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Sat, 09 Sep 2017 00:23:54 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 09 Sep 2017 00:23:54 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 09 Sep 2017 00:30:52 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Sep 2017 00:30:54 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Sat, 09 Sep 2017 00:30:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Sep 2017 00:30:57 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 09 Sep 2017 00:30:59 GMT
WORKDIR /var/www/html
# Sat, 09 Sep 2017 00:30:59 GMT
EXPOSE 80/tcp
# Sat, 09 Sep 2017 00:31:00 GMT
CMD ["apache2-foreground"]
# Sat, 09 Sep 2017 03:57:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Sat, 09 Sep 2017 03:57:15 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 09 Sep 2017 03:57:21 GMT
RUN a2enmod rewrite expires
# Sat, 09 Sep 2017 03:57:24 GMT
VOLUME [/var/www/html]
# Sat, 09 Sep 2017 03:57:27 GMT
ENV WORDPRESS_VERSION=4.8.1
# Sat, 09 Sep 2017 03:57:31 GMT
ENV WORDPRESS_SHA1=5376cf41403ae26d51ca55c32666ef68b10e35a4
# Sat, 09 Sep 2017 03:57:43 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 09 Sep 2017 03:57:46 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Sat, 09 Sep 2017 03:57:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 03:57:51 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ce2ee409521cc41fb7b4a0f2b1afb85e1f4e0866aa17193d1c6fe2f05b84a3`  
		Last Modified: Sat, 09 Sep 2017 01:20:46 GMT  
		Size: 64.6 MB (64611190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8673d63cbfe1fbf0b951a59b088c845b7d04f9084298af89c958da9faf363396`  
		Last Modified: Sat, 09 Sep 2017 01:20:21 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d89ea097bf9d1fba3c6b2632307dab2966fbba034f584474cfa3d13104f00aea`  
		Last Modified: Sat, 09 Sep 2017 01:22:01 GMT  
		Size: 2.8 MB (2789168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6daf0d22283f2e44141dd7de63df0a6ad9df0a2025a939c10a695fedfdc68fff`  
		Last Modified: Sat, 09 Sep 2017 01:21:59 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d2d3332a3c152a24b43a87cc9fbfd80a0bdaee0776ecb87b29138d0fbc66f9`  
		Last Modified: Sat, 09 Sep 2017 01:21:56 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c653cbc235f2add8afb9702f8e5a9a98c3bc48ec6fda9ba5baf3ad9771a502d`  
		Last Modified: Sat, 09 Sep 2017 01:21:56 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ecae187fb1efe8f36b8f955997c43aee0fa13fe840887142fa6f77ba4b4bb4`  
		Last Modified: Sat, 09 Sep 2017 01:21:57 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd4502025b8f62507af1f8792ea2578e2c19f21161c2e61662f4f714b0a2178`  
		Last Modified: Sat, 09 Sep 2017 01:24:34 GMT  
		Size: 12.3 MB (12305502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab032d3597f848fcae06367084279004ed5a776b2bfa94f0dbabd4fd2119ee0`  
		Last Modified: Sat, 09 Sep 2017 01:24:32 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:809c19482295aaa5db266dfb8487dbf6ee7a11000ade9eddd84bb8090ae8f8f8`  
		Last Modified: Sat, 09 Sep 2017 01:24:37 GMT  
		Size: 12.4 MB (12376996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f18c5c2c679179f1a83679470c7668e5d67608fee84ab536e37054a880da155`  
		Last Modified: Sat, 09 Sep 2017 01:24:32 GMT  
		Size: 2.1 KB (2131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc48546763d17bb9e460cfff642344d68a94497462bbc4f945a17554063e2e59`  
		Last Modified: Sat, 09 Sep 2017 01:24:32 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adfe398930164d51b4ab996e4f5af76961c0bc7b9d9fbd807c37569e720655d1`  
		Last Modified: Sat, 09 Sep 2017 04:09:38 GMT  
		Size: 2.3 MB (2328200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b6334804a5ec3f5d855cdf8747d4dd46f30ba50b45ead39f2ba3e085b24afe`  
		Last Modified: Sat, 09 Sep 2017 04:09:38 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73951303cad20fbc9c635e6a3a35fee63c0c9d72197ff94c333df0b67d9b017e`  
		Last Modified: Sat, 09 Sep 2017 04:09:37 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b89fa26ea73cb69e88a25185b2b260422a49e880ac5ec5b38bc3836c40a2bd`  
		Last Modified: Sat, 09 Sep 2017 04:09:41 GMT  
		Size: 8.0 MB (8009624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2632de29757dd46f29d94156268f14e826027f0911b1b7e235d23bdc89fd13`  
		Last Modified: Sat, 09 Sep 2017 04:09:37 GMT  
		Size: 3.2 KB (3217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php7.0` - linux; 386

```console
$ docker pull wordpress@sha256:1f2b0ee0c397d22e072547db5a245cac2ea179ce3d2685f6d21188b05610f3d7
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176069296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d89cd0aac7b2c184c3e3655a56cf4d02be403a4b44d36e5779d8f14056075c4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:42:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 15:43:33 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 15:43:33 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 15:43:34 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 15:51:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 15:51:15 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 15:51:15 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 15:51:16 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 15:51:17 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 15:51:17 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 15:51:18 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 15:51:18 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 15:51:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 15:51:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 15:51:19 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 15:51:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 16:18:56 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 08 Sep 2017 16:18:57 GMT
ENV PHP_VERSION=7.0.23
# Fri, 08 Sep 2017 16:18:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 16:18:57 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Fri, 08 Sep 2017 16:19:47 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 16:19:47 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 16:24:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Sep 2017 16:27:04 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 08 Sep 2017 16:27:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Sep 2017 16:27:05 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 08 Sep 2017 16:27:05 GMT
WORKDIR /var/www/html
# Fri, 08 Sep 2017 16:27:05 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 16:27:06 GMT
CMD ["apache2-foreground"]
# Fri, 08 Sep 2017 17:55:38 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Fri, 08 Sep 2017 17:55:39 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 08 Sep 2017 17:55:40 GMT
RUN a2enmod rewrite expires
# Fri, 08 Sep 2017 17:55:43 GMT
VOLUME [/var/www/html]
# Fri, 08 Sep 2017 17:55:43 GMT
ENV WORDPRESS_VERSION=4.8.1
# Fri, 08 Sep 2017 17:55:43 GMT
ENV WORDPRESS_SHA1=5376cf41403ae26d51ca55c32666ef68b10e35a4
# Fri, 08 Sep 2017 17:55:49 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 08 Sep 2017 17:55:50 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Fri, 08 Sep 2017 17:55:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 17:55:50 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79b0c6e6c0af331a9399924d3d78ed076049dca893469ce8512cd3d173708f6`  
		Last Modified: Fri, 08 Sep 2017 17:16:02 GMT  
		Size: 83.9 MB (83883283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7374d46215ae1d83309d33a1f57a658d05346f2983de18430fe1d3cca2f3bfb7`  
		Last Modified: Fri, 08 Sep 2017 17:15:31 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a562efdebb7af789a726bd5cfb7df9a4e856178902a0c1e219de7eb55357bbd`  
		Last Modified: Fri, 08 Sep 2017 17:17:03 GMT  
		Size: 3.1 MB (3118756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c6a0f9af3a9e53a282f553d7d2a526ce530040102a213eb930eff1ec9ea000`  
		Last Modified: Fri, 08 Sep 2017 17:17:00 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393a49c8f26a8b26b9e9e74c0fa097c54e6ba818e477637b1daaa848852d2468`  
		Last Modified: Fri, 08 Sep 2017 17:17:00 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749bfae9d7367ce39222f000d59736b4fb111c14039fe245c00c1e49dcc40c4`  
		Last Modified: Fri, 08 Sep 2017 17:17:00 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a17f8b1ddfc050dd99a1c42de3ad3cd125058ab97bd8c2f1df00884965c464`  
		Last Modified: Fri, 08 Sep 2017 17:17:00 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe7820b9a30cf84951863857ca8ea544bfc1d6696983c35d7eb04af28c97a853`  
		Last Modified: Fri, 08 Sep 2017 17:19:06 GMT  
		Size: 12.3 MB (12306889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4890621677fbfb731778e53c8c61c7537c1d9a97eb41674ca3114a921bc8ac8f`  
		Last Modified: Fri, 08 Sep 2017 17:19:03 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fbf3bd777c4a5e40199174305af1b6a1d5fb4b27e712d8ced6918e45d56cf2`  
		Last Modified: Fri, 08 Sep 2017 17:19:08 GMT  
		Size: 13.7 MB (13652445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcfc513c17f5a7e343f2b4c377ea6eac31054d47064e9d5a6803a10bd66c7c59`  
		Last Modified: Fri, 08 Sep 2017 17:19:04 GMT  
		Size: 2.1 KB (2131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2322fd8ed37fe2982cc5c6ed6cd54adcbb495d7cd75deabcf0c276639c9c1e17`  
		Last Modified: Fri, 08 Sep 2017 17:19:03 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9d035950bb9bd12ea8c97641d612d1e83d09cce4ee54782dc6f46faa07fdf3`  
		Last Modified: Fri, 08 Sep 2017 18:04:36 GMT  
		Size: 2.3 MB (2315248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d02bfb398be0fe2b3ab418f566395e3c71177b2288ae0adde06d18ee171317`  
		Last Modified: Fri, 08 Sep 2017 18:04:35 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4df7e6c9093b008121986fecc0e4c043d0c3687c430ec87ea6c81b286a910d`  
		Last Modified: Fri, 08 Sep 2017 18:04:35 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b87648ebec1b2c77e33853fe8105af50e2160148c2c4b9ebf792787f324ced`  
		Last Modified: Fri, 08 Sep 2017 18:04:39 GMT  
		Size: 8.0 MB (8009528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271359d634393e2e531175480e739fa3bb0737a68385be6f0235ff7994af6472`  
		Last Modified: Fri, 08 Sep 2017 18:04:35 GMT  
		Size: 3.2 KB (3219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php7.0` - linux; ppc64le

```console
$ docker pull wordpress@sha256:f478944a04dac12008ec47b238fe180cd0e6a79dd477dbe70a3d69f68ab970e4
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.6 MB (160561177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feb90a0258820d4f7eec63926908567e8c5007a5c4965cf6b857c0998f7154bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:48:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 01:49:18 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:49:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 01:49:19 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 01:53:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:53:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 01:53:04 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 01:53:05 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 01:53:06 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 01:53:07 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 01:53:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 01:53:10 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 01:53:10 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 01:53:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 01:53:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 01:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 02:09:27 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 08 Sep 2017 02:09:27 GMT
ENV PHP_VERSION=7.0.23
# Fri, 08 Sep 2017 02:09:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 02:09:27 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Fri, 08 Sep 2017 02:09:49 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 02:09:49 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 02:12:10 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Sep 2017 02:12:10 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 08 Sep 2017 02:12:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Sep 2017 02:12:11 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 08 Sep 2017 02:12:11 GMT
WORKDIR /var/www/html
# Fri, 08 Sep 2017 02:12:11 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 02:12:11 GMT
CMD ["apache2-foreground"]
# Fri, 08 Sep 2017 03:11:15 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Fri, 08 Sep 2017 03:11:16 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 08 Sep 2017 03:11:16 GMT
RUN a2enmod rewrite expires
# Fri, 08 Sep 2017 03:11:17 GMT
VOLUME [/var/www/html]
# Fri, 08 Sep 2017 03:11:17 GMT
ENV WORDPRESS_VERSION=4.8.1
# Fri, 08 Sep 2017 03:11:17 GMT
ENV WORDPRESS_SHA1=5376cf41403ae26d51ca55c32666ef68b10e35a4
# Fri, 08 Sep 2017 03:11:22 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 08 Sep 2017 03:11:22 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Fri, 08 Sep 2017 03:11:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 03:11:22 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17dcfe91b8601953aafd744d3b843930c543043e6685df075ee8e09cea485fcb`  
		Last Modified: Fri, 08 Sep 2017 02:35:19 GMT  
		Size: 70.0 MB (69977302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f39d9a27644155d78cc51a93b3a444e99fce2906b6659cff0fb8b86cc4bcb1`  
		Last Modified: Fri, 08 Sep 2017 02:34:59 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344650e36f4dcfb3ea68b7f9aedc88f8401d8ed55d514f3d0761009d77ef0509`  
		Last Modified: Fri, 08 Sep 2017 02:36:17 GMT  
		Size: 2.9 MB (2907397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee722fea46b8c76f4b89406147777d1a34a8329510f59345ea6370e24e9c6f1`  
		Last Modified: Fri, 08 Sep 2017 02:36:17 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c940695ffbad0df7d8c0493f95b4f94337856e81a8e8211177d1fd75bafcb1`  
		Last Modified: Fri, 08 Sep 2017 02:36:14 GMT  
		Size: 473.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244297169990efebf3304f95f358c437cc3e6dc625d78d97ec6dd7cfa81a22d4`  
		Last Modified: Fri, 08 Sep 2017 02:36:14 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12df92fff39d127eca6dd6ead3478e6d4e377c924c181d93090d06d31886ca87`  
		Last Modified: Fri, 08 Sep 2017 02:36:14 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2137ff53c2dea3ec7c1081d0011caa0af5f3a24b9e0acc31437ffea950bed804`  
		Last Modified: Fri, 08 Sep 2017 02:38:22 GMT  
		Size: 12.3 MB (12304647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc73e991c5fa745f5ba8129101d65e5453ed4174e131f2b08c68725ba2157041`  
		Last Modified: Fri, 08 Sep 2017 02:38:20 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8061b19313a0fa5b9f396d84f4ec15411b2d5ddbf3bc19e4707163c68f820c5`  
		Last Modified: Fri, 08 Sep 2017 02:38:27 GMT  
		Size: 13.1 MB (13138955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:287920fceb3f03e638891c733ea3e280d76b4ae55a97ae4828774747c696e0de`  
		Last Modified: Fri, 08 Sep 2017 02:38:20 GMT  
		Size: 2.1 KB (2132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3d92b4e7caa67c0eb9130777957c0541509e2c5ca5294195aa70aecc126316`  
		Last Modified: Fri, 08 Sep 2017 02:38:20 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ded8603dbb4972e3e4911b1b281d5c989c631702ee3df11003e1ab8a7c6ab3`  
		Last Modified: Fri, 08 Sep 2017 03:18:12 GMT  
		Size: 2.4 MB (2403475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfb03b31884540c69a71fcdca627cee78cd437122da5f746fe432b302bb4b38`  
		Last Modified: Fri, 08 Sep 2017 03:18:10 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca25a20c909c266d95240a518b4c843f5660cd17477169ad4650be662e9c6163`  
		Last Modified: Fri, 08 Sep 2017 03:18:10 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb481547455d1e19d5c516bc6a045c471cee540a21b4519130379c4d01db067`  
		Last Modified: Fri, 08 Sep 2017 03:18:13 GMT  
		Size: 8.0 MB (8009668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f1687a2d72e16bebffe857d904065726e7e5ef89f5dc8b579aa9c216177063`  
		Last Modified: Fri, 08 Sep 2017 03:18:10 GMT  
		Size: 3.2 KB (3222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php7.0` - linux; s390x

```console
$ docker pull wordpress@sha256:cd6645ebaa1ec0018096196eb959826aee8582796c01b868bc73940aecdef471
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.5 MB (156518662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beee5229ba1b35f85b11c083d74f3bb4291da4fe8487c91da4b4f059fef9617b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:18:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 06:19:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:19:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 06:19:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 06:22:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:22:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 06:23:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 06:23:00 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 06:23:01 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 06:23:01 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 06:23:02 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 06:36:10 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 08 Sep 2017 06:36:11 GMT
ENV PHP_VERSION=7.0.23
# Fri, 08 Sep 2017 06:36:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.23.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 06:36:11 GMT
ENV PHP_SHA256=8e526e3551a58e00c8055fa4a72804aa1bd3ee1c0411b25bf1504cc4992609df PHP_MD5=
# Fri, 08 Sep 2017 06:36:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 06:36:27 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:38:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 08 Sep 2017 06:38:36 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:38:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 08 Sep 2017 06:38:36 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:38:37 GMT
WORKDIR /var/www/html
# Fri, 08 Sep 2017 06:38:37 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 06:38:37 GMT
CMD ["apache2-foreground"]
# Fri, 08 Sep 2017 07:31:17 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Fri, 08 Sep 2017 07:31:17 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 08 Sep 2017 07:31:18 GMT
RUN a2enmod rewrite expires
# Fri, 08 Sep 2017 07:31:18 GMT
VOLUME [/var/www/html]
# Fri, 08 Sep 2017 07:31:18 GMT
ENV WORDPRESS_VERSION=4.8.1
# Fri, 08 Sep 2017 07:31:18 GMT
ENV WORDPRESS_SHA1=5376cf41403ae26d51ca55c32666ef68b10e35a4
# Fri, 08 Sep 2017 07:31:21 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Fri, 08 Sep 2017 07:31:22 GMT
COPY file:db1f48c4963a4352b4c31c18f102b71fcc06a1266db6edd17f8f52458fe13130 in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:31:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:31:22 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701b1d6891093c664aafb5ddded8b897bab2678b49b4c39ed152c86139e3b472`  
		Last Modified: Fri, 08 Sep 2017 06:58:03 GMT  
		Size: 64.0 MB (63977876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fee1ce9a2412b1abf6eb058badc7a59941c997bf3c5764c47e9f3d51e2f0`  
		Last Modified: Fri, 08 Sep 2017 06:57:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e311b1d5cc2339ce23df72332cc46172629bd6963e8637778bb8f88fcdd864`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 3.0 MB (3022480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d672acbf183bc3af07e7748180d93a6840e2318cd89c297d412c1e411529260`  
		Last Modified: Fri, 08 Sep 2017 06:58:24 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab45def1c89dc1f846f7d3ae8e83f3d1e4545980614f582148db747e84351a72`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d137773f7744dbe6997e12c595f10532708ad0d138d8bee39c78b11a3876048`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f35a6f0e12655b63b7b31b460fbbd16bf9b36b984c3d681e9dd64788a29998`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262c0f458b59d955830276d92c8b5b34bd30a29815d301833e11cc3695272d15`  
		Last Modified: Fri, 08 Sep 2017 06:59:19 GMT  
		Size: 12.3 MB (12304571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be014133da30ed64b66f67ca9697f0967e55c5f3e77b470ddd4efd7f61f559d`  
		Last Modified: Fri, 08 Sep 2017 06:59:18 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3dba304086464efa9472a9955e63f28469e43b0e6afb6cbb6c0ab80355c33b`  
		Last Modified: Fri, 08 Sep 2017 06:59:21 GMT  
		Size: 13.7 MB (13728758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da94f4583c530ffb750b015951eddf2d1f0d9aaeea72f94a4610b2499f2b9e3a`  
		Last Modified: Fri, 08 Sep 2017 06:59:18 GMT  
		Size: 2.1 KB (2131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684b1f5a3cfba2d877e0a689e3280c19751b6da92ee3216d81641f252f1db074`  
		Last Modified: Fri, 08 Sep 2017 06:59:18 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e16ecf0a1fe00802512033232bed04446445036946242a6d2db1679eeada76`  
		Last Modified: Fri, 08 Sep 2017 07:35:17 GMT  
		Size: 2.7 MB (2676544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7835acfa76ef0bcedfee727a9e12a9279e55700cfaae49e0ec977e5bd56d1c`  
		Last Modified: Fri, 08 Sep 2017 07:35:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3926eb50b6c39b2c7829bf5b4a12e96793e1390f5ad346a7f3610e829009608`  
		Last Modified: Fri, 08 Sep 2017 07:35:16 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9487f15ae31a333e8b3bf041bdddad75c6e9cbac480484192a7c39d5207dcb4`  
		Last Modified: Fri, 08 Sep 2017 07:35:17 GMT  
		Size: 8.0 MB (8009620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9a61eefda3372ad4f870c115c73d0cb5d67f09635a0efcb44de7c5bcc8d8c3`  
		Last Modified: Fri, 08 Sep 2017 07:35:16 GMT  
		Size: 3.2 KB (3221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
