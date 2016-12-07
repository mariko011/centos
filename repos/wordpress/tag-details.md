<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `wordpress`

-	[`wordpress:4.7.0-apache`](#wordpress470-apache)
-	[`wordpress:4.7-apache`](#wordpress47-apache)
-	[`wordpress:4-apache`](#wordpress4-apache)
-	[`wordpress:apache`](#wordpressapache)
-	[`wordpress:4.7.0`](#wordpress470)
-	[`wordpress:4.7`](#wordpress47)
-	[`wordpress:4`](#wordpress4)
-	[`wordpress:latest`](#wordpresslatest)
-	[`wordpress:4.7.0-php5.6-apache`](#wordpress470-php56-apache)
-	[`wordpress:4.7-php5.6-apache`](#wordpress47-php56-apache)
-	[`wordpress:4-php5.6-apache`](#wordpress4-php56-apache)
-	[`wordpress:php5.6-apache`](#wordpressphp56-apache)
-	[`wordpress:4.7.0-php5.6`](#wordpress470-php56)
-	[`wordpress:4.7-php5.6`](#wordpress47-php56)
-	[`wordpress:4-php5.6`](#wordpress4-php56)
-	[`wordpress:php5.6`](#wordpressphp56)
-	[`wordpress:4.7.0-fpm`](#wordpress470-fpm)
-	[`wordpress:4.7-fpm`](#wordpress47-fpm)
-	[`wordpress:4-fpm`](#wordpress4-fpm)
-	[`wordpress:fpm`](#wordpressfpm)
-	[`wordpress:4.7.0-php5.6-fpm`](#wordpress470-php56-fpm)
-	[`wordpress:4.7-php5.6-fpm`](#wordpress47-php56-fpm)
-	[`wordpress:4-php5.6-fpm`](#wordpress4-php56-fpm)
-	[`wordpress:php5.6-fpm`](#wordpressphp56-fpm)
-	[`wordpress:4.7.0-php7.0-apache`](#wordpress470-php70-apache)
-	[`wordpress:4.7-php7.0-apache`](#wordpress47-php70-apache)
-	[`wordpress:4-php7.0-apache`](#wordpress4-php70-apache)
-	[`wordpress:php7.0-apache`](#wordpressphp70-apache)
-	[`wordpress:4.7.0-php7.0`](#wordpress470-php70)
-	[`wordpress:4.7-php7.0`](#wordpress47-php70)
-	[`wordpress:4-php7.0`](#wordpress4-php70)
-	[`wordpress:php7.0`](#wordpressphp70)
-	[`wordpress:4.7.0-php7.0-fpm`](#wordpress470-php70-fpm)
-	[`wordpress:4.7-php7.0-fpm`](#wordpress47-php70-fpm)
-	[`wordpress:4-php7.0-fpm`](#wordpress4-php70-fpm)
-	[`wordpress:php7.0-fpm`](#wordpressphp70-fpm)

## `wordpress:4.7.0-apache`

```console
$ docker pull wordpress@sha256:4eefa1b7fdce1b6e6953ca18b6f49a68c541e9e07808e255c3b8cc094ff085da
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.0-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.4 MB (163437757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae7073f062491f3132afcf5eb8d0aaf4469f5b13f1afe628112b78aa50e23d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:22:45 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 08 Nov 2016 23:22:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 08 Nov 2016 23:22:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 08 Nov 2016 23:22:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 08 Nov 2016 23:22:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:50 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 22:16:28 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_VERSION=5.6.28
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.28.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_SHA256=07187ba2870f89cef334cd2ad6cb801aeec5eaf283da0293a9a6be75d6786d11 PHP_MD5=1e01c66b2e67ab3b56a6180ee560fe4c
# Tue, 06 Dec 2016 22:16:38 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 22:16:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:18:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:21 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:23 GMT
EXPOSE 80/tcp
# Wed, 07 Dec 2016 19:12:23 GMT
CMD ["apache2-foreground"]
# Wed, 07 Dec 2016 19:42:02 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:42:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:42:04 GMT
RUN a2enmod rewrite expires
# Wed, 07 Dec 2016 19:42:05 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:42:08 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:42:08 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:42:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:42:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:42:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f6d38a33bac61f5c37fce97cc80fc61ee6ffe8d8a7da5d30cc2733aaebb7e`  
		Last Modified: Tue, 08 Nov 2016 23:25:38 GMT  
		Size: 2.8 MB (2849357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea5361568cb6486c878f80ba5844797b34da7b824fdb4eb5ecbaa05416e503`  
		Last Modified: Tue, 08 Nov 2016 23:25:37 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f18e7771919bad862147cb2c038a59fab10d523862f0ae5ff9417137dfd58`  
		Last Modified: Tue, 08 Nov 2016 23:25:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dbc878ca0c93ba275fdb0cbc79169d4b1b86735d24b8577ea529daa953b333`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195935e4100b1050f83184b119a90f6ca23b3b03954773ea7de354a629652673`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0191f86c93d0537f4f1141651d5e4ebb4f6fe87820121e1abdf7a5a696451ba9`  
		Last Modified: Tue, 06 Dec 2016 22:49:35 GMT  
		Size: 12.6 MB (12571206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2668a15f7db3ce6c9238cdef988c4fcea831cfa684729f7c61835bed41277caf`  
		Last Modified: Tue, 06 Dec 2016 22:49:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec47ea54d8e25d808aa15b3cf81508f6202c8942a296cb706532881680a58b3`  
		Last Modified: Tue, 06 Dec 2016 22:49:36 GMT  
		Size: 9.1 MB (9102934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5d932ca96d093228d1ba050bff9b215e2a2185e3fec547d220f3dd705accbf`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29c2876dc397682827a22222ed4a6ffcde9dc974eee03c57ef21381892b41aa`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0401a5033480c193dad9264f8829a42618c7fe263e244da03da63abcfb24d4bb`  
		Last Modified: Wed, 07 Dec 2016 19:44:36 GMT  
		Size: 2.1 MB (2135045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b42a7a0d6c8dfbeba6d7c076f6cc8d3406718af3b963c2a72b99c2ec5c67b8`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982bd9789f584afa76a3bc6090e1e5b25e91067d15a4124c1393162ffb0a3d92`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f2cf55d36df3cf45d888c0d729c28f90876d75d5cebc3ce8166498b1c5d549`  
		Last Modified: Wed, 07 Dec 2016 19:44:33 GMT  
		Size: 7.8 MB (7821782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8c090f23670c7986b43508486d6178130afd5fd1980321fa94622652401b29`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 2.9 KB (2930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95cd30ed72e944c390f8278a5e74f9c6532e91c5909e95730e96cbcb94d3206`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-apache`

```console
$ docker pull wordpress@sha256:4eefa1b7fdce1b6e6953ca18b6f49a68c541e9e07808e255c3b8cc094ff085da
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.4 MB (163437757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae7073f062491f3132afcf5eb8d0aaf4469f5b13f1afe628112b78aa50e23d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:22:45 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 08 Nov 2016 23:22:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 08 Nov 2016 23:22:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 08 Nov 2016 23:22:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 08 Nov 2016 23:22:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:50 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 22:16:28 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_VERSION=5.6.28
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.28.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_SHA256=07187ba2870f89cef334cd2ad6cb801aeec5eaf283da0293a9a6be75d6786d11 PHP_MD5=1e01c66b2e67ab3b56a6180ee560fe4c
# Tue, 06 Dec 2016 22:16:38 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 22:16:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:18:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:21 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:23 GMT
EXPOSE 80/tcp
# Wed, 07 Dec 2016 19:12:23 GMT
CMD ["apache2-foreground"]
# Wed, 07 Dec 2016 19:42:02 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:42:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:42:04 GMT
RUN a2enmod rewrite expires
# Wed, 07 Dec 2016 19:42:05 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:42:08 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:42:08 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:42:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:42:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:42:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f6d38a33bac61f5c37fce97cc80fc61ee6ffe8d8a7da5d30cc2733aaebb7e`  
		Last Modified: Tue, 08 Nov 2016 23:25:38 GMT  
		Size: 2.8 MB (2849357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea5361568cb6486c878f80ba5844797b34da7b824fdb4eb5ecbaa05416e503`  
		Last Modified: Tue, 08 Nov 2016 23:25:37 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f18e7771919bad862147cb2c038a59fab10d523862f0ae5ff9417137dfd58`  
		Last Modified: Tue, 08 Nov 2016 23:25:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dbc878ca0c93ba275fdb0cbc79169d4b1b86735d24b8577ea529daa953b333`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195935e4100b1050f83184b119a90f6ca23b3b03954773ea7de354a629652673`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0191f86c93d0537f4f1141651d5e4ebb4f6fe87820121e1abdf7a5a696451ba9`  
		Last Modified: Tue, 06 Dec 2016 22:49:35 GMT  
		Size: 12.6 MB (12571206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2668a15f7db3ce6c9238cdef988c4fcea831cfa684729f7c61835bed41277caf`  
		Last Modified: Tue, 06 Dec 2016 22:49:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec47ea54d8e25d808aa15b3cf81508f6202c8942a296cb706532881680a58b3`  
		Last Modified: Tue, 06 Dec 2016 22:49:36 GMT  
		Size: 9.1 MB (9102934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5d932ca96d093228d1ba050bff9b215e2a2185e3fec547d220f3dd705accbf`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29c2876dc397682827a22222ed4a6ffcde9dc974eee03c57ef21381892b41aa`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0401a5033480c193dad9264f8829a42618c7fe263e244da03da63abcfb24d4bb`  
		Last Modified: Wed, 07 Dec 2016 19:44:36 GMT  
		Size: 2.1 MB (2135045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b42a7a0d6c8dfbeba6d7c076f6cc8d3406718af3b963c2a72b99c2ec5c67b8`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982bd9789f584afa76a3bc6090e1e5b25e91067d15a4124c1393162ffb0a3d92`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f2cf55d36df3cf45d888c0d729c28f90876d75d5cebc3ce8166498b1c5d549`  
		Last Modified: Wed, 07 Dec 2016 19:44:33 GMT  
		Size: 7.8 MB (7821782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8c090f23670c7986b43508486d6178130afd5fd1980321fa94622652401b29`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 2.9 KB (2930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95cd30ed72e944c390f8278a5e74f9c6532e91c5909e95730e96cbcb94d3206`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-apache`

```console
$ docker pull wordpress@sha256:4eefa1b7fdce1b6e6953ca18b6f49a68c541e9e07808e255c3b8cc094ff085da
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.4 MB (163437757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae7073f062491f3132afcf5eb8d0aaf4469f5b13f1afe628112b78aa50e23d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:22:45 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 08 Nov 2016 23:22:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 08 Nov 2016 23:22:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 08 Nov 2016 23:22:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 08 Nov 2016 23:22:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:50 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 22:16:28 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_VERSION=5.6.28
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.28.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_SHA256=07187ba2870f89cef334cd2ad6cb801aeec5eaf283da0293a9a6be75d6786d11 PHP_MD5=1e01c66b2e67ab3b56a6180ee560fe4c
# Tue, 06 Dec 2016 22:16:38 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 22:16:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:18:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:21 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:23 GMT
EXPOSE 80/tcp
# Wed, 07 Dec 2016 19:12:23 GMT
CMD ["apache2-foreground"]
# Wed, 07 Dec 2016 19:42:02 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:42:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:42:04 GMT
RUN a2enmod rewrite expires
# Wed, 07 Dec 2016 19:42:05 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:42:08 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:42:08 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:42:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:42:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:42:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f6d38a33bac61f5c37fce97cc80fc61ee6ffe8d8a7da5d30cc2733aaebb7e`  
		Last Modified: Tue, 08 Nov 2016 23:25:38 GMT  
		Size: 2.8 MB (2849357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea5361568cb6486c878f80ba5844797b34da7b824fdb4eb5ecbaa05416e503`  
		Last Modified: Tue, 08 Nov 2016 23:25:37 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f18e7771919bad862147cb2c038a59fab10d523862f0ae5ff9417137dfd58`  
		Last Modified: Tue, 08 Nov 2016 23:25:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dbc878ca0c93ba275fdb0cbc79169d4b1b86735d24b8577ea529daa953b333`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195935e4100b1050f83184b119a90f6ca23b3b03954773ea7de354a629652673`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0191f86c93d0537f4f1141651d5e4ebb4f6fe87820121e1abdf7a5a696451ba9`  
		Last Modified: Tue, 06 Dec 2016 22:49:35 GMT  
		Size: 12.6 MB (12571206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2668a15f7db3ce6c9238cdef988c4fcea831cfa684729f7c61835bed41277caf`  
		Last Modified: Tue, 06 Dec 2016 22:49:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec47ea54d8e25d808aa15b3cf81508f6202c8942a296cb706532881680a58b3`  
		Last Modified: Tue, 06 Dec 2016 22:49:36 GMT  
		Size: 9.1 MB (9102934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5d932ca96d093228d1ba050bff9b215e2a2185e3fec547d220f3dd705accbf`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29c2876dc397682827a22222ed4a6ffcde9dc974eee03c57ef21381892b41aa`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0401a5033480c193dad9264f8829a42618c7fe263e244da03da63abcfb24d4bb`  
		Last Modified: Wed, 07 Dec 2016 19:44:36 GMT  
		Size: 2.1 MB (2135045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b42a7a0d6c8dfbeba6d7c076f6cc8d3406718af3b963c2a72b99c2ec5c67b8`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982bd9789f584afa76a3bc6090e1e5b25e91067d15a4124c1393162ffb0a3d92`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f2cf55d36df3cf45d888c0d729c28f90876d75d5cebc3ce8166498b1c5d549`  
		Last Modified: Wed, 07 Dec 2016 19:44:33 GMT  
		Size: 7.8 MB (7821782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8c090f23670c7986b43508486d6178130afd5fd1980321fa94622652401b29`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 2.9 KB (2930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95cd30ed72e944c390f8278a5e74f9c6532e91c5909e95730e96cbcb94d3206`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:apache`

```console
$ docker pull wordpress@sha256:4eefa1b7fdce1b6e6953ca18b6f49a68c541e9e07808e255c3b8cc094ff085da
```

-	Platforms:
	-	linux; amd64

### `wordpress:apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.4 MB (163437757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae7073f062491f3132afcf5eb8d0aaf4469f5b13f1afe628112b78aa50e23d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:22:45 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 08 Nov 2016 23:22:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 08 Nov 2016 23:22:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 08 Nov 2016 23:22:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 08 Nov 2016 23:22:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:50 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 22:16:28 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_VERSION=5.6.28
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.28.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_SHA256=07187ba2870f89cef334cd2ad6cb801aeec5eaf283da0293a9a6be75d6786d11 PHP_MD5=1e01c66b2e67ab3b56a6180ee560fe4c
# Tue, 06 Dec 2016 22:16:38 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 22:16:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:18:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:21 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:23 GMT
EXPOSE 80/tcp
# Wed, 07 Dec 2016 19:12:23 GMT
CMD ["apache2-foreground"]
# Wed, 07 Dec 2016 19:42:02 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:42:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:42:04 GMT
RUN a2enmod rewrite expires
# Wed, 07 Dec 2016 19:42:05 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:42:08 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:42:08 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:42:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:42:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:42:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f6d38a33bac61f5c37fce97cc80fc61ee6ffe8d8a7da5d30cc2733aaebb7e`  
		Last Modified: Tue, 08 Nov 2016 23:25:38 GMT  
		Size: 2.8 MB (2849357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea5361568cb6486c878f80ba5844797b34da7b824fdb4eb5ecbaa05416e503`  
		Last Modified: Tue, 08 Nov 2016 23:25:37 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f18e7771919bad862147cb2c038a59fab10d523862f0ae5ff9417137dfd58`  
		Last Modified: Tue, 08 Nov 2016 23:25:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dbc878ca0c93ba275fdb0cbc79169d4b1b86735d24b8577ea529daa953b333`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195935e4100b1050f83184b119a90f6ca23b3b03954773ea7de354a629652673`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0191f86c93d0537f4f1141651d5e4ebb4f6fe87820121e1abdf7a5a696451ba9`  
		Last Modified: Tue, 06 Dec 2016 22:49:35 GMT  
		Size: 12.6 MB (12571206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2668a15f7db3ce6c9238cdef988c4fcea831cfa684729f7c61835bed41277caf`  
		Last Modified: Tue, 06 Dec 2016 22:49:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec47ea54d8e25d808aa15b3cf81508f6202c8942a296cb706532881680a58b3`  
		Last Modified: Tue, 06 Dec 2016 22:49:36 GMT  
		Size: 9.1 MB (9102934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5d932ca96d093228d1ba050bff9b215e2a2185e3fec547d220f3dd705accbf`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29c2876dc397682827a22222ed4a6ffcde9dc974eee03c57ef21381892b41aa`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0401a5033480c193dad9264f8829a42618c7fe263e244da03da63abcfb24d4bb`  
		Last Modified: Wed, 07 Dec 2016 19:44:36 GMT  
		Size: 2.1 MB (2135045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b42a7a0d6c8dfbeba6d7c076f6cc8d3406718af3b963c2a72b99c2ec5c67b8`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982bd9789f584afa76a3bc6090e1e5b25e91067d15a4124c1393162ffb0a3d92`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f2cf55d36df3cf45d888c0d729c28f90876d75d5cebc3ce8166498b1c5d549`  
		Last Modified: Wed, 07 Dec 2016 19:44:33 GMT  
		Size: 7.8 MB (7821782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8c090f23670c7986b43508486d6178130afd5fd1980321fa94622652401b29`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 2.9 KB (2930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95cd30ed72e944c390f8278a5e74f9c6532e91c5909e95730e96cbcb94d3206`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.0`

```console
$ docker pull wordpress@sha256:4eefa1b7fdce1b6e6953ca18b6f49a68c541e9e07808e255c3b8cc094ff085da
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.4 MB (163437757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae7073f062491f3132afcf5eb8d0aaf4469f5b13f1afe628112b78aa50e23d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:22:45 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 08 Nov 2016 23:22:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 08 Nov 2016 23:22:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 08 Nov 2016 23:22:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 08 Nov 2016 23:22:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:50 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 22:16:28 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_VERSION=5.6.28
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.28.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_SHA256=07187ba2870f89cef334cd2ad6cb801aeec5eaf283da0293a9a6be75d6786d11 PHP_MD5=1e01c66b2e67ab3b56a6180ee560fe4c
# Tue, 06 Dec 2016 22:16:38 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 22:16:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:18:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:21 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:23 GMT
EXPOSE 80/tcp
# Wed, 07 Dec 2016 19:12:23 GMT
CMD ["apache2-foreground"]
# Wed, 07 Dec 2016 19:42:02 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:42:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:42:04 GMT
RUN a2enmod rewrite expires
# Wed, 07 Dec 2016 19:42:05 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:42:08 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:42:08 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:42:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:42:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:42:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f6d38a33bac61f5c37fce97cc80fc61ee6ffe8d8a7da5d30cc2733aaebb7e`  
		Last Modified: Tue, 08 Nov 2016 23:25:38 GMT  
		Size: 2.8 MB (2849357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea5361568cb6486c878f80ba5844797b34da7b824fdb4eb5ecbaa05416e503`  
		Last Modified: Tue, 08 Nov 2016 23:25:37 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f18e7771919bad862147cb2c038a59fab10d523862f0ae5ff9417137dfd58`  
		Last Modified: Tue, 08 Nov 2016 23:25:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dbc878ca0c93ba275fdb0cbc79169d4b1b86735d24b8577ea529daa953b333`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195935e4100b1050f83184b119a90f6ca23b3b03954773ea7de354a629652673`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0191f86c93d0537f4f1141651d5e4ebb4f6fe87820121e1abdf7a5a696451ba9`  
		Last Modified: Tue, 06 Dec 2016 22:49:35 GMT  
		Size: 12.6 MB (12571206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2668a15f7db3ce6c9238cdef988c4fcea831cfa684729f7c61835bed41277caf`  
		Last Modified: Tue, 06 Dec 2016 22:49:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec47ea54d8e25d808aa15b3cf81508f6202c8942a296cb706532881680a58b3`  
		Last Modified: Tue, 06 Dec 2016 22:49:36 GMT  
		Size: 9.1 MB (9102934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5d932ca96d093228d1ba050bff9b215e2a2185e3fec547d220f3dd705accbf`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29c2876dc397682827a22222ed4a6ffcde9dc974eee03c57ef21381892b41aa`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0401a5033480c193dad9264f8829a42618c7fe263e244da03da63abcfb24d4bb`  
		Last Modified: Wed, 07 Dec 2016 19:44:36 GMT  
		Size: 2.1 MB (2135045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b42a7a0d6c8dfbeba6d7c076f6cc8d3406718af3b963c2a72b99c2ec5c67b8`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982bd9789f584afa76a3bc6090e1e5b25e91067d15a4124c1393162ffb0a3d92`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f2cf55d36df3cf45d888c0d729c28f90876d75d5cebc3ce8166498b1c5d549`  
		Last Modified: Wed, 07 Dec 2016 19:44:33 GMT  
		Size: 7.8 MB (7821782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8c090f23670c7986b43508486d6178130afd5fd1980321fa94622652401b29`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 2.9 KB (2930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95cd30ed72e944c390f8278a5e74f9c6532e91c5909e95730e96cbcb94d3206`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7`

```console
$ docker pull wordpress@sha256:4eefa1b7fdce1b6e6953ca18b6f49a68c541e9e07808e255c3b8cc094ff085da
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.4 MB (163437757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae7073f062491f3132afcf5eb8d0aaf4469f5b13f1afe628112b78aa50e23d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:22:45 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 08 Nov 2016 23:22:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 08 Nov 2016 23:22:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 08 Nov 2016 23:22:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 08 Nov 2016 23:22:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:50 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 22:16:28 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_VERSION=5.6.28
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.28.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_SHA256=07187ba2870f89cef334cd2ad6cb801aeec5eaf283da0293a9a6be75d6786d11 PHP_MD5=1e01c66b2e67ab3b56a6180ee560fe4c
# Tue, 06 Dec 2016 22:16:38 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 22:16:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:18:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:21 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:23 GMT
EXPOSE 80/tcp
# Wed, 07 Dec 2016 19:12:23 GMT
CMD ["apache2-foreground"]
# Wed, 07 Dec 2016 19:42:02 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:42:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:42:04 GMT
RUN a2enmod rewrite expires
# Wed, 07 Dec 2016 19:42:05 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:42:08 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:42:08 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:42:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:42:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:42:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f6d38a33bac61f5c37fce97cc80fc61ee6ffe8d8a7da5d30cc2733aaebb7e`  
		Last Modified: Tue, 08 Nov 2016 23:25:38 GMT  
		Size: 2.8 MB (2849357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea5361568cb6486c878f80ba5844797b34da7b824fdb4eb5ecbaa05416e503`  
		Last Modified: Tue, 08 Nov 2016 23:25:37 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f18e7771919bad862147cb2c038a59fab10d523862f0ae5ff9417137dfd58`  
		Last Modified: Tue, 08 Nov 2016 23:25:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dbc878ca0c93ba275fdb0cbc79169d4b1b86735d24b8577ea529daa953b333`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195935e4100b1050f83184b119a90f6ca23b3b03954773ea7de354a629652673`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0191f86c93d0537f4f1141651d5e4ebb4f6fe87820121e1abdf7a5a696451ba9`  
		Last Modified: Tue, 06 Dec 2016 22:49:35 GMT  
		Size: 12.6 MB (12571206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2668a15f7db3ce6c9238cdef988c4fcea831cfa684729f7c61835bed41277caf`  
		Last Modified: Tue, 06 Dec 2016 22:49:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec47ea54d8e25d808aa15b3cf81508f6202c8942a296cb706532881680a58b3`  
		Last Modified: Tue, 06 Dec 2016 22:49:36 GMT  
		Size: 9.1 MB (9102934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5d932ca96d093228d1ba050bff9b215e2a2185e3fec547d220f3dd705accbf`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29c2876dc397682827a22222ed4a6ffcde9dc974eee03c57ef21381892b41aa`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0401a5033480c193dad9264f8829a42618c7fe263e244da03da63abcfb24d4bb`  
		Last Modified: Wed, 07 Dec 2016 19:44:36 GMT  
		Size: 2.1 MB (2135045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b42a7a0d6c8dfbeba6d7c076f6cc8d3406718af3b963c2a72b99c2ec5c67b8`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982bd9789f584afa76a3bc6090e1e5b25e91067d15a4124c1393162ffb0a3d92`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f2cf55d36df3cf45d888c0d729c28f90876d75d5cebc3ce8166498b1c5d549`  
		Last Modified: Wed, 07 Dec 2016 19:44:33 GMT  
		Size: 7.8 MB (7821782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8c090f23670c7986b43508486d6178130afd5fd1980321fa94622652401b29`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 2.9 KB (2930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95cd30ed72e944c390f8278a5e74f9c6532e91c5909e95730e96cbcb94d3206`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4`

```console
$ docker pull wordpress@sha256:4eefa1b7fdce1b6e6953ca18b6f49a68c541e9e07808e255c3b8cc094ff085da
```

-	Platforms:
	-	linux; amd64

### `wordpress:4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.4 MB (163437757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae7073f062491f3132afcf5eb8d0aaf4469f5b13f1afe628112b78aa50e23d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:22:45 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 08 Nov 2016 23:22:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 08 Nov 2016 23:22:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 08 Nov 2016 23:22:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 08 Nov 2016 23:22:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:50 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 22:16:28 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_VERSION=5.6.28
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.28.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_SHA256=07187ba2870f89cef334cd2ad6cb801aeec5eaf283da0293a9a6be75d6786d11 PHP_MD5=1e01c66b2e67ab3b56a6180ee560fe4c
# Tue, 06 Dec 2016 22:16:38 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 22:16:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:18:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:21 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:23 GMT
EXPOSE 80/tcp
# Wed, 07 Dec 2016 19:12:23 GMT
CMD ["apache2-foreground"]
# Wed, 07 Dec 2016 19:42:02 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:42:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:42:04 GMT
RUN a2enmod rewrite expires
# Wed, 07 Dec 2016 19:42:05 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:42:08 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:42:08 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:42:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:42:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:42:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f6d38a33bac61f5c37fce97cc80fc61ee6ffe8d8a7da5d30cc2733aaebb7e`  
		Last Modified: Tue, 08 Nov 2016 23:25:38 GMT  
		Size: 2.8 MB (2849357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea5361568cb6486c878f80ba5844797b34da7b824fdb4eb5ecbaa05416e503`  
		Last Modified: Tue, 08 Nov 2016 23:25:37 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f18e7771919bad862147cb2c038a59fab10d523862f0ae5ff9417137dfd58`  
		Last Modified: Tue, 08 Nov 2016 23:25:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dbc878ca0c93ba275fdb0cbc79169d4b1b86735d24b8577ea529daa953b333`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195935e4100b1050f83184b119a90f6ca23b3b03954773ea7de354a629652673`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0191f86c93d0537f4f1141651d5e4ebb4f6fe87820121e1abdf7a5a696451ba9`  
		Last Modified: Tue, 06 Dec 2016 22:49:35 GMT  
		Size: 12.6 MB (12571206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2668a15f7db3ce6c9238cdef988c4fcea831cfa684729f7c61835bed41277caf`  
		Last Modified: Tue, 06 Dec 2016 22:49:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec47ea54d8e25d808aa15b3cf81508f6202c8942a296cb706532881680a58b3`  
		Last Modified: Tue, 06 Dec 2016 22:49:36 GMT  
		Size: 9.1 MB (9102934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5d932ca96d093228d1ba050bff9b215e2a2185e3fec547d220f3dd705accbf`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29c2876dc397682827a22222ed4a6ffcde9dc974eee03c57ef21381892b41aa`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0401a5033480c193dad9264f8829a42618c7fe263e244da03da63abcfb24d4bb`  
		Last Modified: Wed, 07 Dec 2016 19:44:36 GMT  
		Size: 2.1 MB (2135045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b42a7a0d6c8dfbeba6d7c076f6cc8d3406718af3b963c2a72b99c2ec5c67b8`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982bd9789f584afa76a3bc6090e1e5b25e91067d15a4124c1393162ffb0a3d92`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f2cf55d36df3cf45d888c0d729c28f90876d75d5cebc3ce8166498b1c5d549`  
		Last Modified: Wed, 07 Dec 2016 19:44:33 GMT  
		Size: 7.8 MB (7821782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8c090f23670c7986b43508486d6178130afd5fd1980321fa94622652401b29`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 2.9 KB (2930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95cd30ed72e944c390f8278a5e74f9c6532e91c5909e95730e96cbcb94d3206`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:latest`

```console
$ docker pull wordpress@sha256:4eefa1b7fdce1b6e6953ca18b6f49a68c541e9e07808e255c3b8cc094ff085da
```

-	Platforms:
	-	linux; amd64

### `wordpress:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.4 MB (163437757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae7073f062491f3132afcf5eb8d0aaf4469f5b13f1afe628112b78aa50e23d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:22:45 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 08 Nov 2016 23:22:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 08 Nov 2016 23:22:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 08 Nov 2016 23:22:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 08 Nov 2016 23:22:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:50 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 22:16:28 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_VERSION=5.6.28
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.28.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_SHA256=07187ba2870f89cef334cd2ad6cb801aeec5eaf283da0293a9a6be75d6786d11 PHP_MD5=1e01c66b2e67ab3b56a6180ee560fe4c
# Tue, 06 Dec 2016 22:16:38 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 22:16:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:18:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:21 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:23 GMT
EXPOSE 80/tcp
# Wed, 07 Dec 2016 19:12:23 GMT
CMD ["apache2-foreground"]
# Wed, 07 Dec 2016 19:42:02 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:42:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:42:04 GMT
RUN a2enmod rewrite expires
# Wed, 07 Dec 2016 19:42:05 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:42:08 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:42:08 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:42:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:42:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:42:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f6d38a33bac61f5c37fce97cc80fc61ee6ffe8d8a7da5d30cc2733aaebb7e`  
		Last Modified: Tue, 08 Nov 2016 23:25:38 GMT  
		Size: 2.8 MB (2849357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea5361568cb6486c878f80ba5844797b34da7b824fdb4eb5ecbaa05416e503`  
		Last Modified: Tue, 08 Nov 2016 23:25:37 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f18e7771919bad862147cb2c038a59fab10d523862f0ae5ff9417137dfd58`  
		Last Modified: Tue, 08 Nov 2016 23:25:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dbc878ca0c93ba275fdb0cbc79169d4b1b86735d24b8577ea529daa953b333`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195935e4100b1050f83184b119a90f6ca23b3b03954773ea7de354a629652673`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0191f86c93d0537f4f1141651d5e4ebb4f6fe87820121e1abdf7a5a696451ba9`  
		Last Modified: Tue, 06 Dec 2016 22:49:35 GMT  
		Size: 12.6 MB (12571206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2668a15f7db3ce6c9238cdef988c4fcea831cfa684729f7c61835bed41277caf`  
		Last Modified: Tue, 06 Dec 2016 22:49:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec47ea54d8e25d808aa15b3cf81508f6202c8942a296cb706532881680a58b3`  
		Last Modified: Tue, 06 Dec 2016 22:49:36 GMT  
		Size: 9.1 MB (9102934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5d932ca96d093228d1ba050bff9b215e2a2185e3fec547d220f3dd705accbf`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29c2876dc397682827a22222ed4a6ffcde9dc974eee03c57ef21381892b41aa`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0401a5033480c193dad9264f8829a42618c7fe263e244da03da63abcfb24d4bb`  
		Last Modified: Wed, 07 Dec 2016 19:44:36 GMT  
		Size: 2.1 MB (2135045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b42a7a0d6c8dfbeba6d7c076f6cc8d3406718af3b963c2a72b99c2ec5c67b8`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982bd9789f584afa76a3bc6090e1e5b25e91067d15a4124c1393162ffb0a3d92`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f2cf55d36df3cf45d888c0d729c28f90876d75d5cebc3ce8166498b1c5d549`  
		Last Modified: Wed, 07 Dec 2016 19:44:33 GMT  
		Size: 7.8 MB (7821782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8c090f23670c7986b43508486d6178130afd5fd1980321fa94622652401b29`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 2.9 KB (2930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95cd30ed72e944c390f8278a5e74f9c6532e91c5909e95730e96cbcb94d3206`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.0-php5.6-apache`

```console
$ docker pull wordpress@sha256:4eefa1b7fdce1b6e6953ca18b6f49a68c541e9e07808e255c3b8cc094ff085da
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.0-php5.6-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.4 MB (163437757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae7073f062491f3132afcf5eb8d0aaf4469f5b13f1afe628112b78aa50e23d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:22:45 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 08 Nov 2016 23:22:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 08 Nov 2016 23:22:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 08 Nov 2016 23:22:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 08 Nov 2016 23:22:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:50 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 22:16:28 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_VERSION=5.6.28
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.28.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_SHA256=07187ba2870f89cef334cd2ad6cb801aeec5eaf283da0293a9a6be75d6786d11 PHP_MD5=1e01c66b2e67ab3b56a6180ee560fe4c
# Tue, 06 Dec 2016 22:16:38 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 22:16:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:18:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:21 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:23 GMT
EXPOSE 80/tcp
# Wed, 07 Dec 2016 19:12:23 GMT
CMD ["apache2-foreground"]
# Wed, 07 Dec 2016 19:42:02 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:42:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:42:04 GMT
RUN a2enmod rewrite expires
# Wed, 07 Dec 2016 19:42:05 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:42:08 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:42:08 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:42:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:42:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:42:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f6d38a33bac61f5c37fce97cc80fc61ee6ffe8d8a7da5d30cc2733aaebb7e`  
		Last Modified: Tue, 08 Nov 2016 23:25:38 GMT  
		Size: 2.8 MB (2849357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea5361568cb6486c878f80ba5844797b34da7b824fdb4eb5ecbaa05416e503`  
		Last Modified: Tue, 08 Nov 2016 23:25:37 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f18e7771919bad862147cb2c038a59fab10d523862f0ae5ff9417137dfd58`  
		Last Modified: Tue, 08 Nov 2016 23:25:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dbc878ca0c93ba275fdb0cbc79169d4b1b86735d24b8577ea529daa953b333`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195935e4100b1050f83184b119a90f6ca23b3b03954773ea7de354a629652673`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0191f86c93d0537f4f1141651d5e4ebb4f6fe87820121e1abdf7a5a696451ba9`  
		Last Modified: Tue, 06 Dec 2016 22:49:35 GMT  
		Size: 12.6 MB (12571206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2668a15f7db3ce6c9238cdef988c4fcea831cfa684729f7c61835bed41277caf`  
		Last Modified: Tue, 06 Dec 2016 22:49:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec47ea54d8e25d808aa15b3cf81508f6202c8942a296cb706532881680a58b3`  
		Last Modified: Tue, 06 Dec 2016 22:49:36 GMT  
		Size: 9.1 MB (9102934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5d932ca96d093228d1ba050bff9b215e2a2185e3fec547d220f3dd705accbf`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29c2876dc397682827a22222ed4a6ffcde9dc974eee03c57ef21381892b41aa`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0401a5033480c193dad9264f8829a42618c7fe263e244da03da63abcfb24d4bb`  
		Last Modified: Wed, 07 Dec 2016 19:44:36 GMT  
		Size: 2.1 MB (2135045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b42a7a0d6c8dfbeba6d7c076f6cc8d3406718af3b963c2a72b99c2ec5c67b8`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982bd9789f584afa76a3bc6090e1e5b25e91067d15a4124c1393162ffb0a3d92`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f2cf55d36df3cf45d888c0d729c28f90876d75d5cebc3ce8166498b1c5d549`  
		Last Modified: Wed, 07 Dec 2016 19:44:33 GMT  
		Size: 7.8 MB (7821782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8c090f23670c7986b43508486d6178130afd5fd1980321fa94622652401b29`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 2.9 KB (2930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95cd30ed72e944c390f8278a5e74f9c6532e91c5909e95730e96cbcb94d3206`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php5.6-apache`

```console
$ docker pull wordpress@sha256:4eefa1b7fdce1b6e6953ca18b6f49a68c541e9e07808e255c3b8cc094ff085da
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php5.6-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.4 MB (163437757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae7073f062491f3132afcf5eb8d0aaf4469f5b13f1afe628112b78aa50e23d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:22:45 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 08 Nov 2016 23:22:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 08 Nov 2016 23:22:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 08 Nov 2016 23:22:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 08 Nov 2016 23:22:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:50 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 22:16:28 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_VERSION=5.6.28
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.28.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_SHA256=07187ba2870f89cef334cd2ad6cb801aeec5eaf283da0293a9a6be75d6786d11 PHP_MD5=1e01c66b2e67ab3b56a6180ee560fe4c
# Tue, 06 Dec 2016 22:16:38 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 22:16:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:18:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:21 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:23 GMT
EXPOSE 80/tcp
# Wed, 07 Dec 2016 19:12:23 GMT
CMD ["apache2-foreground"]
# Wed, 07 Dec 2016 19:42:02 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:42:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:42:04 GMT
RUN a2enmod rewrite expires
# Wed, 07 Dec 2016 19:42:05 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:42:08 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:42:08 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:42:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:42:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:42:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f6d38a33bac61f5c37fce97cc80fc61ee6ffe8d8a7da5d30cc2733aaebb7e`  
		Last Modified: Tue, 08 Nov 2016 23:25:38 GMT  
		Size: 2.8 MB (2849357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea5361568cb6486c878f80ba5844797b34da7b824fdb4eb5ecbaa05416e503`  
		Last Modified: Tue, 08 Nov 2016 23:25:37 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f18e7771919bad862147cb2c038a59fab10d523862f0ae5ff9417137dfd58`  
		Last Modified: Tue, 08 Nov 2016 23:25:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dbc878ca0c93ba275fdb0cbc79169d4b1b86735d24b8577ea529daa953b333`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195935e4100b1050f83184b119a90f6ca23b3b03954773ea7de354a629652673`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0191f86c93d0537f4f1141651d5e4ebb4f6fe87820121e1abdf7a5a696451ba9`  
		Last Modified: Tue, 06 Dec 2016 22:49:35 GMT  
		Size: 12.6 MB (12571206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2668a15f7db3ce6c9238cdef988c4fcea831cfa684729f7c61835bed41277caf`  
		Last Modified: Tue, 06 Dec 2016 22:49:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec47ea54d8e25d808aa15b3cf81508f6202c8942a296cb706532881680a58b3`  
		Last Modified: Tue, 06 Dec 2016 22:49:36 GMT  
		Size: 9.1 MB (9102934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5d932ca96d093228d1ba050bff9b215e2a2185e3fec547d220f3dd705accbf`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29c2876dc397682827a22222ed4a6ffcde9dc974eee03c57ef21381892b41aa`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0401a5033480c193dad9264f8829a42618c7fe263e244da03da63abcfb24d4bb`  
		Last Modified: Wed, 07 Dec 2016 19:44:36 GMT  
		Size: 2.1 MB (2135045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b42a7a0d6c8dfbeba6d7c076f6cc8d3406718af3b963c2a72b99c2ec5c67b8`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982bd9789f584afa76a3bc6090e1e5b25e91067d15a4124c1393162ffb0a3d92`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f2cf55d36df3cf45d888c0d729c28f90876d75d5cebc3ce8166498b1c5d549`  
		Last Modified: Wed, 07 Dec 2016 19:44:33 GMT  
		Size: 7.8 MB (7821782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8c090f23670c7986b43508486d6178130afd5fd1980321fa94622652401b29`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 2.9 KB (2930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95cd30ed72e944c390f8278a5e74f9c6532e91c5909e95730e96cbcb94d3206`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php5.6-apache`

```console
$ docker pull wordpress@sha256:4eefa1b7fdce1b6e6953ca18b6f49a68c541e9e07808e255c3b8cc094ff085da
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php5.6-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.4 MB (163437757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae7073f062491f3132afcf5eb8d0aaf4469f5b13f1afe628112b78aa50e23d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:22:45 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 08 Nov 2016 23:22:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 08 Nov 2016 23:22:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 08 Nov 2016 23:22:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 08 Nov 2016 23:22:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:50 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 22:16:28 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_VERSION=5.6.28
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.28.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_SHA256=07187ba2870f89cef334cd2ad6cb801aeec5eaf283da0293a9a6be75d6786d11 PHP_MD5=1e01c66b2e67ab3b56a6180ee560fe4c
# Tue, 06 Dec 2016 22:16:38 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 22:16:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:18:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:21 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:23 GMT
EXPOSE 80/tcp
# Wed, 07 Dec 2016 19:12:23 GMT
CMD ["apache2-foreground"]
# Wed, 07 Dec 2016 19:42:02 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:42:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:42:04 GMT
RUN a2enmod rewrite expires
# Wed, 07 Dec 2016 19:42:05 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:42:08 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:42:08 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:42:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:42:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:42:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f6d38a33bac61f5c37fce97cc80fc61ee6ffe8d8a7da5d30cc2733aaebb7e`  
		Last Modified: Tue, 08 Nov 2016 23:25:38 GMT  
		Size: 2.8 MB (2849357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea5361568cb6486c878f80ba5844797b34da7b824fdb4eb5ecbaa05416e503`  
		Last Modified: Tue, 08 Nov 2016 23:25:37 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f18e7771919bad862147cb2c038a59fab10d523862f0ae5ff9417137dfd58`  
		Last Modified: Tue, 08 Nov 2016 23:25:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dbc878ca0c93ba275fdb0cbc79169d4b1b86735d24b8577ea529daa953b333`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195935e4100b1050f83184b119a90f6ca23b3b03954773ea7de354a629652673`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0191f86c93d0537f4f1141651d5e4ebb4f6fe87820121e1abdf7a5a696451ba9`  
		Last Modified: Tue, 06 Dec 2016 22:49:35 GMT  
		Size: 12.6 MB (12571206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2668a15f7db3ce6c9238cdef988c4fcea831cfa684729f7c61835bed41277caf`  
		Last Modified: Tue, 06 Dec 2016 22:49:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec47ea54d8e25d808aa15b3cf81508f6202c8942a296cb706532881680a58b3`  
		Last Modified: Tue, 06 Dec 2016 22:49:36 GMT  
		Size: 9.1 MB (9102934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5d932ca96d093228d1ba050bff9b215e2a2185e3fec547d220f3dd705accbf`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29c2876dc397682827a22222ed4a6ffcde9dc974eee03c57ef21381892b41aa`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0401a5033480c193dad9264f8829a42618c7fe263e244da03da63abcfb24d4bb`  
		Last Modified: Wed, 07 Dec 2016 19:44:36 GMT  
		Size: 2.1 MB (2135045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b42a7a0d6c8dfbeba6d7c076f6cc8d3406718af3b963c2a72b99c2ec5c67b8`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982bd9789f584afa76a3bc6090e1e5b25e91067d15a4124c1393162ffb0a3d92`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f2cf55d36df3cf45d888c0d729c28f90876d75d5cebc3ce8166498b1c5d549`  
		Last Modified: Wed, 07 Dec 2016 19:44:33 GMT  
		Size: 7.8 MB (7821782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8c090f23670c7986b43508486d6178130afd5fd1980321fa94622652401b29`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 2.9 KB (2930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95cd30ed72e944c390f8278a5e74f9c6532e91c5909e95730e96cbcb94d3206`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php5.6-apache`

```console
$ docker pull wordpress@sha256:4eefa1b7fdce1b6e6953ca18b6f49a68c541e9e07808e255c3b8cc094ff085da
```

-	Platforms:
	-	linux; amd64

### `wordpress:php5.6-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.4 MB (163437757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae7073f062491f3132afcf5eb8d0aaf4469f5b13f1afe628112b78aa50e23d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:22:45 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 08 Nov 2016 23:22:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 08 Nov 2016 23:22:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 08 Nov 2016 23:22:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 08 Nov 2016 23:22:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:50 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 22:16:28 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_VERSION=5.6.28
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.28.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_SHA256=07187ba2870f89cef334cd2ad6cb801aeec5eaf283da0293a9a6be75d6786d11 PHP_MD5=1e01c66b2e67ab3b56a6180ee560fe4c
# Tue, 06 Dec 2016 22:16:38 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 22:16:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:18:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:21 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:23 GMT
EXPOSE 80/tcp
# Wed, 07 Dec 2016 19:12:23 GMT
CMD ["apache2-foreground"]
# Wed, 07 Dec 2016 19:42:02 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:42:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:42:04 GMT
RUN a2enmod rewrite expires
# Wed, 07 Dec 2016 19:42:05 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:42:08 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:42:08 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:42:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:42:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:42:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f6d38a33bac61f5c37fce97cc80fc61ee6ffe8d8a7da5d30cc2733aaebb7e`  
		Last Modified: Tue, 08 Nov 2016 23:25:38 GMT  
		Size: 2.8 MB (2849357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea5361568cb6486c878f80ba5844797b34da7b824fdb4eb5ecbaa05416e503`  
		Last Modified: Tue, 08 Nov 2016 23:25:37 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f18e7771919bad862147cb2c038a59fab10d523862f0ae5ff9417137dfd58`  
		Last Modified: Tue, 08 Nov 2016 23:25:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dbc878ca0c93ba275fdb0cbc79169d4b1b86735d24b8577ea529daa953b333`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195935e4100b1050f83184b119a90f6ca23b3b03954773ea7de354a629652673`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0191f86c93d0537f4f1141651d5e4ebb4f6fe87820121e1abdf7a5a696451ba9`  
		Last Modified: Tue, 06 Dec 2016 22:49:35 GMT  
		Size: 12.6 MB (12571206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2668a15f7db3ce6c9238cdef988c4fcea831cfa684729f7c61835bed41277caf`  
		Last Modified: Tue, 06 Dec 2016 22:49:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec47ea54d8e25d808aa15b3cf81508f6202c8942a296cb706532881680a58b3`  
		Last Modified: Tue, 06 Dec 2016 22:49:36 GMT  
		Size: 9.1 MB (9102934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5d932ca96d093228d1ba050bff9b215e2a2185e3fec547d220f3dd705accbf`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29c2876dc397682827a22222ed4a6ffcde9dc974eee03c57ef21381892b41aa`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0401a5033480c193dad9264f8829a42618c7fe263e244da03da63abcfb24d4bb`  
		Last Modified: Wed, 07 Dec 2016 19:44:36 GMT  
		Size: 2.1 MB (2135045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b42a7a0d6c8dfbeba6d7c076f6cc8d3406718af3b963c2a72b99c2ec5c67b8`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982bd9789f584afa76a3bc6090e1e5b25e91067d15a4124c1393162ffb0a3d92`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f2cf55d36df3cf45d888c0d729c28f90876d75d5cebc3ce8166498b1c5d549`  
		Last Modified: Wed, 07 Dec 2016 19:44:33 GMT  
		Size: 7.8 MB (7821782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8c090f23670c7986b43508486d6178130afd5fd1980321fa94622652401b29`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 2.9 KB (2930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95cd30ed72e944c390f8278a5e74f9c6532e91c5909e95730e96cbcb94d3206`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.0-php5.6`

```console
$ docker pull wordpress@sha256:4eefa1b7fdce1b6e6953ca18b6f49a68c541e9e07808e255c3b8cc094ff085da
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.0-php5.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.4 MB (163437757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae7073f062491f3132afcf5eb8d0aaf4469f5b13f1afe628112b78aa50e23d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:22:45 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 08 Nov 2016 23:22:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 08 Nov 2016 23:22:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 08 Nov 2016 23:22:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 08 Nov 2016 23:22:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:50 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 22:16:28 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_VERSION=5.6.28
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.28.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_SHA256=07187ba2870f89cef334cd2ad6cb801aeec5eaf283da0293a9a6be75d6786d11 PHP_MD5=1e01c66b2e67ab3b56a6180ee560fe4c
# Tue, 06 Dec 2016 22:16:38 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 22:16:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:18:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:21 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:23 GMT
EXPOSE 80/tcp
# Wed, 07 Dec 2016 19:12:23 GMT
CMD ["apache2-foreground"]
# Wed, 07 Dec 2016 19:42:02 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:42:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:42:04 GMT
RUN a2enmod rewrite expires
# Wed, 07 Dec 2016 19:42:05 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:42:08 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:42:08 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:42:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:42:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:42:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f6d38a33bac61f5c37fce97cc80fc61ee6ffe8d8a7da5d30cc2733aaebb7e`  
		Last Modified: Tue, 08 Nov 2016 23:25:38 GMT  
		Size: 2.8 MB (2849357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea5361568cb6486c878f80ba5844797b34da7b824fdb4eb5ecbaa05416e503`  
		Last Modified: Tue, 08 Nov 2016 23:25:37 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f18e7771919bad862147cb2c038a59fab10d523862f0ae5ff9417137dfd58`  
		Last Modified: Tue, 08 Nov 2016 23:25:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dbc878ca0c93ba275fdb0cbc79169d4b1b86735d24b8577ea529daa953b333`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195935e4100b1050f83184b119a90f6ca23b3b03954773ea7de354a629652673`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0191f86c93d0537f4f1141651d5e4ebb4f6fe87820121e1abdf7a5a696451ba9`  
		Last Modified: Tue, 06 Dec 2016 22:49:35 GMT  
		Size: 12.6 MB (12571206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2668a15f7db3ce6c9238cdef988c4fcea831cfa684729f7c61835bed41277caf`  
		Last Modified: Tue, 06 Dec 2016 22:49:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec47ea54d8e25d808aa15b3cf81508f6202c8942a296cb706532881680a58b3`  
		Last Modified: Tue, 06 Dec 2016 22:49:36 GMT  
		Size: 9.1 MB (9102934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5d932ca96d093228d1ba050bff9b215e2a2185e3fec547d220f3dd705accbf`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29c2876dc397682827a22222ed4a6ffcde9dc974eee03c57ef21381892b41aa`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0401a5033480c193dad9264f8829a42618c7fe263e244da03da63abcfb24d4bb`  
		Last Modified: Wed, 07 Dec 2016 19:44:36 GMT  
		Size: 2.1 MB (2135045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b42a7a0d6c8dfbeba6d7c076f6cc8d3406718af3b963c2a72b99c2ec5c67b8`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982bd9789f584afa76a3bc6090e1e5b25e91067d15a4124c1393162ffb0a3d92`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f2cf55d36df3cf45d888c0d729c28f90876d75d5cebc3ce8166498b1c5d549`  
		Last Modified: Wed, 07 Dec 2016 19:44:33 GMT  
		Size: 7.8 MB (7821782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8c090f23670c7986b43508486d6178130afd5fd1980321fa94622652401b29`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 2.9 KB (2930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95cd30ed72e944c390f8278a5e74f9c6532e91c5909e95730e96cbcb94d3206`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php5.6`

```console
$ docker pull wordpress@sha256:4eefa1b7fdce1b6e6953ca18b6f49a68c541e9e07808e255c3b8cc094ff085da
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php5.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.4 MB (163437757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae7073f062491f3132afcf5eb8d0aaf4469f5b13f1afe628112b78aa50e23d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:22:45 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 08 Nov 2016 23:22:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 08 Nov 2016 23:22:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 08 Nov 2016 23:22:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 08 Nov 2016 23:22:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:50 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 22:16:28 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_VERSION=5.6.28
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.28.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_SHA256=07187ba2870f89cef334cd2ad6cb801aeec5eaf283da0293a9a6be75d6786d11 PHP_MD5=1e01c66b2e67ab3b56a6180ee560fe4c
# Tue, 06 Dec 2016 22:16:38 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 22:16:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:18:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:21 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:23 GMT
EXPOSE 80/tcp
# Wed, 07 Dec 2016 19:12:23 GMT
CMD ["apache2-foreground"]
# Wed, 07 Dec 2016 19:42:02 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:42:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:42:04 GMT
RUN a2enmod rewrite expires
# Wed, 07 Dec 2016 19:42:05 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:42:08 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:42:08 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:42:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:42:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:42:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f6d38a33bac61f5c37fce97cc80fc61ee6ffe8d8a7da5d30cc2733aaebb7e`  
		Last Modified: Tue, 08 Nov 2016 23:25:38 GMT  
		Size: 2.8 MB (2849357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea5361568cb6486c878f80ba5844797b34da7b824fdb4eb5ecbaa05416e503`  
		Last Modified: Tue, 08 Nov 2016 23:25:37 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f18e7771919bad862147cb2c038a59fab10d523862f0ae5ff9417137dfd58`  
		Last Modified: Tue, 08 Nov 2016 23:25:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dbc878ca0c93ba275fdb0cbc79169d4b1b86735d24b8577ea529daa953b333`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195935e4100b1050f83184b119a90f6ca23b3b03954773ea7de354a629652673`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0191f86c93d0537f4f1141651d5e4ebb4f6fe87820121e1abdf7a5a696451ba9`  
		Last Modified: Tue, 06 Dec 2016 22:49:35 GMT  
		Size: 12.6 MB (12571206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2668a15f7db3ce6c9238cdef988c4fcea831cfa684729f7c61835bed41277caf`  
		Last Modified: Tue, 06 Dec 2016 22:49:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec47ea54d8e25d808aa15b3cf81508f6202c8942a296cb706532881680a58b3`  
		Last Modified: Tue, 06 Dec 2016 22:49:36 GMT  
		Size: 9.1 MB (9102934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5d932ca96d093228d1ba050bff9b215e2a2185e3fec547d220f3dd705accbf`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29c2876dc397682827a22222ed4a6ffcde9dc974eee03c57ef21381892b41aa`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0401a5033480c193dad9264f8829a42618c7fe263e244da03da63abcfb24d4bb`  
		Last Modified: Wed, 07 Dec 2016 19:44:36 GMT  
		Size: 2.1 MB (2135045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b42a7a0d6c8dfbeba6d7c076f6cc8d3406718af3b963c2a72b99c2ec5c67b8`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982bd9789f584afa76a3bc6090e1e5b25e91067d15a4124c1393162ffb0a3d92`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f2cf55d36df3cf45d888c0d729c28f90876d75d5cebc3ce8166498b1c5d549`  
		Last Modified: Wed, 07 Dec 2016 19:44:33 GMT  
		Size: 7.8 MB (7821782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8c090f23670c7986b43508486d6178130afd5fd1980321fa94622652401b29`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 2.9 KB (2930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95cd30ed72e944c390f8278a5e74f9c6532e91c5909e95730e96cbcb94d3206`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php5.6`

```console
$ docker pull wordpress@sha256:4eefa1b7fdce1b6e6953ca18b6f49a68c541e9e07808e255c3b8cc094ff085da
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php5.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.4 MB (163437757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae7073f062491f3132afcf5eb8d0aaf4469f5b13f1afe628112b78aa50e23d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:22:45 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 08 Nov 2016 23:22:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 08 Nov 2016 23:22:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 08 Nov 2016 23:22:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 08 Nov 2016 23:22:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:50 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 22:16:28 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_VERSION=5.6.28
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.28.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_SHA256=07187ba2870f89cef334cd2ad6cb801aeec5eaf283da0293a9a6be75d6786d11 PHP_MD5=1e01c66b2e67ab3b56a6180ee560fe4c
# Tue, 06 Dec 2016 22:16:38 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 22:16:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:18:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:21 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:23 GMT
EXPOSE 80/tcp
# Wed, 07 Dec 2016 19:12:23 GMT
CMD ["apache2-foreground"]
# Wed, 07 Dec 2016 19:42:02 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:42:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:42:04 GMT
RUN a2enmod rewrite expires
# Wed, 07 Dec 2016 19:42:05 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:42:08 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:42:08 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:42:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:42:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:42:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f6d38a33bac61f5c37fce97cc80fc61ee6ffe8d8a7da5d30cc2733aaebb7e`  
		Last Modified: Tue, 08 Nov 2016 23:25:38 GMT  
		Size: 2.8 MB (2849357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea5361568cb6486c878f80ba5844797b34da7b824fdb4eb5ecbaa05416e503`  
		Last Modified: Tue, 08 Nov 2016 23:25:37 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f18e7771919bad862147cb2c038a59fab10d523862f0ae5ff9417137dfd58`  
		Last Modified: Tue, 08 Nov 2016 23:25:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dbc878ca0c93ba275fdb0cbc79169d4b1b86735d24b8577ea529daa953b333`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195935e4100b1050f83184b119a90f6ca23b3b03954773ea7de354a629652673`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0191f86c93d0537f4f1141651d5e4ebb4f6fe87820121e1abdf7a5a696451ba9`  
		Last Modified: Tue, 06 Dec 2016 22:49:35 GMT  
		Size: 12.6 MB (12571206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2668a15f7db3ce6c9238cdef988c4fcea831cfa684729f7c61835bed41277caf`  
		Last Modified: Tue, 06 Dec 2016 22:49:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec47ea54d8e25d808aa15b3cf81508f6202c8942a296cb706532881680a58b3`  
		Last Modified: Tue, 06 Dec 2016 22:49:36 GMT  
		Size: 9.1 MB (9102934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5d932ca96d093228d1ba050bff9b215e2a2185e3fec547d220f3dd705accbf`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29c2876dc397682827a22222ed4a6ffcde9dc974eee03c57ef21381892b41aa`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0401a5033480c193dad9264f8829a42618c7fe263e244da03da63abcfb24d4bb`  
		Last Modified: Wed, 07 Dec 2016 19:44:36 GMT  
		Size: 2.1 MB (2135045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b42a7a0d6c8dfbeba6d7c076f6cc8d3406718af3b963c2a72b99c2ec5c67b8`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982bd9789f584afa76a3bc6090e1e5b25e91067d15a4124c1393162ffb0a3d92`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f2cf55d36df3cf45d888c0d729c28f90876d75d5cebc3ce8166498b1c5d549`  
		Last Modified: Wed, 07 Dec 2016 19:44:33 GMT  
		Size: 7.8 MB (7821782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8c090f23670c7986b43508486d6178130afd5fd1980321fa94622652401b29`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 2.9 KB (2930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95cd30ed72e944c390f8278a5e74f9c6532e91c5909e95730e96cbcb94d3206`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php5.6`

```console
$ docker pull wordpress@sha256:4eefa1b7fdce1b6e6953ca18b6f49a68c541e9e07808e255c3b8cc094ff085da
```

-	Platforms:
	-	linux; amd64

### `wordpress:php5.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.4 MB (163437757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae7073f062491f3132afcf5eb8d0aaf4469f5b13f1afe628112b78aa50e23d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:22:45 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 08 Nov 2016 23:22:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 08 Nov 2016 23:22:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 08 Nov 2016 23:22:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 08 Nov 2016 23:22:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:50 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 22:16:28 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_VERSION=5.6.28
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.28.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 22:16:29 GMT
ENV PHP_SHA256=07187ba2870f89cef334cd2ad6cb801aeec5eaf283da0293a9a6be75d6786d11 PHP_MD5=1e01c66b2e67ab3b56a6180ee560fe4c
# Tue, 06 Dec 2016 22:16:38 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 22:16:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:18:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:21 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:22 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:23 GMT
EXPOSE 80/tcp
# Wed, 07 Dec 2016 19:12:23 GMT
CMD ["apache2-foreground"]
# Wed, 07 Dec 2016 19:42:02 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:42:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:42:04 GMT
RUN a2enmod rewrite expires
# Wed, 07 Dec 2016 19:42:05 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:42:05 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:42:08 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:42:08 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:42:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:42:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:42:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f6d38a33bac61f5c37fce97cc80fc61ee6ffe8d8a7da5d30cc2733aaebb7e`  
		Last Modified: Tue, 08 Nov 2016 23:25:38 GMT  
		Size: 2.8 MB (2849357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea5361568cb6486c878f80ba5844797b34da7b824fdb4eb5ecbaa05416e503`  
		Last Modified: Tue, 08 Nov 2016 23:25:37 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f18e7771919bad862147cb2c038a59fab10d523862f0ae5ff9417137dfd58`  
		Last Modified: Tue, 08 Nov 2016 23:25:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dbc878ca0c93ba275fdb0cbc79169d4b1b86735d24b8577ea529daa953b333`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195935e4100b1050f83184b119a90f6ca23b3b03954773ea7de354a629652673`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0191f86c93d0537f4f1141651d5e4ebb4f6fe87820121e1abdf7a5a696451ba9`  
		Last Modified: Tue, 06 Dec 2016 22:49:35 GMT  
		Size: 12.6 MB (12571206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2668a15f7db3ce6c9238cdef988c4fcea831cfa684729f7c61835bed41277caf`  
		Last Modified: Tue, 06 Dec 2016 22:49:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec47ea54d8e25d808aa15b3cf81508f6202c8942a296cb706532881680a58b3`  
		Last Modified: Tue, 06 Dec 2016 22:49:36 GMT  
		Size: 9.1 MB (9102934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5d932ca96d093228d1ba050bff9b215e2a2185e3fec547d220f3dd705accbf`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29c2876dc397682827a22222ed4a6ffcde9dc974eee03c57ef21381892b41aa`  
		Last Modified: Wed, 07 Dec 2016 19:28:26 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0401a5033480c193dad9264f8829a42618c7fe263e244da03da63abcfb24d4bb`  
		Last Modified: Wed, 07 Dec 2016 19:44:36 GMT  
		Size: 2.1 MB (2135045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b42a7a0d6c8dfbeba6d7c076f6cc8d3406718af3b963c2a72b99c2ec5c67b8`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982bd9789f584afa76a3bc6090e1e5b25e91067d15a4124c1393162ffb0a3d92`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f2cf55d36df3cf45d888c0d729c28f90876d75d5cebc3ce8166498b1c5d549`  
		Last Modified: Wed, 07 Dec 2016 19:44:33 GMT  
		Size: 7.8 MB (7821782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8c090f23670c7986b43508486d6178130afd5fd1980321fa94622652401b29`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 2.9 KB (2930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95cd30ed72e944c390f8278a5e74f9c6532e91c5909e95730e96cbcb94d3206`  
		Last Modified: Wed, 07 Dec 2016 19:44:31 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.0-fpm`

```console
$ docker pull wordpress@sha256:62b3f6fcad6451da61ab70cec076fdf10f622017f9f64f515e0127fb59224155
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.0-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.9 MB (159937168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:936249d92e7f451e18156fa5077d7d4cf304052a07f2d6f14afa35a5ae72b70a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:26:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 06 Dec 2016 21:29:28 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 22:18:49 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Dec 2016 22:18:49 GMT
ENV PHP_VERSION=5.6.28
# Tue, 06 Dec 2016 22:18:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.28.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 22:18:50 GMT
ENV PHP_SHA256=07187ba2870f89cef334cd2ad6cb801aeec5eaf283da0293a9a6be75d6786d11 PHP_MD5=1e01c66b2e67ab3b56a6180ee560fe4c
# Tue, 06 Dec 2016 22:19:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 22:19:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:22:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:24 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:25 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:26 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 07 Dec 2016 19:12:26 GMT
EXPOSE 9000/tcp
# Wed, 07 Dec 2016 19:12:26 GMT
CMD ["php-fpm"]
# Wed, 07 Dec 2016 19:42:43 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:42:44 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:42:44 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:42:44 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:42:45 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:42:47 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:42:47 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:42:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:42:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:42:49 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33b402f8dab84d89e0cbc7312bfea5f9a57c1fca4b90823205f1082f657a023`  
		Last Modified: Tue, 06 Dec 2016 22:50:31 GMT  
		Size: 12.6 MB (12552031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb919650a069b03abe443d1a0f4e54c854d7f31488888b11d2f2a074ba858d0`  
		Last Modified: Tue, 06 Dec 2016 22:50:26 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3baf42de3541778d607ce56954f095300c2285aacdea139e1a43e51fd9db682`  
		Last Modified: Tue, 06 Dec 2016 22:50:28 GMT  
		Size: 8.5 MB (8488797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d332211c7a61227c4955de19b4e1df753fdacf37afc1a3e9a809201801879661`  
		Last Modified: Wed, 07 Dec 2016 19:29:17 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530065f3a72215af50a85cdbfc251f7864466f2a8ae839497838fba70ca85816`  
		Last Modified: Wed, 07 Dec 2016 19:29:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42311d28c692c0aa11cf04b1910f39c2156244441af5c663e403842c370dabb`  
		Last Modified: Wed, 07 Dec 2016 19:29:17 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3d07796898c4fc0729bde5e3dc6cf20eb5949465f11c04215759a065b84596`  
		Last Modified: Wed, 07 Dec 2016 19:48:42 GMT  
		Size: 2.1 MB (2112644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6bf5bdce1c71f88941ce3659d5b164d90eeb80b6660d51fef8bd4c27f5a1eb`  
		Last Modified: Wed, 07 Dec 2016 19:48:41 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d165de4239ddbb09dbc063a9c3d5dafc9f3d46a057a98ef6f1482a6f100234e`  
		Last Modified: Wed, 07 Dec 2016 19:48:44 GMT  
		Size: 7.8 MB (7821783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ae90348fec04f410170210a809949c655768986056560415c0a7e4dd09a6b`  
		Last Modified: Wed, 07 Dec 2016 19:48:42 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17d5899f6787e150b8e019d51e90f0042f126054c798b6566b555cb3ff3525`  
		Last Modified: Wed, 07 Dec 2016 19:48:41 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-fpm`

```console
$ docker pull wordpress@sha256:62b3f6fcad6451da61ab70cec076fdf10f622017f9f64f515e0127fb59224155
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.9 MB (159937168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:936249d92e7f451e18156fa5077d7d4cf304052a07f2d6f14afa35a5ae72b70a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:26:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 06 Dec 2016 21:29:28 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 22:18:49 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Dec 2016 22:18:49 GMT
ENV PHP_VERSION=5.6.28
# Tue, 06 Dec 2016 22:18:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.28.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 22:18:50 GMT
ENV PHP_SHA256=07187ba2870f89cef334cd2ad6cb801aeec5eaf283da0293a9a6be75d6786d11 PHP_MD5=1e01c66b2e67ab3b56a6180ee560fe4c
# Tue, 06 Dec 2016 22:19:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 22:19:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:22:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:24 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:25 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:26 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 07 Dec 2016 19:12:26 GMT
EXPOSE 9000/tcp
# Wed, 07 Dec 2016 19:12:26 GMT
CMD ["php-fpm"]
# Wed, 07 Dec 2016 19:42:43 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:42:44 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:42:44 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:42:44 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:42:45 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:42:47 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:42:47 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:42:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:42:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:42:49 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33b402f8dab84d89e0cbc7312bfea5f9a57c1fca4b90823205f1082f657a023`  
		Last Modified: Tue, 06 Dec 2016 22:50:31 GMT  
		Size: 12.6 MB (12552031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb919650a069b03abe443d1a0f4e54c854d7f31488888b11d2f2a074ba858d0`  
		Last Modified: Tue, 06 Dec 2016 22:50:26 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3baf42de3541778d607ce56954f095300c2285aacdea139e1a43e51fd9db682`  
		Last Modified: Tue, 06 Dec 2016 22:50:28 GMT  
		Size: 8.5 MB (8488797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d332211c7a61227c4955de19b4e1df753fdacf37afc1a3e9a809201801879661`  
		Last Modified: Wed, 07 Dec 2016 19:29:17 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530065f3a72215af50a85cdbfc251f7864466f2a8ae839497838fba70ca85816`  
		Last Modified: Wed, 07 Dec 2016 19:29:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42311d28c692c0aa11cf04b1910f39c2156244441af5c663e403842c370dabb`  
		Last Modified: Wed, 07 Dec 2016 19:29:17 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3d07796898c4fc0729bde5e3dc6cf20eb5949465f11c04215759a065b84596`  
		Last Modified: Wed, 07 Dec 2016 19:48:42 GMT  
		Size: 2.1 MB (2112644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6bf5bdce1c71f88941ce3659d5b164d90eeb80b6660d51fef8bd4c27f5a1eb`  
		Last Modified: Wed, 07 Dec 2016 19:48:41 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d165de4239ddbb09dbc063a9c3d5dafc9f3d46a057a98ef6f1482a6f100234e`  
		Last Modified: Wed, 07 Dec 2016 19:48:44 GMT  
		Size: 7.8 MB (7821783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ae90348fec04f410170210a809949c655768986056560415c0a7e4dd09a6b`  
		Last Modified: Wed, 07 Dec 2016 19:48:42 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17d5899f6787e150b8e019d51e90f0042f126054c798b6566b555cb3ff3525`  
		Last Modified: Wed, 07 Dec 2016 19:48:41 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-fpm`

```console
$ docker pull wordpress@sha256:62b3f6fcad6451da61ab70cec076fdf10f622017f9f64f515e0127fb59224155
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.9 MB (159937168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:936249d92e7f451e18156fa5077d7d4cf304052a07f2d6f14afa35a5ae72b70a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:26:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 06 Dec 2016 21:29:28 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 22:18:49 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Dec 2016 22:18:49 GMT
ENV PHP_VERSION=5.6.28
# Tue, 06 Dec 2016 22:18:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.28.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 22:18:50 GMT
ENV PHP_SHA256=07187ba2870f89cef334cd2ad6cb801aeec5eaf283da0293a9a6be75d6786d11 PHP_MD5=1e01c66b2e67ab3b56a6180ee560fe4c
# Tue, 06 Dec 2016 22:19:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 22:19:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:22:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:24 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:25 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:26 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 07 Dec 2016 19:12:26 GMT
EXPOSE 9000/tcp
# Wed, 07 Dec 2016 19:12:26 GMT
CMD ["php-fpm"]
# Wed, 07 Dec 2016 19:42:43 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:42:44 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:42:44 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:42:44 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:42:45 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:42:47 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:42:47 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:42:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:42:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:42:49 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33b402f8dab84d89e0cbc7312bfea5f9a57c1fca4b90823205f1082f657a023`  
		Last Modified: Tue, 06 Dec 2016 22:50:31 GMT  
		Size: 12.6 MB (12552031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb919650a069b03abe443d1a0f4e54c854d7f31488888b11d2f2a074ba858d0`  
		Last Modified: Tue, 06 Dec 2016 22:50:26 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3baf42de3541778d607ce56954f095300c2285aacdea139e1a43e51fd9db682`  
		Last Modified: Tue, 06 Dec 2016 22:50:28 GMT  
		Size: 8.5 MB (8488797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d332211c7a61227c4955de19b4e1df753fdacf37afc1a3e9a809201801879661`  
		Last Modified: Wed, 07 Dec 2016 19:29:17 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530065f3a72215af50a85cdbfc251f7864466f2a8ae839497838fba70ca85816`  
		Last Modified: Wed, 07 Dec 2016 19:29:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42311d28c692c0aa11cf04b1910f39c2156244441af5c663e403842c370dabb`  
		Last Modified: Wed, 07 Dec 2016 19:29:17 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3d07796898c4fc0729bde5e3dc6cf20eb5949465f11c04215759a065b84596`  
		Last Modified: Wed, 07 Dec 2016 19:48:42 GMT  
		Size: 2.1 MB (2112644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6bf5bdce1c71f88941ce3659d5b164d90eeb80b6660d51fef8bd4c27f5a1eb`  
		Last Modified: Wed, 07 Dec 2016 19:48:41 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d165de4239ddbb09dbc063a9c3d5dafc9f3d46a057a98ef6f1482a6f100234e`  
		Last Modified: Wed, 07 Dec 2016 19:48:44 GMT  
		Size: 7.8 MB (7821783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ae90348fec04f410170210a809949c655768986056560415c0a7e4dd09a6b`  
		Last Modified: Wed, 07 Dec 2016 19:48:42 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17d5899f6787e150b8e019d51e90f0042f126054c798b6566b555cb3ff3525`  
		Last Modified: Wed, 07 Dec 2016 19:48:41 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:fpm`

```console
$ docker pull wordpress@sha256:62b3f6fcad6451da61ab70cec076fdf10f622017f9f64f515e0127fb59224155
```

-	Platforms:
	-	linux; amd64

### `wordpress:fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.9 MB (159937168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:936249d92e7f451e18156fa5077d7d4cf304052a07f2d6f14afa35a5ae72b70a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:26:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 06 Dec 2016 21:29:28 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 22:18:49 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Dec 2016 22:18:49 GMT
ENV PHP_VERSION=5.6.28
# Tue, 06 Dec 2016 22:18:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.28.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 22:18:50 GMT
ENV PHP_SHA256=07187ba2870f89cef334cd2ad6cb801aeec5eaf283da0293a9a6be75d6786d11 PHP_MD5=1e01c66b2e67ab3b56a6180ee560fe4c
# Tue, 06 Dec 2016 22:19:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 22:19:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:22:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:24 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:25 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:26 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 07 Dec 2016 19:12:26 GMT
EXPOSE 9000/tcp
# Wed, 07 Dec 2016 19:12:26 GMT
CMD ["php-fpm"]
# Wed, 07 Dec 2016 19:42:43 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:42:44 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:42:44 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:42:44 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:42:45 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:42:47 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:42:47 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:42:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:42:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:42:49 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33b402f8dab84d89e0cbc7312bfea5f9a57c1fca4b90823205f1082f657a023`  
		Last Modified: Tue, 06 Dec 2016 22:50:31 GMT  
		Size: 12.6 MB (12552031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb919650a069b03abe443d1a0f4e54c854d7f31488888b11d2f2a074ba858d0`  
		Last Modified: Tue, 06 Dec 2016 22:50:26 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3baf42de3541778d607ce56954f095300c2285aacdea139e1a43e51fd9db682`  
		Last Modified: Tue, 06 Dec 2016 22:50:28 GMT  
		Size: 8.5 MB (8488797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d332211c7a61227c4955de19b4e1df753fdacf37afc1a3e9a809201801879661`  
		Last Modified: Wed, 07 Dec 2016 19:29:17 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530065f3a72215af50a85cdbfc251f7864466f2a8ae839497838fba70ca85816`  
		Last Modified: Wed, 07 Dec 2016 19:29:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42311d28c692c0aa11cf04b1910f39c2156244441af5c663e403842c370dabb`  
		Last Modified: Wed, 07 Dec 2016 19:29:17 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3d07796898c4fc0729bde5e3dc6cf20eb5949465f11c04215759a065b84596`  
		Last Modified: Wed, 07 Dec 2016 19:48:42 GMT  
		Size: 2.1 MB (2112644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6bf5bdce1c71f88941ce3659d5b164d90eeb80b6660d51fef8bd4c27f5a1eb`  
		Last Modified: Wed, 07 Dec 2016 19:48:41 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d165de4239ddbb09dbc063a9c3d5dafc9f3d46a057a98ef6f1482a6f100234e`  
		Last Modified: Wed, 07 Dec 2016 19:48:44 GMT  
		Size: 7.8 MB (7821783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ae90348fec04f410170210a809949c655768986056560415c0a7e4dd09a6b`  
		Last Modified: Wed, 07 Dec 2016 19:48:42 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17d5899f6787e150b8e019d51e90f0042f126054c798b6566b555cb3ff3525`  
		Last Modified: Wed, 07 Dec 2016 19:48:41 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.0-php5.6-fpm`

```console
$ docker pull wordpress@sha256:62b3f6fcad6451da61ab70cec076fdf10f622017f9f64f515e0127fb59224155
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.0-php5.6-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.9 MB (159937168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:936249d92e7f451e18156fa5077d7d4cf304052a07f2d6f14afa35a5ae72b70a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:26:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 06 Dec 2016 21:29:28 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 22:18:49 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Dec 2016 22:18:49 GMT
ENV PHP_VERSION=5.6.28
# Tue, 06 Dec 2016 22:18:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.28.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 22:18:50 GMT
ENV PHP_SHA256=07187ba2870f89cef334cd2ad6cb801aeec5eaf283da0293a9a6be75d6786d11 PHP_MD5=1e01c66b2e67ab3b56a6180ee560fe4c
# Tue, 06 Dec 2016 22:19:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 22:19:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:22:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:24 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:25 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:26 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 07 Dec 2016 19:12:26 GMT
EXPOSE 9000/tcp
# Wed, 07 Dec 2016 19:12:26 GMT
CMD ["php-fpm"]
# Wed, 07 Dec 2016 19:42:43 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:42:44 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:42:44 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:42:44 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:42:45 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:42:47 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:42:47 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:42:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:42:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:42:49 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33b402f8dab84d89e0cbc7312bfea5f9a57c1fca4b90823205f1082f657a023`  
		Last Modified: Tue, 06 Dec 2016 22:50:31 GMT  
		Size: 12.6 MB (12552031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb919650a069b03abe443d1a0f4e54c854d7f31488888b11d2f2a074ba858d0`  
		Last Modified: Tue, 06 Dec 2016 22:50:26 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3baf42de3541778d607ce56954f095300c2285aacdea139e1a43e51fd9db682`  
		Last Modified: Tue, 06 Dec 2016 22:50:28 GMT  
		Size: 8.5 MB (8488797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d332211c7a61227c4955de19b4e1df753fdacf37afc1a3e9a809201801879661`  
		Last Modified: Wed, 07 Dec 2016 19:29:17 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530065f3a72215af50a85cdbfc251f7864466f2a8ae839497838fba70ca85816`  
		Last Modified: Wed, 07 Dec 2016 19:29:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42311d28c692c0aa11cf04b1910f39c2156244441af5c663e403842c370dabb`  
		Last Modified: Wed, 07 Dec 2016 19:29:17 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3d07796898c4fc0729bde5e3dc6cf20eb5949465f11c04215759a065b84596`  
		Last Modified: Wed, 07 Dec 2016 19:48:42 GMT  
		Size: 2.1 MB (2112644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6bf5bdce1c71f88941ce3659d5b164d90eeb80b6660d51fef8bd4c27f5a1eb`  
		Last Modified: Wed, 07 Dec 2016 19:48:41 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d165de4239ddbb09dbc063a9c3d5dafc9f3d46a057a98ef6f1482a6f100234e`  
		Last Modified: Wed, 07 Dec 2016 19:48:44 GMT  
		Size: 7.8 MB (7821783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ae90348fec04f410170210a809949c655768986056560415c0a7e4dd09a6b`  
		Last Modified: Wed, 07 Dec 2016 19:48:42 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17d5899f6787e150b8e019d51e90f0042f126054c798b6566b555cb3ff3525`  
		Last Modified: Wed, 07 Dec 2016 19:48:41 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php5.6-fpm`

```console
$ docker pull wordpress@sha256:62b3f6fcad6451da61ab70cec076fdf10f622017f9f64f515e0127fb59224155
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php5.6-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.9 MB (159937168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:936249d92e7f451e18156fa5077d7d4cf304052a07f2d6f14afa35a5ae72b70a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:26:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 06 Dec 2016 21:29:28 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 22:18:49 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Dec 2016 22:18:49 GMT
ENV PHP_VERSION=5.6.28
# Tue, 06 Dec 2016 22:18:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.28.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 22:18:50 GMT
ENV PHP_SHA256=07187ba2870f89cef334cd2ad6cb801aeec5eaf283da0293a9a6be75d6786d11 PHP_MD5=1e01c66b2e67ab3b56a6180ee560fe4c
# Tue, 06 Dec 2016 22:19:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 22:19:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:22:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:24 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:25 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:26 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 07 Dec 2016 19:12:26 GMT
EXPOSE 9000/tcp
# Wed, 07 Dec 2016 19:12:26 GMT
CMD ["php-fpm"]
# Wed, 07 Dec 2016 19:42:43 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:42:44 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:42:44 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:42:44 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:42:45 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:42:47 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:42:47 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:42:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:42:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:42:49 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33b402f8dab84d89e0cbc7312bfea5f9a57c1fca4b90823205f1082f657a023`  
		Last Modified: Tue, 06 Dec 2016 22:50:31 GMT  
		Size: 12.6 MB (12552031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb919650a069b03abe443d1a0f4e54c854d7f31488888b11d2f2a074ba858d0`  
		Last Modified: Tue, 06 Dec 2016 22:50:26 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3baf42de3541778d607ce56954f095300c2285aacdea139e1a43e51fd9db682`  
		Last Modified: Tue, 06 Dec 2016 22:50:28 GMT  
		Size: 8.5 MB (8488797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d332211c7a61227c4955de19b4e1df753fdacf37afc1a3e9a809201801879661`  
		Last Modified: Wed, 07 Dec 2016 19:29:17 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530065f3a72215af50a85cdbfc251f7864466f2a8ae839497838fba70ca85816`  
		Last Modified: Wed, 07 Dec 2016 19:29:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42311d28c692c0aa11cf04b1910f39c2156244441af5c663e403842c370dabb`  
		Last Modified: Wed, 07 Dec 2016 19:29:17 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3d07796898c4fc0729bde5e3dc6cf20eb5949465f11c04215759a065b84596`  
		Last Modified: Wed, 07 Dec 2016 19:48:42 GMT  
		Size: 2.1 MB (2112644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6bf5bdce1c71f88941ce3659d5b164d90eeb80b6660d51fef8bd4c27f5a1eb`  
		Last Modified: Wed, 07 Dec 2016 19:48:41 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d165de4239ddbb09dbc063a9c3d5dafc9f3d46a057a98ef6f1482a6f100234e`  
		Last Modified: Wed, 07 Dec 2016 19:48:44 GMT  
		Size: 7.8 MB (7821783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ae90348fec04f410170210a809949c655768986056560415c0a7e4dd09a6b`  
		Last Modified: Wed, 07 Dec 2016 19:48:42 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17d5899f6787e150b8e019d51e90f0042f126054c798b6566b555cb3ff3525`  
		Last Modified: Wed, 07 Dec 2016 19:48:41 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php5.6-fpm`

```console
$ docker pull wordpress@sha256:62b3f6fcad6451da61ab70cec076fdf10f622017f9f64f515e0127fb59224155
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php5.6-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.9 MB (159937168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:936249d92e7f451e18156fa5077d7d4cf304052a07f2d6f14afa35a5ae72b70a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:26:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 06 Dec 2016 21:29:28 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 22:18:49 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Dec 2016 22:18:49 GMT
ENV PHP_VERSION=5.6.28
# Tue, 06 Dec 2016 22:18:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.28.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 22:18:50 GMT
ENV PHP_SHA256=07187ba2870f89cef334cd2ad6cb801aeec5eaf283da0293a9a6be75d6786d11 PHP_MD5=1e01c66b2e67ab3b56a6180ee560fe4c
# Tue, 06 Dec 2016 22:19:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 22:19:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:22:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:24 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:25 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:26 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 07 Dec 2016 19:12:26 GMT
EXPOSE 9000/tcp
# Wed, 07 Dec 2016 19:12:26 GMT
CMD ["php-fpm"]
# Wed, 07 Dec 2016 19:42:43 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:42:44 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:42:44 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:42:44 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:42:45 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:42:47 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:42:47 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:42:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:42:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:42:49 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33b402f8dab84d89e0cbc7312bfea5f9a57c1fca4b90823205f1082f657a023`  
		Last Modified: Tue, 06 Dec 2016 22:50:31 GMT  
		Size: 12.6 MB (12552031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb919650a069b03abe443d1a0f4e54c854d7f31488888b11d2f2a074ba858d0`  
		Last Modified: Tue, 06 Dec 2016 22:50:26 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3baf42de3541778d607ce56954f095300c2285aacdea139e1a43e51fd9db682`  
		Last Modified: Tue, 06 Dec 2016 22:50:28 GMT  
		Size: 8.5 MB (8488797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d332211c7a61227c4955de19b4e1df753fdacf37afc1a3e9a809201801879661`  
		Last Modified: Wed, 07 Dec 2016 19:29:17 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530065f3a72215af50a85cdbfc251f7864466f2a8ae839497838fba70ca85816`  
		Last Modified: Wed, 07 Dec 2016 19:29:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42311d28c692c0aa11cf04b1910f39c2156244441af5c663e403842c370dabb`  
		Last Modified: Wed, 07 Dec 2016 19:29:17 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3d07796898c4fc0729bde5e3dc6cf20eb5949465f11c04215759a065b84596`  
		Last Modified: Wed, 07 Dec 2016 19:48:42 GMT  
		Size: 2.1 MB (2112644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6bf5bdce1c71f88941ce3659d5b164d90eeb80b6660d51fef8bd4c27f5a1eb`  
		Last Modified: Wed, 07 Dec 2016 19:48:41 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d165de4239ddbb09dbc063a9c3d5dafc9f3d46a057a98ef6f1482a6f100234e`  
		Last Modified: Wed, 07 Dec 2016 19:48:44 GMT  
		Size: 7.8 MB (7821783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ae90348fec04f410170210a809949c655768986056560415c0a7e4dd09a6b`  
		Last Modified: Wed, 07 Dec 2016 19:48:42 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17d5899f6787e150b8e019d51e90f0042f126054c798b6566b555cb3ff3525`  
		Last Modified: Wed, 07 Dec 2016 19:48:41 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php5.6-fpm`

```console
$ docker pull wordpress@sha256:62b3f6fcad6451da61ab70cec076fdf10f622017f9f64f515e0127fb59224155
```

-	Platforms:
	-	linux; amd64

### `wordpress:php5.6-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.9 MB (159937168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:936249d92e7f451e18156fa5077d7d4cf304052a07f2d6f14afa35a5ae72b70a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:26:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 06 Dec 2016 21:29:28 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 22:18:49 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 06 Dec 2016 22:18:49 GMT
ENV PHP_VERSION=5.6.28
# Tue, 06 Dec 2016 22:18:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.28.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.28.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 22:18:50 GMT
ENV PHP_SHA256=07187ba2870f89cef334cd2ad6cb801aeec5eaf283da0293a9a6be75d6786d11 PHP_MD5=1e01c66b2e67ab3b56a6180ee560fe4c
# Tue, 06 Dec 2016 22:19:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 22:19:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:22:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:24 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:25 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:26 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 07 Dec 2016 19:12:26 GMT
EXPOSE 9000/tcp
# Wed, 07 Dec 2016 19:12:26 GMT
CMD ["php-fpm"]
# Wed, 07 Dec 2016 19:42:43 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:42:44 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:42:44 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:42:44 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:42:45 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:42:47 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:42:47 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:42:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:42:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:42:49 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33b402f8dab84d89e0cbc7312bfea5f9a57c1fca4b90823205f1082f657a023`  
		Last Modified: Tue, 06 Dec 2016 22:50:31 GMT  
		Size: 12.6 MB (12552031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb919650a069b03abe443d1a0f4e54c854d7f31488888b11d2f2a074ba858d0`  
		Last Modified: Tue, 06 Dec 2016 22:50:26 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3baf42de3541778d607ce56954f095300c2285aacdea139e1a43e51fd9db682`  
		Last Modified: Tue, 06 Dec 2016 22:50:28 GMT  
		Size: 8.5 MB (8488797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d332211c7a61227c4955de19b4e1df753fdacf37afc1a3e9a809201801879661`  
		Last Modified: Wed, 07 Dec 2016 19:29:17 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530065f3a72215af50a85cdbfc251f7864466f2a8ae839497838fba70ca85816`  
		Last Modified: Wed, 07 Dec 2016 19:29:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42311d28c692c0aa11cf04b1910f39c2156244441af5c663e403842c370dabb`  
		Last Modified: Wed, 07 Dec 2016 19:29:17 GMT  
		Size: 7.6 KB (7630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3d07796898c4fc0729bde5e3dc6cf20eb5949465f11c04215759a065b84596`  
		Last Modified: Wed, 07 Dec 2016 19:48:42 GMT  
		Size: 2.1 MB (2112644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6bf5bdce1c71f88941ce3659d5b164d90eeb80b6660d51fef8bd4c27f5a1eb`  
		Last Modified: Wed, 07 Dec 2016 19:48:41 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d165de4239ddbb09dbc063a9c3d5dafc9f3d46a057a98ef6f1482a6f100234e`  
		Last Modified: Wed, 07 Dec 2016 19:48:44 GMT  
		Size: 7.8 MB (7821783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ae90348fec04f410170210a809949c655768986056560415c0a7e4dd09a6b`  
		Last Modified: Wed, 07 Dec 2016 19:48:42 GMT  
		Size: 2.9 KB (2935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17d5899f6787e150b8e019d51e90f0042f126054c798b6566b555cb3ff3525`  
		Last Modified: Wed, 07 Dec 2016 19:48:41 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.0-php7.0-apache`

```console
$ docker pull wordpress@sha256:fefb91b79c11bb1f8cbd3129e7fe30031f77692ee1347a9f1bdb0b464dbd955c
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.0-php7.0-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167217811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1c39094aaa0588a4dde880ca522c44185cd504c760f239fd32abbab310a8a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:22:45 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 08 Nov 2016 23:22:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 08 Nov 2016 23:22:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 08 Nov 2016 23:22:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 08 Nov 2016 23:22:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:50 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 21:52:24 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 06 Dec 2016 21:52:24 GMT
ENV PHP_VERSION=7.0.13
# Tue, 06 Dec 2016 21:52:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.13.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 21:52:25 GMT
ENV PHP_SHA256=357ba7f93975d7d836abed0852dc3ed96a988af539e87750613294cbee82f1bf PHP_MD5=eb117bf1d1efc99c522f132b265a3402
# Tue, 06 Dec 2016 21:52:34 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 21:52:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 21:54:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:04 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:04 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:05 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:05 GMT
EXPOSE 80/tcp
# Wed, 07 Dec 2016 19:12:06 GMT
CMD ["apache2-foreground"]
# Wed, 07 Dec 2016 19:43:25 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:43:26 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:43:27 GMT
RUN a2enmod rewrite expires
# Wed, 07 Dec 2016 19:43:27 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:43:28 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:43:28 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:43:30 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:43:31 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:43:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:43:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:43:33 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f6d38a33bac61f5c37fce97cc80fc61ee6ffe8d8a7da5d30cc2733aaebb7e`  
		Last Modified: Tue, 08 Nov 2016 23:25:38 GMT  
		Size: 2.8 MB (2849357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea5361568cb6486c878f80ba5844797b34da7b824fdb4eb5ecbaa05416e503`  
		Last Modified: Tue, 08 Nov 2016 23:25:37 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f18e7771919bad862147cb2c038a59fab10d523862f0ae5ff9417137dfd58`  
		Last Modified: Tue, 08 Nov 2016 23:25:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dbc878ca0c93ba275fdb0cbc79169d4b1b86735d24b8577ea529daa953b333`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195935e4100b1050f83184b119a90f6ca23b3b03954773ea7de354a629652673`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24b0dafb36572ce47ab88e0c6d532fa2c3eec66ba3bd2cc88ea01d5e29720df`  
		Last Modified: Tue, 06 Dec 2016 22:43:54 GMT  
		Size: 12.7 MB (12659541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab31d294c829820a1620eaa1a453d7b5d981a050f3f40d51113d5a25d7091104`  
		Last Modified: Tue, 06 Dec 2016 22:43:52 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453ccaf3c389ed7b44f712471ddac1c70ef5f2fc7323d6bf6c520db2a04bf56a`  
		Last Modified: Tue, 06 Dec 2016 22:43:56 GMT  
		Size: 12.8 MB (12781692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7631d7c23a7245f11e4ba71f65403f8470c85ac6824ce02b5149037ed4b71f7f`  
		Last Modified: Wed, 07 Dec 2016 19:23:03 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86d692f4cc3392f13fc26f91eb0f66c54296d03c5ecba7f97426effbccb3458`  
		Last Modified: Wed, 07 Dec 2016 19:23:03 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3223062a608b282d347a2b1a9e9d941d0804c35bfe6f2246bb70dbf302807a`  
		Last Modified: Wed, 07 Dec 2016 19:50:54 GMT  
		Size: 2.1 MB (2147999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577a7155a79a5cc53c9bfaa3a694eb82d1e765b02158c608849c6c9126806e24`  
		Last Modified: Wed, 07 Dec 2016 19:50:50 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddeba860f19a7b240069e791c3e2f7727fb66b4d8947bdd7bd492aa5b2a347b`  
		Last Modified: Wed, 07 Dec 2016 19:50:50 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b69caf1e14977c2b6d023b9c0a77e7169bcf9832b7f6edd74265b056fbbcdc63`  
		Last Modified: Wed, 07 Dec 2016 19:50:52 GMT  
		Size: 7.8 MB (7821785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278d609f21d5f0fe502cecacb8ba260fac5a75de0a296555b710836e11786562`  
		Last Modified: Wed, 07 Dec 2016 19:50:51 GMT  
		Size: 2.9 KB (2937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7086c835dc54212a536546270f8951d85332238d061d7535dad4ded940be6185`  
		Last Modified: Wed, 07 Dec 2016 19:50:49 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php7.0-apache`

```console
$ docker pull wordpress@sha256:fefb91b79c11bb1f8cbd3129e7fe30031f77692ee1347a9f1bdb0b464dbd955c
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php7.0-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167217811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1c39094aaa0588a4dde880ca522c44185cd504c760f239fd32abbab310a8a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:22:45 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 08 Nov 2016 23:22:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 08 Nov 2016 23:22:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 08 Nov 2016 23:22:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 08 Nov 2016 23:22:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:50 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 21:52:24 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 06 Dec 2016 21:52:24 GMT
ENV PHP_VERSION=7.0.13
# Tue, 06 Dec 2016 21:52:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.13.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 21:52:25 GMT
ENV PHP_SHA256=357ba7f93975d7d836abed0852dc3ed96a988af539e87750613294cbee82f1bf PHP_MD5=eb117bf1d1efc99c522f132b265a3402
# Tue, 06 Dec 2016 21:52:34 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 21:52:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 21:54:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:04 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:04 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:05 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:05 GMT
EXPOSE 80/tcp
# Wed, 07 Dec 2016 19:12:06 GMT
CMD ["apache2-foreground"]
# Wed, 07 Dec 2016 19:43:25 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:43:26 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:43:27 GMT
RUN a2enmod rewrite expires
# Wed, 07 Dec 2016 19:43:27 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:43:28 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:43:28 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:43:30 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:43:31 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:43:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:43:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:43:33 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f6d38a33bac61f5c37fce97cc80fc61ee6ffe8d8a7da5d30cc2733aaebb7e`  
		Last Modified: Tue, 08 Nov 2016 23:25:38 GMT  
		Size: 2.8 MB (2849357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea5361568cb6486c878f80ba5844797b34da7b824fdb4eb5ecbaa05416e503`  
		Last Modified: Tue, 08 Nov 2016 23:25:37 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f18e7771919bad862147cb2c038a59fab10d523862f0ae5ff9417137dfd58`  
		Last Modified: Tue, 08 Nov 2016 23:25:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dbc878ca0c93ba275fdb0cbc79169d4b1b86735d24b8577ea529daa953b333`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195935e4100b1050f83184b119a90f6ca23b3b03954773ea7de354a629652673`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24b0dafb36572ce47ab88e0c6d532fa2c3eec66ba3bd2cc88ea01d5e29720df`  
		Last Modified: Tue, 06 Dec 2016 22:43:54 GMT  
		Size: 12.7 MB (12659541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab31d294c829820a1620eaa1a453d7b5d981a050f3f40d51113d5a25d7091104`  
		Last Modified: Tue, 06 Dec 2016 22:43:52 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453ccaf3c389ed7b44f712471ddac1c70ef5f2fc7323d6bf6c520db2a04bf56a`  
		Last Modified: Tue, 06 Dec 2016 22:43:56 GMT  
		Size: 12.8 MB (12781692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7631d7c23a7245f11e4ba71f65403f8470c85ac6824ce02b5149037ed4b71f7f`  
		Last Modified: Wed, 07 Dec 2016 19:23:03 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86d692f4cc3392f13fc26f91eb0f66c54296d03c5ecba7f97426effbccb3458`  
		Last Modified: Wed, 07 Dec 2016 19:23:03 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3223062a608b282d347a2b1a9e9d941d0804c35bfe6f2246bb70dbf302807a`  
		Last Modified: Wed, 07 Dec 2016 19:50:54 GMT  
		Size: 2.1 MB (2147999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577a7155a79a5cc53c9bfaa3a694eb82d1e765b02158c608849c6c9126806e24`  
		Last Modified: Wed, 07 Dec 2016 19:50:50 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddeba860f19a7b240069e791c3e2f7727fb66b4d8947bdd7bd492aa5b2a347b`  
		Last Modified: Wed, 07 Dec 2016 19:50:50 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b69caf1e14977c2b6d023b9c0a77e7169bcf9832b7f6edd74265b056fbbcdc63`  
		Last Modified: Wed, 07 Dec 2016 19:50:52 GMT  
		Size: 7.8 MB (7821785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278d609f21d5f0fe502cecacb8ba260fac5a75de0a296555b710836e11786562`  
		Last Modified: Wed, 07 Dec 2016 19:50:51 GMT  
		Size: 2.9 KB (2937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7086c835dc54212a536546270f8951d85332238d061d7535dad4ded940be6185`  
		Last Modified: Wed, 07 Dec 2016 19:50:49 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php7.0-apache`

```console
$ docker pull wordpress@sha256:fefb91b79c11bb1f8cbd3129e7fe30031f77692ee1347a9f1bdb0b464dbd955c
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.0-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167217811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1c39094aaa0588a4dde880ca522c44185cd504c760f239fd32abbab310a8a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:22:45 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 08 Nov 2016 23:22:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 08 Nov 2016 23:22:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 08 Nov 2016 23:22:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 08 Nov 2016 23:22:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:50 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 21:52:24 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 06 Dec 2016 21:52:24 GMT
ENV PHP_VERSION=7.0.13
# Tue, 06 Dec 2016 21:52:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.13.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 21:52:25 GMT
ENV PHP_SHA256=357ba7f93975d7d836abed0852dc3ed96a988af539e87750613294cbee82f1bf PHP_MD5=eb117bf1d1efc99c522f132b265a3402
# Tue, 06 Dec 2016 21:52:34 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 21:52:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 21:54:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:04 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:04 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:05 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:05 GMT
EXPOSE 80/tcp
# Wed, 07 Dec 2016 19:12:06 GMT
CMD ["apache2-foreground"]
# Wed, 07 Dec 2016 19:43:25 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:43:26 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:43:27 GMT
RUN a2enmod rewrite expires
# Wed, 07 Dec 2016 19:43:27 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:43:28 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:43:28 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:43:30 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:43:31 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:43:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:43:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:43:33 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f6d38a33bac61f5c37fce97cc80fc61ee6ffe8d8a7da5d30cc2733aaebb7e`  
		Last Modified: Tue, 08 Nov 2016 23:25:38 GMT  
		Size: 2.8 MB (2849357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea5361568cb6486c878f80ba5844797b34da7b824fdb4eb5ecbaa05416e503`  
		Last Modified: Tue, 08 Nov 2016 23:25:37 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f18e7771919bad862147cb2c038a59fab10d523862f0ae5ff9417137dfd58`  
		Last Modified: Tue, 08 Nov 2016 23:25:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dbc878ca0c93ba275fdb0cbc79169d4b1b86735d24b8577ea529daa953b333`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195935e4100b1050f83184b119a90f6ca23b3b03954773ea7de354a629652673`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24b0dafb36572ce47ab88e0c6d532fa2c3eec66ba3bd2cc88ea01d5e29720df`  
		Last Modified: Tue, 06 Dec 2016 22:43:54 GMT  
		Size: 12.7 MB (12659541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab31d294c829820a1620eaa1a453d7b5d981a050f3f40d51113d5a25d7091104`  
		Last Modified: Tue, 06 Dec 2016 22:43:52 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453ccaf3c389ed7b44f712471ddac1c70ef5f2fc7323d6bf6c520db2a04bf56a`  
		Last Modified: Tue, 06 Dec 2016 22:43:56 GMT  
		Size: 12.8 MB (12781692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7631d7c23a7245f11e4ba71f65403f8470c85ac6824ce02b5149037ed4b71f7f`  
		Last Modified: Wed, 07 Dec 2016 19:23:03 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86d692f4cc3392f13fc26f91eb0f66c54296d03c5ecba7f97426effbccb3458`  
		Last Modified: Wed, 07 Dec 2016 19:23:03 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3223062a608b282d347a2b1a9e9d941d0804c35bfe6f2246bb70dbf302807a`  
		Last Modified: Wed, 07 Dec 2016 19:50:54 GMT  
		Size: 2.1 MB (2147999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577a7155a79a5cc53c9bfaa3a694eb82d1e765b02158c608849c6c9126806e24`  
		Last Modified: Wed, 07 Dec 2016 19:50:50 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddeba860f19a7b240069e791c3e2f7727fb66b4d8947bdd7bd492aa5b2a347b`  
		Last Modified: Wed, 07 Dec 2016 19:50:50 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b69caf1e14977c2b6d023b9c0a77e7169bcf9832b7f6edd74265b056fbbcdc63`  
		Last Modified: Wed, 07 Dec 2016 19:50:52 GMT  
		Size: 7.8 MB (7821785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278d609f21d5f0fe502cecacb8ba260fac5a75de0a296555b710836e11786562`  
		Last Modified: Wed, 07 Dec 2016 19:50:51 GMT  
		Size: 2.9 KB (2937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7086c835dc54212a536546270f8951d85332238d061d7535dad4ded940be6185`  
		Last Modified: Wed, 07 Dec 2016 19:50:49 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php7.0-apache`

```console
$ docker pull wordpress@sha256:fefb91b79c11bb1f8cbd3129e7fe30031f77692ee1347a9f1bdb0b464dbd955c
```

-	Platforms:
	-	linux; amd64

### `wordpress:php7.0-apache` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167217811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1c39094aaa0588a4dde880ca522c44185cd504c760f239fd32abbab310a8a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:22:45 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 08 Nov 2016 23:22:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 08 Nov 2016 23:22:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 08 Nov 2016 23:22:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 08 Nov 2016 23:22:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:50 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 21:52:24 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 06 Dec 2016 21:52:24 GMT
ENV PHP_VERSION=7.0.13
# Tue, 06 Dec 2016 21:52:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.13.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 21:52:25 GMT
ENV PHP_SHA256=357ba7f93975d7d836abed0852dc3ed96a988af539e87750613294cbee82f1bf PHP_MD5=eb117bf1d1efc99c522f132b265a3402
# Tue, 06 Dec 2016 21:52:34 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 21:52:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 21:54:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:04 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:04 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:05 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:05 GMT
EXPOSE 80/tcp
# Wed, 07 Dec 2016 19:12:06 GMT
CMD ["apache2-foreground"]
# Wed, 07 Dec 2016 19:43:25 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:43:26 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:43:27 GMT
RUN a2enmod rewrite expires
# Wed, 07 Dec 2016 19:43:27 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:43:28 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:43:28 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:43:30 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:43:31 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:43:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:43:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:43:33 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f6d38a33bac61f5c37fce97cc80fc61ee6ffe8d8a7da5d30cc2733aaebb7e`  
		Last Modified: Tue, 08 Nov 2016 23:25:38 GMT  
		Size: 2.8 MB (2849357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea5361568cb6486c878f80ba5844797b34da7b824fdb4eb5ecbaa05416e503`  
		Last Modified: Tue, 08 Nov 2016 23:25:37 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f18e7771919bad862147cb2c038a59fab10d523862f0ae5ff9417137dfd58`  
		Last Modified: Tue, 08 Nov 2016 23:25:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dbc878ca0c93ba275fdb0cbc79169d4b1b86735d24b8577ea529daa953b333`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195935e4100b1050f83184b119a90f6ca23b3b03954773ea7de354a629652673`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24b0dafb36572ce47ab88e0c6d532fa2c3eec66ba3bd2cc88ea01d5e29720df`  
		Last Modified: Tue, 06 Dec 2016 22:43:54 GMT  
		Size: 12.7 MB (12659541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab31d294c829820a1620eaa1a453d7b5d981a050f3f40d51113d5a25d7091104`  
		Last Modified: Tue, 06 Dec 2016 22:43:52 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453ccaf3c389ed7b44f712471ddac1c70ef5f2fc7323d6bf6c520db2a04bf56a`  
		Last Modified: Tue, 06 Dec 2016 22:43:56 GMT  
		Size: 12.8 MB (12781692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7631d7c23a7245f11e4ba71f65403f8470c85ac6824ce02b5149037ed4b71f7f`  
		Last Modified: Wed, 07 Dec 2016 19:23:03 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86d692f4cc3392f13fc26f91eb0f66c54296d03c5ecba7f97426effbccb3458`  
		Last Modified: Wed, 07 Dec 2016 19:23:03 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3223062a608b282d347a2b1a9e9d941d0804c35bfe6f2246bb70dbf302807a`  
		Last Modified: Wed, 07 Dec 2016 19:50:54 GMT  
		Size: 2.1 MB (2147999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577a7155a79a5cc53c9bfaa3a694eb82d1e765b02158c608849c6c9126806e24`  
		Last Modified: Wed, 07 Dec 2016 19:50:50 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddeba860f19a7b240069e791c3e2f7727fb66b4d8947bdd7bd492aa5b2a347b`  
		Last Modified: Wed, 07 Dec 2016 19:50:50 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b69caf1e14977c2b6d023b9c0a77e7169bcf9832b7f6edd74265b056fbbcdc63`  
		Last Modified: Wed, 07 Dec 2016 19:50:52 GMT  
		Size: 7.8 MB (7821785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278d609f21d5f0fe502cecacb8ba260fac5a75de0a296555b710836e11786562`  
		Last Modified: Wed, 07 Dec 2016 19:50:51 GMT  
		Size: 2.9 KB (2937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7086c835dc54212a536546270f8951d85332238d061d7535dad4ded940be6185`  
		Last Modified: Wed, 07 Dec 2016 19:50:49 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.0-php7.0`

```console
$ docker pull wordpress@sha256:fefb91b79c11bb1f8cbd3129e7fe30031f77692ee1347a9f1bdb0b464dbd955c
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.0-php7.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167217811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1c39094aaa0588a4dde880ca522c44185cd504c760f239fd32abbab310a8a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:22:45 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 08 Nov 2016 23:22:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 08 Nov 2016 23:22:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 08 Nov 2016 23:22:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 08 Nov 2016 23:22:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:50 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 21:52:24 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 06 Dec 2016 21:52:24 GMT
ENV PHP_VERSION=7.0.13
# Tue, 06 Dec 2016 21:52:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.13.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 21:52:25 GMT
ENV PHP_SHA256=357ba7f93975d7d836abed0852dc3ed96a988af539e87750613294cbee82f1bf PHP_MD5=eb117bf1d1efc99c522f132b265a3402
# Tue, 06 Dec 2016 21:52:34 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 21:52:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 21:54:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:04 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:04 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:05 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:05 GMT
EXPOSE 80/tcp
# Wed, 07 Dec 2016 19:12:06 GMT
CMD ["apache2-foreground"]
# Wed, 07 Dec 2016 19:43:25 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:43:26 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:43:27 GMT
RUN a2enmod rewrite expires
# Wed, 07 Dec 2016 19:43:27 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:43:28 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:43:28 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:43:30 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:43:31 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:43:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:43:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:43:33 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f6d38a33bac61f5c37fce97cc80fc61ee6ffe8d8a7da5d30cc2733aaebb7e`  
		Last Modified: Tue, 08 Nov 2016 23:25:38 GMT  
		Size: 2.8 MB (2849357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea5361568cb6486c878f80ba5844797b34da7b824fdb4eb5ecbaa05416e503`  
		Last Modified: Tue, 08 Nov 2016 23:25:37 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f18e7771919bad862147cb2c038a59fab10d523862f0ae5ff9417137dfd58`  
		Last Modified: Tue, 08 Nov 2016 23:25:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dbc878ca0c93ba275fdb0cbc79169d4b1b86735d24b8577ea529daa953b333`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195935e4100b1050f83184b119a90f6ca23b3b03954773ea7de354a629652673`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24b0dafb36572ce47ab88e0c6d532fa2c3eec66ba3bd2cc88ea01d5e29720df`  
		Last Modified: Tue, 06 Dec 2016 22:43:54 GMT  
		Size: 12.7 MB (12659541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab31d294c829820a1620eaa1a453d7b5d981a050f3f40d51113d5a25d7091104`  
		Last Modified: Tue, 06 Dec 2016 22:43:52 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453ccaf3c389ed7b44f712471ddac1c70ef5f2fc7323d6bf6c520db2a04bf56a`  
		Last Modified: Tue, 06 Dec 2016 22:43:56 GMT  
		Size: 12.8 MB (12781692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7631d7c23a7245f11e4ba71f65403f8470c85ac6824ce02b5149037ed4b71f7f`  
		Last Modified: Wed, 07 Dec 2016 19:23:03 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86d692f4cc3392f13fc26f91eb0f66c54296d03c5ecba7f97426effbccb3458`  
		Last Modified: Wed, 07 Dec 2016 19:23:03 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3223062a608b282d347a2b1a9e9d941d0804c35bfe6f2246bb70dbf302807a`  
		Last Modified: Wed, 07 Dec 2016 19:50:54 GMT  
		Size: 2.1 MB (2147999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577a7155a79a5cc53c9bfaa3a694eb82d1e765b02158c608849c6c9126806e24`  
		Last Modified: Wed, 07 Dec 2016 19:50:50 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddeba860f19a7b240069e791c3e2f7727fb66b4d8947bdd7bd492aa5b2a347b`  
		Last Modified: Wed, 07 Dec 2016 19:50:50 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b69caf1e14977c2b6d023b9c0a77e7169bcf9832b7f6edd74265b056fbbcdc63`  
		Last Modified: Wed, 07 Dec 2016 19:50:52 GMT  
		Size: 7.8 MB (7821785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278d609f21d5f0fe502cecacb8ba260fac5a75de0a296555b710836e11786562`  
		Last Modified: Wed, 07 Dec 2016 19:50:51 GMT  
		Size: 2.9 KB (2937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7086c835dc54212a536546270f8951d85332238d061d7535dad4ded940be6185`  
		Last Modified: Wed, 07 Dec 2016 19:50:49 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php7.0`

```console
$ docker pull wordpress@sha256:fefb91b79c11bb1f8cbd3129e7fe30031f77692ee1347a9f1bdb0b464dbd955c
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php7.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167217811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1c39094aaa0588a4dde880ca522c44185cd504c760f239fd32abbab310a8a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:22:45 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 08 Nov 2016 23:22:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 08 Nov 2016 23:22:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 08 Nov 2016 23:22:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 08 Nov 2016 23:22:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:50 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 21:52:24 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 06 Dec 2016 21:52:24 GMT
ENV PHP_VERSION=7.0.13
# Tue, 06 Dec 2016 21:52:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.13.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 21:52:25 GMT
ENV PHP_SHA256=357ba7f93975d7d836abed0852dc3ed96a988af539e87750613294cbee82f1bf PHP_MD5=eb117bf1d1efc99c522f132b265a3402
# Tue, 06 Dec 2016 21:52:34 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 21:52:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 21:54:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:04 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:04 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:05 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:05 GMT
EXPOSE 80/tcp
# Wed, 07 Dec 2016 19:12:06 GMT
CMD ["apache2-foreground"]
# Wed, 07 Dec 2016 19:43:25 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:43:26 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:43:27 GMT
RUN a2enmod rewrite expires
# Wed, 07 Dec 2016 19:43:27 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:43:28 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:43:28 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:43:30 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:43:31 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:43:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:43:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:43:33 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f6d38a33bac61f5c37fce97cc80fc61ee6ffe8d8a7da5d30cc2733aaebb7e`  
		Last Modified: Tue, 08 Nov 2016 23:25:38 GMT  
		Size: 2.8 MB (2849357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea5361568cb6486c878f80ba5844797b34da7b824fdb4eb5ecbaa05416e503`  
		Last Modified: Tue, 08 Nov 2016 23:25:37 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f18e7771919bad862147cb2c038a59fab10d523862f0ae5ff9417137dfd58`  
		Last Modified: Tue, 08 Nov 2016 23:25:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dbc878ca0c93ba275fdb0cbc79169d4b1b86735d24b8577ea529daa953b333`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195935e4100b1050f83184b119a90f6ca23b3b03954773ea7de354a629652673`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24b0dafb36572ce47ab88e0c6d532fa2c3eec66ba3bd2cc88ea01d5e29720df`  
		Last Modified: Tue, 06 Dec 2016 22:43:54 GMT  
		Size: 12.7 MB (12659541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab31d294c829820a1620eaa1a453d7b5d981a050f3f40d51113d5a25d7091104`  
		Last Modified: Tue, 06 Dec 2016 22:43:52 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453ccaf3c389ed7b44f712471ddac1c70ef5f2fc7323d6bf6c520db2a04bf56a`  
		Last Modified: Tue, 06 Dec 2016 22:43:56 GMT  
		Size: 12.8 MB (12781692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7631d7c23a7245f11e4ba71f65403f8470c85ac6824ce02b5149037ed4b71f7f`  
		Last Modified: Wed, 07 Dec 2016 19:23:03 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86d692f4cc3392f13fc26f91eb0f66c54296d03c5ecba7f97426effbccb3458`  
		Last Modified: Wed, 07 Dec 2016 19:23:03 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3223062a608b282d347a2b1a9e9d941d0804c35bfe6f2246bb70dbf302807a`  
		Last Modified: Wed, 07 Dec 2016 19:50:54 GMT  
		Size: 2.1 MB (2147999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577a7155a79a5cc53c9bfaa3a694eb82d1e765b02158c608849c6c9126806e24`  
		Last Modified: Wed, 07 Dec 2016 19:50:50 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddeba860f19a7b240069e791c3e2f7727fb66b4d8947bdd7bd492aa5b2a347b`  
		Last Modified: Wed, 07 Dec 2016 19:50:50 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b69caf1e14977c2b6d023b9c0a77e7169bcf9832b7f6edd74265b056fbbcdc63`  
		Last Modified: Wed, 07 Dec 2016 19:50:52 GMT  
		Size: 7.8 MB (7821785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278d609f21d5f0fe502cecacb8ba260fac5a75de0a296555b710836e11786562`  
		Last Modified: Wed, 07 Dec 2016 19:50:51 GMT  
		Size: 2.9 KB (2937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7086c835dc54212a536546270f8951d85332238d061d7535dad4ded940be6185`  
		Last Modified: Wed, 07 Dec 2016 19:50:49 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php7.0`

```console
$ docker pull wordpress@sha256:fefb91b79c11bb1f8cbd3129e7fe30031f77692ee1347a9f1bdb0b464dbd955c
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167217811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1c39094aaa0588a4dde880ca522c44185cd504c760f239fd32abbab310a8a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:22:45 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 08 Nov 2016 23:22:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 08 Nov 2016 23:22:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 08 Nov 2016 23:22:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 08 Nov 2016 23:22:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:50 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 21:52:24 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 06 Dec 2016 21:52:24 GMT
ENV PHP_VERSION=7.0.13
# Tue, 06 Dec 2016 21:52:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.13.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 21:52:25 GMT
ENV PHP_SHA256=357ba7f93975d7d836abed0852dc3ed96a988af539e87750613294cbee82f1bf PHP_MD5=eb117bf1d1efc99c522f132b265a3402
# Tue, 06 Dec 2016 21:52:34 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 21:52:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 21:54:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:04 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:04 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:05 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:05 GMT
EXPOSE 80/tcp
# Wed, 07 Dec 2016 19:12:06 GMT
CMD ["apache2-foreground"]
# Wed, 07 Dec 2016 19:43:25 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:43:26 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:43:27 GMT
RUN a2enmod rewrite expires
# Wed, 07 Dec 2016 19:43:27 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:43:28 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:43:28 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:43:30 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:43:31 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:43:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:43:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:43:33 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f6d38a33bac61f5c37fce97cc80fc61ee6ffe8d8a7da5d30cc2733aaebb7e`  
		Last Modified: Tue, 08 Nov 2016 23:25:38 GMT  
		Size: 2.8 MB (2849357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea5361568cb6486c878f80ba5844797b34da7b824fdb4eb5ecbaa05416e503`  
		Last Modified: Tue, 08 Nov 2016 23:25:37 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f18e7771919bad862147cb2c038a59fab10d523862f0ae5ff9417137dfd58`  
		Last Modified: Tue, 08 Nov 2016 23:25:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dbc878ca0c93ba275fdb0cbc79169d4b1b86735d24b8577ea529daa953b333`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195935e4100b1050f83184b119a90f6ca23b3b03954773ea7de354a629652673`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24b0dafb36572ce47ab88e0c6d532fa2c3eec66ba3bd2cc88ea01d5e29720df`  
		Last Modified: Tue, 06 Dec 2016 22:43:54 GMT  
		Size: 12.7 MB (12659541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab31d294c829820a1620eaa1a453d7b5d981a050f3f40d51113d5a25d7091104`  
		Last Modified: Tue, 06 Dec 2016 22:43:52 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453ccaf3c389ed7b44f712471ddac1c70ef5f2fc7323d6bf6c520db2a04bf56a`  
		Last Modified: Tue, 06 Dec 2016 22:43:56 GMT  
		Size: 12.8 MB (12781692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7631d7c23a7245f11e4ba71f65403f8470c85ac6824ce02b5149037ed4b71f7f`  
		Last Modified: Wed, 07 Dec 2016 19:23:03 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86d692f4cc3392f13fc26f91eb0f66c54296d03c5ecba7f97426effbccb3458`  
		Last Modified: Wed, 07 Dec 2016 19:23:03 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3223062a608b282d347a2b1a9e9d941d0804c35bfe6f2246bb70dbf302807a`  
		Last Modified: Wed, 07 Dec 2016 19:50:54 GMT  
		Size: 2.1 MB (2147999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577a7155a79a5cc53c9bfaa3a694eb82d1e765b02158c608849c6c9126806e24`  
		Last Modified: Wed, 07 Dec 2016 19:50:50 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddeba860f19a7b240069e791c3e2f7727fb66b4d8947bdd7bd492aa5b2a347b`  
		Last Modified: Wed, 07 Dec 2016 19:50:50 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b69caf1e14977c2b6d023b9c0a77e7169bcf9832b7f6edd74265b056fbbcdc63`  
		Last Modified: Wed, 07 Dec 2016 19:50:52 GMT  
		Size: 7.8 MB (7821785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278d609f21d5f0fe502cecacb8ba260fac5a75de0a296555b710836e11786562`  
		Last Modified: Wed, 07 Dec 2016 19:50:51 GMT  
		Size: 2.9 KB (2937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7086c835dc54212a536546270f8951d85332238d061d7535dad4ded940be6185`  
		Last Modified: Wed, 07 Dec 2016 19:50:49 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php7.0`

```console
$ docker pull wordpress@sha256:fefb91b79c11bb1f8cbd3129e7fe30031f77692ee1347a9f1bdb0b464dbd955c
```

-	Platforms:
	-	linux; amd64

### `wordpress:php7.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167217811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1c39094aaa0588a4dde880ca522c44185cd504c760f239fd32abbab310a8a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:22:45 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 08 Nov 2016 23:22:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 08 Nov 2016 23:22:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 08 Nov 2016 23:22:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 08 Nov 2016 23:22:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:50 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 21:52:24 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 06 Dec 2016 21:52:24 GMT
ENV PHP_VERSION=7.0.13
# Tue, 06 Dec 2016 21:52:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.13.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 21:52:25 GMT
ENV PHP_SHA256=357ba7f93975d7d836abed0852dc3ed96a988af539e87750613294cbee82f1bf PHP_MD5=eb117bf1d1efc99c522f132b265a3402
# Tue, 06 Dec 2016 21:52:34 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 21:52:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 21:54:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:04 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:04 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:05 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:05 GMT
EXPOSE 80/tcp
# Wed, 07 Dec 2016 19:12:06 GMT
CMD ["apache2-foreground"]
# Wed, 07 Dec 2016 19:43:25 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:43:26 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:43:27 GMT
RUN a2enmod rewrite expires
# Wed, 07 Dec 2016 19:43:27 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:43:28 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:43:28 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:43:30 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:43:31 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:43:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:43:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:43:33 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f6d38a33bac61f5c37fce97cc80fc61ee6ffe8d8a7da5d30cc2733aaebb7e`  
		Last Modified: Tue, 08 Nov 2016 23:25:38 GMT  
		Size: 2.8 MB (2849357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea5361568cb6486c878f80ba5844797b34da7b824fdb4eb5ecbaa05416e503`  
		Last Modified: Tue, 08 Nov 2016 23:25:37 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f18e7771919bad862147cb2c038a59fab10d523862f0ae5ff9417137dfd58`  
		Last Modified: Tue, 08 Nov 2016 23:25:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dbc878ca0c93ba275fdb0cbc79169d4b1b86735d24b8577ea529daa953b333`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195935e4100b1050f83184b119a90f6ca23b3b03954773ea7de354a629652673`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24b0dafb36572ce47ab88e0c6d532fa2c3eec66ba3bd2cc88ea01d5e29720df`  
		Last Modified: Tue, 06 Dec 2016 22:43:54 GMT  
		Size: 12.7 MB (12659541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab31d294c829820a1620eaa1a453d7b5d981a050f3f40d51113d5a25d7091104`  
		Last Modified: Tue, 06 Dec 2016 22:43:52 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453ccaf3c389ed7b44f712471ddac1c70ef5f2fc7323d6bf6c520db2a04bf56a`  
		Last Modified: Tue, 06 Dec 2016 22:43:56 GMT  
		Size: 12.8 MB (12781692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7631d7c23a7245f11e4ba71f65403f8470c85ac6824ce02b5149037ed4b71f7f`  
		Last Modified: Wed, 07 Dec 2016 19:23:03 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86d692f4cc3392f13fc26f91eb0f66c54296d03c5ecba7f97426effbccb3458`  
		Last Modified: Wed, 07 Dec 2016 19:23:03 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3223062a608b282d347a2b1a9e9d941d0804c35bfe6f2246bb70dbf302807a`  
		Last Modified: Wed, 07 Dec 2016 19:50:54 GMT  
		Size: 2.1 MB (2147999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577a7155a79a5cc53c9bfaa3a694eb82d1e765b02158c608849c6c9126806e24`  
		Last Modified: Wed, 07 Dec 2016 19:50:50 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddeba860f19a7b240069e791c3e2f7727fb66b4d8947bdd7bd492aa5b2a347b`  
		Last Modified: Wed, 07 Dec 2016 19:50:50 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b69caf1e14977c2b6d023b9c0a77e7169bcf9832b7f6edd74265b056fbbcdc63`  
		Last Modified: Wed, 07 Dec 2016 19:50:52 GMT  
		Size: 7.8 MB (7821785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278d609f21d5f0fe502cecacb8ba260fac5a75de0a296555b710836e11786562`  
		Last Modified: Wed, 07 Dec 2016 19:50:51 GMT  
		Size: 2.9 KB (2937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7086c835dc54212a536546270f8951d85332238d061d7535dad4ded940be6185`  
		Last Modified: Wed, 07 Dec 2016 19:50:49 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.0-php7.0-fpm`

```console
$ docker pull wordpress@sha256:36b8b34ddd928d1abce5fa1b39431028282f68477285646e9d2124b54e6ee093
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.0-php7.0-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.7 MB (163734045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8823343c3d8d300579731f0cbf36b62bf011d093d360d7c120407a0009153b12`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:26:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 06 Dec 2016 21:29:28 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 21:54:52 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 06 Dec 2016 21:54:52 GMT
ENV PHP_VERSION=7.0.13
# Tue, 06 Dec 2016 21:54:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.13.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 21:54:53 GMT
ENV PHP_SHA256=357ba7f93975d7d836abed0852dc3ed96a988af539e87750613294cbee82f1bf PHP_MD5=eb117bf1d1efc99c522f132b265a3402
# Tue, 06 Dec 2016 21:55:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 21:55:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 21:58:26 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:07 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:07 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:09 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 07 Dec 2016 19:12:09 GMT
EXPOSE 9000/tcp
# Wed, 07 Dec 2016 19:12:09 GMT
CMD ["php-fpm"]
# Wed, 07 Dec 2016 19:44:09 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:44:10 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:44:11 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:44:11 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:44:11 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:44:14 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:44:14 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:44:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:44:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:44:16 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c243a3f96daa7f9d67fae3fbdfffc4b2684d89d973c8b2914f0ea14f3fa7f9f1`  
		Last Modified: Tue, 06 Dec 2016 22:44:34 GMT  
		Size: 12.6 MB (12640152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb7426c1b74cb1e3bf89e564f0f9d8d02bf4bb8660bf67e7e810eaf965a4d8b`  
		Last Modified: Tue, 06 Dec 2016 22:44:29 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa901f179399d9b4739755d78a3b4b4b4ed4d15f0b363b7d21e58bdcf1fa4d9`  
		Last Modified: Tue, 06 Dec 2016 22:44:34 GMT  
		Size: 12.2 MB (12184094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbf4c299c8ac0dd09e1d7a88e2883e13ced4d773cff4177b15fed8b5c364ba0`  
		Last Modified: Wed, 07 Dec 2016 19:23:45 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11321c1c71df528de9e4970df6d6f600c337036d443e8ac434db563728fffd07`  
		Last Modified: Wed, 07 Dec 2016 19:23:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0565c464d9ee05bd325e2973cb82c144e661aaf945903a1b47b2011b70605139`  
		Last Modified: Wed, 07 Dec 2016 19:23:46 GMT  
		Size: 7.7 KB (7689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb76d5c346cad53203344603a8bfb04c326d6e0cfdb5390b1f0b4a692b458fe`  
		Last Modified: Wed, 07 Dec 2016 19:53:01 GMT  
		Size: 2.1 MB (2126040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685c124d75ed4cfff602ef4b4b414c7a7bd17bd044824f6f222cfd81ae5b6101`  
		Last Modified: Wed, 07 Dec 2016 19:53:00 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b718e14820ed40ab45f13fd3ebcdde76019e8c6f80614d792119b0d075140ee`  
		Last Modified: Wed, 07 Dec 2016 19:53:02 GMT  
		Size: 7.8 MB (7821782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ade0d758d78973edbc7c5e4486c58023e91cd4a69c9e6b8d64e27443b40e7b`  
		Last Modified: Wed, 07 Dec 2016 19:52:59 GMT  
		Size: 2.9 KB (2936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e332c58ba99ad3cd7765553bd9f6c23f5ab83e4ddaa75e5beb87221ddac4ac1`  
		Last Modified: Wed, 07 Dec 2016 19:53:00 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php7.0-fpm`

```console
$ docker pull wordpress@sha256:36b8b34ddd928d1abce5fa1b39431028282f68477285646e9d2124b54e6ee093
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php7.0-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.7 MB (163734045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8823343c3d8d300579731f0cbf36b62bf011d093d360d7c120407a0009153b12`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:26:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 06 Dec 2016 21:29:28 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 21:54:52 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 06 Dec 2016 21:54:52 GMT
ENV PHP_VERSION=7.0.13
# Tue, 06 Dec 2016 21:54:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.13.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 21:54:53 GMT
ENV PHP_SHA256=357ba7f93975d7d836abed0852dc3ed96a988af539e87750613294cbee82f1bf PHP_MD5=eb117bf1d1efc99c522f132b265a3402
# Tue, 06 Dec 2016 21:55:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 21:55:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 21:58:26 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:07 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:07 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:09 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 07 Dec 2016 19:12:09 GMT
EXPOSE 9000/tcp
# Wed, 07 Dec 2016 19:12:09 GMT
CMD ["php-fpm"]
# Wed, 07 Dec 2016 19:44:09 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:44:10 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:44:11 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:44:11 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:44:11 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:44:14 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:44:14 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:44:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:44:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:44:16 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c243a3f96daa7f9d67fae3fbdfffc4b2684d89d973c8b2914f0ea14f3fa7f9f1`  
		Last Modified: Tue, 06 Dec 2016 22:44:34 GMT  
		Size: 12.6 MB (12640152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb7426c1b74cb1e3bf89e564f0f9d8d02bf4bb8660bf67e7e810eaf965a4d8b`  
		Last Modified: Tue, 06 Dec 2016 22:44:29 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa901f179399d9b4739755d78a3b4b4b4ed4d15f0b363b7d21e58bdcf1fa4d9`  
		Last Modified: Tue, 06 Dec 2016 22:44:34 GMT  
		Size: 12.2 MB (12184094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbf4c299c8ac0dd09e1d7a88e2883e13ced4d773cff4177b15fed8b5c364ba0`  
		Last Modified: Wed, 07 Dec 2016 19:23:45 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11321c1c71df528de9e4970df6d6f600c337036d443e8ac434db563728fffd07`  
		Last Modified: Wed, 07 Dec 2016 19:23:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0565c464d9ee05bd325e2973cb82c144e661aaf945903a1b47b2011b70605139`  
		Last Modified: Wed, 07 Dec 2016 19:23:46 GMT  
		Size: 7.7 KB (7689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb76d5c346cad53203344603a8bfb04c326d6e0cfdb5390b1f0b4a692b458fe`  
		Last Modified: Wed, 07 Dec 2016 19:53:01 GMT  
		Size: 2.1 MB (2126040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685c124d75ed4cfff602ef4b4b414c7a7bd17bd044824f6f222cfd81ae5b6101`  
		Last Modified: Wed, 07 Dec 2016 19:53:00 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b718e14820ed40ab45f13fd3ebcdde76019e8c6f80614d792119b0d075140ee`  
		Last Modified: Wed, 07 Dec 2016 19:53:02 GMT  
		Size: 7.8 MB (7821782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ade0d758d78973edbc7c5e4486c58023e91cd4a69c9e6b8d64e27443b40e7b`  
		Last Modified: Wed, 07 Dec 2016 19:52:59 GMT  
		Size: 2.9 KB (2936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e332c58ba99ad3cd7765553bd9f6c23f5ab83e4ddaa75e5beb87221ddac4ac1`  
		Last Modified: Wed, 07 Dec 2016 19:53:00 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php7.0-fpm`

```console
$ docker pull wordpress@sha256:36b8b34ddd928d1abce5fa1b39431028282f68477285646e9d2124b54e6ee093
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.0-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.7 MB (163734045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8823343c3d8d300579731f0cbf36b62bf011d093d360d7c120407a0009153b12`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:26:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 06 Dec 2016 21:29:28 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 21:54:52 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 06 Dec 2016 21:54:52 GMT
ENV PHP_VERSION=7.0.13
# Tue, 06 Dec 2016 21:54:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.13.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 21:54:53 GMT
ENV PHP_SHA256=357ba7f93975d7d836abed0852dc3ed96a988af539e87750613294cbee82f1bf PHP_MD5=eb117bf1d1efc99c522f132b265a3402
# Tue, 06 Dec 2016 21:55:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 21:55:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 21:58:26 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:07 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:07 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:09 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 07 Dec 2016 19:12:09 GMT
EXPOSE 9000/tcp
# Wed, 07 Dec 2016 19:12:09 GMT
CMD ["php-fpm"]
# Wed, 07 Dec 2016 19:44:09 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:44:10 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:44:11 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:44:11 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:44:11 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:44:14 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:44:14 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:44:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:44:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:44:16 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c243a3f96daa7f9d67fae3fbdfffc4b2684d89d973c8b2914f0ea14f3fa7f9f1`  
		Last Modified: Tue, 06 Dec 2016 22:44:34 GMT  
		Size: 12.6 MB (12640152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb7426c1b74cb1e3bf89e564f0f9d8d02bf4bb8660bf67e7e810eaf965a4d8b`  
		Last Modified: Tue, 06 Dec 2016 22:44:29 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa901f179399d9b4739755d78a3b4b4b4ed4d15f0b363b7d21e58bdcf1fa4d9`  
		Last Modified: Tue, 06 Dec 2016 22:44:34 GMT  
		Size: 12.2 MB (12184094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbf4c299c8ac0dd09e1d7a88e2883e13ced4d773cff4177b15fed8b5c364ba0`  
		Last Modified: Wed, 07 Dec 2016 19:23:45 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11321c1c71df528de9e4970df6d6f600c337036d443e8ac434db563728fffd07`  
		Last Modified: Wed, 07 Dec 2016 19:23:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0565c464d9ee05bd325e2973cb82c144e661aaf945903a1b47b2011b70605139`  
		Last Modified: Wed, 07 Dec 2016 19:23:46 GMT  
		Size: 7.7 KB (7689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb76d5c346cad53203344603a8bfb04c326d6e0cfdb5390b1f0b4a692b458fe`  
		Last Modified: Wed, 07 Dec 2016 19:53:01 GMT  
		Size: 2.1 MB (2126040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685c124d75ed4cfff602ef4b4b414c7a7bd17bd044824f6f222cfd81ae5b6101`  
		Last Modified: Wed, 07 Dec 2016 19:53:00 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b718e14820ed40ab45f13fd3ebcdde76019e8c6f80614d792119b0d075140ee`  
		Last Modified: Wed, 07 Dec 2016 19:53:02 GMT  
		Size: 7.8 MB (7821782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ade0d758d78973edbc7c5e4486c58023e91cd4a69c9e6b8d64e27443b40e7b`  
		Last Modified: Wed, 07 Dec 2016 19:52:59 GMT  
		Size: 2.9 KB (2936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e332c58ba99ad3cd7765553bd9f6c23f5ab83e4ddaa75e5beb87221ddac4ac1`  
		Last Modified: Wed, 07 Dec 2016 19:53:00 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php7.0-fpm`

```console
$ docker pull wordpress@sha256:36b8b34ddd928d1abce5fa1b39431028282f68477285646e9d2124b54e6ee093
```

-	Platforms:
	-	linux; amd64

### `wordpress:php7.0-fpm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.7 MB (163734045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8823343c3d8d300579731f0cbf36b62bf011d093d360d7c120407a0009153b12`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:26:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 06 Dec 2016 21:29:28 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:29:29 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 21:54:52 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 06 Dec 2016 21:54:52 GMT
ENV PHP_VERSION=7.0.13
# Tue, 06 Dec 2016 21:54:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.13.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 21:54:53 GMT
ENV PHP_SHA256=357ba7f93975d7d836abed0852dc3ed96a988af539e87750613294cbee82f1bf PHP_MD5=eb117bf1d1efc99c522f132b265a3402
# Tue, 06 Dec 2016 21:55:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 21:55:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 21:58:26 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:07 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:07 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:09 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 07 Dec 2016 19:12:09 GMT
EXPOSE 9000/tcp
# Wed, 07 Dec 2016 19:12:09 GMT
CMD ["php-fpm"]
# Wed, 07 Dec 2016 19:44:09 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mysqli opcache
# Wed, 07 Dec 2016 19:44:10 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 19:44:11 GMT
VOLUME [/var/www/html]
# Wed, 07 Dec 2016 19:44:11 GMT
ENV WORDPRESS_VERSION=4.7
# Wed, 07 Dec 2016 19:44:11 GMT
ENV WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020
# Wed, 07 Dec 2016 19:44:14 GMT
RUN set -x 	&& curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz" 	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - 	&& tar -xzf wordpress.tar.gz -C /usr/src/ 	&& rm wordpress.tar.gz 	&& chown -R www-data:www-data /usr/src/wordpress
# Wed, 07 Dec 2016 19:44:14 GMT
COPY file:aa2d7a3c49326bea92b2eea09f438b7f65fe64cd8f33f317b8a7f1d21483538b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:44:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Dec 2016 19:44:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:44:16 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c243a3f96daa7f9d67fae3fbdfffc4b2684d89d973c8b2914f0ea14f3fa7f9f1`  
		Last Modified: Tue, 06 Dec 2016 22:44:34 GMT  
		Size: 12.6 MB (12640152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb7426c1b74cb1e3bf89e564f0f9d8d02bf4bb8660bf67e7e810eaf965a4d8b`  
		Last Modified: Tue, 06 Dec 2016 22:44:29 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa901f179399d9b4739755d78a3b4b4b4ed4d15f0b363b7d21e58bdcf1fa4d9`  
		Last Modified: Tue, 06 Dec 2016 22:44:34 GMT  
		Size: 12.2 MB (12184094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbf4c299c8ac0dd09e1d7a88e2883e13ced4d773cff4177b15fed8b5c364ba0`  
		Last Modified: Wed, 07 Dec 2016 19:23:45 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11321c1c71df528de9e4970df6d6f600c337036d443e8ac434db563728fffd07`  
		Last Modified: Wed, 07 Dec 2016 19:23:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0565c464d9ee05bd325e2973cb82c144e661aaf945903a1b47b2011b70605139`  
		Last Modified: Wed, 07 Dec 2016 19:23:46 GMT  
		Size: 7.7 KB (7689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb76d5c346cad53203344603a8bfb04c326d6e0cfdb5390b1f0b4a692b458fe`  
		Last Modified: Wed, 07 Dec 2016 19:53:01 GMT  
		Size: 2.1 MB (2126040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685c124d75ed4cfff602ef4b4b414c7a7bd17bd044824f6f222cfd81ae5b6101`  
		Last Modified: Wed, 07 Dec 2016 19:53:00 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b718e14820ed40ab45f13fd3ebcdde76019e8c6f80614d792119b0d075140ee`  
		Last Modified: Wed, 07 Dec 2016 19:53:02 GMT  
		Size: 7.8 MB (7821782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ade0d758d78973edbc7c5e4486c58023e91cd4a69c9e6b8d64e27443b40e7b`  
		Last Modified: Wed, 07 Dec 2016 19:52:59 GMT  
		Size: 2.9 KB (2936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e332c58ba99ad3cd7765553bd9f6c23f5ab83e4ddaa75e5beb87221ddac4ac1`  
		Last Modified: Wed, 07 Dec 2016 19:53:00 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
