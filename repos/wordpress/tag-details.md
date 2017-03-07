<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `wordpress`

-	[`wordpress:4.7.3-apache`](#wordpress473-apache)
-	[`wordpress:4.7-apache`](#wordpress47-apache)
-	[`wordpress:4-apache`](#wordpress4-apache)
-	[`wordpress:apache`](#wordpressapache)
-	[`wordpress:4.7.3`](#wordpress473)
-	[`wordpress:4.7`](#wordpress47)
-	[`wordpress:4`](#wordpress4)
-	[`wordpress:latest`](#wordpresslatest)
-	[`wordpress:4.7.3-php5.6-apache`](#wordpress473-php56-apache)
-	[`wordpress:4.7-php5.6-apache`](#wordpress47-php56-apache)
-	[`wordpress:4-php5.6-apache`](#wordpress4-php56-apache)
-	[`wordpress:php5.6-apache`](#wordpressphp56-apache)
-	[`wordpress:4.7.3-php5.6`](#wordpress473-php56)
-	[`wordpress:4.7-php5.6`](#wordpress47-php56)
-	[`wordpress:4-php5.6`](#wordpress4-php56)
-	[`wordpress:php5.6`](#wordpressphp56)
-	[`wordpress:4.7.3-fpm`](#wordpress473-fpm)
-	[`wordpress:4.7-fpm`](#wordpress47-fpm)
-	[`wordpress:4-fpm`](#wordpress4-fpm)
-	[`wordpress:fpm`](#wordpressfpm)
-	[`wordpress:4.7.3-php5.6-fpm`](#wordpress473-php56-fpm)
-	[`wordpress:4.7-php5.6-fpm`](#wordpress47-php56-fpm)
-	[`wordpress:4-php5.6-fpm`](#wordpress4-php56-fpm)
-	[`wordpress:php5.6-fpm`](#wordpressphp56-fpm)
-	[`wordpress:4.7.3-fpm-alpine`](#wordpress473-fpm-alpine)
-	[`wordpress:4.7-fpm-alpine`](#wordpress47-fpm-alpine)
-	[`wordpress:4-fpm-alpine`](#wordpress4-fpm-alpine)
-	[`wordpress:fpm-alpine`](#wordpressfpm-alpine)
-	[`wordpress:4.7.3-php5.6-fpm-alpine`](#wordpress473-php56-fpm-alpine)
-	[`wordpress:4.7-php5.6-fpm-alpine`](#wordpress47-php56-fpm-alpine)
-	[`wordpress:4-php5.6-fpm-alpine`](#wordpress4-php56-fpm-alpine)
-	[`wordpress:php5.6-fpm-alpine`](#wordpressphp56-fpm-alpine)
-	[`wordpress:4.7.3-php7.0-apache`](#wordpress473-php70-apache)
-	[`wordpress:4.7-php7.0-apache`](#wordpress47-php70-apache)
-	[`wordpress:4-php7.0-apache`](#wordpress4-php70-apache)
-	[`wordpress:php7.0-apache`](#wordpressphp70-apache)
-	[`wordpress:4.7.3-php7.0`](#wordpress473-php70)
-	[`wordpress:4.7-php7.0`](#wordpress47-php70)
-	[`wordpress:4-php7.0`](#wordpress4-php70)
-	[`wordpress:php7.0`](#wordpressphp70)
-	[`wordpress:4.7.3-php7.0-fpm`](#wordpress473-php70-fpm)
-	[`wordpress:4.7-php7.0-fpm`](#wordpress47-php70-fpm)
-	[`wordpress:4-php7.0-fpm`](#wordpress4-php70-fpm)
-	[`wordpress:php7.0-fpm`](#wordpressphp70-fpm)
-	[`wordpress:4.7.3-php7.0-fpm-alpine`](#wordpress473-php70-fpm-alpine)
-	[`wordpress:4.7-php7.0-fpm-alpine`](#wordpress47-php70-fpm-alpine)
-	[`wordpress:4-php7.0-fpm-alpine`](#wordpress4-php70-fpm-alpine)
-	[`wordpress:php7.0-fpm-alpine`](#wordpressphp70-fpm-alpine)
-	[`wordpress:4.7.3-php7.1-apache`](#wordpress473-php71-apache)
-	[`wordpress:4.7-php7.1-apache`](#wordpress47-php71-apache)
-	[`wordpress:4-php7.1-apache`](#wordpress4-php71-apache)
-	[`wordpress:php7.1-apache`](#wordpressphp71-apache)
-	[`wordpress:4.7.3-php7.1`](#wordpress473-php71)
-	[`wordpress:4.7-php7.1`](#wordpress47-php71)
-	[`wordpress:4-php7.1`](#wordpress4-php71)
-	[`wordpress:php7.1`](#wordpressphp71)
-	[`wordpress:4.7.3-php7.1-fpm`](#wordpress473-php71-fpm)
-	[`wordpress:4.7-php7.1-fpm`](#wordpress47-php71-fpm)
-	[`wordpress:4-php7.1-fpm`](#wordpress4-php71-fpm)
-	[`wordpress:php7.1-fpm`](#wordpressphp71-fpm)
-	[`wordpress:4.7.3-php7.1-fpm-alpine`](#wordpress473-php71-fpm-alpine)
-	[`wordpress:4.7-php7.1-fpm-alpine`](#wordpress47-php71-fpm-alpine)
-	[`wordpress:4-php7.1-fpm-alpine`](#wordpress4-php71-fpm-alpine)
-	[`wordpress:php7.1-fpm-alpine`](#wordpressphp71-fpm-alpine)

## `wordpress:4.7.3-apache`

```console
$ docker pull wordpress@sha256:200455a3ff4bd410505d8b36dd2b4364378d49567ae1ce7566106f3015b4a7f7
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.3-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163639540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6ae044a51225ec452a714679624e8a7697066c589094b621bcc2eb1aec64e16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:36:03 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:36:04 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:36:05 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:36:06 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:20 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:21 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:22 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836344dc17d73577689d56d55b884bf48b7ebaed30700f3b6a686f2b45bd3d75`  
		Last Modified: Thu, 02 Mar 2017 04:48:49 GMT  
		Size: 2.1 MB (2135313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cafd105c82f5b2e7e0a9696417aa8aa08d37d7e894e08a264d7350f128bfa6`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef842449a96c93d7cf3768839e40e42e3e762966551ba65917fe3381777761f`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e11e3d7bf12eafba67b2a412af2aaf0ffda6bd0fe4b0e6fdf628503cb20b90`  
		Last Modified: Tue, 07 Mar 2017 01:35:40 GMT  
		Size: 7.8 MB (7836682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21717346d12f2dae0bece3333fed850a14e455f4e1d498a0688e1aa2c670bc27`  
		Last Modified: Tue, 07 Mar 2017 01:35:38 GMT  
		Size: 3.1 KB (3129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-apache`

```console
$ docker pull wordpress@sha256:200455a3ff4bd410505d8b36dd2b4364378d49567ae1ce7566106f3015b4a7f7
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163639540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6ae044a51225ec452a714679624e8a7697066c589094b621bcc2eb1aec64e16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:36:03 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:36:04 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:36:05 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:36:06 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:20 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:21 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:22 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836344dc17d73577689d56d55b884bf48b7ebaed30700f3b6a686f2b45bd3d75`  
		Last Modified: Thu, 02 Mar 2017 04:48:49 GMT  
		Size: 2.1 MB (2135313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cafd105c82f5b2e7e0a9696417aa8aa08d37d7e894e08a264d7350f128bfa6`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef842449a96c93d7cf3768839e40e42e3e762966551ba65917fe3381777761f`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e11e3d7bf12eafba67b2a412af2aaf0ffda6bd0fe4b0e6fdf628503cb20b90`  
		Last Modified: Tue, 07 Mar 2017 01:35:40 GMT  
		Size: 7.8 MB (7836682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21717346d12f2dae0bece3333fed850a14e455f4e1d498a0688e1aa2c670bc27`  
		Last Modified: Tue, 07 Mar 2017 01:35:38 GMT  
		Size: 3.1 KB (3129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-apache`

```console
$ docker pull wordpress@sha256:200455a3ff4bd410505d8b36dd2b4364378d49567ae1ce7566106f3015b4a7f7
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163639540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6ae044a51225ec452a714679624e8a7697066c589094b621bcc2eb1aec64e16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:36:03 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:36:04 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:36:05 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:36:06 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:20 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:21 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:22 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836344dc17d73577689d56d55b884bf48b7ebaed30700f3b6a686f2b45bd3d75`  
		Last Modified: Thu, 02 Mar 2017 04:48:49 GMT  
		Size: 2.1 MB (2135313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cafd105c82f5b2e7e0a9696417aa8aa08d37d7e894e08a264d7350f128bfa6`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef842449a96c93d7cf3768839e40e42e3e762966551ba65917fe3381777761f`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e11e3d7bf12eafba67b2a412af2aaf0ffda6bd0fe4b0e6fdf628503cb20b90`  
		Last Modified: Tue, 07 Mar 2017 01:35:40 GMT  
		Size: 7.8 MB (7836682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21717346d12f2dae0bece3333fed850a14e455f4e1d498a0688e1aa2c670bc27`  
		Last Modified: Tue, 07 Mar 2017 01:35:38 GMT  
		Size: 3.1 KB (3129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:apache`

```console
$ docker pull wordpress@sha256:200455a3ff4bd410505d8b36dd2b4364378d49567ae1ce7566106f3015b4a7f7
```

-	Platforms:
	-	linux; amd64

### `wordpress:apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163639540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6ae044a51225ec452a714679624e8a7697066c589094b621bcc2eb1aec64e16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:36:03 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:36:04 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:36:05 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:36:06 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:20 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:21 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:22 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836344dc17d73577689d56d55b884bf48b7ebaed30700f3b6a686f2b45bd3d75`  
		Last Modified: Thu, 02 Mar 2017 04:48:49 GMT  
		Size: 2.1 MB (2135313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cafd105c82f5b2e7e0a9696417aa8aa08d37d7e894e08a264d7350f128bfa6`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef842449a96c93d7cf3768839e40e42e3e762966551ba65917fe3381777761f`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e11e3d7bf12eafba67b2a412af2aaf0ffda6bd0fe4b0e6fdf628503cb20b90`  
		Last Modified: Tue, 07 Mar 2017 01:35:40 GMT  
		Size: 7.8 MB (7836682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21717346d12f2dae0bece3333fed850a14e455f4e1d498a0688e1aa2c670bc27`  
		Last Modified: Tue, 07 Mar 2017 01:35:38 GMT  
		Size: 3.1 KB (3129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.3`

```console
$ docker pull wordpress@sha256:200455a3ff4bd410505d8b36dd2b4364378d49567ae1ce7566106f3015b4a7f7
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163639540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6ae044a51225ec452a714679624e8a7697066c589094b621bcc2eb1aec64e16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:36:03 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:36:04 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:36:05 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:36:06 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:20 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:21 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:22 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836344dc17d73577689d56d55b884bf48b7ebaed30700f3b6a686f2b45bd3d75`  
		Last Modified: Thu, 02 Mar 2017 04:48:49 GMT  
		Size: 2.1 MB (2135313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cafd105c82f5b2e7e0a9696417aa8aa08d37d7e894e08a264d7350f128bfa6`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef842449a96c93d7cf3768839e40e42e3e762966551ba65917fe3381777761f`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e11e3d7bf12eafba67b2a412af2aaf0ffda6bd0fe4b0e6fdf628503cb20b90`  
		Last Modified: Tue, 07 Mar 2017 01:35:40 GMT  
		Size: 7.8 MB (7836682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21717346d12f2dae0bece3333fed850a14e455f4e1d498a0688e1aa2c670bc27`  
		Last Modified: Tue, 07 Mar 2017 01:35:38 GMT  
		Size: 3.1 KB (3129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7`

```console
$ docker pull wordpress@sha256:200455a3ff4bd410505d8b36dd2b4364378d49567ae1ce7566106f3015b4a7f7
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163639540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6ae044a51225ec452a714679624e8a7697066c589094b621bcc2eb1aec64e16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:36:03 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:36:04 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:36:05 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:36:06 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:20 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:21 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:22 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836344dc17d73577689d56d55b884bf48b7ebaed30700f3b6a686f2b45bd3d75`  
		Last Modified: Thu, 02 Mar 2017 04:48:49 GMT  
		Size: 2.1 MB (2135313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cafd105c82f5b2e7e0a9696417aa8aa08d37d7e894e08a264d7350f128bfa6`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef842449a96c93d7cf3768839e40e42e3e762966551ba65917fe3381777761f`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e11e3d7bf12eafba67b2a412af2aaf0ffda6bd0fe4b0e6fdf628503cb20b90`  
		Last Modified: Tue, 07 Mar 2017 01:35:40 GMT  
		Size: 7.8 MB (7836682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21717346d12f2dae0bece3333fed850a14e455f4e1d498a0688e1aa2c670bc27`  
		Last Modified: Tue, 07 Mar 2017 01:35:38 GMT  
		Size: 3.1 KB (3129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4`

```console
$ docker pull wordpress@sha256:200455a3ff4bd410505d8b36dd2b4364378d49567ae1ce7566106f3015b4a7f7
```

-	Platforms:
	-	linux; amd64

### `wordpress:4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163639540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6ae044a51225ec452a714679624e8a7697066c589094b621bcc2eb1aec64e16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:36:03 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:36:04 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:36:05 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:36:06 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:20 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:21 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:22 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836344dc17d73577689d56d55b884bf48b7ebaed30700f3b6a686f2b45bd3d75`  
		Last Modified: Thu, 02 Mar 2017 04:48:49 GMT  
		Size: 2.1 MB (2135313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cafd105c82f5b2e7e0a9696417aa8aa08d37d7e894e08a264d7350f128bfa6`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef842449a96c93d7cf3768839e40e42e3e762966551ba65917fe3381777761f`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e11e3d7bf12eafba67b2a412af2aaf0ffda6bd0fe4b0e6fdf628503cb20b90`  
		Last Modified: Tue, 07 Mar 2017 01:35:40 GMT  
		Size: 7.8 MB (7836682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21717346d12f2dae0bece3333fed850a14e455f4e1d498a0688e1aa2c670bc27`  
		Last Modified: Tue, 07 Mar 2017 01:35:38 GMT  
		Size: 3.1 KB (3129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:latest`

```console
$ docker pull wordpress@sha256:200455a3ff4bd410505d8b36dd2b4364378d49567ae1ce7566106f3015b4a7f7
```

-	Platforms:
	-	linux; amd64

### `wordpress:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163639540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6ae044a51225ec452a714679624e8a7697066c589094b621bcc2eb1aec64e16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:36:03 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:36:04 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:36:05 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:36:06 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:20 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:21 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:22 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836344dc17d73577689d56d55b884bf48b7ebaed30700f3b6a686f2b45bd3d75`  
		Last Modified: Thu, 02 Mar 2017 04:48:49 GMT  
		Size: 2.1 MB (2135313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cafd105c82f5b2e7e0a9696417aa8aa08d37d7e894e08a264d7350f128bfa6`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef842449a96c93d7cf3768839e40e42e3e762966551ba65917fe3381777761f`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e11e3d7bf12eafba67b2a412af2aaf0ffda6bd0fe4b0e6fdf628503cb20b90`  
		Last Modified: Tue, 07 Mar 2017 01:35:40 GMT  
		Size: 7.8 MB (7836682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21717346d12f2dae0bece3333fed850a14e455f4e1d498a0688e1aa2c670bc27`  
		Last Modified: Tue, 07 Mar 2017 01:35:38 GMT  
		Size: 3.1 KB (3129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.3-php5.6-apache`

```console
$ docker pull wordpress@sha256:200455a3ff4bd410505d8b36dd2b4364378d49567ae1ce7566106f3015b4a7f7
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.3-php5.6-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163639540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6ae044a51225ec452a714679624e8a7697066c589094b621bcc2eb1aec64e16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:36:03 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:36:04 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:36:05 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:36:06 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:20 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:21 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:22 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836344dc17d73577689d56d55b884bf48b7ebaed30700f3b6a686f2b45bd3d75`  
		Last Modified: Thu, 02 Mar 2017 04:48:49 GMT  
		Size: 2.1 MB (2135313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cafd105c82f5b2e7e0a9696417aa8aa08d37d7e894e08a264d7350f128bfa6`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef842449a96c93d7cf3768839e40e42e3e762966551ba65917fe3381777761f`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e11e3d7bf12eafba67b2a412af2aaf0ffda6bd0fe4b0e6fdf628503cb20b90`  
		Last Modified: Tue, 07 Mar 2017 01:35:40 GMT  
		Size: 7.8 MB (7836682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21717346d12f2dae0bece3333fed850a14e455f4e1d498a0688e1aa2c670bc27`  
		Last Modified: Tue, 07 Mar 2017 01:35:38 GMT  
		Size: 3.1 KB (3129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php5.6-apache`

```console
$ docker pull wordpress@sha256:200455a3ff4bd410505d8b36dd2b4364378d49567ae1ce7566106f3015b4a7f7
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php5.6-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163639540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6ae044a51225ec452a714679624e8a7697066c589094b621bcc2eb1aec64e16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:36:03 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:36:04 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:36:05 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:36:06 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:20 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:21 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:22 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836344dc17d73577689d56d55b884bf48b7ebaed30700f3b6a686f2b45bd3d75`  
		Last Modified: Thu, 02 Mar 2017 04:48:49 GMT  
		Size: 2.1 MB (2135313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cafd105c82f5b2e7e0a9696417aa8aa08d37d7e894e08a264d7350f128bfa6`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef842449a96c93d7cf3768839e40e42e3e762966551ba65917fe3381777761f`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e11e3d7bf12eafba67b2a412af2aaf0ffda6bd0fe4b0e6fdf628503cb20b90`  
		Last Modified: Tue, 07 Mar 2017 01:35:40 GMT  
		Size: 7.8 MB (7836682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21717346d12f2dae0bece3333fed850a14e455f4e1d498a0688e1aa2c670bc27`  
		Last Modified: Tue, 07 Mar 2017 01:35:38 GMT  
		Size: 3.1 KB (3129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php5.6-apache`

```console
$ docker pull wordpress@sha256:200455a3ff4bd410505d8b36dd2b4364378d49567ae1ce7566106f3015b4a7f7
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php5.6-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163639540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6ae044a51225ec452a714679624e8a7697066c589094b621bcc2eb1aec64e16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:36:03 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:36:04 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:36:05 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:36:06 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:20 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:21 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:22 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836344dc17d73577689d56d55b884bf48b7ebaed30700f3b6a686f2b45bd3d75`  
		Last Modified: Thu, 02 Mar 2017 04:48:49 GMT  
		Size: 2.1 MB (2135313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cafd105c82f5b2e7e0a9696417aa8aa08d37d7e894e08a264d7350f128bfa6`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef842449a96c93d7cf3768839e40e42e3e762966551ba65917fe3381777761f`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e11e3d7bf12eafba67b2a412af2aaf0ffda6bd0fe4b0e6fdf628503cb20b90`  
		Last Modified: Tue, 07 Mar 2017 01:35:40 GMT  
		Size: 7.8 MB (7836682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21717346d12f2dae0bece3333fed850a14e455f4e1d498a0688e1aa2c670bc27`  
		Last Modified: Tue, 07 Mar 2017 01:35:38 GMT  
		Size: 3.1 KB (3129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php5.6-apache`

```console
$ docker pull wordpress@sha256:200455a3ff4bd410505d8b36dd2b4364378d49567ae1ce7566106f3015b4a7f7
```

-	Platforms:
	-	linux; amd64

### `wordpress:php5.6-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163639540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6ae044a51225ec452a714679624e8a7697066c589094b621bcc2eb1aec64e16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:36:03 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:36:04 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:36:05 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:36:06 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:20 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:21 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:22 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836344dc17d73577689d56d55b884bf48b7ebaed30700f3b6a686f2b45bd3d75`  
		Last Modified: Thu, 02 Mar 2017 04:48:49 GMT  
		Size: 2.1 MB (2135313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cafd105c82f5b2e7e0a9696417aa8aa08d37d7e894e08a264d7350f128bfa6`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef842449a96c93d7cf3768839e40e42e3e762966551ba65917fe3381777761f`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e11e3d7bf12eafba67b2a412af2aaf0ffda6bd0fe4b0e6fdf628503cb20b90`  
		Last Modified: Tue, 07 Mar 2017 01:35:40 GMT  
		Size: 7.8 MB (7836682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21717346d12f2dae0bece3333fed850a14e455f4e1d498a0688e1aa2c670bc27`  
		Last Modified: Tue, 07 Mar 2017 01:35:38 GMT  
		Size: 3.1 KB (3129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.3-php5.6`

```console
$ docker pull wordpress@sha256:200455a3ff4bd410505d8b36dd2b4364378d49567ae1ce7566106f3015b4a7f7
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.3-php5.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163639540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6ae044a51225ec452a714679624e8a7697066c589094b621bcc2eb1aec64e16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:36:03 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:36:04 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:36:05 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:36:06 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:20 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:21 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:22 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836344dc17d73577689d56d55b884bf48b7ebaed30700f3b6a686f2b45bd3d75`  
		Last Modified: Thu, 02 Mar 2017 04:48:49 GMT  
		Size: 2.1 MB (2135313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cafd105c82f5b2e7e0a9696417aa8aa08d37d7e894e08a264d7350f128bfa6`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef842449a96c93d7cf3768839e40e42e3e762966551ba65917fe3381777761f`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e11e3d7bf12eafba67b2a412af2aaf0ffda6bd0fe4b0e6fdf628503cb20b90`  
		Last Modified: Tue, 07 Mar 2017 01:35:40 GMT  
		Size: 7.8 MB (7836682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21717346d12f2dae0bece3333fed850a14e455f4e1d498a0688e1aa2c670bc27`  
		Last Modified: Tue, 07 Mar 2017 01:35:38 GMT  
		Size: 3.1 KB (3129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php5.6`

```console
$ docker pull wordpress@sha256:200455a3ff4bd410505d8b36dd2b4364378d49567ae1ce7566106f3015b4a7f7
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php5.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163639540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6ae044a51225ec452a714679624e8a7697066c589094b621bcc2eb1aec64e16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:36:03 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:36:04 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:36:05 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:36:06 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:20 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:21 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:22 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836344dc17d73577689d56d55b884bf48b7ebaed30700f3b6a686f2b45bd3d75`  
		Last Modified: Thu, 02 Mar 2017 04:48:49 GMT  
		Size: 2.1 MB (2135313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cafd105c82f5b2e7e0a9696417aa8aa08d37d7e894e08a264d7350f128bfa6`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef842449a96c93d7cf3768839e40e42e3e762966551ba65917fe3381777761f`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e11e3d7bf12eafba67b2a412af2aaf0ffda6bd0fe4b0e6fdf628503cb20b90`  
		Last Modified: Tue, 07 Mar 2017 01:35:40 GMT  
		Size: 7.8 MB (7836682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21717346d12f2dae0bece3333fed850a14e455f4e1d498a0688e1aa2c670bc27`  
		Last Modified: Tue, 07 Mar 2017 01:35:38 GMT  
		Size: 3.1 KB (3129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php5.6`

```console
$ docker pull wordpress@sha256:200455a3ff4bd410505d8b36dd2b4364378d49567ae1ce7566106f3015b4a7f7
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php5.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163639540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6ae044a51225ec452a714679624e8a7697066c589094b621bcc2eb1aec64e16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:36:03 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:36:04 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:36:05 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:36:06 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:20 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:21 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:22 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836344dc17d73577689d56d55b884bf48b7ebaed30700f3b6a686f2b45bd3d75`  
		Last Modified: Thu, 02 Mar 2017 04:48:49 GMT  
		Size: 2.1 MB (2135313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cafd105c82f5b2e7e0a9696417aa8aa08d37d7e894e08a264d7350f128bfa6`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef842449a96c93d7cf3768839e40e42e3e762966551ba65917fe3381777761f`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e11e3d7bf12eafba67b2a412af2aaf0ffda6bd0fe4b0e6fdf628503cb20b90`  
		Last Modified: Tue, 07 Mar 2017 01:35:40 GMT  
		Size: 7.8 MB (7836682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21717346d12f2dae0bece3333fed850a14e455f4e1d498a0688e1aa2c670bc27`  
		Last Modified: Tue, 07 Mar 2017 01:35:38 GMT  
		Size: 3.1 KB (3129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php5.6`

```console
$ docker pull wordpress@sha256:200455a3ff4bd410505d8b36dd2b4364378d49567ae1ce7566106f3015b4a7f7
```

-	Platforms:
	-	linux; amd64

### `wordpress:php5.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163639540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6ae044a51225ec452a714679624e8a7697066c589094b621bcc2eb1aec64e16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:31:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:31:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:31:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:31:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:34:09 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:34:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:34:10 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:34:10 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:34:11 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:36:03 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:36:04 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:36:05 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:36:06 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:17 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:20 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:21 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:22 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c28aa07dc7a75aaa5021d87da336077270a046bb5d070498c323e181c0630a`  
		Last Modified: Wed, 01 Mar 2017 17:09:21 GMT  
		Size: 12.6 MB (12580207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07a242e36fbf3f16770124c039865fc3dc6621aaf02567de2296223bb4dc319`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d491d166e88a0e03696dd00c27466b5ddf1ebe0d54383dd045a04691963ea60`  
		Last Modified: Wed, 01 Mar 2017 17:09:23 GMT  
		Size: 9.2 MB (9248007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c232330f0f6e3d8deb279fd319282cb9afeadda4c66fe8d03750d90963f0f`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 2.0 KB (2019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a48aec9dc7ba68a8017003c505c48e3a59686bc93b305283cbcd19852deafb`  
		Last Modified: Wed, 01 Mar 2017 17:09:19 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836344dc17d73577689d56d55b884bf48b7ebaed30700f3b6a686f2b45bd3d75`  
		Last Modified: Thu, 02 Mar 2017 04:48:49 GMT  
		Size: 2.1 MB (2135313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cafd105c82f5b2e7e0a9696417aa8aa08d37d7e894e08a264d7350f128bfa6`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef842449a96c93d7cf3768839e40e42e3e762966551ba65917fe3381777761f`  
		Last Modified: Thu, 02 Mar 2017 04:48:48 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e11e3d7bf12eafba67b2a412af2aaf0ffda6bd0fe4b0e6fdf628503cb20b90`  
		Last Modified: Tue, 07 Mar 2017 01:35:40 GMT  
		Size: 7.8 MB (7836682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21717346d12f2dae0bece3333fed850a14e455f4e1d498a0688e1aa2c670bc27`  
		Last Modified: Tue, 07 Mar 2017 01:35:38 GMT  
		Size: 3.1 KB (3129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.3-fpm`

```console
$ docker pull wordpress@sha256:e93c4f0074bcdaf710896d1ad8f4963e96712ddcdec22681a7792afe0182a5a9
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.3-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.3 MB (160258305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3631ad1d45628b0842cd6f630f193576d5daa926c6a1eaacaef30d4e701c0e02`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 28 Feb 2017 17:34:12 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:34:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:34:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:37:35 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:37:36 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:37:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Feb 2017 17:37:37 GMT
EXPOSE 9000/tcp
# Tue, 28 Feb 2017 17:37:37 GMT
CMD ["php-fpm"]
# Wed, 01 Mar 2017 01:36:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:36:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:36:45 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:24 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:25 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:28 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:29 GMT
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
	-	`sha256:e239b35149d1a3733de6e199fda854c574e95444559a25b812e669d07ee141e1`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 12.6 MB (12560638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d03b20d4a892cbe60a39ef33b8d88726826c566775eb3b0e1c029c219e7fcb5`  
		Last Modified: Wed, 01 Mar 2017 17:10:27 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f54f33dc89e32e817cfc86bf2d57efca0cdf102f90c42a041c43ae397d38ce`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 8.8 MB (8763324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c26b483192a1f6912534a4669ca783ca660c6e64b494fed9d403aa9e6c8e2`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41557ade8314d32508764200c82a36b62838d84461c47aa5bdd552dd302a86`  
		Last Modified: Wed, 01 Mar 2017 17:10:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caad4e718aa1be2daf194f28668bee87d96e5b3386ce039a7bc5e5383ae4b4a9`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d3eea190462074973a09464b3ef6c3e1e70114db75a1fb6a4f75338335a009f`  
		Last Modified: Thu, 02 Mar 2017 04:53:48 GMT  
		Size: 2.1 MB (2112872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c8b180b5bc4631afb4f2d9a673cdc621f97e7391287f1cc20f6fe8001f0c3c`  
		Last Modified: Thu, 02 Mar 2017 04:53:47 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6103a4f70398104a68e5bd3ee81a570758418375fda571ff7f15c6d8d343e80f`  
		Last Modified: Tue, 07 Mar 2017 01:40:44 GMT  
		Size: 7.8 MB (7836671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c79d020c763f2ea2a62b33e45d800f0f1863382eb675fd9f5f785f21980565f`  
		Last Modified: Tue, 07 Mar 2017 01:40:42 GMT  
		Size: 3.1 KB (3133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-fpm`

```console
$ docker pull wordpress@sha256:e93c4f0074bcdaf710896d1ad8f4963e96712ddcdec22681a7792afe0182a5a9
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.3 MB (160258305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3631ad1d45628b0842cd6f630f193576d5daa926c6a1eaacaef30d4e701c0e02`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 28 Feb 2017 17:34:12 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:34:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:34:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:37:35 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:37:36 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:37:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Feb 2017 17:37:37 GMT
EXPOSE 9000/tcp
# Tue, 28 Feb 2017 17:37:37 GMT
CMD ["php-fpm"]
# Wed, 01 Mar 2017 01:36:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:36:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:36:45 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:24 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:25 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:28 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:29 GMT
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
	-	`sha256:e239b35149d1a3733de6e199fda854c574e95444559a25b812e669d07ee141e1`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 12.6 MB (12560638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d03b20d4a892cbe60a39ef33b8d88726826c566775eb3b0e1c029c219e7fcb5`  
		Last Modified: Wed, 01 Mar 2017 17:10:27 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f54f33dc89e32e817cfc86bf2d57efca0cdf102f90c42a041c43ae397d38ce`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 8.8 MB (8763324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c26b483192a1f6912534a4669ca783ca660c6e64b494fed9d403aa9e6c8e2`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41557ade8314d32508764200c82a36b62838d84461c47aa5bdd552dd302a86`  
		Last Modified: Wed, 01 Mar 2017 17:10:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caad4e718aa1be2daf194f28668bee87d96e5b3386ce039a7bc5e5383ae4b4a9`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d3eea190462074973a09464b3ef6c3e1e70114db75a1fb6a4f75338335a009f`  
		Last Modified: Thu, 02 Mar 2017 04:53:48 GMT  
		Size: 2.1 MB (2112872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c8b180b5bc4631afb4f2d9a673cdc621f97e7391287f1cc20f6fe8001f0c3c`  
		Last Modified: Thu, 02 Mar 2017 04:53:47 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6103a4f70398104a68e5bd3ee81a570758418375fda571ff7f15c6d8d343e80f`  
		Last Modified: Tue, 07 Mar 2017 01:40:44 GMT  
		Size: 7.8 MB (7836671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c79d020c763f2ea2a62b33e45d800f0f1863382eb675fd9f5f785f21980565f`  
		Last Modified: Tue, 07 Mar 2017 01:40:42 GMT  
		Size: 3.1 KB (3133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-fpm`

```console
$ docker pull wordpress@sha256:e93c4f0074bcdaf710896d1ad8f4963e96712ddcdec22681a7792afe0182a5a9
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.3 MB (160258305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3631ad1d45628b0842cd6f630f193576d5daa926c6a1eaacaef30d4e701c0e02`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 28 Feb 2017 17:34:12 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:34:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:34:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:37:35 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:37:36 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:37:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Feb 2017 17:37:37 GMT
EXPOSE 9000/tcp
# Tue, 28 Feb 2017 17:37:37 GMT
CMD ["php-fpm"]
# Wed, 01 Mar 2017 01:36:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:36:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:36:45 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:24 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:25 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:28 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:29 GMT
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
	-	`sha256:e239b35149d1a3733de6e199fda854c574e95444559a25b812e669d07ee141e1`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 12.6 MB (12560638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d03b20d4a892cbe60a39ef33b8d88726826c566775eb3b0e1c029c219e7fcb5`  
		Last Modified: Wed, 01 Mar 2017 17:10:27 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f54f33dc89e32e817cfc86bf2d57efca0cdf102f90c42a041c43ae397d38ce`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 8.8 MB (8763324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c26b483192a1f6912534a4669ca783ca660c6e64b494fed9d403aa9e6c8e2`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41557ade8314d32508764200c82a36b62838d84461c47aa5bdd552dd302a86`  
		Last Modified: Wed, 01 Mar 2017 17:10:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caad4e718aa1be2daf194f28668bee87d96e5b3386ce039a7bc5e5383ae4b4a9`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d3eea190462074973a09464b3ef6c3e1e70114db75a1fb6a4f75338335a009f`  
		Last Modified: Thu, 02 Mar 2017 04:53:48 GMT  
		Size: 2.1 MB (2112872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c8b180b5bc4631afb4f2d9a673cdc621f97e7391287f1cc20f6fe8001f0c3c`  
		Last Modified: Thu, 02 Mar 2017 04:53:47 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6103a4f70398104a68e5bd3ee81a570758418375fda571ff7f15c6d8d343e80f`  
		Last Modified: Tue, 07 Mar 2017 01:40:44 GMT  
		Size: 7.8 MB (7836671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c79d020c763f2ea2a62b33e45d800f0f1863382eb675fd9f5f785f21980565f`  
		Last Modified: Tue, 07 Mar 2017 01:40:42 GMT  
		Size: 3.1 KB (3133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:fpm`

```console
$ docker pull wordpress@sha256:e93c4f0074bcdaf710896d1ad8f4963e96712ddcdec22681a7792afe0182a5a9
```

-	Platforms:
	-	linux; amd64

### `wordpress:fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.3 MB (160258305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3631ad1d45628b0842cd6f630f193576d5daa926c6a1eaacaef30d4e701c0e02`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 28 Feb 2017 17:34:12 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:34:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:34:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:37:35 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:37:36 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:37:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Feb 2017 17:37:37 GMT
EXPOSE 9000/tcp
# Tue, 28 Feb 2017 17:37:37 GMT
CMD ["php-fpm"]
# Wed, 01 Mar 2017 01:36:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:36:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:36:45 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:24 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:25 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:28 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:29 GMT
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
	-	`sha256:e239b35149d1a3733de6e199fda854c574e95444559a25b812e669d07ee141e1`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 12.6 MB (12560638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d03b20d4a892cbe60a39ef33b8d88726826c566775eb3b0e1c029c219e7fcb5`  
		Last Modified: Wed, 01 Mar 2017 17:10:27 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f54f33dc89e32e817cfc86bf2d57efca0cdf102f90c42a041c43ae397d38ce`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 8.8 MB (8763324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c26b483192a1f6912534a4669ca783ca660c6e64b494fed9d403aa9e6c8e2`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41557ade8314d32508764200c82a36b62838d84461c47aa5bdd552dd302a86`  
		Last Modified: Wed, 01 Mar 2017 17:10:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caad4e718aa1be2daf194f28668bee87d96e5b3386ce039a7bc5e5383ae4b4a9`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d3eea190462074973a09464b3ef6c3e1e70114db75a1fb6a4f75338335a009f`  
		Last Modified: Thu, 02 Mar 2017 04:53:48 GMT  
		Size: 2.1 MB (2112872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c8b180b5bc4631afb4f2d9a673cdc621f97e7391287f1cc20f6fe8001f0c3c`  
		Last Modified: Thu, 02 Mar 2017 04:53:47 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6103a4f70398104a68e5bd3ee81a570758418375fda571ff7f15c6d8d343e80f`  
		Last Modified: Tue, 07 Mar 2017 01:40:44 GMT  
		Size: 7.8 MB (7836671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c79d020c763f2ea2a62b33e45d800f0f1863382eb675fd9f5f785f21980565f`  
		Last Modified: Tue, 07 Mar 2017 01:40:42 GMT  
		Size: 3.1 KB (3133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.3-php5.6-fpm`

```console
$ docker pull wordpress@sha256:e93c4f0074bcdaf710896d1ad8f4963e96712ddcdec22681a7792afe0182a5a9
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.3-php5.6-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.3 MB (160258305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3631ad1d45628b0842cd6f630f193576d5daa926c6a1eaacaef30d4e701c0e02`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 28 Feb 2017 17:34:12 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:34:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:34:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:37:35 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:37:36 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:37:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Feb 2017 17:37:37 GMT
EXPOSE 9000/tcp
# Tue, 28 Feb 2017 17:37:37 GMT
CMD ["php-fpm"]
# Wed, 01 Mar 2017 01:36:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:36:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:36:45 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:24 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:25 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:28 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:29 GMT
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
	-	`sha256:e239b35149d1a3733de6e199fda854c574e95444559a25b812e669d07ee141e1`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 12.6 MB (12560638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d03b20d4a892cbe60a39ef33b8d88726826c566775eb3b0e1c029c219e7fcb5`  
		Last Modified: Wed, 01 Mar 2017 17:10:27 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f54f33dc89e32e817cfc86bf2d57efca0cdf102f90c42a041c43ae397d38ce`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 8.8 MB (8763324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c26b483192a1f6912534a4669ca783ca660c6e64b494fed9d403aa9e6c8e2`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41557ade8314d32508764200c82a36b62838d84461c47aa5bdd552dd302a86`  
		Last Modified: Wed, 01 Mar 2017 17:10:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caad4e718aa1be2daf194f28668bee87d96e5b3386ce039a7bc5e5383ae4b4a9`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d3eea190462074973a09464b3ef6c3e1e70114db75a1fb6a4f75338335a009f`  
		Last Modified: Thu, 02 Mar 2017 04:53:48 GMT  
		Size: 2.1 MB (2112872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c8b180b5bc4631afb4f2d9a673cdc621f97e7391287f1cc20f6fe8001f0c3c`  
		Last Modified: Thu, 02 Mar 2017 04:53:47 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6103a4f70398104a68e5bd3ee81a570758418375fda571ff7f15c6d8d343e80f`  
		Last Modified: Tue, 07 Mar 2017 01:40:44 GMT  
		Size: 7.8 MB (7836671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c79d020c763f2ea2a62b33e45d800f0f1863382eb675fd9f5f785f21980565f`  
		Last Modified: Tue, 07 Mar 2017 01:40:42 GMT  
		Size: 3.1 KB (3133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php5.6-fpm`

```console
$ docker pull wordpress@sha256:e93c4f0074bcdaf710896d1ad8f4963e96712ddcdec22681a7792afe0182a5a9
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php5.6-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.3 MB (160258305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3631ad1d45628b0842cd6f630f193576d5daa926c6a1eaacaef30d4e701c0e02`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 28 Feb 2017 17:34:12 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:34:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:34:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:37:35 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:37:36 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:37:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Feb 2017 17:37:37 GMT
EXPOSE 9000/tcp
# Tue, 28 Feb 2017 17:37:37 GMT
CMD ["php-fpm"]
# Wed, 01 Mar 2017 01:36:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:36:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:36:45 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:24 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:25 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:28 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:29 GMT
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
	-	`sha256:e239b35149d1a3733de6e199fda854c574e95444559a25b812e669d07ee141e1`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 12.6 MB (12560638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d03b20d4a892cbe60a39ef33b8d88726826c566775eb3b0e1c029c219e7fcb5`  
		Last Modified: Wed, 01 Mar 2017 17:10:27 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f54f33dc89e32e817cfc86bf2d57efca0cdf102f90c42a041c43ae397d38ce`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 8.8 MB (8763324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c26b483192a1f6912534a4669ca783ca660c6e64b494fed9d403aa9e6c8e2`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41557ade8314d32508764200c82a36b62838d84461c47aa5bdd552dd302a86`  
		Last Modified: Wed, 01 Mar 2017 17:10:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caad4e718aa1be2daf194f28668bee87d96e5b3386ce039a7bc5e5383ae4b4a9`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d3eea190462074973a09464b3ef6c3e1e70114db75a1fb6a4f75338335a009f`  
		Last Modified: Thu, 02 Mar 2017 04:53:48 GMT  
		Size: 2.1 MB (2112872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c8b180b5bc4631afb4f2d9a673cdc621f97e7391287f1cc20f6fe8001f0c3c`  
		Last Modified: Thu, 02 Mar 2017 04:53:47 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6103a4f70398104a68e5bd3ee81a570758418375fda571ff7f15c6d8d343e80f`  
		Last Modified: Tue, 07 Mar 2017 01:40:44 GMT  
		Size: 7.8 MB (7836671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c79d020c763f2ea2a62b33e45d800f0f1863382eb675fd9f5f785f21980565f`  
		Last Modified: Tue, 07 Mar 2017 01:40:42 GMT  
		Size: 3.1 KB (3133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php5.6-fpm`

```console
$ docker pull wordpress@sha256:e93c4f0074bcdaf710896d1ad8f4963e96712ddcdec22681a7792afe0182a5a9
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php5.6-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.3 MB (160258305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3631ad1d45628b0842cd6f630f193576d5daa926c6a1eaacaef30d4e701c0e02`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 28 Feb 2017 17:34:12 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:34:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:34:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:37:35 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:37:36 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:37:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Feb 2017 17:37:37 GMT
EXPOSE 9000/tcp
# Tue, 28 Feb 2017 17:37:37 GMT
CMD ["php-fpm"]
# Wed, 01 Mar 2017 01:36:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:36:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:36:45 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:24 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:25 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:28 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:29 GMT
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
	-	`sha256:e239b35149d1a3733de6e199fda854c574e95444559a25b812e669d07ee141e1`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 12.6 MB (12560638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d03b20d4a892cbe60a39ef33b8d88726826c566775eb3b0e1c029c219e7fcb5`  
		Last Modified: Wed, 01 Mar 2017 17:10:27 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f54f33dc89e32e817cfc86bf2d57efca0cdf102f90c42a041c43ae397d38ce`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 8.8 MB (8763324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c26b483192a1f6912534a4669ca783ca660c6e64b494fed9d403aa9e6c8e2`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41557ade8314d32508764200c82a36b62838d84461c47aa5bdd552dd302a86`  
		Last Modified: Wed, 01 Mar 2017 17:10:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caad4e718aa1be2daf194f28668bee87d96e5b3386ce039a7bc5e5383ae4b4a9`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d3eea190462074973a09464b3ef6c3e1e70114db75a1fb6a4f75338335a009f`  
		Last Modified: Thu, 02 Mar 2017 04:53:48 GMT  
		Size: 2.1 MB (2112872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c8b180b5bc4631afb4f2d9a673cdc621f97e7391287f1cc20f6fe8001f0c3c`  
		Last Modified: Thu, 02 Mar 2017 04:53:47 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6103a4f70398104a68e5bd3ee81a570758418375fda571ff7f15c6d8d343e80f`  
		Last Modified: Tue, 07 Mar 2017 01:40:44 GMT  
		Size: 7.8 MB (7836671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c79d020c763f2ea2a62b33e45d800f0f1863382eb675fd9f5f785f21980565f`  
		Last Modified: Tue, 07 Mar 2017 01:40:42 GMT  
		Size: 3.1 KB (3133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php5.6-fpm`

```console
$ docker pull wordpress@sha256:e93c4f0074bcdaf710896d1ad8f4963e96712ddcdec22681a7792afe0182a5a9
```

-	Platforms:
	-	linux; amd64

### `wordpress:php5.6-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.3 MB (160258305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3631ad1d45628b0842cd6f630f193576d5daa926c6a1eaacaef30d4e701c0e02`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 28 Feb 2017 17:34:12 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_VERSION=5.6.30
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:34:13 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 28 Feb 2017 17:34:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:34:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:34 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:37:35 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:37:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:37:36 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:37:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Feb 2017 17:37:37 GMT
EXPOSE 9000/tcp
# Tue, 28 Feb 2017 17:37:37 GMT
CMD ["php-fpm"]
# Wed, 01 Mar 2017 01:36:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:36:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:36:45 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:24 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:25 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:27 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:28 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:29 GMT
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
	-	`sha256:e239b35149d1a3733de6e199fda854c574e95444559a25b812e669d07ee141e1`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 12.6 MB (12560638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d03b20d4a892cbe60a39ef33b8d88726826c566775eb3b0e1c029c219e7fcb5`  
		Last Modified: Wed, 01 Mar 2017 17:10:27 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f54f33dc89e32e817cfc86bf2d57efca0cdf102f90c42a041c43ae397d38ce`  
		Last Modified: Wed, 01 Mar 2017 17:10:28 GMT  
		Size: 8.8 MB (8763324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c26b483192a1f6912534a4669ca783ca660c6e64b494fed9d403aa9e6c8e2`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41557ade8314d32508764200c82a36b62838d84461c47aa5bdd552dd302a86`  
		Last Modified: Wed, 01 Mar 2017 17:10:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caad4e718aa1be2daf194f28668bee87d96e5b3386ce039a7bc5e5383ae4b4a9`  
		Last Modified: Wed, 01 Mar 2017 17:10:25 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d3eea190462074973a09464b3ef6c3e1e70114db75a1fb6a4f75338335a009f`  
		Last Modified: Thu, 02 Mar 2017 04:53:48 GMT  
		Size: 2.1 MB (2112872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c8b180b5bc4631afb4f2d9a673cdc621f97e7391287f1cc20f6fe8001f0c3c`  
		Last Modified: Thu, 02 Mar 2017 04:53:47 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6103a4f70398104a68e5bd3ee81a570758418375fda571ff7f15c6d8d343e80f`  
		Last Modified: Tue, 07 Mar 2017 01:40:44 GMT  
		Size: 7.8 MB (7836671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c79d020c763f2ea2a62b33e45d800f0f1863382eb675fd9f5f785f21980565f`  
		Last Modified: Tue, 07 Mar 2017 01:40:42 GMT  
		Size: 3.1 KB (3133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.3-fpm-alpine`

```console
$ docker pull wordpress@sha256:3408c63cba3703a38573078e39aa99efab0686bc95345487b7316a90e63a3342
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.3-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35109266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24b897b0834dedc2ad1fb63c993b7ba312268d5467f8fa0e4dce286f1165da2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:42:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 22:42:36 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 03 Mar 2017 22:42:36 GMT
ENV PHP_VERSION=5.6.30
# Fri, 03 Mar 2017 22:42:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 22:42:37 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 03 Mar 2017 22:42:42 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 22:42:43 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 22:45:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 22:45:59 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 03 Mar 2017 22:45:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 22:45:59 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 22:46:00 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 03 Mar 2017 22:46:01 GMT
EXPOSE 9000/tcp
# Fri, 03 Mar 2017 22:46:01 GMT
CMD ["php-fpm"]
# Fri, 03 Mar 2017 23:50:00 GMT
RUN apk add --no-cache 		bash 		sed
# Fri, 03 Mar 2017 23:50:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 03 Mar 2017 23:50:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 03 Mar 2017 23:50:30 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:31 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:31 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:34 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:35 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:36 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7770354fce78faaac6e3d29cc16167871d16e08bc01d3736afde8dea9f31de`  
		Last Modified: Sat, 04 Mar 2017 06:18:35 GMT  
		Size: 12.6 MB (12624834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be277856d20038f1ef7742741ad126be133ab9d6439c8fa3b1ea63a1e4c5e8a3`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffa80d6c3a18602760fdedd728ab24a46c25e046757707b2fd2f0d22623df74`  
		Last Modified: Sat, 04 Mar 2017 06:18:46 GMT  
		Size: 10.0 MB (9960478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd20be2d28d515313586d8617bbf454b9359dc5483476d17a923f9e2e0ad7d3`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 2.0 KB (2006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8275ff24d934ddd5b2d3d2487ec2bc02b749cc3e8f3d863b1ff721a49efd673`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f0cf74515dc33e3ea2dd0a4abe489cc1c441a7ffa44dd99d3747da48b89c4f`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 7.6 KB (7614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c18460ecdd520be7c5f0007fa2ea70d1ac01d18da4906646bc90fe014e9e60`  
		Last Modified: Sat, 04 Mar 2017 06:37:12 GMT  
		Size: 590.0 KB (589989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93e86bf428aeedcdc90cc0e52476d37593d67e877785c04281302f8d3a7eb9b`  
		Last Modified: Sat, 04 Mar 2017 06:37:12 GMT  
		Size: 709.1 KB (709054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537bb6365edaed21a178111e7a94976eaff0f107be677159e83fbfcf5c5eb0de`  
		Last Modified: Sat, 04 Mar 2017 06:37:11 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0831bd764cd598015c24be848a9e3a8e3e48108c930cf4c06f72c24e2637ae`  
		Last Modified: Tue, 07 Mar 2017 01:43:18 GMT  
		Size: 7.8 MB (7836836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d7dfdfabd2a8a1acb4f6a7bf8a8df4784dcef8cf0107ddf24e036946e312fc`  
		Last Modified: Tue, 07 Mar 2017 01:43:15 GMT  
		Size: 3.1 KB (3124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-fpm-alpine`

```console
$ docker pull wordpress@sha256:3408c63cba3703a38573078e39aa99efab0686bc95345487b7316a90e63a3342
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35109266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24b897b0834dedc2ad1fb63c993b7ba312268d5467f8fa0e4dce286f1165da2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:42:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 22:42:36 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 03 Mar 2017 22:42:36 GMT
ENV PHP_VERSION=5.6.30
# Fri, 03 Mar 2017 22:42:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 22:42:37 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 03 Mar 2017 22:42:42 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 22:42:43 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 22:45:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 22:45:59 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 03 Mar 2017 22:45:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 22:45:59 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 22:46:00 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 03 Mar 2017 22:46:01 GMT
EXPOSE 9000/tcp
# Fri, 03 Mar 2017 22:46:01 GMT
CMD ["php-fpm"]
# Fri, 03 Mar 2017 23:50:00 GMT
RUN apk add --no-cache 		bash 		sed
# Fri, 03 Mar 2017 23:50:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 03 Mar 2017 23:50:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 03 Mar 2017 23:50:30 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:31 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:31 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:34 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:35 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:36 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7770354fce78faaac6e3d29cc16167871d16e08bc01d3736afde8dea9f31de`  
		Last Modified: Sat, 04 Mar 2017 06:18:35 GMT  
		Size: 12.6 MB (12624834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be277856d20038f1ef7742741ad126be133ab9d6439c8fa3b1ea63a1e4c5e8a3`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffa80d6c3a18602760fdedd728ab24a46c25e046757707b2fd2f0d22623df74`  
		Last Modified: Sat, 04 Mar 2017 06:18:46 GMT  
		Size: 10.0 MB (9960478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd20be2d28d515313586d8617bbf454b9359dc5483476d17a923f9e2e0ad7d3`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 2.0 KB (2006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8275ff24d934ddd5b2d3d2487ec2bc02b749cc3e8f3d863b1ff721a49efd673`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f0cf74515dc33e3ea2dd0a4abe489cc1c441a7ffa44dd99d3747da48b89c4f`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 7.6 KB (7614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c18460ecdd520be7c5f0007fa2ea70d1ac01d18da4906646bc90fe014e9e60`  
		Last Modified: Sat, 04 Mar 2017 06:37:12 GMT  
		Size: 590.0 KB (589989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93e86bf428aeedcdc90cc0e52476d37593d67e877785c04281302f8d3a7eb9b`  
		Last Modified: Sat, 04 Mar 2017 06:37:12 GMT  
		Size: 709.1 KB (709054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537bb6365edaed21a178111e7a94976eaff0f107be677159e83fbfcf5c5eb0de`  
		Last Modified: Sat, 04 Mar 2017 06:37:11 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0831bd764cd598015c24be848a9e3a8e3e48108c930cf4c06f72c24e2637ae`  
		Last Modified: Tue, 07 Mar 2017 01:43:18 GMT  
		Size: 7.8 MB (7836836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d7dfdfabd2a8a1acb4f6a7bf8a8df4784dcef8cf0107ddf24e036946e312fc`  
		Last Modified: Tue, 07 Mar 2017 01:43:15 GMT  
		Size: 3.1 KB (3124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-fpm-alpine`

```console
$ docker pull wordpress@sha256:3408c63cba3703a38573078e39aa99efab0686bc95345487b7316a90e63a3342
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35109266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24b897b0834dedc2ad1fb63c993b7ba312268d5467f8fa0e4dce286f1165da2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:42:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 22:42:36 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 03 Mar 2017 22:42:36 GMT
ENV PHP_VERSION=5.6.30
# Fri, 03 Mar 2017 22:42:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 22:42:37 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 03 Mar 2017 22:42:42 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 22:42:43 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 22:45:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 22:45:59 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 03 Mar 2017 22:45:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 22:45:59 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 22:46:00 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 03 Mar 2017 22:46:01 GMT
EXPOSE 9000/tcp
# Fri, 03 Mar 2017 22:46:01 GMT
CMD ["php-fpm"]
# Fri, 03 Mar 2017 23:50:00 GMT
RUN apk add --no-cache 		bash 		sed
# Fri, 03 Mar 2017 23:50:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 03 Mar 2017 23:50:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 03 Mar 2017 23:50:30 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:31 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:31 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:34 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:35 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:36 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7770354fce78faaac6e3d29cc16167871d16e08bc01d3736afde8dea9f31de`  
		Last Modified: Sat, 04 Mar 2017 06:18:35 GMT  
		Size: 12.6 MB (12624834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be277856d20038f1ef7742741ad126be133ab9d6439c8fa3b1ea63a1e4c5e8a3`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffa80d6c3a18602760fdedd728ab24a46c25e046757707b2fd2f0d22623df74`  
		Last Modified: Sat, 04 Mar 2017 06:18:46 GMT  
		Size: 10.0 MB (9960478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd20be2d28d515313586d8617bbf454b9359dc5483476d17a923f9e2e0ad7d3`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 2.0 KB (2006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8275ff24d934ddd5b2d3d2487ec2bc02b749cc3e8f3d863b1ff721a49efd673`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f0cf74515dc33e3ea2dd0a4abe489cc1c441a7ffa44dd99d3747da48b89c4f`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 7.6 KB (7614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c18460ecdd520be7c5f0007fa2ea70d1ac01d18da4906646bc90fe014e9e60`  
		Last Modified: Sat, 04 Mar 2017 06:37:12 GMT  
		Size: 590.0 KB (589989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93e86bf428aeedcdc90cc0e52476d37593d67e877785c04281302f8d3a7eb9b`  
		Last Modified: Sat, 04 Mar 2017 06:37:12 GMT  
		Size: 709.1 KB (709054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537bb6365edaed21a178111e7a94976eaff0f107be677159e83fbfcf5c5eb0de`  
		Last Modified: Sat, 04 Mar 2017 06:37:11 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0831bd764cd598015c24be848a9e3a8e3e48108c930cf4c06f72c24e2637ae`  
		Last Modified: Tue, 07 Mar 2017 01:43:18 GMT  
		Size: 7.8 MB (7836836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d7dfdfabd2a8a1acb4f6a7bf8a8df4784dcef8cf0107ddf24e036946e312fc`  
		Last Modified: Tue, 07 Mar 2017 01:43:15 GMT  
		Size: 3.1 KB (3124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:fpm-alpine`

```console
$ docker pull wordpress@sha256:3408c63cba3703a38573078e39aa99efab0686bc95345487b7316a90e63a3342
```

-	Platforms:
	-	linux; amd64

### `wordpress:fpm-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35109266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24b897b0834dedc2ad1fb63c993b7ba312268d5467f8fa0e4dce286f1165da2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:42:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 22:42:36 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 03 Mar 2017 22:42:36 GMT
ENV PHP_VERSION=5.6.30
# Fri, 03 Mar 2017 22:42:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 22:42:37 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 03 Mar 2017 22:42:42 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 22:42:43 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 22:45:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 22:45:59 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 03 Mar 2017 22:45:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 22:45:59 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 22:46:00 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 03 Mar 2017 22:46:01 GMT
EXPOSE 9000/tcp
# Fri, 03 Mar 2017 22:46:01 GMT
CMD ["php-fpm"]
# Fri, 03 Mar 2017 23:50:00 GMT
RUN apk add --no-cache 		bash 		sed
# Fri, 03 Mar 2017 23:50:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 03 Mar 2017 23:50:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 03 Mar 2017 23:50:30 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:31 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:31 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:34 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:35 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:36 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7770354fce78faaac6e3d29cc16167871d16e08bc01d3736afde8dea9f31de`  
		Last Modified: Sat, 04 Mar 2017 06:18:35 GMT  
		Size: 12.6 MB (12624834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be277856d20038f1ef7742741ad126be133ab9d6439c8fa3b1ea63a1e4c5e8a3`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffa80d6c3a18602760fdedd728ab24a46c25e046757707b2fd2f0d22623df74`  
		Last Modified: Sat, 04 Mar 2017 06:18:46 GMT  
		Size: 10.0 MB (9960478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd20be2d28d515313586d8617bbf454b9359dc5483476d17a923f9e2e0ad7d3`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 2.0 KB (2006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8275ff24d934ddd5b2d3d2487ec2bc02b749cc3e8f3d863b1ff721a49efd673`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f0cf74515dc33e3ea2dd0a4abe489cc1c441a7ffa44dd99d3747da48b89c4f`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 7.6 KB (7614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c18460ecdd520be7c5f0007fa2ea70d1ac01d18da4906646bc90fe014e9e60`  
		Last Modified: Sat, 04 Mar 2017 06:37:12 GMT  
		Size: 590.0 KB (589989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93e86bf428aeedcdc90cc0e52476d37593d67e877785c04281302f8d3a7eb9b`  
		Last Modified: Sat, 04 Mar 2017 06:37:12 GMT  
		Size: 709.1 KB (709054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537bb6365edaed21a178111e7a94976eaff0f107be677159e83fbfcf5c5eb0de`  
		Last Modified: Sat, 04 Mar 2017 06:37:11 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0831bd764cd598015c24be848a9e3a8e3e48108c930cf4c06f72c24e2637ae`  
		Last Modified: Tue, 07 Mar 2017 01:43:18 GMT  
		Size: 7.8 MB (7836836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d7dfdfabd2a8a1acb4f6a7bf8a8df4784dcef8cf0107ddf24e036946e312fc`  
		Last Modified: Tue, 07 Mar 2017 01:43:15 GMT  
		Size: 3.1 KB (3124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.3-php5.6-fpm-alpine`

```console
$ docker pull wordpress@sha256:3408c63cba3703a38573078e39aa99efab0686bc95345487b7316a90e63a3342
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.3-php5.6-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35109266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24b897b0834dedc2ad1fb63c993b7ba312268d5467f8fa0e4dce286f1165da2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:42:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 22:42:36 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 03 Mar 2017 22:42:36 GMT
ENV PHP_VERSION=5.6.30
# Fri, 03 Mar 2017 22:42:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 22:42:37 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 03 Mar 2017 22:42:42 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 22:42:43 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 22:45:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 22:45:59 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 03 Mar 2017 22:45:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 22:45:59 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 22:46:00 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 03 Mar 2017 22:46:01 GMT
EXPOSE 9000/tcp
# Fri, 03 Mar 2017 22:46:01 GMT
CMD ["php-fpm"]
# Fri, 03 Mar 2017 23:50:00 GMT
RUN apk add --no-cache 		bash 		sed
# Fri, 03 Mar 2017 23:50:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 03 Mar 2017 23:50:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 03 Mar 2017 23:50:30 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:31 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:31 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:34 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:35 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:36 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7770354fce78faaac6e3d29cc16167871d16e08bc01d3736afde8dea9f31de`  
		Last Modified: Sat, 04 Mar 2017 06:18:35 GMT  
		Size: 12.6 MB (12624834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be277856d20038f1ef7742741ad126be133ab9d6439c8fa3b1ea63a1e4c5e8a3`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffa80d6c3a18602760fdedd728ab24a46c25e046757707b2fd2f0d22623df74`  
		Last Modified: Sat, 04 Mar 2017 06:18:46 GMT  
		Size: 10.0 MB (9960478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd20be2d28d515313586d8617bbf454b9359dc5483476d17a923f9e2e0ad7d3`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 2.0 KB (2006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8275ff24d934ddd5b2d3d2487ec2bc02b749cc3e8f3d863b1ff721a49efd673`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f0cf74515dc33e3ea2dd0a4abe489cc1c441a7ffa44dd99d3747da48b89c4f`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 7.6 KB (7614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c18460ecdd520be7c5f0007fa2ea70d1ac01d18da4906646bc90fe014e9e60`  
		Last Modified: Sat, 04 Mar 2017 06:37:12 GMT  
		Size: 590.0 KB (589989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93e86bf428aeedcdc90cc0e52476d37593d67e877785c04281302f8d3a7eb9b`  
		Last Modified: Sat, 04 Mar 2017 06:37:12 GMT  
		Size: 709.1 KB (709054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537bb6365edaed21a178111e7a94976eaff0f107be677159e83fbfcf5c5eb0de`  
		Last Modified: Sat, 04 Mar 2017 06:37:11 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0831bd764cd598015c24be848a9e3a8e3e48108c930cf4c06f72c24e2637ae`  
		Last Modified: Tue, 07 Mar 2017 01:43:18 GMT  
		Size: 7.8 MB (7836836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d7dfdfabd2a8a1acb4f6a7bf8a8df4784dcef8cf0107ddf24e036946e312fc`  
		Last Modified: Tue, 07 Mar 2017 01:43:15 GMT  
		Size: 3.1 KB (3124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php5.6-fpm-alpine`

```console
$ docker pull wordpress@sha256:3408c63cba3703a38573078e39aa99efab0686bc95345487b7316a90e63a3342
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php5.6-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35109266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24b897b0834dedc2ad1fb63c993b7ba312268d5467f8fa0e4dce286f1165da2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:42:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 22:42:36 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 03 Mar 2017 22:42:36 GMT
ENV PHP_VERSION=5.6.30
# Fri, 03 Mar 2017 22:42:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 22:42:37 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 03 Mar 2017 22:42:42 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 22:42:43 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 22:45:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 22:45:59 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 03 Mar 2017 22:45:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 22:45:59 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 22:46:00 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 03 Mar 2017 22:46:01 GMT
EXPOSE 9000/tcp
# Fri, 03 Mar 2017 22:46:01 GMT
CMD ["php-fpm"]
# Fri, 03 Mar 2017 23:50:00 GMT
RUN apk add --no-cache 		bash 		sed
# Fri, 03 Mar 2017 23:50:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 03 Mar 2017 23:50:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 03 Mar 2017 23:50:30 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:31 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:31 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:34 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:35 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:36 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7770354fce78faaac6e3d29cc16167871d16e08bc01d3736afde8dea9f31de`  
		Last Modified: Sat, 04 Mar 2017 06:18:35 GMT  
		Size: 12.6 MB (12624834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be277856d20038f1ef7742741ad126be133ab9d6439c8fa3b1ea63a1e4c5e8a3`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffa80d6c3a18602760fdedd728ab24a46c25e046757707b2fd2f0d22623df74`  
		Last Modified: Sat, 04 Mar 2017 06:18:46 GMT  
		Size: 10.0 MB (9960478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd20be2d28d515313586d8617bbf454b9359dc5483476d17a923f9e2e0ad7d3`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 2.0 KB (2006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8275ff24d934ddd5b2d3d2487ec2bc02b749cc3e8f3d863b1ff721a49efd673`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f0cf74515dc33e3ea2dd0a4abe489cc1c441a7ffa44dd99d3747da48b89c4f`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 7.6 KB (7614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c18460ecdd520be7c5f0007fa2ea70d1ac01d18da4906646bc90fe014e9e60`  
		Last Modified: Sat, 04 Mar 2017 06:37:12 GMT  
		Size: 590.0 KB (589989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93e86bf428aeedcdc90cc0e52476d37593d67e877785c04281302f8d3a7eb9b`  
		Last Modified: Sat, 04 Mar 2017 06:37:12 GMT  
		Size: 709.1 KB (709054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537bb6365edaed21a178111e7a94976eaff0f107be677159e83fbfcf5c5eb0de`  
		Last Modified: Sat, 04 Mar 2017 06:37:11 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0831bd764cd598015c24be848a9e3a8e3e48108c930cf4c06f72c24e2637ae`  
		Last Modified: Tue, 07 Mar 2017 01:43:18 GMT  
		Size: 7.8 MB (7836836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d7dfdfabd2a8a1acb4f6a7bf8a8df4784dcef8cf0107ddf24e036946e312fc`  
		Last Modified: Tue, 07 Mar 2017 01:43:15 GMT  
		Size: 3.1 KB (3124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php5.6-fpm-alpine`

```console
$ docker pull wordpress@sha256:3408c63cba3703a38573078e39aa99efab0686bc95345487b7316a90e63a3342
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php5.6-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35109266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24b897b0834dedc2ad1fb63c993b7ba312268d5467f8fa0e4dce286f1165da2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:42:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 22:42:36 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 03 Mar 2017 22:42:36 GMT
ENV PHP_VERSION=5.6.30
# Fri, 03 Mar 2017 22:42:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 22:42:37 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 03 Mar 2017 22:42:42 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 22:42:43 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 22:45:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 22:45:59 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 03 Mar 2017 22:45:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 22:45:59 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 22:46:00 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 03 Mar 2017 22:46:01 GMT
EXPOSE 9000/tcp
# Fri, 03 Mar 2017 22:46:01 GMT
CMD ["php-fpm"]
# Fri, 03 Mar 2017 23:50:00 GMT
RUN apk add --no-cache 		bash 		sed
# Fri, 03 Mar 2017 23:50:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 03 Mar 2017 23:50:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 03 Mar 2017 23:50:30 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:31 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:31 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:34 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:35 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:36 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7770354fce78faaac6e3d29cc16167871d16e08bc01d3736afde8dea9f31de`  
		Last Modified: Sat, 04 Mar 2017 06:18:35 GMT  
		Size: 12.6 MB (12624834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be277856d20038f1ef7742741ad126be133ab9d6439c8fa3b1ea63a1e4c5e8a3`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffa80d6c3a18602760fdedd728ab24a46c25e046757707b2fd2f0d22623df74`  
		Last Modified: Sat, 04 Mar 2017 06:18:46 GMT  
		Size: 10.0 MB (9960478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd20be2d28d515313586d8617bbf454b9359dc5483476d17a923f9e2e0ad7d3`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 2.0 KB (2006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8275ff24d934ddd5b2d3d2487ec2bc02b749cc3e8f3d863b1ff721a49efd673`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f0cf74515dc33e3ea2dd0a4abe489cc1c441a7ffa44dd99d3747da48b89c4f`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 7.6 KB (7614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c18460ecdd520be7c5f0007fa2ea70d1ac01d18da4906646bc90fe014e9e60`  
		Last Modified: Sat, 04 Mar 2017 06:37:12 GMT  
		Size: 590.0 KB (589989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93e86bf428aeedcdc90cc0e52476d37593d67e877785c04281302f8d3a7eb9b`  
		Last Modified: Sat, 04 Mar 2017 06:37:12 GMT  
		Size: 709.1 KB (709054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537bb6365edaed21a178111e7a94976eaff0f107be677159e83fbfcf5c5eb0de`  
		Last Modified: Sat, 04 Mar 2017 06:37:11 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0831bd764cd598015c24be848a9e3a8e3e48108c930cf4c06f72c24e2637ae`  
		Last Modified: Tue, 07 Mar 2017 01:43:18 GMT  
		Size: 7.8 MB (7836836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d7dfdfabd2a8a1acb4f6a7bf8a8df4784dcef8cf0107ddf24e036946e312fc`  
		Last Modified: Tue, 07 Mar 2017 01:43:15 GMT  
		Size: 3.1 KB (3124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php5.6-fpm-alpine`

```console
$ docker pull wordpress@sha256:3408c63cba3703a38573078e39aa99efab0686bc95345487b7316a90e63a3342
```

-	Platforms:
	-	linux; amd64

### `wordpress:php5.6-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35109266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24b897b0834dedc2ad1fb63c993b7ba312268d5467f8fa0e4dce286f1165da2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:42:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 22:42:36 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 03 Mar 2017 22:42:36 GMT
ENV PHP_VERSION=5.6.30
# Fri, 03 Mar 2017 22:42:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 22:42:37 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 03 Mar 2017 22:42:42 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 22:42:43 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 22:45:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 22:45:59 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 03 Mar 2017 22:45:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 22:45:59 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 22:46:00 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 03 Mar 2017 22:46:01 GMT
EXPOSE 9000/tcp
# Fri, 03 Mar 2017 22:46:01 GMT
CMD ["php-fpm"]
# Fri, 03 Mar 2017 23:50:00 GMT
RUN apk add --no-cache 		bash 		sed
# Fri, 03 Mar 2017 23:50:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 03 Mar 2017 23:50:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 03 Mar 2017 23:50:30 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:31 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:31 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:34 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:35 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:36 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7770354fce78faaac6e3d29cc16167871d16e08bc01d3736afde8dea9f31de`  
		Last Modified: Sat, 04 Mar 2017 06:18:35 GMT  
		Size: 12.6 MB (12624834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be277856d20038f1ef7742741ad126be133ab9d6439c8fa3b1ea63a1e4c5e8a3`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffa80d6c3a18602760fdedd728ab24a46c25e046757707b2fd2f0d22623df74`  
		Last Modified: Sat, 04 Mar 2017 06:18:46 GMT  
		Size: 10.0 MB (9960478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd20be2d28d515313586d8617bbf454b9359dc5483476d17a923f9e2e0ad7d3`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 2.0 KB (2006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8275ff24d934ddd5b2d3d2487ec2bc02b749cc3e8f3d863b1ff721a49efd673`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f0cf74515dc33e3ea2dd0a4abe489cc1c441a7ffa44dd99d3747da48b89c4f`  
		Last Modified: Sat, 04 Mar 2017 06:18:30 GMT  
		Size: 7.6 KB (7614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c18460ecdd520be7c5f0007fa2ea70d1ac01d18da4906646bc90fe014e9e60`  
		Last Modified: Sat, 04 Mar 2017 06:37:12 GMT  
		Size: 590.0 KB (589989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93e86bf428aeedcdc90cc0e52476d37593d67e877785c04281302f8d3a7eb9b`  
		Last Modified: Sat, 04 Mar 2017 06:37:12 GMT  
		Size: 709.1 KB (709054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537bb6365edaed21a178111e7a94976eaff0f107be677159e83fbfcf5c5eb0de`  
		Last Modified: Sat, 04 Mar 2017 06:37:11 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0831bd764cd598015c24be848a9e3a8e3e48108c930cf4c06f72c24e2637ae`  
		Last Modified: Tue, 07 Mar 2017 01:43:18 GMT  
		Size: 7.8 MB (7836836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d7dfdfabd2a8a1acb4f6a7bf8a8df4784dcef8cf0107ddf24e036946e312fc`  
		Last Modified: Tue, 07 Mar 2017 01:43:15 GMT  
		Size: 3.1 KB (3124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.3-php7.0-apache`

```console
$ docker pull wordpress@sha256:39fd4cf445deb3111ae28d86e706b88aca7d503f6d83faf4c9856dbfeda322ea
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.3-php7.0-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167848975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33d770d32a48fd4aeb16daad821977fcda936b3fec2522b2901de5c997793ec0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:58:53 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:58:54 GMT
ENV PHP_VERSION=7.0.16
# Tue, 28 Feb 2017 17:58:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:58:54 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Tue, 28 Feb 2017 17:59:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:59:03 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:01:20 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 18:01:21 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:01:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 18:01:22 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:01:22 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 18:01:23 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 18:01:23 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:37:29 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:37:30 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:37:31 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:37:32 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:38 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:38 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:41 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:41 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:43 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8b9848db0258096b1f0dee40b6c32dcd3fed634069dfb7ae9cdb9f6a6b9dc3`  
		Last Modified: Wed, 01 Mar 2017 17:03:16 GMT  
		Size: 12.7 MB (12717524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2174fc2bf386684519fdfc247fe3e622d64c0a54b5a0a3183e965e2fbaaa6e`  
		Last Modified: Wed, 01 Mar 2017 17:03:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909a602a65d4212ef183156790d8775ee28b108b14c4645b2be05c281f7bf161`  
		Last Modified: Wed, 01 Mar 2017 17:03:20 GMT  
		Size: 13.3 MB (13307659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f5cf22632c1b1d96bba6464fff9b8473453add571c9074b9cbea5d80124c8cb`  
		Last Modified: Wed, 01 Mar 2017 17:03:14 GMT  
		Size: 2.0 KB (2021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b924600f2be02047005c18d8a5c12bb6b1714d66b93f45b9d8afddafaa0b06b`  
		Last Modified: Wed, 01 Mar 2017 17:03:15 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be86e785db4d516f786cceb07afea646f45f8e944b3dfff3e423dd75f03c0d3`  
		Last Modified: Thu, 02 Mar 2017 04:56:19 GMT  
		Size: 2.1 MB (2147773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd47a1ffb344f85071b33ee260263a687d6b3adcf3a93ab8f982bceba068504c`  
		Last Modified: Thu, 02 Mar 2017 04:56:18 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5ac08eaf7e10a47b31cc78c4f5bf33e5f40fde4e88fc212ad4e2fb7f8b29dc`  
		Last Modified: Thu, 02 Mar 2017 04:56:18 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e772693c19dd5c21d746841fcbcbbfed4f7a6a44f34e0d3b43e05564820a8013`  
		Last Modified: Tue, 07 Mar 2017 01:45:49 GMT  
		Size: 7.8 MB (7836680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeccbe2de3fbb0d68f94e9b9c5c94794cecdd752246a49c674fb128fbf55005b`  
		Last Modified: Tue, 07 Mar 2017 01:45:46 GMT  
		Size: 3.1 KB (3133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php7.0-apache`

```console
$ docker pull wordpress@sha256:39fd4cf445deb3111ae28d86e706b88aca7d503f6d83faf4c9856dbfeda322ea
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php7.0-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167848975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33d770d32a48fd4aeb16daad821977fcda936b3fec2522b2901de5c997793ec0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:58:53 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:58:54 GMT
ENV PHP_VERSION=7.0.16
# Tue, 28 Feb 2017 17:58:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:58:54 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Tue, 28 Feb 2017 17:59:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:59:03 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:01:20 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 18:01:21 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:01:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 18:01:22 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:01:22 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 18:01:23 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 18:01:23 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:37:29 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:37:30 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:37:31 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:37:32 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:38 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:38 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:41 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:41 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:43 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8b9848db0258096b1f0dee40b6c32dcd3fed634069dfb7ae9cdb9f6a6b9dc3`  
		Last Modified: Wed, 01 Mar 2017 17:03:16 GMT  
		Size: 12.7 MB (12717524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2174fc2bf386684519fdfc247fe3e622d64c0a54b5a0a3183e965e2fbaaa6e`  
		Last Modified: Wed, 01 Mar 2017 17:03:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909a602a65d4212ef183156790d8775ee28b108b14c4645b2be05c281f7bf161`  
		Last Modified: Wed, 01 Mar 2017 17:03:20 GMT  
		Size: 13.3 MB (13307659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f5cf22632c1b1d96bba6464fff9b8473453add571c9074b9cbea5d80124c8cb`  
		Last Modified: Wed, 01 Mar 2017 17:03:14 GMT  
		Size: 2.0 KB (2021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b924600f2be02047005c18d8a5c12bb6b1714d66b93f45b9d8afddafaa0b06b`  
		Last Modified: Wed, 01 Mar 2017 17:03:15 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be86e785db4d516f786cceb07afea646f45f8e944b3dfff3e423dd75f03c0d3`  
		Last Modified: Thu, 02 Mar 2017 04:56:19 GMT  
		Size: 2.1 MB (2147773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd47a1ffb344f85071b33ee260263a687d6b3adcf3a93ab8f982bceba068504c`  
		Last Modified: Thu, 02 Mar 2017 04:56:18 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5ac08eaf7e10a47b31cc78c4f5bf33e5f40fde4e88fc212ad4e2fb7f8b29dc`  
		Last Modified: Thu, 02 Mar 2017 04:56:18 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e772693c19dd5c21d746841fcbcbbfed4f7a6a44f34e0d3b43e05564820a8013`  
		Last Modified: Tue, 07 Mar 2017 01:45:49 GMT  
		Size: 7.8 MB (7836680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeccbe2de3fbb0d68f94e9b9c5c94794cecdd752246a49c674fb128fbf55005b`  
		Last Modified: Tue, 07 Mar 2017 01:45:46 GMT  
		Size: 3.1 KB (3133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php7.0-apache`

```console
$ docker pull wordpress@sha256:39fd4cf445deb3111ae28d86e706b88aca7d503f6d83faf4c9856dbfeda322ea
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.0-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167848975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33d770d32a48fd4aeb16daad821977fcda936b3fec2522b2901de5c997793ec0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:58:53 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:58:54 GMT
ENV PHP_VERSION=7.0.16
# Tue, 28 Feb 2017 17:58:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:58:54 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Tue, 28 Feb 2017 17:59:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:59:03 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:01:20 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 18:01:21 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:01:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 18:01:22 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:01:22 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 18:01:23 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 18:01:23 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:37:29 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:37:30 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:37:31 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:37:32 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:38 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:38 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:41 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:41 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:43 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8b9848db0258096b1f0dee40b6c32dcd3fed634069dfb7ae9cdb9f6a6b9dc3`  
		Last Modified: Wed, 01 Mar 2017 17:03:16 GMT  
		Size: 12.7 MB (12717524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2174fc2bf386684519fdfc247fe3e622d64c0a54b5a0a3183e965e2fbaaa6e`  
		Last Modified: Wed, 01 Mar 2017 17:03:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909a602a65d4212ef183156790d8775ee28b108b14c4645b2be05c281f7bf161`  
		Last Modified: Wed, 01 Mar 2017 17:03:20 GMT  
		Size: 13.3 MB (13307659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f5cf22632c1b1d96bba6464fff9b8473453add571c9074b9cbea5d80124c8cb`  
		Last Modified: Wed, 01 Mar 2017 17:03:14 GMT  
		Size: 2.0 KB (2021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b924600f2be02047005c18d8a5c12bb6b1714d66b93f45b9d8afddafaa0b06b`  
		Last Modified: Wed, 01 Mar 2017 17:03:15 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be86e785db4d516f786cceb07afea646f45f8e944b3dfff3e423dd75f03c0d3`  
		Last Modified: Thu, 02 Mar 2017 04:56:19 GMT  
		Size: 2.1 MB (2147773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd47a1ffb344f85071b33ee260263a687d6b3adcf3a93ab8f982bceba068504c`  
		Last Modified: Thu, 02 Mar 2017 04:56:18 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5ac08eaf7e10a47b31cc78c4f5bf33e5f40fde4e88fc212ad4e2fb7f8b29dc`  
		Last Modified: Thu, 02 Mar 2017 04:56:18 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e772693c19dd5c21d746841fcbcbbfed4f7a6a44f34e0d3b43e05564820a8013`  
		Last Modified: Tue, 07 Mar 2017 01:45:49 GMT  
		Size: 7.8 MB (7836680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeccbe2de3fbb0d68f94e9b9c5c94794cecdd752246a49c674fb128fbf55005b`  
		Last Modified: Tue, 07 Mar 2017 01:45:46 GMT  
		Size: 3.1 KB (3133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php7.0-apache`

```console
$ docker pull wordpress@sha256:39fd4cf445deb3111ae28d86e706b88aca7d503f6d83faf4c9856dbfeda322ea
```

-	Platforms:
	-	linux; amd64

### `wordpress:php7.0-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167848975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33d770d32a48fd4aeb16daad821977fcda936b3fec2522b2901de5c997793ec0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:58:53 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:58:54 GMT
ENV PHP_VERSION=7.0.16
# Tue, 28 Feb 2017 17:58:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:58:54 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Tue, 28 Feb 2017 17:59:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:59:03 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:01:20 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 18:01:21 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:01:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 18:01:22 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:01:22 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 18:01:23 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 18:01:23 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:37:29 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:37:30 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:37:31 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:37:32 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:38 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:38 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:41 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:41 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:43 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8b9848db0258096b1f0dee40b6c32dcd3fed634069dfb7ae9cdb9f6a6b9dc3`  
		Last Modified: Wed, 01 Mar 2017 17:03:16 GMT  
		Size: 12.7 MB (12717524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2174fc2bf386684519fdfc247fe3e622d64c0a54b5a0a3183e965e2fbaaa6e`  
		Last Modified: Wed, 01 Mar 2017 17:03:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909a602a65d4212ef183156790d8775ee28b108b14c4645b2be05c281f7bf161`  
		Last Modified: Wed, 01 Mar 2017 17:03:20 GMT  
		Size: 13.3 MB (13307659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f5cf22632c1b1d96bba6464fff9b8473453add571c9074b9cbea5d80124c8cb`  
		Last Modified: Wed, 01 Mar 2017 17:03:14 GMT  
		Size: 2.0 KB (2021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b924600f2be02047005c18d8a5c12bb6b1714d66b93f45b9d8afddafaa0b06b`  
		Last Modified: Wed, 01 Mar 2017 17:03:15 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be86e785db4d516f786cceb07afea646f45f8e944b3dfff3e423dd75f03c0d3`  
		Last Modified: Thu, 02 Mar 2017 04:56:19 GMT  
		Size: 2.1 MB (2147773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd47a1ffb344f85071b33ee260263a687d6b3adcf3a93ab8f982bceba068504c`  
		Last Modified: Thu, 02 Mar 2017 04:56:18 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5ac08eaf7e10a47b31cc78c4f5bf33e5f40fde4e88fc212ad4e2fb7f8b29dc`  
		Last Modified: Thu, 02 Mar 2017 04:56:18 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e772693c19dd5c21d746841fcbcbbfed4f7a6a44f34e0d3b43e05564820a8013`  
		Last Modified: Tue, 07 Mar 2017 01:45:49 GMT  
		Size: 7.8 MB (7836680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeccbe2de3fbb0d68f94e9b9c5c94794cecdd752246a49c674fb128fbf55005b`  
		Last Modified: Tue, 07 Mar 2017 01:45:46 GMT  
		Size: 3.1 KB (3133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.3-php7.0`

```console
$ docker pull wordpress@sha256:39fd4cf445deb3111ae28d86e706b88aca7d503f6d83faf4c9856dbfeda322ea
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.3-php7.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167848975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33d770d32a48fd4aeb16daad821977fcda936b3fec2522b2901de5c997793ec0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:58:53 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:58:54 GMT
ENV PHP_VERSION=7.0.16
# Tue, 28 Feb 2017 17:58:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:58:54 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Tue, 28 Feb 2017 17:59:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:59:03 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:01:20 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 18:01:21 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:01:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 18:01:22 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:01:22 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 18:01:23 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 18:01:23 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:37:29 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:37:30 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:37:31 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:37:32 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:38 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:38 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:41 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:41 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:43 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8b9848db0258096b1f0dee40b6c32dcd3fed634069dfb7ae9cdb9f6a6b9dc3`  
		Last Modified: Wed, 01 Mar 2017 17:03:16 GMT  
		Size: 12.7 MB (12717524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2174fc2bf386684519fdfc247fe3e622d64c0a54b5a0a3183e965e2fbaaa6e`  
		Last Modified: Wed, 01 Mar 2017 17:03:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909a602a65d4212ef183156790d8775ee28b108b14c4645b2be05c281f7bf161`  
		Last Modified: Wed, 01 Mar 2017 17:03:20 GMT  
		Size: 13.3 MB (13307659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f5cf22632c1b1d96bba6464fff9b8473453add571c9074b9cbea5d80124c8cb`  
		Last Modified: Wed, 01 Mar 2017 17:03:14 GMT  
		Size: 2.0 KB (2021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b924600f2be02047005c18d8a5c12bb6b1714d66b93f45b9d8afddafaa0b06b`  
		Last Modified: Wed, 01 Mar 2017 17:03:15 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be86e785db4d516f786cceb07afea646f45f8e944b3dfff3e423dd75f03c0d3`  
		Last Modified: Thu, 02 Mar 2017 04:56:19 GMT  
		Size: 2.1 MB (2147773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd47a1ffb344f85071b33ee260263a687d6b3adcf3a93ab8f982bceba068504c`  
		Last Modified: Thu, 02 Mar 2017 04:56:18 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5ac08eaf7e10a47b31cc78c4f5bf33e5f40fde4e88fc212ad4e2fb7f8b29dc`  
		Last Modified: Thu, 02 Mar 2017 04:56:18 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e772693c19dd5c21d746841fcbcbbfed4f7a6a44f34e0d3b43e05564820a8013`  
		Last Modified: Tue, 07 Mar 2017 01:45:49 GMT  
		Size: 7.8 MB (7836680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeccbe2de3fbb0d68f94e9b9c5c94794cecdd752246a49c674fb128fbf55005b`  
		Last Modified: Tue, 07 Mar 2017 01:45:46 GMT  
		Size: 3.1 KB (3133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php7.0`

```console
$ docker pull wordpress@sha256:39fd4cf445deb3111ae28d86e706b88aca7d503f6d83faf4c9856dbfeda322ea
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php7.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167848975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33d770d32a48fd4aeb16daad821977fcda936b3fec2522b2901de5c997793ec0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:58:53 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:58:54 GMT
ENV PHP_VERSION=7.0.16
# Tue, 28 Feb 2017 17:58:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:58:54 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Tue, 28 Feb 2017 17:59:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:59:03 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:01:20 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 18:01:21 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:01:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 18:01:22 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:01:22 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 18:01:23 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 18:01:23 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:37:29 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:37:30 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:37:31 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:37:32 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:38 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:38 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:41 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:41 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:43 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8b9848db0258096b1f0dee40b6c32dcd3fed634069dfb7ae9cdb9f6a6b9dc3`  
		Last Modified: Wed, 01 Mar 2017 17:03:16 GMT  
		Size: 12.7 MB (12717524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2174fc2bf386684519fdfc247fe3e622d64c0a54b5a0a3183e965e2fbaaa6e`  
		Last Modified: Wed, 01 Mar 2017 17:03:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909a602a65d4212ef183156790d8775ee28b108b14c4645b2be05c281f7bf161`  
		Last Modified: Wed, 01 Mar 2017 17:03:20 GMT  
		Size: 13.3 MB (13307659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f5cf22632c1b1d96bba6464fff9b8473453add571c9074b9cbea5d80124c8cb`  
		Last Modified: Wed, 01 Mar 2017 17:03:14 GMT  
		Size: 2.0 KB (2021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b924600f2be02047005c18d8a5c12bb6b1714d66b93f45b9d8afddafaa0b06b`  
		Last Modified: Wed, 01 Mar 2017 17:03:15 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be86e785db4d516f786cceb07afea646f45f8e944b3dfff3e423dd75f03c0d3`  
		Last Modified: Thu, 02 Mar 2017 04:56:19 GMT  
		Size: 2.1 MB (2147773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd47a1ffb344f85071b33ee260263a687d6b3adcf3a93ab8f982bceba068504c`  
		Last Modified: Thu, 02 Mar 2017 04:56:18 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5ac08eaf7e10a47b31cc78c4f5bf33e5f40fde4e88fc212ad4e2fb7f8b29dc`  
		Last Modified: Thu, 02 Mar 2017 04:56:18 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e772693c19dd5c21d746841fcbcbbfed4f7a6a44f34e0d3b43e05564820a8013`  
		Last Modified: Tue, 07 Mar 2017 01:45:49 GMT  
		Size: 7.8 MB (7836680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeccbe2de3fbb0d68f94e9b9c5c94794cecdd752246a49c674fb128fbf55005b`  
		Last Modified: Tue, 07 Mar 2017 01:45:46 GMT  
		Size: 3.1 KB (3133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php7.0`

```console
$ docker pull wordpress@sha256:39fd4cf445deb3111ae28d86e706b88aca7d503f6d83faf4c9856dbfeda322ea
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167848975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33d770d32a48fd4aeb16daad821977fcda936b3fec2522b2901de5c997793ec0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:58:53 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:58:54 GMT
ENV PHP_VERSION=7.0.16
# Tue, 28 Feb 2017 17:58:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:58:54 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Tue, 28 Feb 2017 17:59:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:59:03 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:01:20 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 18:01:21 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:01:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 18:01:22 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:01:22 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 18:01:23 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 18:01:23 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:37:29 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:37:30 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:37:31 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:37:32 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:38 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:38 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:41 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:41 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:43 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8b9848db0258096b1f0dee40b6c32dcd3fed634069dfb7ae9cdb9f6a6b9dc3`  
		Last Modified: Wed, 01 Mar 2017 17:03:16 GMT  
		Size: 12.7 MB (12717524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2174fc2bf386684519fdfc247fe3e622d64c0a54b5a0a3183e965e2fbaaa6e`  
		Last Modified: Wed, 01 Mar 2017 17:03:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909a602a65d4212ef183156790d8775ee28b108b14c4645b2be05c281f7bf161`  
		Last Modified: Wed, 01 Mar 2017 17:03:20 GMT  
		Size: 13.3 MB (13307659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f5cf22632c1b1d96bba6464fff9b8473453add571c9074b9cbea5d80124c8cb`  
		Last Modified: Wed, 01 Mar 2017 17:03:14 GMT  
		Size: 2.0 KB (2021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b924600f2be02047005c18d8a5c12bb6b1714d66b93f45b9d8afddafaa0b06b`  
		Last Modified: Wed, 01 Mar 2017 17:03:15 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be86e785db4d516f786cceb07afea646f45f8e944b3dfff3e423dd75f03c0d3`  
		Last Modified: Thu, 02 Mar 2017 04:56:19 GMT  
		Size: 2.1 MB (2147773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd47a1ffb344f85071b33ee260263a687d6b3adcf3a93ab8f982bceba068504c`  
		Last Modified: Thu, 02 Mar 2017 04:56:18 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5ac08eaf7e10a47b31cc78c4f5bf33e5f40fde4e88fc212ad4e2fb7f8b29dc`  
		Last Modified: Thu, 02 Mar 2017 04:56:18 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e772693c19dd5c21d746841fcbcbbfed4f7a6a44f34e0d3b43e05564820a8013`  
		Last Modified: Tue, 07 Mar 2017 01:45:49 GMT  
		Size: 7.8 MB (7836680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeccbe2de3fbb0d68f94e9b9c5c94794cecdd752246a49c674fb128fbf55005b`  
		Last Modified: Tue, 07 Mar 2017 01:45:46 GMT  
		Size: 3.1 KB (3133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php7.0`

```console
$ docker pull wordpress@sha256:39fd4cf445deb3111ae28d86e706b88aca7d503f6d83faf4c9856dbfeda322ea
```

-	Platforms:
	-	linux; amd64

### `wordpress:php7.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167848975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33d770d32a48fd4aeb16daad821977fcda936b3fec2522b2901de5c997793ec0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:58:53 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 17:58:54 GMT
ENV PHP_VERSION=7.0.16
# Tue, 28 Feb 2017 17:58:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:58:54 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Tue, 28 Feb 2017 17:59:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:59:03 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:01:20 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 18:01:21 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:01:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 18:01:22 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:01:22 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 18:01:23 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 18:01:23 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:37:29 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:37:30 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:37:31 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:37:32 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:38 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:38 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:41 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:41 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:43 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8b9848db0258096b1f0dee40b6c32dcd3fed634069dfb7ae9cdb9f6a6b9dc3`  
		Last Modified: Wed, 01 Mar 2017 17:03:16 GMT  
		Size: 12.7 MB (12717524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2174fc2bf386684519fdfc247fe3e622d64c0a54b5a0a3183e965e2fbaaa6e`  
		Last Modified: Wed, 01 Mar 2017 17:03:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909a602a65d4212ef183156790d8775ee28b108b14c4645b2be05c281f7bf161`  
		Last Modified: Wed, 01 Mar 2017 17:03:20 GMT  
		Size: 13.3 MB (13307659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f5cf22632c1b1d96bba6464fff9b8473453add571c9074b9cbea5d80124c8cb`  
		Last Modified: Wed, 01 Mar 2017 17:03:14 GMT  
		Size: 2.0 KB (2021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b924600f2be02047005c18d8a5c12bb6b1714d66b93f45b9d8afddafaa0b06b`  
		Last Modified: Wed, 01 Mar 2017 17:03:15 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be86e785db4d516f786cceb07afea646f45f8e944b3dfff3e423dd75f03c0d3`  
		Last Modified: Thu, 02 Mar 2017 04:56:19 GMT  
		Size: 2.1 MB (2147773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd47a1ffb344f85071b33ee260263a687d6b3adcf3a93ab8f982bceba068504c`  
		Last Modified: Thu, 02 Mar 2017 04:56:18 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5ac08eaf7e10a47b31cc78c4f5bf33e5f40fde4e88fc212ad4e2fb7f8b29dc`  
		Last Modified: Thu, 02 Mar 2017 04:56:18 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e772693c19dd5c21d746841fcbcbbfed4f7a6a44f34e0d3b43e05564820a8013`  
		Last Modified: Tue, 07 Mar 2017 01:45:49 GMT  
		Size: 7.8 MB (7836680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeccbe2de3fbb0d68f94e9b9c5c94794cecdd752246a49c674fb128fbf55005b`  
		Last Modified: Tue, 07 Mar 2017 01:45:46 GMT  
		Size: 3.1 KB (3133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.3-php7.0-fpm`

```console
$ docker pull wordpress@sha256:7b98582322e82ed859d5f2a6fb6ca20853d24a781ee0ac8606ccc6ebedb0ce95
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.3-php7.0-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.5 MB (164488954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8270ddeb4bc964a0f02c8d82c2c823cc0a294781e1a85f801f171149c5c21fa3`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 28 Feb 2017 18:01:24 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 18:01:24 GMT
ENV PHP_VERSION=7.0.16
# Tue, 28 Feb 2017 18:01:24 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 18:01:24 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Tue, 28 Feb 2017 18:01:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 18:01:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:04:58 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 18:04:59 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:04:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 18:05:00 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 18:05:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Feb 2017 18:05:01 GMT
EXPOSE 9000/tcp
# Tue, 28 Feb 2017 18:05:01 GMT
CMD ["php-fpm"]
# Wed, 01 Mar 2017 01:38:15 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:38:16 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:38:17 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:44 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:45 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:47 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:48 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:49 GMT
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
	-	`sha256:96cc94ef9aa275aff6912d0a832f373fdf1d02f65d85c27631da030f78c3f3c3`  
		Last Modified: Wed, 01 Mar 2017 17:04:04 GMT  
		Size: 12.7 MB (12698398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c4e4d1b4930af6154f6f3756aa7f6303e515a11753cb4b47c1cba0c65a7b46`  
		Last Modified: Wed, 01 Mar 2017 17:04:01 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e0c6e34d02c11003900e974f57d1f27ddf53a068a0bb703b0fa900d57fbdda`  
		Last Modified: Wed, 01 Mar 2017 17:04:07 GMT  
		Size: 12.8 MB (12843321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e76d885b0840b8a1fad55095d08a5a624faa554ebc2c883b0be61a557f5983`  
		Last Modified: Wed, 01 Mar 2017 17:04:01 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513bff7955a730257370ada9380e0a9f4b3d160d0cd519ae512e633f3e94cf57`  
		Last Modified: Wed, 01 Mar 2017 17:04:01 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890323f3a3b09e471844df22d3dda2f52ef86beed4932647a69f3ca1002dcc9d`  
		Last Modified: Wed, 01 Mar 2017 17:04:01 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7027b0fb42c513da575b130b888959a094d128d06560021bd1bc76403bb5b10`  
		Last Modified: Thu, 02 Mar 2017 04:58:54 GMT  
		Size: 2.1 MB (2125702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08064cd9d4e019d2e2978e6a4f0aa2452ff616f399dcb73878df20b93bee27e6`  
		Last Modified: Thu, 02 Mar 2017 04:58:52 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b397efba20842bf6d547c8c9b1f77bbe6d9e281643e7cdd65379e32b3d4bf4e`  
		Last Modified: Tue, 07 Mar 2017 01:48:23 GMT  
		Size: 7.8 MB (7836677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18521c1a0d469608cea0ca3a9d1451c8b7113108edb506792bc632ca39962d1`  
		Last Modified: Tue, 07 Mar 2017 01:48:21 GMT  
		Size: 3.1 KB (3132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php7.0-fpm`

```console
$ docker pull wordpress@sha256:7b98582322e82ed859d5f2a6fb6ca20853d24a781ee0ac8606ccc6ebedb0ce95
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php7.0-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.5 MB (164488954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8270ddeb4bc964a0f02c8d82c2c823cc0a294781e1a85f801f171149c5c21fa3`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 28 Feb 2017 18:01:24 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 18:01:24 GMT
ENV PHP_VERSION=7.0.16
# Tue, 28 Feb 2017 18:01:24 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 18:01:24 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Tue, 28 Feb 2017 18:01:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 18:01:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:04:58 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 18:04:59 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:04:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 18:05:00 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 18:05:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Feb 2017 18:05:01 GMT
EXPOSE 9000/tcp
# Tue, 28 Feb 2017 18:05:01 GMT
CMD ["php-fpm"]
# Wed, 01 Mar 2017 01:38:15 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:38:16 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:38:17 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:44 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:45 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:47 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:48 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:49 GMT
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
	-	`sha256:96cc94ef9aa275aff6912d0a832f373fdf1d02f65d85c27631da030f78c3f3c3`  
		Last Modified: Wed, 01 Mar 2017 17:04:04 GMT  
		Size: 12.7 MB (12698398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c4e4d1b4930af6154f6f3756aa7f6303e515a11753cb4b47c1cba0c65a7b46`  
		Last Modified: Wed, 01 Mar 2017 17:04:01 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e0c6e34d02c11003900e974f57d1f27ddf53a068a0bb703b0fa900d57fbdda`  
		Last Modified: Wed, 01 Mar 2017 17:04:07 GMT  
		Size: 12.8 MB (12843321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e76d885b0840b8a1fad55095d08a5a624faa554ebc2c883b0be61a557f5983`  
		Last Modified: Wed, 01 Mar 2017 17:04:01 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513bff7955a730257370ada9380e0a9f4b3d160d0cd519ae512e633f3e94cf57`  
		Last Modified: Wed, 01 Mar 2017 17:04:01 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890323f3a3b09e471844df22d3dda2f52ef86beed4932647a69f3ca1002dcc9d`  
		Last Modified: Wed, 01 Mar 2017 17:04:01 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7027b0fb42c513da575b130b888959a094d128d06560021bd1bc76403bb5b10`  
		Last Modified: Thu, 02 Mar 2017 04:58:54 GMT  
		Size: 2.1 MB (2125702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08064cd9d4e019d2e2978e6a4f0aa2452ff616f399dcb73878df20b93bee27e6`  
		Last Modified: Thu, 02 Mar 2017 04:58:52 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b397efba20842bf6d547c8c9b1f77bbe6d9e281643e7cdd65379e32b3d4bf4e`  
		Last Modified: Tue, 07 Mar 2017 01:48:23 GMT  
		Size: 7.8 MB (7836677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18521c1a0d469608cea0ca3a9d1451c8b7113108edb506792bc632ca39962d1`  
		Last Modified: Tue, 07 Mar 2017 01:48:21 GMT  
		Size: 3.1 KB (3132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php7.0-fpm`

```console
$ docker pull wordpress@sha256:7b98582322e82ed859d5f2a6fb6ca20853d24a781ee0ac8606ccc6ebedb0ce95
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.0-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.5 MB (164488954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8270ddeb4bc964a0f02c8d82c2c823cc0a294781e1a85f801f171149c5c21fa3`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 28 Feb 2017 18:01:24 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 18:01:24 GMT
ENV PHP_VERSION=7.0.16
# Tue, 28 Feb 2017 18:01:24 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 18:01:24 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Tue, 28 Feb 2017 18:01:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 18:01:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:04:58 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 18:04:59 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:04:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 18:05:00 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 18:05:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Feb 2017 18:05:01 GMT
EXPOSE 9000/tcp
# Tue, 28 Feb 2017 18:05:01 GMT
CMD ["php-fpm"]
# Wed, 01 Mar 2017 01:38:15 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:38:16 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:38:17 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:44 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:45 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:47 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:48 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:49 GMT
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
	-	`sha256:96cc94ef9aa275aff6912d0a832f373fdf1d02f65d85c27631da030f78c3f3c3`  
		Last Modified: Wed, 01 Mar 2017 17:04:04 GMT  
		Size: 12.7 MB (12698398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c4e4d1b4930af6154f6f3756aa7f6303e515a11753cb4b47c1cba0c65a7b46`  
		Last Modified: Wed, 01 Mar 2017 17:04:01 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e0c6e34d02c11003900e974f57d1f27ddf53a068a0bb703b0fa900d57fbdda`  
		Last Modified: Wed, 01 Mar 2017 17:04:07 GMT  
		Size: 12.8 MB (12843321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e76d885b0840b8a1fad55095d08a5a624faa554ebc2c883b0be61a557f5983`  
		Last Modified: Wed, 01 Mar 2017 17:04:01 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513bff7955a730257370ada9380e0a9f4b3d160d0cd519ae512e633f3e94cf57`  
		Last Modified: Wed, 01 Mar 2017 17:04:01 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890323f3a3b09e471844df22d3dda2f52ef86beed4932647a69f3ca1002dcc9d`  
		Last Modified: Wed, 01 Mar 2017 17:04:01 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7027b0fb42c513da575b130b888959a094d128d06560021bd1bc76403bb5b10`  
		Last Modified: Thu, 02 Mar 2017 04:58:54 GMT  
		Size: 2.1 MB (2125702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08064cd9d4e019d2e2978e6a4f0aa2452ff616f399dcb73878df20b93bee27e6`  
		Last Modified: Thu, 02 Mar 2017 04:58:52 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b397efba20842bf6d547c8c9b1f77bbe6d9e281643e7cdd65379e32b3d4bf4e`  
		Last Modified: Tue, 07 Mar 2017 01:48:23 GMT  
		Size: 7.8 MB (7836677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18521c1a0d469608cea0ca3a9d1451c8b7113108edb506792bc632ca39962d1`  
		Last Modified: Tue, 07 Mar 2017 01:48:21 GMT  
		Size: 3.1 KB (3132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php7.0-fpm`

```console
$ docker pull wordpress@sha256:7b98582322e82ed859d5f2a6fb6ca20853d24a781ee0ac8606ccc6ebedb0ce95
```

-	Platforms:
	-	linux; amd64

### `wordpress:php7.0-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.5 MB (164488954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8270ddeb4bc964a0f02c8d82c2c823cc0a294781e1a85f801f171149c5c21fa3`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 28 Feb 2017 18:01:24 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 28 Feb 2017 18:01:24 GMT
ENV PHP_VERSION=7.0.16
# Tue, 28 Feb 2017 18:01:24 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 18:01:24 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Tue, 28 Feb 2017 18:01:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 18:01:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:04:58 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 18:04:59 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 28 Feb 2017 18:04:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 18:05:00 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 18:05:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Feb 2017 18:05:01 GMT
EXPOSE 9000/tcp
# Tue, 28 Feb 2017 18:05:01 GMT
CMD ["php-fpm"]
# Wed, 01 Mar 2017 01:38:15 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:38:16 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:38:17 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:44 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:45 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:47 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:48 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:49 GMT
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
	-	`sha256:96cc94ef9aa275aff6912d0a832f373fdf1d02f65d85c27631da030f78c3f3c3`  
		Last Modified: Wed, 01 Mar 2017 17:04:04 GMT  
		Size: 12.7 MB (12698398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c4e4d1b4930af6154f6f3756aa7f6303e515a11753cb4b47c1cba0c65a7b46`  
		Last Modified: Wed, 01 Mar 2017 17:04:01 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e0c6e34d02c11003900e974f57d1f27ddf53a068a0bb703b0fa900d57fbdda`  
		Last Modified: Wed, 01 Mar 2017 17:04:07 GMT  
		Size: 12.8 MB (12843321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e76d885b0840b8a1fad55095d08a5a624faa554ebc2c883b0be61a557f5983`  
		Last Modified: Wed, 01 Mar 2017 17:04:01 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513bff7955a730257370ada9380e0a9f4b3d160d0cd519ae512e633f3e94cf57`  
		Last Modified: Wed, 01 Mar 2017 17:04:01 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890323f3a3b09e471844df22d3dda2f52ef86beed4932647a69f3ca1002dcc9d`  
		Last Modified: Wed, 01 Mar 2017 17:04:01 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7027b0fb42c513da575b130b888959a094d128d06560021bd1bc76403bb5b10`  
		Last Modified: Thu, 02 Mar 2017 04:58:54 GMT  
		Size: 2.1 MB (2125702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08064cd9d4e019d2e2978e6a4f0aa2452ff616f399dcb73878df20b93bee27e6`  
		Last Modified: Thu, 02 Mar 2017 04:58:52 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b397efba20842bf6d547c8c9b1f77bbe6d9e281643e7cdd65379e32b3d4bf4e`  
		Last Modified: Tue, 07 Mar 2017 01:48:23 GMT  
		Size: 7.8 MB (7836677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18521c1a0d469608cea0ca3a9d1451c8b7113108edb506792bc632ca39962d1`  
		Last Modified: Tue, 07 Mar 2017 01:48:21 GMT  
		Size: 3.1 KB (3132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.3-php7.0-fpm-alpine`

```console
$ docker pull wordpress@sha256:1f65e9b0b247e13550f119f992c1f0c8517e89d970f9cf7be01374950e7acd45
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.3-php7.0-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39339787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eb73eb2c29622a444417a60481ac1f8c0d4dc31ae11318eddd1cc6124b0dd00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:42:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 23:04:53 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 03 Mar 2017 23:04:54 GMT
ENV PHP_VERSION=7.0.16
# Fri, 03 Mar 2017 23:04:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 23:04:54 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Fri, 03 Mar 2017 23:05:00 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 23:05:00 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:08:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 23:08:32 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:08:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 23:08:33 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 23:08:34 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 03 Mar 2017 23:08:34 GMT
EXPOSE 9000/tcp
# Fri, 03 Mar 2017 23:08:35 GMT
CMD ["php-fpm"]
# Fri, 03 Mar 2017 23:50:35 GMT
RUN apk add --no-cache 		bash 		sed
# Fri, 03 Mar 2017 23:51:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 03 Mar 2017 23:51:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 03 Mar 2017 23:51:08 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:50 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:51 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:53 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:54 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:55 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94187b859a34e306838b28e1209bc1b14ae5240d62ca93df5343403616d8ab4`  
		Last Modified: Sat, 04 Mar 2017 01:28:10 GMT  
		Size: 12.8 MB (12763020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5efc4b12dfba0d6bb14f3779b41ff3ae9dadaab6aba5ec49b8221e41ce4d7c`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6bdb981aa967fe834f0ef931db244b485656af0682cd89c636b38a12ae6aa1f`  
		Last Modified: Sat, 04 Mar 2017 01:28:14 GMT  
		Size: 14.0 MB (14040426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133cbade9d51c052a58acf553e542ab1403dd9e9377dbfc44eedc35d4a9d0aa5`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 2.0 KB (1999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8f9f920842716d442f80e7ec9a51fe1f54669304bcb12b25ba04e7abb6af45`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89cd48ad5721619a8d469e45c9d513eef18a170c951315aefffa4782219fe2ea`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 7.7 KB (7674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fd24ea7038b341ebf77b88c8787125df97a963a23c0517cb4ff15c24f9f8aa5`  
		Last Modified: Sat, 04 Mar 2017 06:39:44 GMT  
		Size: 590.0 KB (589995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27dac3462078f92a92ded02d6c3905a77b2110b3683d513cd3a8c4abf67ddc59`  
		Last Modified: Sat, 04 Mar 2017 06:39:44 GMT  
		Size: 721.4 KB (721377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905f571823afe6cef411eaff9a50af85f8c4d961b8a4ef94d11be0a03ca2f8f4`  
		Last Modified: Sat, 04 Mar 2017 06:39:43 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07062089901e2b79a1f6c70aeacab1e5101e1d19c640f5246bb31afdcdac73c0`  
		Last Modified: Tue, 07 Mar 2017 01:49:42 GMT  
		Size: 7.8 MB (7836840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c080e1f263d9f79c4102c086fc397eb3665a1dff9987fbc66c9b02a5f277c8df`  
		Last Modified: Tue, 07 Mar 2017 01:49:40 GMT  
		Size: 3.1 KB (3122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php7.0-fpm-alpine`

```console
$ docker pull wordpress@sha256:1f65e9b0b247e13550f119f992c1f0c8517e89d970f9cf7be01374950e7acd45
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php7.0-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39339787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eb73eb2c29622a444417a60481ac1f8c0d4dc31ae11318eddd1cc6124b0dd00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:42:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 23:04:53 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 03 Mar 2017 23:04:54 GMT
ENV PHP_VERSION=7.0.16
# Fri, 03 Mar 2017 23:04:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 23:04:54 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Fri, 03 Mar 2017 23:05:00 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 23:05:00 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:08:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 23:08:32 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:08:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 23:08:33 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 23:08:34 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 03 Mar 2017 23:08:34 GMT
EXPOSE 9000/tcp
# Fri, 03 Mar 2017 23:08:35 GMT
CMD ["php-fpm"]
# Fri, 03 Mar 2017 23:50:35 GMT
RUN apk add --no-cache 		bash 		sed
# Fri, 03 Mar 2017 23:51:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 03 Mar 2017 23:51:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 03 Mar 2017 23:51:08 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:50 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:51 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:53 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:54 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:55 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94187b859a34e306838b28e1209bc1b14ae5240d62ca93df5343403616d8ab4`  
		Last Modified: Sat, 04 Mar 2017 01:28:10 GMT  
		Size: 12.8 MB (12763020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5efc4b12dfba0d6bb14f3779b41ff3ae9dadaab6aba5ec49b8221e41ce4d7c`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6bdb981aa967fe834f0ef931db244b485656af0682cd89c636b38a12ae6aa1f`  
		Last Modified: Sat, 04 Mar 2017 01:28:14 GMT  
		Size: 14.0 MB (14040426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133cbade9d51c052a58acf553e542ab1403dd9e9377dbfc44eedc35d4a9d0aa5`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 2.0 KB (1999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8f9f920842716d442f80e7ec9a51fe1f54669304bcb12b25ba04e7abb6af45`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89cd48ad5721619a8d469e45c9d513eef18a170c951315aefffa4782219fe2ea`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 7.7 KB (7674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fd24ea7038b341ebf77b88c8787125df97a963a23c0517cb4ff15c24f9f8aa5`  
		Last Modified: Sat, 04 Mar 2017 06:39:44 GMT  
		Size: 590.0 KB (589995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27dac3462078f92a92ded02d6c3905a77b2110b3683d513cd3a8c4abf67ddc59`  
		Last Modified: Sat, 04 Mar 2017 06:39:44 GMT  
		Size: 721.4 KB (721377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905f571823afe6cef411eaff9a50af85f8c4d961b8a4ef94d11be0a03ca2f8f4`  
		Last Modified: Sat, 04 Mar 2017 06:39:43 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07062089901e2b79a1f6c70aeacab1e5101e1d19c640f5246bb31afdcdac73c0`  
		Last Modified: Tue, 07 Mar 2017 01:49:42 GMT  
		Size: 7.8 MB (7836840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c080e1f263d9f79c4102c086fc397eb3665a1dff9987fbc66c9b02a5f277c8df`  
		Last Modified: Tue, 07 Mar 2017 01:49:40 GMT  
		Size: 3.1 KB (3122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php7.0-fpm-alpine`

```console
$ docker pull wordpress@sha256:1f65e9b0b247e13550f119f992c1f0c8517e89d970f9cf7be01374950e7acd45
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.0-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39339787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eb73eb2c29622a444417a60481ac1f8c0d4dc31ae11318eddd1cc6124b0dd00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:42:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 23:04:53 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 03 Mar 2017 23:04:54 GMT
ENV PHP_VERSION=7.0.16
# Fri, 03 Mar 2017 23:04:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 23:04:54 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Fri, 03 Mar 2017 23:05:00 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 23:05:00 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:08:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 23:08:32 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:08:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 23:08:33 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 23:08:34 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 03 Mar 2017 23:08:34 GMT
EXPOSE 9000/tcp
# Fri, 03 Mar 2017 23:08:35 GMT
CMD ["php-fpm"]
# Fri, 03 Mar 2017 23:50:35 GMT
RUN apk add --no-cache 		bash 		sed
# Fri, 03 Mar 2017 23:51:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 03 Mar 2017 23:51:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 03 Mar 2017 23:51:08 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:50 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:51 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:53 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:54 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:55 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94187b859a34e306838b28e1209bc1b14ae5240d62ca93df5343403616d8ab4`  
		Last Modified: Sat, 04 Mar 2017 01:28:10 GMT  
		Size: 12.8 MB (12763020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5efc4b12dfba0d6bb14f3779b41ff3ae9dadaab6aba5ec49b8221e41ce4d7c`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6bdb981aa967fe834f0ef931db244b485656af0682cd89c636b38a12ae6aa1f`  
		Last Modified: Sat, 04 Mar 2017 01:28:14 GMT  
		Size: 14.0 MB (14040426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133cbade9d51c052a58acf553e542ab1403dd9e9377dbfc44eedc35d4a9d0aa5`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 2.0 KB (1999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8f9f920842716d442f80e7ec9a51fe1f54669304bcb12b25ba04e7abb6af45`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89cd48ad5721619a8d469e45c9d513eef18a170c951315aefffa4782219fe2ea`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 7.7 KB (7674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fd24ea7038b341ebf77b88c8787125df97a963a23c0517cb4ff15c24f9f8aa5`  
		Last Modified: Sat, 04 Mar 2017 06:39:44 GMT  
		Size: 590.0 KB (589995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27dac3462078f92a92ded02d6c3905a77b2110b3683d513cd3a8c4abf67ddc59`  
		Last Modified: Sat, 04 Mar 2017 06:39:44 GMT  
		Size: 721.4 KB (721377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905f571823afe6cef411eaff9a50af85f8c4d961b8a4ef94d11be0a03ca2f8f4`  
		Last Modified: Sat, 04 Mar 2017 06:39:43 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07062089901e2b79a1f6c70aeacab1e5101e1d19c640f5246bb31afdcdac73c0`  
		Last Modified: Tue, 07 Mar 2017 01:49:42 GMT  
		Size: 7.8 MB (7836840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c080e1f263d9f79c4102c086fc397eb3665a1dff9987fbc66c9b02a5f277c8df`  
		Last Modified: Tue, 07 Mar 2017 01:49:40 GMT  
		Size: 3.1 KB (3122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php7.0-fpm-alpine`

```console
$ docker pull wordpress@sha256:1f65e9b0b247e13550f119f992c1f0c8517e89d970f9cf7be01374950e7acd45
```

-	Platforms:
	-	linux; amd64

### `wordpress:php7.0-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39339787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eb73eb2c29622a444417a60481ac1f8c0d4dc31ae11318eddd1cc6124b0dd00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:42:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 23:04:53 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 03 Mar 2017 23:04:54 GMT
ENV PHP_VERSION=7.0.16
# Fri, 03 Mar 2017 23:04:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 23:04:54 GMT
ENV PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309 PHP_MD5=6161aba9d24322d889da5d2ff944bddf
# Fri, 03 Mar 2017 23:05:00 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 23:05:00 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:08:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 23:08:32 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:08:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 23:08:33 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 23:08:34 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 03 Mar 2017 23:08:34 GMT
EXPOSE 9000/tcp
# Fri, 03 Mar 2017 23:08:35 GMT
CMD ["php-fpm"]
# Fri, 03 Mar 2017 23:50:35 GMT
RUN apk add --no-cache 		bash 		sed
# Fri, 03 Mar 2017 23:51:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 03 Mar 2017 23:51:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 03 Mar 2017 23:51:08 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:50 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:51 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:34:53 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:34:54 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:34:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:34:55 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94187b859a34e306838b28e1209bc1b14ae5240d62ca93df5343403616d8ab4`  
		Last Modified: Sat, 04 Mar 2017 01:28:10 GMT  
		Size: 12.8 MB (12763020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5efc4b12dfba0d6bb14f3779b41ff3ae9dadaab6aba5ec49b8221e41ce4d7c`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6bdb981aa967fe834f0ef931db244b485656af0682cd89c636b38a12ae6aa1f`  
		Last Modified: Sat, 04 Mar 2017 01:28:14 GMT  
		Size: 14.0 MB (14040426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133cbade9d51c052a58acf553e542ab1403dd9e9377dbfc44eedc35d4a9d0aa5`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 2.0 KB (1999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8f9f920842716d442f80e7ec9a51fe1f54669304bcb12b25ba04e7abb6af45`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89cd48ad5721619a8d469e45c9d513eef18a170c951315aefffa4782219fe2ea`  
		Last Modified: Sat, 04 Mar 2017 01:28:05 GMT  
		Size: 7.7 KB (7674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fd24ea7038b341ebf77b88c8787125df97a963a23c0517cb4ff15c24f9f8aa5`  
		Last Modified: Sat, 04 Mar 2017 06:39:44 GMT  
		Size: 590.0 KB (589995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27dac3462078f92a92ded02d6c3905a77b2110b3683d513cd3a8c4abf67ddc59`  
		Last Modified: Sat, 04 Mar 2017 06:39:44 GMT  
		Size: 721.4 KB (721377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905f571823afe6cef411eaff9a50af85f8c4d961b8a4ef94d11be0a03ca2f8f4`  
		Last Modified: Sat, 04 Mar 2017 06:39:43 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07062089901e2b79a1f6c70aeacab1e5101e1d19c640f5246bb31afdcdac73c0`  
		Last Modified: Tue, 07 Mar 2017 01:49:42 GMT  
		Size: 7.8 MB (7836840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c080e1f263d9f79c4102c086fc397eb3665a1dff9987fbc66c9b02a5f277c8df`  
		Last Modified: Tue, 07 Mar 2017 01:49:40 GMT  
		Size: 3.1 KB (3122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.3-php7.1-apache`

```console
$ docker pull wordpress@sha256:bb75186f2820c2d587c09723132de9e6918b6ca490a6d6e2cc3af0cac0b7de7e
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.3-php7.1-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168422250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de8b7f76b88dbbb2ba5ab41de0083f610676d099b617881c2540fb9e668a78d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:44:54 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 28 Feb 2017 17:44:54 GMT
ENV PHP_VERSION=7.1.2
# Tue, 28 Feb 2017 17:44:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.2.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:44:55 GMT
ENV PHP_SHA256=d815a0c39fd57bab1434a77ff0610fb507c22f790c66cd6f26e27030c4b3e971 PHP_MD5=d79afea1870277c86fac903566fb6c5d
# Tue, 28 Feb 2017 17:45:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:45:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:47:29 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:47:30 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:47:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:47:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:47:31 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:47:31 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:47:32 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:39:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:39:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:39:06 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:39:06 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:57 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:57 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:35:00 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:35:01 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:35:02 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486f1c042523f739b01c2f6eee06b7abaf0afbef757a2b19d2332695f8de8316`  
		Last Modified: Wed, 01 Mar 2017 16:55:09 GMT  
		Size: 12.9 MB (12910532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9a11825960991cc6132da835e32157273a509f0fc0e81d0d14946d8d029c10`  
		Last Modified: Wed, 01 Mar 2017 16:55:10 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6547bd3c6f7e709a40162447c9429c4b5fe7f9834593b8b3e80795da3b631b`  
		Last Modified: Wed, 01 Mar 2017 16:55:13 GMT  
		Size: 13.6 MB (13606220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfb06ea2fa900e7e7cd2671cc3c18054d07eddb378a79d867e114178e189055`  
		Last Modified: Wed, 01 Mar 2017 16:55:08 GMT  
		Size: 2.0 KB (2021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4187a087b74f65e0e4ced011981f31c9e9dfe6592b96ddf01dc532aa1f4709`  
		Last Modified: Wed, 01 Mar 2017 16:55:08 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cce6038ad1bd60c05e849eaa04e3c925085d3f6c74e880fde9403b3a5c06c13`  
		Last Modified: Thu, 02 Mar 2017 05:00:14 GMT  
		Size: 2.2 MB (2229487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d37e988aa3b7a3bb1eef9be8fe8de800bd33588eb35b93489ae1ac077727ef30`  
		Last Modified: Thu, 02 Mar 2017 05:00:14 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732298c698106457b74cd262e7373fbc58f4add8b955429f1c112c03af1e254a`  
		Last Modified: Thu, 02 Mar 2017 05:00:13 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb8cabe31a73a59e04d1ee89cbe4877337f5706e320968ad4df545a746ff48d`  
		Last Modified: Tue, 07 Mar 2017 01:51:01 GMT  
		Size: 7.8 MB (7836677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b19f621696a707cee4461bd2f6b7b73ff1eca8f51d13d607b1fff3b4064d983`  
		Last Modified: Tue, 07 Mar 2017 01:51:00 GMT  
		Size: 3.1 KB (3131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php7.1-apache`

```console
$ docker pull wordpress@sha256:bb75186f2820c2d587c09723132de9e6918b6ca490a6d6e2cc3af0cac0b7de7e
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php7.1-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168422250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de8b7f76b88dbbb2ba5ab41de0083f610676d099b617881c2540fb9e668a78d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:44:54 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 28 Feb 2017 17:44:54 GMT
ENV PHP_VERSION=7.1.2
# Tue, 28 Feb 2017 17:44:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.2.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:44:55 GMT
ENV PHP_SHA256=d815a0c39fd57bab1434a77ff0610fb507c22f790c66cd6f26e27030c4b3e971 PHP_MD5=d79afea1870277c86fac903566fb6c5d
# Tue, 28 Feb 2017 17:45:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:45:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:47:29 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:47:30 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:47:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:47:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:47:31 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:47:31 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:47:32 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:39:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:39:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:39:06 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:39:06 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:57 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:57 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:35:00 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:35:01 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:35:02 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486f1c042523f739b01c2f6eee06b7abaf0afbef757a2b19d2332695f8de8316`  
		Last Modified: Wed, 01 Mar 2017 16:55:09 GMT  
		Size: 12.9 MB (12910532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9a11825960991cc6132da835e32157273a509f0fc0e81d0d14946d8d029c10`  
		Last Modified: Wed, 01 Mar 2017 16:55:10 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6547bd3c6f7e709a40162447c9429c4b5fe7f9834593b8b3e80795da3b631b`  
		Last Modified: Wed, 01 Mar 2017 16:55:13 GMT  
		Size: 13.6 MB (13606220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfb06ea2fa900e7e7cd2671cc3c18054d07eddb378a79d867e114178e189055`  
		Last Modified: Wed, 01 Mar 2017 16:55:08 GMT  
		Size: 2.0 KB (2021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4187a087b74f65e0e4ced011981f31c9e9dfe6592b96ddf01dc532aa1f4709`  
		Last Modified: Wed, 01 Mar 2017 16:55:08 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cce6038ad1bd60c05e849eaa04e3c925085d3f6c74e880fde9403b3a5c06c13`  
		Last Modified: Thu, 02 Mar 2017 05:00:14 GMT  
		Size: 2.2 MB (2229487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d37e988aa3b7a3bb1eef9be8fe8de800bd33588eb35b93489ae1ac077727ef30`  
		Last Modified: Thu, 02 Mar 2017 05:00:14 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732298c698106457b74cd262e7373fbc58f4add8b955429f1c112c03af1e254a`  
		Last Modified: Thu, 02 Mar 2017 05:00:13 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb8cabe31a73a59e04d1ee89cbe4877337f5706e320968ad4df545a746ff48d`  
		Last Modified: Tue, 07 Mar 2017 01:51:01 GMT  
		Size: 7.8 MB (7836677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b19f621696a707cee4461bd2f6b7b73ff1eca8f51d13d607b1fff3b4064d983`  
		Last Modified: Tue, 07 Mar 2017 01:51:00 GMT  
		Size: 3.1 KB (3131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php7.1-apache`

```console
$ docker pull wordpress@sha256:bb75186f2820c2d587c09723132de9e6918b6ca490a6d6e2cc3af0cac0b7de7e
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.1-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168422250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de8b7f76b88dbbb2ba5ab41de0083f610676d099b617881c2540fb9e668a78d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:44:54 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 28 Feb 2017 17:44:54 GMT
ENV PHP_VERSION=7.1.2
# Tue, 28 Feb 2017 17:44:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.2.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:44:55 GMT
ENV PHP_SHA256=d815a0c39fd57bab1434a77ff0610fb507c22f790c66cd6f26e27030c4b3e971 PHP_MD5=d79afea1870277c86fac903566fb6c5d
# Tue, 28 Feb 2017 17:45:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:45:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:47:29 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:47:30 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:47:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:47:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:47:31 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:47:31 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:47:32 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:39:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:39:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:39:06 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:39:06 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:57 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:57 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:35:00 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:35:01 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:35:02 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486f1c042523f739b01c2f6eee06b7abaf0afbef757a2b19d2332695f8de8316`  
		Last Modified: Wed, 01 Mar 2017 16:55:09 GMT  
		Size: 12.9 MB (12910532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9a11825960991cc6132da835e32157273a509f0fc0e81d0d14946d8d029c10`  
		Last Modified: Wed, 01 Mar 2017 16:55:10 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6547bd3c6f7e709a40162447c9429c4b5fe7f9834593b8b3e80795da3b631b`  
		Last Modified: Wed, 01 Mar 2017 16:55:13 GMT  
		Size: 13.6 MB (13606220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfb06ea2fa900e7e7cd2671cc3c18054d07eddb378a79d867e114178e189055`  
		Last Modified: Wed, 01 Mar 2017 16:55:08 GMT  
		Size: 2.0 KB (2021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4187a087b74f65e0e4ced011981f31c9e9dfe6592b96ddf01dc532aa1f4709`  
		Last Modified: Wed, 01 Mar 2017 16:55:08 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cce6038ad1bd60c05e849eaa04e3c925085d3f6c74e880fde9403b3a5c06c13`  
		Last Modified: Thu, 02 Mar 2017 05:00:14 GMT  
		Size: 2.2 MB (2229487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d37e988aa3b7a3bb1eef9be8fe8de800bd33588eb35b93489ae1ac077727ef30`  
		Last Modified: Thu, 02 Mar 2017 05:00:14 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732298c698106457b74cd262e7373fbc58f4add8b955429f1c112c03af1e254a`  
		Last Modified: Thu, 02 Mar 2017 05:00:13 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb8cabe31a73a59e04d1ee89cbe4877337f5706e320968ad4df545a746ff48d`  
		Last Modified: Tue, 07 Mar 2017 01:51:01 GMT  
		Size: 7.8 MB (7836677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b19f621696a707cee4461bd2f6b7b73ff1eca8f51d13d607b1fff3b4064d983`  
		Last Modified: Tue, 07 Mar 2017 01:51:00 GMT  
		Size: 3.1 KB (3131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php7.1-apache`

```console
$ docker pull wordpress@sha256:bb75186f2820c2d587c09723132de9e6918b6ca490a6d6e2cc3af0cac0b7de7e
```

-	Platforms:
	-	linux; amd64

### `wordpress:php7.1-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168422250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de8b7f76b88dbbb2ba5ab41de0083f610676d099b617881c2540fb9e668a78d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:44:54 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 28 Feb 2017 17:44:54 GMT
ENV PHP_VERSION=7.1.2
# Tue, 28 Feb 2017 17:44:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.2.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:44:55 GMT
ENV PHP_SHA256=d815a0c39fd57bab1434a77ff0610fb507c22f790c66cd6f26e27030c4b3e971 PHP_MD5=d79afea1870277c86fac903566fb6c5d
# Tue, 28 Feb 2017 17:45:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:45:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:47:29 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:47:30 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:47:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:47:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:47:31 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:47:31 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:47:32 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:39:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:39:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:39:06 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:39:06 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:57 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:57 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:35:00 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:35:01 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:35:02 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486f1c042523f739b01c2f6eee06b7abaf0afbef757a2b19d2332695f8de8316`  
		Last Modified: Wed, 01 Mar 2017 16:55:09 GMT  
		Size: 12.9 MB (12910532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9a11825960991cc6132da835e32157273a509f0fc0e81d0d14946d8d029c10`  
		Last Modified: Wed, 01 Mar 2017 16:55:10 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6547bd3c6f7e709a40162447c9429c4b5fe7f9834593b8b3e80795da3b631b`  
		Last Modified: Wed, 01 Mar 2017 16:55:13 GMT  
		Size: 13.6 MB (13606220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfb06ea2fa900e7e7cd2671cc3c18054d07eddb378a79d867e114178e189055`  
		Last Modified: Wed, 01 Mar 2017 16:55:08 GMT  
		Size: 2.0 KB (2021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4187a087b74f65e0e4ced011981f31c9e9dfe6592b96ddf01dc532aa1f4709`  
		Last Modified: Wed, 01 Mar 2017 16:55:08 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cce6038ad1bd60c05e849eaa04e3c925085d3f6c74e880fde9403b3a5c06c13`  
		Last Modified: Thu, 02 Mar 2017 05:00:14 GMT  
		Size: 2.2 MB (2229487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d37e988aa3b7a3bb1eef9be8fe8de800bd33588eb35b93489ae1ac077727ef30`  
		Last Modified: Thu, 02 Mar 2017 05:00:14 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732298c698106457b74cd262e7373fbc58f4add8b955429f1c112c03af1e254a`  
		Last Modified: Thu, 02 Mar 2017 05:00:13 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb8cabe31a73a59e04d1ee89cbe4877337f5706e320968ad4df545a746ff48d`  
		Last Modified: Tue, 07 Mar 2017 01:51:01 GMT  
		Size: 7.8 MB (7836677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b19f621696a707cee4461bd2f6b7b73ff1eca8f51d13d607b1fff3b4064d983`  
		Last Modified: Tue, 07 Mar 2017 01:51:00 GMT  
		Size: 3.1 KB (3131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.3-php7.1`

```console
$ docker pull wordpress@sha256:bb75186f2820c2d587c09723132de9e6918b6ca490a6d6e2cc3af0cac0b7de7e
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.3-php7.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168422250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de8b7f76b88dbbb2ba5ab41de0083f610676d099b617881c2540fb9e668a78d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:44:54 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 28 Feb 2017 17:44:54 GMT
ENV PHP_VERSION=7.1.2
# Tue, 28 Feb 2017 17:44:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.2.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:44:55 GMT
ENV PHP_SHA256=d815a0c39fd57bab1434a77ff0610fb507c22f790c66cd6f26e27030c4b3e971 PHP_MD5=d79afea1870277c86fac903566fb6c5d
# Tue, 28 Feb 2017 17:45:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:45:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:47:29 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:47:30 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:47:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:47:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:47:31 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:47:31 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:47:32 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:39:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:39:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:39:06 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:39:06 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:57 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:57 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:35:00 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:35:01 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:35:02 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486f1c042523f739b01c2f6eee06b7abaf0afbef757a2b19d2332695f8de8316`  
		Last Modified: Wed, 01 Mar 2017 16:55:09 GMT  
		Size: 12.9 MB (12910532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9a11825960991cc6132da835e32157273a509f0fc0e81d0d14946d8d029c10`  
		Last Modified: Wed, 01 Mar 2017 16:55:10 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6547bd3c6f7e709a40162447c9429c4b5fe7f9834593b8b3e80795da3b631b`  
		Last Modified: Wed, 01 Mar 2017 16:55:13 GMT  
		Size: 13.6 MB (13606220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfb06ea2fa900e7e7cd2671cc3c18054d07eddb378a79d867e114178e189055`  
		Last Modified: Wed, 01 Mar 2017 16:55:08 GMT  
		Size: 2.0 KB (2021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4187a087b74f65e0e4ced011981f31c9e9dfe6592b96ddf01dc532aa1f4709`  
		Last Modified: Wed, 01 Mar 2017 16:55:08 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cce6038ad1bd60c05e849eaa04e3c925085d3f6c74e880fde9403b3a5c06c13`  
		Last Modified: Thu, 02 Mar 2017 05:00:14 GMT  
		Size: 2.2 MB (2229487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d37e988aa3b7a3bb1eef9be8fe8de800bd33588eb35b93489ae1ac077727ef30`  
		Last Modified: Thu, 02 Mar 2017 05:00:14 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732298c698106457b74cd262e7373fbc58f4add8b955429f1c112c03af1e254a`  
		Last Modified: Thu, 02 Mar 2017 05:00:13 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb8cabe31a73a59e04d1ee89cbe4877337f5706e320968ad4df545a746ff48d`  
		Last Modified: Tue, 07 Mar 2017 01:51:01 GMT  
		Size: 7.8 MB (7836677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b19f621696a707cee4461bd2f6b7b73ff1eca8f51d13d607b1fff3b4064d983`  
		Last Modified: Tue, 07 Mar 2017 01:51:00 GMT  
		Size: 3.1 KB (3131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php7.1`

```console
$ docker pull wordpress@sha256:bb75186f2820c2d587c09723132de9e6918b6ca490a6d6e2cc3af0cac0b7de7e
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php7.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168422250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de8b7f76b88dbbb2ba5ab41de0083f610676d099b617881c2540fb9e668a78d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:44:54 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 28 Feb 2017 17:44:54 GMT
ENV PHP_VERSION=7.1.2
# Tue, 28 Feb 2017 17:44:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.2.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:44:55 GMT
ENV PHP_SHA256=d815a0c39fd57bab1434a77ff0610fb507c22f790c66cd6f26e27030c4b3e971 PHP_MD5=d79afea1870277c86fac903566fb6c5d
# Tue, 28 Feb 2017 17:45:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:45:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:47:29 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:47:30 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:47:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:47:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:47:31 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:47:31 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:47:32 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:39:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:39:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:39:06 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:39:06 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:57 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:57 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:35:00 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:35:01 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:35:02 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486f1c042523f739b01c2f6eee06b7abaf0afbef757a2b19d2332695f8de8316`  
		Last Modified: Wed, 01 Mar 2017 16:55:09 GMT  
		Size: 12.9 MB (12910532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9a11825960991cc6132da835e32157273a509f0fc0e81d0d14946d8d029c10`  
		Last Modified: Wed, 01 Mar 2017 16:55:10 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6547bd3c6f7e709a40162447c9429c4b5fe7f9834593b8b3e80795da3b631b`  
		Last Modified: Wed, 01 Mar 2017 16:55:13 GMT  
		Size: 13.6 MB (13606220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfb06ea2fa900e7e7cd2671cc3c18054d07eddb378a79d867e114178e189055`  
		Last Modified: Wed, 01 Mar 2017 16:55:08 GMT  
		Size: 2.0 KB (2021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4187a087b74f65e0e4ced011981f31c9e9dfe6592b96ddf01dc532aa1f4709`  
		Last Modified: Wed, 01 Mar 2017 16:55:08 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cce6038ad1bd60c05e849eaa04e3c925085d3f6c74e880fde9403b3a5c06c13`  
		Last Modified: Thu, 02 Mar 2017 05:00:14 GMT  
		Size: 2.2 MB (2229487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d37e988aa3b7a3bb1eef9be8fe8de800bd33588eb35b93489ae1ac077727ef30`  
		Last Modified: Thu, 02 Mar 2017 05:00:14 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732298c698106457b74cd262e7373fbc58f4add8b955429f1c112c03af1e254a`  
		Last Modified: Thu, 02 Mar 2017 05:00:13 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb8cabe31a73a59e04d1ee89cbe4877337f5706e320968ad4df545a746ff48d`  
		Last Modified: Tue, 07 Mar 2017 01:51:01 GMT  
		Size: 7.8 MB (7836677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b19f621696a707cee4461bd2f6b7b73ff1eca8f51d13d607b1fff3b4064d983`  
		Last Modified: Tue, 07 Mar 2017 01:51:00 GMT  
		Size: 3.1 KB (3131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php7.1`

```console
$ docker pull wordpress@sha256:bb75186f2820c2d587c09723132de9e6918b6ca490a6d6e2cc3af0cac0b7de7e
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168422250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de8b7f76b88dbbb2ba5ab41de0083f610676d099b617881c2540fb9e668a78d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:44:54 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 28 Feb 2017 17:44:54 GMT
ENV PHP_VERSION=7.1.2
# Tue, 28 Feb 2017 17:44:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.2.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:44:55 GMT
ENV PHP_SHA256=d815a0c39fd57bab1434a77ff0610fb507c22f790c66cd6f26e27030c4b3e971 PHP_MD5=d79afea1870277c86fac903566fb6c5d
# Tue, 28 Feb 2017 17:45:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:45:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:47:29 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:47:30 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:47:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:47:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:47:31 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:47:31 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:47:32 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:39:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:39:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:39:06 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:39:06 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:57 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:57 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:35:00 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:35:01 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:35:02 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486f1c042523f739b01c2f6eee06b7abaf0afbef757a2b19d2332695f8de8316`  
		Last Modified: Wed, 01 Mar 2017 16:55:09 GMT  
		Size: 12.9 MB (12910532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9a11825960991cc6132da835e32157273a509f0fc0e81d0d14946d8d029c10`  
		Last Modified: Wed, 01 Mar 2017 16:55:10 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6547bd3c6f7e709a40162447c9429c4b5fe7f9834593b8b3e80795da3b631b`  
		Last Modified: Wed, 01 Mar 2017 16:55:13 GMT  
		Size: 13.6 MB (13606220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfb06ea2fa900e7e7cd2671cc3c18054d07eddb378a79d867e114178e189055`  
		Last Modified: Wed, 01 Mar 2017 16:55:08 GMT  
		Size: 2.0 KB (2021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4187a087b74f65e0e4ced011981f31c9e9dfe6592b96ddf01dc532aa1f4709`  
		Last Modified: Wed, 01 Mar 2017 16:55:08 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cce6038ad1bd60c05e849eaa04e3c925085d3f6c74e880fde9403b3a5c06c13`  
		Last Modified: Thu, 02 Mar 2017 05:00:14 GMT  
		Size: 2.2 MB (2229487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d37e988aa3b7a3bb1eef9be8fe8de800bd33588eb35b93489ae1ac077727ef30`  
		Last Modified: Thu, 02 Mar 2017 05:00:14 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732298c698106457b74cd262e7373fbc58f4add8b955429f1c112c03af1e254a`  
		Last Modified: Thu, 02 Mar 2017 05:00:13 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb8cabe31a73a59e04d1ee89cbe4877337f5706e320968ad4df545a746ff48d`  
		Last Modified: Tue, 07 Mar 2017 01:51:01 GMT  
		Size: 7.8 MB (7836677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b19f621696a707cee4461bd2f6b7b73ff1eca8f51d13d607b1fff3b4064d983`  
		Last Modified: Tue, 07 Mar 2017 01:51:00 GMT  
		Size: 3.1 KB (3131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php7.1`

```console
$ docker pull wordpress@sha256:bb75186f2820c2d587c09723132de9e6918b6ca490a6d6e2cc3af0cac0b7de7e
```

-	Platforms:
	-	linux; amd64

### `wordpress:php7.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168422250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de8b7f76b88dbbb2ba5ab41de0083f610676d099b617881c2540fb9e668a78d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:44:54 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 28 Feb 2017 17:44:54 GMT
ENV PHP_VERSION=7.1.2
# Tue, 28 Feb 2017 17:44:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.2.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:44:55 GMT
ENV PHP_SHA256=d815a0c39fd57bab1434a77ff0610fb507c22f790c66cd6f26e27030c4b3e971 PHP_MD5=d79afea1870277c86fac903566fb6c5d
# Tue, 28 Feb 2017 17:45:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:45:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:47:29 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:47:30 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:47:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:47:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:47:31 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:47:31 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 17:47:32 GMT
CMD ["apache2-foreground"]
# Wed, 01 Mar 2017 01:39:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:39:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:39:06 GMT
RUN a2enmod rewrite expires
# Wed, 01 Mar 2017 01:39:06 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:34:57 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:34:57 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:35:00 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:35:01 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:35:02 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486f1c042523f739b01c2f6eee06b7abaf0afbef757a2b19d2332695f8de8316`  
		Last Modified: Wed, 01 Mar 2017 16:55:09 GMT  
		Size: 12.9 MB (12910532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9a11825960991cc6132da835e32157273a509f0fc0e81d0d14946d8d029c10`  
		Last Modified: Wed, 01 Mar 2017 16:55:10 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6547bd3c6f7e709a40162447c9429c4b5fe7f9834593b8b3e80795da3b631b`  
		Last Modified: Wed, 01 Mar 2017 16:55:13 GMT  
		Size: 13.6 MB (13606220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfb06ea2fa900e7e7cd2671cc3c18054d07eddb378a79d867e114178e189055`  
		Last Modified: Wed, 01 Mar 2017 16:55:08 GMT  
		Size: 2.0 KB (2021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4187a087b74f65e0e4ced011981f31c9e9dfe6592b96ddf01dc532aa1f4709`  
		Last Modified: Wed, 01 Mar 2017 16:55:08 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cce6038ad1bd60c05e849eaa04e3c925085d3f6c74e880fde9403b3a5c06c13`  
		Last Modified: Thu, 02 Mar 2017 05:00:14 GMT  
		Size: 2.2 MB (2229487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d37e988aa3b7a3bb1eef9be8fe8de800bd33588eb35b93489ae1ac077727ef30`  
		Last Modified: Thu, 02 Mar 2017 05:00:14 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732298c698106457b74cd262e7373fbc58f4add8b955429f1c112c03af1e254a`  
		Last Modified: Thu, 02 Mar 2017 05:00:13 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb8cabe31a73a59e04d1ee89cbe4877337f5706e320968ad4df545a746ff48d`  
		Last Modified: Tue, 07 Mar 2017 01:51:01 GMT  
		Size: 7.8 MB (7836677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b19f621696a707cee4461bd2f6b7b73ff1eca8f51d13d607b1fff3b4064d983`  
		Last Modified: Tue, 07 Mar 2017 01:51:00 GMT  
		Size: 3.1 KB (3131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.3-php7.1-fpm`

```console
$ docker pull wordpress@sha256:ba4e91f521b324890a7323a29e2062d521877adc91eaa183ecc1f3ac7a5964ac
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.3-php7.1-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165160200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7b2ca041777e04ca46fcfe9a12d0f91405eb07e800d99c95d979e1478fe6ba4`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 28 Feb 2017 17:47:32 GMT
ENV PHP_VERSION=7.1.2
# Tue, 28 Feb 2017 17:47:33 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.2.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:47:33 GMT
ENV PHP_SHA256=d815a0c39fd57bab1434a77ff0610fb507c22f790c66cd6f26e27030c4b3e971 PHP_MD5=d79afea1870277c86fac903566fb6c5d
# Tue, 28 Feb 2017 17:47:45 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:47:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:51:21 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:51:22 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:51:23 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:51:23 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:51:24 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Feb 2017 17:51:24 GMT
EXPOSE 9000/tcp
# Tue, 28 Feb 2017 17:51:25 GMT
CMD ["php-fpm"]
# Wed, 01 Mar 2017 01:39:52 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:39:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:39:54 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:35:03 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:35:04 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:35:06 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:35:07 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:35:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:35:08 GMT
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
	-	`sha256:26f382970c8d70cb2cbd2f82ee3fc7c54cc1d9b437a3530335365c1119f23c02`  
		Last Modified: Wed, 01 Mar 2017 16:56:30 GMT  
		Size: 12.9 MB (12891559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2030de85ff596fc9735e77460301dfdf2f53329911a14beb19cc0e1f03ea2dc2`  
		Last Modified: Wed, 01 Mar 2017 16:56:28 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7397b48573186994ec98f7d5f2fb2f5034967f2cb81b879c95bfe0accebcfec1`  
		Last Modified: Wed, 01 Mar 2017 16:56:32 GMT  
		Size: 13.2 MB (13240078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee703085a0d8154810820db2d9eb0fb263282e12d23a77814a16029cab89488`  
		Last Modified: Wed, 01 Mar 2017 16:56:27 GMT  
		Size: 2.0 KB (2012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e9c4adf52cfe6c06dfdb09e0f8b4ce0c639d08db81175e2333f27a0b829ef3`  
		Last Modified: Wed, 01 Mar 2017 16:56:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fd7ad7bf06c310b9b5b80910d9ad8c535b7583aa07d423919860ae3962cf30`  
		Last Modified: Wed, 01 Mar 2017 16:56:27 GMT  
		Size: 7.7 KB (7693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2caafa5b3b9b36794e19fb519fcc2acf333d5cf88fe87a6d70d41e3efe196956`  
		Last Modified: Thu, 02 Mar 2017 05:02:47 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ca7d533ad29446d72128c571ccdac017c30ed42ec23879314db642b322772a`  
		Last Modified: Thu, 02 Mar 2017 05:02:48 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d2720b3f95fa9346692b284c287d9315edb70b1b20a27dd3cef0032ad58554`  
		Last Modified: Tue, 07 Mar 2017 01:53:33 GMT  
		Size: 7.8 MB (7836677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0f8f67cb3849c3208fac4ce5c3a5cefa85fec09041ee3dfeaa69bffa1f3f9d`  
		Last Modified: Tue, 07 Mar 2017 01:53:32 GMT  
		Size: 3.1 KB (3131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php7.1-fpm`

```console
$ docker pull wordpress@sha256:ba4e91f521b324890a7323a29e2062d521877adc91eaa183ecc1f3ac7a5964ac
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php7.1-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165160200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7b2ca041777e04ca46fcfe9a12d0f91405eb07e800d99c95d979e1478fe6ba4`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 28 Feb 2017 17:47:32 GMT
ENV PHP_VERSION=7.1.2
# Tue, 28 Feb 2017 17:47:33 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.2.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:47:33 GMT
ENV PHP_SHA256=d815a0c39fd57bab1434a77ff0610fb507c22f790c66cd6f26e27030c4b3e971 PHP_MD5=d79afea1870277c86fac903566fb6c5d
# Tue, 28 Feb 2017 17:47:45 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:47:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:51:21 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:51:22 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:51:23 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:51:23 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:51:24 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Feb 2017 17:51:24 GMT
EXPOSE 9000/tcp
# Tue, 28 Feb 2017 17:51:25 GMT
CMD ["php-fpm"]
# Wed, 01 Mar 2017 01:39:52 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:39:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:39:54 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:35:03 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:35:04 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:35:06 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:35:07 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:35:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:35:08 GMT
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
	-	`sha256:26f382970c8d70cb2cbd2f82ee3fc7c54cc1d9b437a3530335365c1119f23c02`  
		Last Modified: Wed, 01 Mar 2017 16:56:30 GMT  
		Size: 12.9 MB (12891559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2030de85ff596fc9735e77460301dfdf2f53329911a14beb19cc0e1f03ea2dc2`  
		Last Modified: Wed, 01 Mar 2017 16:56:28 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7397b48573186994ec98f7d5f2fb2f5034967f2cb81b879c95bfe0accebcfec1`  
		Last Modified: Wed, 01 Mar 2017 16:56:32 GMT  
		Size: 13.2 MB (13240078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee703085a0d8154810820db2d9eb0fb263282e12d23a77814a16029cab89488`  
		Last Modified: Wed, 01 Mar 2017 16:56:27 GMT  
		Size: 2.0 KB (2012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e9c4adf52cfe6c06dfdb09e0f8b4ce0c639d08db81175e2333f27a0b829ef3`  
		Last Modified: Wed, 01 Mar 2017 16:56:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fd7ad7bf06c310b9b5b80910d9ad8c535b7583aa07d423919860ae3962cf30`  
		Last Modified: Wed, 01 Mar 2017 16:56:27 GMT  
		Size: 7.7 KB (7693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2caafa5b3b9b36794e19fb519fcc2acf333d5cf88fe87a6d70d41e3efe196956`  
		Last Modified: Thu, 02 Mar 2017 05:02:47 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ca7d533ad29446d72128c571ccdac017c30ed42ec23879314db642b322772a`  
		Last Modified: Thu, 02 Mar 2017 05:02:48 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d2720b3f95fa9346692b284c287d9315edb70b1b20a27dd3cef0032ad58554`  
		Last Modified: Tue, 07 Mar 2017 01:53:33 GMT  
		Size: 7.8 MB (7836677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0f8f67cb3849c3208fac4ce5c3a5cefa85fec09041ee3dfeaa69bffa1f3f9d`  
		Last Modified: Tue, 07 Mar 2017 01:53:32 GMT  
		Size: 3.1 KB (3131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php7.1-fpm`

```console
$ docker pull wordpress@sha256:ba4e91f521b324890a7323a29e2062d521877adc91eaa183ecc1f3ac7a5964ac
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.1-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165160200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7b2ca041777e04ca46fcfe9a12d0f91405eb07e800d99c95d979e1478fe6ba4`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 28 Feb 2017 17:47:32 GMT
ENV PHP_VERSION=7.1.2
# Tue, 28 Feb 2017 17:47:33 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.2.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:47:33 GMT
ENV PHP_SHA256=d815a0c39fd57bab1434a77ff0610fb507c22f790c66cd6f26e27030c4b3e971 PHP_MD5=d79afea1870277c86fac903566fb6c5d
# Tue, 28 Feb 2017 17:47:45 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:47:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:51:21 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:51:22 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:51:23 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:51:23 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:51:24 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Feb 2017 17:51:24 GMT
EXPOSE 9000/tcp
# Tue, 28 Feb 2017 17:51:25 GMT
CMD ["php-fpm"]
# Wed, 01 Mar 2017 01:39:52 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:39:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:39:54 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:35:03 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:35:04 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:35:06 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:35:07 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:35:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:35:08 GMT
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
	-	`sha256:26f382970c8d70cb2cbd2f82ee3fc7c54cc1d9b437a3530335365c1119f23c02`  
		Last Modified: Wed, 01 Mar 2017 16:56:30 GMT  
		Size: 12.9 MB (12891559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2030de85ff596fc9735e77460301dfdf2f53329911a14beb19cc0e1f03ea2dc2`  
		Last Modified: Wed, 01 Mar 2017 16:56:28 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7397b48573186994ec98f7d5f2fb2f5034967f2cb81b879c95bfe0accebcfec1`  
		Last Modified: Wed, 01 Mar 2017 16:56:32 GMT  
		Size: 13.2 MB (13240078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee703085a0d8154810820db2d9eb0fb263282e12d23a77814a16029cab89488`  
		Last Modified: Wed, 01 Mar 2017 16:56:27 GMT  
		Size: 2.0 KB (2012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e9c4adf52cfe6c06dfdb09e0f8b4ce0c639d08db81175e2333f27a0b829ef3`  
		Last Modified: Wed, 01 Mar 2017 16:56:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fd7ad7bf06c310b9b5b80910d9ad8c535b7583aa07d423919860ae3962cf30`  
		Last Modified: Wed, 01 Mar 2017 16:56:27 GMT  
		Size: 7.7 KB (7693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2caafa5b3b9b36794e19fb519fcc2acf333d5cf88fe87a6d70d41e3efe196956`  
		Last Modified: Thu, 02 Mar 2017 05:02:47 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ca7d533ad29446d72128c571ccdac017c30ed42ec23879314db642b322772a`  
		Last Modified: Thu, 02 Mar 2017 05:02:48 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d2720b3f95fa9346692b284c287d9315edb70b1b20a27dd3cef0032ad58554`  
		Last Modified: Tue, 07 Mar 2017 01:53:33 GMT  
		Size: 7.8 MB (7836677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0f8f67cb3849c3208fac4ce5c3a5cefa85fec09041ee3dfeaa69bffa1f3f9d`  
		Last Modified: Tue, 07 Mar 2017 01:53:32 GMT  
		Size: 3.1 KB (3131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php7.1-fpm`

```console
$ docker pull wordpress@sha256:ba4e91f521b324890a7323a29e2062d521877adc91eaa183ecc1f3ac7a5964ac
```

-	Platforms:
	-	linux; amd64

### `wordpress:php7.1-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165160200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7b2ca041777e04ca46fcfe9a12d0f91405eb07e800d99c95d979e1478fe6ba4`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Tue, 28 Feb 2017 17:47:32 GMT
ENV PHP_VERSION=7.1.2
# Tue, 28 Feb 2017 17:47:33 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.2.tar.xz.asc/from/this/mirror
# Tue, 28 Feb 2017 17:47:33 GMT
ENV PHP_SHA256=d815a0c39fd57bab1434a77ff0610fb507c22f790c66cd6f26e27030c4b3e971 PHP_MD5=d79afea1870277c86fac903566fb6c5d
# Tue, 28 Feb 2017 17:47:45 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 28 Feb 2017 17:47:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:51:21 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 28 Feb 2017 17:51:22 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 28 Feb 2017 17:51:23 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 28 Feb 2017 17:51:23 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 17:51:24 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 28 Feb 2017 17:51:24 GMT
EXPOSE 9000/tcp
# Tue, 28 Feb 2017 17:51:25 GMT
CMD ["php-fpm"]
# Wed, 01 Mar 2017 01:39:52 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		libjpeg-dev 		libpng12-dev 	; 	rm -rf /var/lib/apt/lists/*; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache
# Wed, 01 Mar 2017 01:39:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 01 Mar 2017 01:39:54 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:35:03 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:35:04 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:35:06 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:35:07 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:35:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:35:08 GMT
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
	-	`sha256:26f382970c8d70cb2cbd2f82ee3fc7c54cc1d9b437a3530335365c1119f23c02`  
		Last Modified: Wed, 01 Mar 2017 16:56:30 GMT  
		Size: 12.9 MB (12891559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2030de85ff596fc9735e77460301dfdf2f53329911a14beb19cc0e1f03ea2dc2`  
		Last Modified: Wed, 01 Mar 2017 16:56:28 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7397b48573186994ec98f7d5f2fb2f5034967f2cb81b879c95bfe0accebcfec1`  
		Last Modified: Wed, 01 Mar 2017 16:56:32 GMT  
		Size: 13.2 MB (13240078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee703085a0d8154810820db2d9eb0fb263282e12d23a77814a16029cab89488`  
		Last Modified: Wed, 01 Mar 2017 16:56:27 GMT  
		Size: 2.0 KB (2012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e9c4adf52cfe6c06dfdb09e0f8b4ce0c639d08db81175e2333f27a0b829ef3`  
		Last Modified: Wed, 01 Mar 2017 16:56:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fd7ad7bf06c310b9b5b80910d9ad8c535b7583aa07d423919860ae3962cf30`  
		Last Modified: Wed, 01 Mar 2017 16:56:27 GMT  
		Size: 7.7 KB (7693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2caafa5b3b9b36794e19fb519fcc2acf333d5cf88fe87a6d70d41e3efe196956`  
		Last Modified: Thu, 02 Mar 2017 05:02:47 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ca7d533ad29446d72128c571ccdac017c30ed42ec23879314db642b322772a`  
		Last Modified: Thu, 02 Mar 2017 05:02:48 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d2720b3f95fa9346692b284c287d9315edb70b1b20a27dd3cef0032ad58554`  
		Last Modified: Tue, 07 Mar 2017 01:53:33 GMT  
		Size: 7.8 MB (7836677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0f8f67cb3849c3208fac4ce5c3a5cefa85fec09041ee3dfeaa69bffa1f3f9d`  
		Last Modified: Tue, 07 Mar 2017 01:53:32 GMT  
		Size: 3.1 KB (3131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7.3-php7.1-fpm-alpine`

```console
$ docker pull wordpress@sha256:a0c282eaf04d1f041fc498db4b0a2b694b60a2715197e1b1dd86de7781916416
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7.3-php7.1-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 MB (39996997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e74cd0697bc915df338af427a1d31ad870d73fa172ecf118af54c1929fc4402`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:42:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 22:53:23 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 03 Mar 2017 22:53:23 GMT
ENV PHP_VERSION=7.1.2
# Fri, 03 Mar 2017 22:53:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.2.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 22:53:24 GMT
ENV PHP_SHA256=d815a0c39fd57bab1434a77ff0610fb507c22f790c66cd6f26e27030c4b3e971 PHP_MD5=d79afea1870277c86fac903566fb6c5d
# Fri, 03 Mar 2017 22:53:29 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 22:53:30 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 22:57:14 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 22:57:15 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 03 Mar 2017 22:57:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 22:57:16 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 22:57:16 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 03 Mar 2017 22:57:17 GMT
EXPOSE 9000/tcp
# Fri, 03 Mar 2017 22:57:17 GMT
CMD ["php-fpm"]
# Fri, 03 Mar 2017 23:51:14 GMT
RUN apk add --no-cache 		bash 		sed
# Fri, 03 Mar 2017 23:51:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 03 Mar 2017 23:51:54 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 03 Mar 2017 23:51:54 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:35:10 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:35:10 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:35:12 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:35:13 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:35:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:35:14 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:700e8181bd5281f66929880708f2a740455ec09df52af148db813a1d0e8aacf6`  
		Last Modified: Sat, 04 Mar 2017 06:27:11 GMT  
		Size: 13.0 MB (12956038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9e2981227a46e3eb662761650f436208934108c48dc3c9c9b36757529e5f6b`  
		Last Modified: Sat, 04 Mar 2017 06:27:06 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a159119e460e8b74bbba2b37bfbf8f406463965c8def00f134f8d171764a0d57`  
		Last Modified: Sat, 04 Mar 2017 06:27:26 GMT  
		Size: 14.4 MB (14424001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7ce478320ed6ebc876bc35b60cf444c06f0269d645be2877a5fb795d382226`  
		Last Modified: Sat, 04 Mar 2017 06:27:06 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8978e6cf8e3132b7dae7cab2a96b1e5d3b244dc2467d80f2b91668fb891599f5`  
		Last Modified: Sat, 04 Mar 2017 06:27:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c26b5e66f744f4e13067ad5c453bf12853405dfce6770a4edc98d6db1aa6e96`  
		Last Modified: Sat, 04 Mar 2017 06:27:06 GMT  
		Size: 7.7 KB (7682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f0cfc71d7434bac65397733cb8e00d65f12f8dbeaee4a89a11baf3e39d327f`  
		Last Modified: Sat, 04 Mar 2017 06:41:03 GMT  
		Size: 590.0 KB (589990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dea0253d10500c36be1f3d172062012c6124b443552cfb98f520edb608c7e45`  
		Last Modified: Sat, 04 Mar 2017 06:41:03 GMT  
		Size: 802.0 KB (801992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9bff8052733e9b186fec038c60d2b1b1112922bb851ad9fc2e814e8f3ed32d`  
		Last Modified: Sat, 04 Mar 2017 06:41:02 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a13aece4a885c9c8559c4dbd778f81b1284fec99e7ac566612e5c50a30b99d1`  
		Last Modified: Tue, 07 Mar 2017 01:54:56 GMT  
		Size: 7.8 MB (7836835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f574327cbd1906af394e3ea0e8de0808621381b57709c47fd62932cde6f73cb`  
		Last Modified: Tue, 07 Mar 2017 01:54:54 GMT  
		Size: 3.1 KB (3124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4.7-php7.1-fpm-alpine`

```console
$ docker pull wordpress@sha256:a0c282eaf04d1f041fc498db4b0a2b694b60a2715197e1b1dd86de7781916416
```

-	Platforms:
	-	linux; amd64

### `wordpress:4.7-php7.1-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 MB (39996997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e74cd0697bc915df338af427a1d31ad870d73fa172ecf118af54c1929fc4402`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:42:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 22:53:23 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 03 Mar 2017 22:53:23 GMT
ENV PHP_VERSION=7.1.2
# Fri, 03 Mar 2017 22:53:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.2.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 22:53:24 GMT
ENV PHP_SHA256=d815a0c39fd57bab1434a77ff0610fb507c22f790c66cd6f26e27030c4b3e971 PHP_MD5=d79afea1870277c86fac903566fb6c5d
# Fri, 03 Mar 2017 22:53:29 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 22:53:30 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 22:57:14 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 22:57:15 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 03 Mar 2017 22:57:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 22:57:16 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 22:57:16 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 03 Mar 2017 22:57:17 GMT
EXPOSE 9000/tcp
# Fri, 03 Mar 2017 22:57:17 GMT
CMD ["php-fpm"]
# Fri, 03 Mar 2017 23:51:14 GMT
RUN apk add --no-cache 		bash 		sed
# Fri, 03 Mar 2017 23:51:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 03 Mar 2017 23:51:54 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 03 Mar 2017 23:51:54 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:35:10 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:35:10 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:35:12 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:35:13 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:35:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:35:14 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:700e8181bd5281f66929880708f2a740455ec09df52af148db813a1d0e8aacf6`  
		Last Modified: Sat, 04 Mar 2017 06:27:11 GMT  
		Size: 13.0 MB (12956038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9e2981227a46e3eb662761650f436208934108c48dc3c9c9b36757529e5f6b`  
		Last Modified: Sat, 04 Mar 2017 06:27:06 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a159119e460e8b74bbba2b37bfbf8f406463965c8def00f134f8d171764a0d57`  
		Last Modified: Sat, 04 Mar 2017 06:27:26 GMT  
		Size: 14.4 MB (14424001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7ce478320ed6ebc876bc35b60cf444c06f0269d645be2877a5fb795d382226`  
		Last Modified: Sat, 04 Mar 2017 06:27:06 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8978e6cf8e3132b7dae7cab2a96b1e5d3b244dc2467d80f2b91668fb891599f5`  
		Last Modified: Sat, 04 Mar 2017 06:27:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c26b5e66f744f4e13067ad5c453bf12853405dfce6770a4edc98d6db1aa6e96`  
		Last Modified: Sat, 04 Mar 2017 06:27:06 GMT  
		Size: 7.7 KB (7682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f0cfc71d7434bac65397733cb8e00d65f12f8dbeaee4a89a11baf3e39d327f`  
		Last Modified: Sat, 04 Mar 2017 06:41:03 GMT  
		Size: 590.0 KB (589990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dea0253d10500c36be1f3d172062012c6124b443552cfb98f520edb608c7e45`  
		Last Modified: Sat, 04 Mar 2017 06:41:03 GMT  
		Size: 802.0 KB (801992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9bff8052733e9b186fec038c60d2b1b1112922bb851ad9fc2e814e8f3ed32d`  
		Last Modified: Sat, 04 Mar 2017 06:41:02 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a13aece4a885c9c8559c4dbd778f81b1284fec99e7ac566612e5c50a30b99d1`  
		Last Modified: Tue, 07 Mar 2017 01:54:56 GMT  
		Size: 7.8 MB (7836835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f574327cbd1906af394e3ea0e8de0808621381b57709c47fd62932cde6f73cb`  
		Last Modified: Tue, 07 Mar 2017 01:54:54 GMT  
		Size: 3.1 KB (3124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:4-php7.1-fpm-alpine`

```console
$ docker pull wordpress@sha256:a0c282eaf04d1f041fc498db4b0a2b694b60a2715197e1b1dd86de7781916416
```

-	Platforms:
	-	linux; amd64

### `wordpress:4-php7.1-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 MB (39996997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e74cd0697bc915df338af427a1d31ad870d73fa172ecf118af54c1929fc4402`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:42:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 22:53:23 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 03 Mar 2017 22:53:23 GMT
ENV PHP_VERSION=7.1.2
# Fri, 03 Mar 2017 22:53:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.2.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 22:53:24 GMT
ENV PHP_SHA256=d815a0c39fd57bab1434a77ff0610fb507c22f790c66cd6f26e27030c4b3e971 PHP_MD5=d79afea1870277c86fac903566fb6c5d
# Fri, 03 Mar 2017 22:53:29 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 22:53:30 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 22:57:14 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 22:57:15 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 03 Mar 2017 22:57:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 22:57:16 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 22:57:16 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 03 Mar 2017 22:57:17 GMT
EXPOSE 9000/tcp
# Fri, 03 Mar 2017 22:57:17 GMT
CMD ["php-fpm"]
# Fri, 03 Mar 2017 23:51:14 GMT
RUN apk add --no-cache 		bash 		sed
# Fri, 03 Mar 2017 23:51:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 03 Mar 2017 23:51:54 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 03 Mar 2017 23:51:54 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:35:10 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:35:10 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:35:12 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:35:13 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:35:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:35:14 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:700e8181bd5281f66929880708f2a740455ec09df52af148db813a1d0e8aacf6`  
		Last Modified: Sat, 04 Mar 2017 06:27:11 GMT  
		Size: 13.0 MB (12956038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9e2981227a46e3eb662761650f436208934108c48dc3c9c9b36757529e5f6b`  
		Last Modified: Sat, 04 Mar 2017 06:27:06 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a159119e460e8b74bbba2b37bfbf8f406463965c8def00f134f8d171764a0d57`  
		Last Modified: Sat, 04 Mar 2017 06:27:26 GMT  
		Size: 14.4 MB (14424001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7ce478320ed6ebc876bc35b60cf444c06f0269d645be2877a5fb795d382226`  
		Last Modified: Sat, 04 Mar 2017 06:27:06 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8978e6cf8e3132b7dae7cab2a96b1e5d3b244dc2467d80f2b91668fb891599f5`  
		Last Modified: Sat, 04 Mar 2017 06:27:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c26b5e66f744f4e13067ad5c453bf12853405dfce6770a4edc98d6db1aa6e96`  
		Last Modified: Sat, 04 Mar 2017 06:27:06 GMT  
		Size: 7.7 KB (7682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f0cfc71d7434bac65397733cb8e00d65f12f8dbeaee4a89a11baf3e39d327f`  
		Last Modified: Sat, 04 Mar 2017 06:41:03 GMT  
		Size: 590.0 KB (589990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dea0253d10500c36be1f3d172062012c6124b443552cfb98f520edb608c7e45`  
		Last Modified: Sat, 04 Mar 2017 06:41:03 GMT  
		Size: 802.0 KB (801992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9bff8052733e9b186fec038c60d2b1b1112922bb851ad9fc2e814e8f3ed32d`  
		Last Modified: Sat, 04 Mar 2017 06:41:02 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a13aece4a885c9c8559c4dbd778f81b1284fec99e7ac566612e5c50a30b99d1`  
		Last Modified: Tue, 07 Mar 2017 01:54:56 GMT  
		Size: 7.8 MB (7836835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f574327cbd1906af394e3ea0e8de0808621381b57709c47fd62932cde6f73cb`  
		Last Modified: Tue, 07 Mar 2017 01:54:54 GMT  
		Size: 3.1 KB (3124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `wordpress:php7.1-fpm-alpine`

```console
$ docker pull wordpress@sha256:a0c282eaf04d1f041fc498db4b0a2b694b60a2715197e1b1dd86de7781916416
```

-	Platforms:
	-	linux; amd64

### `wordpress:php7.1-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 MB (39996997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e74cd0697bc915df338af427a1d31ad870d73fa172ecf118af54c1929fc4402`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:39:08 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 03 Mar 2017 22:39:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Fri, 03 Mar 2017 22:39:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 03 Mar 2017 22:39:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 03 Mar 2017 22:39:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 03 Mar 2017 22:42:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 03 Mar 2017 22:42:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 03 Mar 2017 22:53:23 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 03 Mar 2017 22:53:23 GMT
ENV PHP_VERSION=7.1.2
# Fri, 03 Mar 2017 22:53:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.2.tar.xz.asc/from/this/mirror
# Fri, 03 Mar 2017 22:53:24 GMT
ENV PHP_SHA256=d815a0c39fd57bab1434a77ff0610fb507c22f790c66cd6f26e27030c4b3e971 PHP_MD5=d79afea1870277c86fac903566fb6c5d
# Fri, 03 Mar 2017 22:53:29 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 03 Mar 2017 22:53:30 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 03 Mar 2017 22:57:14 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 03 Mar 2017 22:57:15 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 03 Mar 2017 22:57:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Mar 2017 22:57:16 GMT
WORKDIR /var/www/html
# Fri, 03 Mar 2017 22:57:16 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 03 Mar 2017 22:57:17 GMT
EXPOSE 9000/tcp
# Fri, 03 Mar 2017 22:57:17 GMT
CMD ["php-fpm"]
# Fri, 03 Mar 2017 23:51:14 GMT
RUN apk add --no-cache 		bash 		sed
# Fri, 03 Mar 2017 23:51:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 03 Mar 2017 23:51:54 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 03 Mar 2017 23:51:54 GMT
VOLUME [/var/www/html]
# Tue, 07 Mar 2017 01:35:10 GMT
ENV WORDPRESS_VERSION=4.7.3
# Tue, 07 Mar 2017 01:35:10 GMT
ENV WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98
# Tue, 07 Mar 2017 01:35:12 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 07 Mar 2017 01:35:13 GMT
COPY file:b5c332f80307d4248d07b035890c0ea453c1157d9e1732225f83f63d851392b5 in /usr/local/bin/ 
# Tue, 07 Mar 2017 01:35:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 01:35:14 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda85d7c7d403d3294dc0fd3136c7938c1b4363d401e06c2d18a0420cca3098`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.1 MB (1059578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a8556500b7d118d37ce0a91fa799baaab83df465277887c8ee4b4e508559b`  
		Last Modified: Sat, 04 Mar 2017 01:28:08 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96365c659331a7261d05510501ffe6fac163b13cda6047f966d8a29920717f52`  
		Last Modified: Sat, 04 Mar 2017 01:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:700e8181bd5281f66929880708f2a740455ec09df52af148db813a1d0e8aacf6`  
		Last Modified: Sat, 04 Mar 2017 06:27:11 GMT  
		Size: 13.0 MB (12956038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9e2981227a46e3eb662761650f436208934108c48dc3c9c9b36757529e5f6b`  
		Last Modified: Sat, 04 Mar 2017 06:27:06 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a159119e460e8b74bbba2b37bfbf8f406463965c8def00f134f8d171764a0d57`  
		Last Modified: Sat, 04 Mar 2017 06:27:26 GMT  
		Size: 14.4 MB (14424001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7ce478320ed6ebc876bc35b60cf444c06f0269d645be2877a5fb795d382226`  
		Last Modified: Sat, 04 Mar 2017 06:27:06 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8978e6cf8e3132b7dae7cab2a96b1e5d3b244dc2467d80f2b91668fb891599f5`  
		Last Modified: Sat, 04 Mar 2017 06:27:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c26b5e66f744f4e13067ad5c453bf12853405dfce6770a4edc98d6db1aa6e96`  
		Last Modified: Sat, 04 Mar 2017 06:27:06 GMT  
		Size: 7.7 KB (7682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f0cfc71d7434bac65397733cb8e00d65f12f8dbeaee4a89a11baf3e39d327f`  
		Last Modified: Sat, 04 Mar 2017 06:41:03 GMT  
		Size: 590.0 KB (589990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dea0253d10500c36be1f3d172062012c6124b443552cfb98f520edb608c7e45`  
		Last Modified: Sat, 04 Mar 2017 06:41:03 GMT  
		Size: 802.0 KB (801992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9bff8052733e9b186fec038c60d2b1b1112922bb851ad9fc2e814e8f3ed32d`  
		Last Modified: Sat, 04 Mar 2017 06:41:02 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a13aece4a885c9c8559c4dbd778f81b1284fec99e7ac566612e5c50a30b99d1`  
		Last Modified: Tue, 07 Mar 2017 01:54:56 GMT  
		Size: 7.8 MB (7836835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f574327cbd1906af394e3ea0e8de0808621381b57709c47fd62932cde6f73cb`  
		Last Modified: Tue, 07 Mar 2017 01:54:54 GMT  
		Size: 3.1 KB (3124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
