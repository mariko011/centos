<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `drupal`

-	[`drupal:8.3.0-rc2-apache`](#drupal830-rc2-apache)
-	[`drupal:8.3-rc-apache`](#drupal83-rc-apache)
-	[`drupal:rc-apache`](#drupalrc-apache)
-	[`drupal:8.3.0-rc2`](#drupal830-rc2)
-	[`drupal:8.3-rc`](#drupal83-rc)
-	[`drupal:rc`](#drupalrc)
-	[`drupal:8.3.0-rc2-fpm`](#drupal830-rc2-fpm)
-	[`drupal:8.3-rc-fpm`](#drupal83-rc-fpm)
-	[`drupal:rc-fpm`](#drupalrc-fpm)
-	[`drupal:8.3.0-rc2-fpm-alpine`](#drupal830-rc2-fpm-alpine)
-	[`drupal:8.3-rc-fpm-alpine`](#drupal83-rc-fpm-alpine)
-	[`drupal:rc-fpm-alpine`](#drupalrc-fpm-alpine)
-	[`drupal:8.2.7-apache`](#drupal827-apache)
-	[`drupal:8.2-apache`](#drupal82-apache)
-	[`drupal:8-apache`](#drupal8-apache)
-	[`drupal:apache`](#drupalapache)
-	[`drupal:8.2.7`](#drupal827)
-	[`drupal:8.2`](#drupal82)
-	[`drupal:8`](#drupal8)
-	[`drupal:latest`](#drupallatest)
-	[`drupal:8.2.7-fpm`](#drupal827-fpm)
-	[`drupal:8.2-fpm`](#drupal82-fpm)
-	[`drupal:8-fpm`](#drupal8-fpm)
-	[`drupal:fpm`](#drupalfpm)
-	[`drupal:8.2.7-fpm-alpine`](#drupal827-fpm-alpine)
-	[`drupal:8.2-fpm-alpine`](#drupal82-fpm-alpine)
-	[`drupal:8-fpm-alpine`](#drupal8-fpm-alpine)
-	[`drupal:fpm-alpine`](#drupalfpm-alpine)
-	[`drupal:7.54-apache`](#drupal754-apache)
-	[`drupal:7-apache`](#drupal7-apache)
-	[`drupal:7.54`](#drupal754)
-	[`drupal:7`](#drupal7)
-	[`drupal:7.54-fpm`](#drupal754-fpm)
-	[`drupal:7-fpm`](#drupal7-fpm)
-	[`drupal:7.54-fpm-alpine`](#drupal754-fpm-alpine)
-	[`drupal:7-fpm-alpine`](#drupal7-fpm-alpine)

## `drupal:8.3.0-rc2-apache`

```console
$ docker pull drupal@sha256:e09c8877291b54aeaf8c7628f8a326da0fd44233874353f919d58b266f8fd717
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3.0-rc2-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.8 MB (172829476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6afaccec33a12538a2b438f43ab921de5b7b3ae82f8d13ff2670e2eb527ca79e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 22:59:49 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 21 Mar 2017 22:59:50 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 21 Mar 2017 22:59:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 21 Mar 2017 22:59:52 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 21 Mar 2017 22:59:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:13:11 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 21 Mar 2017 23:13:12 GMT
ENV PHP_VERSION=7.1.3
# Tue, 21 Mar 2017 23:13:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.3.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:13:12 GMT
ENV PHP_SHA256=e4887c2634778e37fd962fbdf5c4a7d32cd708482fe07b448804625570cb0bb0 PHP_MD5=d604d688be17f4a05b99dbb7fb9581f4
# Tue, 21 Mar 2017 23:13:21 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:13:21 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:15:42 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:15:43 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:15:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:15:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:15:45 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:15:45 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 23:15:46 GMT
CMD ["apache2-foreground"]
# Wed, 22 Mar 2017 18:10:58 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 18:11:55 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:11:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 22 Mar 2017 18:11:57 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:11:57 GMT
ENV DRUPAL_VERSION=8.3.0-rc2
# Wed, 22 Mar 2017 18:11:57 GMT
ENV DRUPAL_MD5=3bcddc9a48801f7035c7cb0e6f02f6d0
# Wed, 22 Mar 2017 18:12:04 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf3547d9b739f2f04846520e0d804358ac8bb09d8fe087b9b22776466591147`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 2.9 MB (2858770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1004db2760ff505c8cb29d8b6e0c3807eb12a9c4f75dfe899ec12330443ae4c0`  
		Last Modified: Wed, 22 Mar 2017 23:53:16 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e2d66a547e35efdd6f59963e788cec2b96be1c0a95952c5760430c405c6466`  
		Last Modified: Wed, 22 Mar 2017 23:53:15 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfaa62c234a9168aa1e9a43ad031162a50b71dc0ebff0a48c05b33497a93d51`  
		Last Modified: Wed, 22 Mar 2017 23:53:14 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce8807f4d1a92b890a7878d0f6aadef4fe718b2d1a07b9c98ed585e87dc2e9`  
		Last Modified: Wed, 22 Mar 2017 23:53:13 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63f8d35ca798303c3a272c8b66590122bd5431a807f752815bcf74c7240199e7`  
		Last Modified: Thu, 23 Mar 2017 17:42:52 GMT  
		Size: 12.9 MB (12919540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5594b4d2a52081bd08983b536696b3a40f6784595493054493ff4a19370ce90`  
		Last Modified: Thu, 23 Mar 2017 17:42:48 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f1cbd038cf08a7f67c568548dcc899bc4770bdae242a2e64978da79367e9a2`  
		Last Modified: Thu, 23 Mar 2017 17:42:55 GMT  
		Size: 13.7 MB (13686268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a739656e85cbe1e91b6cc9eaa3066bcc7f78a15709d41bbe40a45991638b4475`  
		Last Modified: Thu, 23 Mar 2017 17:42:47 GMT  
		Size: 2.0 KB (2025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b6a5f245a1a29065cc5f5aeac6c8d77ee5edf7083a05d2d36ea0fc344cb303`  
		Last Modified: Thu, 23 Mar 2017 17:42:45 GMT  
		Size: 885.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5472bfe37406e12a8121162b731e2ea402d6a8a2ec892c2deec48d724b9cfef6`  
		Last Modified: Thu, 23 Mar 2017 17:42:45 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603f0454bb74014f4c5521ffb7cd512b2795f102111df52306c4a9e15127bd95`  
		Last Modified: Thu, 23 Mar 2017 17:42:46 GMT  
		Size: 1.8 MB (1840864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45841c2d2301841345fc7ed9663f24e70e68401200f6caf7ae953d9e654bbe09`  
		Last Modified: Thu, 23 Mar 2017 17:42:46 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad0088f868f738809cea1f89713ac4955a17d7205de8031cd8db996ac435d3b`  
		Last Modified: Thu, 23 Mar 2017 17:43:01 GMT  
		Size: 12.4 MB (12396994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.3-rc-apache`

```console
$ docker pull drupal@sha256:e09c8877291b54aeaf8c7628f8a326da0fd44233874353f919d58b266f8fd717
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3-rc-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.8 MB (172829476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6afaccec33a12538a2b438f43ab921de5b7b3ae82f8d13ff2670e2eb527ca79e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 22:59:49 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 21 Mar 2017 22:59:50 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 21 Mar 2017 22:59:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 21 Mar 2017 22:59:52 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 21 Mar 2017 22:59:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:13:11 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 21 Mar 2017 23:13:12 GMT
ENV PHP_VERSION=7.1.3
# Tue, 21 Mar 2017 23:13:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.3.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:13:12 GMT
ENV PHP_SHA256=e4887c2634778e37fd962fbdf5c4a7d32cd708482fe07b448804625570cb0bb0 PHP_MD5=d604d688be17f4a05b99dbb7fb9581f4
# Tue, 21 Mar 2017 23:13:21 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:13:21 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:15:42 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:15:43 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:15:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:15:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:15:45 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:15:45 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 23:15:46 GMT
CMD ["apache2-foreground"]
# Wed, 22 Mar 2017 18:10:58 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 18:11:55 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:11:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 22 Mar 2017 18:11:57 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:11:57 GMT
ENV DRUPAL_VERSION=8.3.0-rc2
# Wed, 22 Mar 2017 18:11:57 GMT
ENV DRUPAL_MD5=3bcddc9a48801f7035c7cb0e6f02f6d0
# Wed, 22 Mar 2017 18:12:04 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf3547d9b739f2f04846520e0d804358ac8bb09d8fe087b9b22776466591147`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 2.9 MB (2858770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1004db2760ff505c8cb29d8b6e0c3807eb12a9c4f75dfe899ec12330443ae4c0`  
		Last Modified: Wed, 22 Mar 2017 23:53:16 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e2d66a547e35efdd6f59963e788cec2b96be1c0a95952c5760430c405c6466`  
		Last Modified: Wed, 22 Mar 2017 23:53:15 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfaa62c234a9168aa1e9a43ad031162a50b71dc0ebff0a48c05b33497a93d51`  
		Last Modified: Wed, 22 Mar 2017 23:53:14 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce8807f4d1a92b890a7878d0f6aadef4fe718b2d1a07b9c98ed585e87dc2e9`  
		Last Modified: Wed, 22 Mar 2017 23:53:13 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63f8d35ca798303c3a272c8b66590122bd5431a807f752815bcf74c7240199e7`  
		Last Modified: Thu, 23 Mar 2017 17:42:52 GMT  
		Size: 12.9 MB (12919540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5594b4d2a52081bd08983b536696b3a40f6784595493054493ff4a19370ce90`  
		Last Modified: Thu, 23 Mar 2017 17:42:48 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f1cbd038cf08a7f67c568548dcc899bc4770bdae242a2e64978da79367e9a2`  
		Last Modified: Thu, 23 Mar 2017 17:42:55 GMT  
		Size: 13.7 MB (13686268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a739656e85cbe1e91b6cc9eaa3066bcc7f78a15709d41bbe40a45991638b4475`  
		Last Modified: Thu, 23 Mar 2017 17:42:47 GMT  
		Size: 2.0 KB (2025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b6a5f245a1a29065cc5f5aeac6c8d77ee5edf7083a05d2d36ea0fc344cb303`  
		Last Modified: Thu, 23 Mar 2017 17:42:45 GMT  
		Size: 885.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5472bfe37406e12a8121162b731e2ea402d6a8a2ec892c2deec48d724b9cfef6`  
		Last Modified: Thu, 23 Mar 2017 17:42:45 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603f0454bb74014f4c5521ffb7cd512b2795f102111df52306c4a9e15127bd95`  
		Last Modified: Thu, 23 Mar 2017 17:42:46 GMT  
		Size: 1.8 MB (1840864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45841c2d2301841345fc7ed9663f24e70e68401200f6caf7ae953d9e654bbe09`  
		Last Modified: Thu, 23 Mar 2017 17:42:46 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad0088f868f738809cea1f89713ac4955a17d7205de8031cd8db996ac435d3b`  
		Last Modified: Thu, 23 Mar 2017 17:43:01 GMT  
		Size: 12.4 MB (12396994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:rc-apache`

```console
$ docker pull drupal@sha256:e09c8877291b54aeaf8c7628f8a326da0fd44233874353f919d58b266f8fd717
```

-	Platforms:
	-	linux; amd64

### `drupal:rc-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.8 MB (172829476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6afaccec33a12538a2b438f43ab921de5b7b3ae82f8d13ff2670e2eb527ca79e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 22:59:49 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 21 Mar 2017 22:59:50 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 21 Mar 2017 22:59:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 21 Mar 2017 22:59:52 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 21 Mar 2017 22:59:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:13:11 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 21 Mar 2017 23:13:12 GMT
ENV PHP_VERSION=7.1.3
# Tue, 21 Mar 2017 23:13:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.3.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:13:12 GMT
ENV PHP_SHA256=e4887c2634778e37fd962fbdf5c4a7d32cd708482fe07b448804625570cb0bb0 PHP_MD5=d604d688be17f4a05b99dbb7fb9581f4
# Tue, 21 Mar 2017 23:13:21 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:13:21 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:15:42 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:15:43 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:15:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:15:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:15:45 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:15:45 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 23:15:46 GMT
CMD ["apache2-foreground"]
# Wed, 22 Mar 2017 18:10:58 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 18:11:55 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:11:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 22 Mar 2017 18:11:57 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:11:57 GMT
ENV DRUPAL_VERSION=8.3.0-rc2
# Wed, 22 Mar 2017 18:11:57 GMT
ENV DRUPAL_MD5=3bcddc9a48801f7035c7cb0e6f02f6d0
# Wed, 22 Mar 2017 18:12:04 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf3547d9b739f2f04846520e0d804358ac8bb09d8fe087b9b22776466591147`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 2.9 MB (2858770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1004db2760ff505c8cb29d8b6e0c3807eb12a9c4f75dfe899ec12330443ae4c0`  
		Last Modified: Wed, 22 Mar 2017 23:53:16 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e2d66a547e35efdd6f59963e788cec2b96be1c0a95952c5760430c405c6466`  
		Last Modified: Wed, 22 Mar 2017 23:53:15 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfaa62c234a9168aa1e9a43ad031162a50b71dc0ebff0a48c05b33497a93d51`  
		Last Modified: Wed, 22 Mar 2017 23:53:14 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce8807f4d1a92b890a7878d0f6aadef4fe718b2d1a07b9c98ed585e87dc2e9`  
		Last Modified: Wed, 22 Mar 2017 23:53:13 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63f8d35ca798303c3a272c8b66590122bd5431a807f752815bcf74c7240199e7`  
		Last Modified: Thu, 23 Mar 2017 17:42:52 GMT  
		Size: 12.9 MB (12919540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5594b4d2a52081bd08983b536696b3a40f6784595493054493ff4a19370ce90`  
		Last Modified: Thu, 23 Mar 2017 17:42:48 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f1cbd038cf08a7f67c568548dcc899bc4770bdae242a2e64978da79367e9a2`  
		Last Modified: Thu, 23 Mar 2017 17:42:55 GMT  
		Size: 13.7 MB (13686268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a739656e85cbe1e91b6cc9eaa3066bcc7f78a15709d41bbe40a45991638b4475`  
		Last Modified: Thu, 23 Mar 2017 17:42:47 GMT  
		Size: 2.0 KB (2025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b6a5f245a1a29065cc5f5aeac6c8d77ee5edf7083a05d2d36ea0fc344cb303`  
		Last Modified: Thu, 23 Mar 2017 17:42:45 GMT  
		Size: 885.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5472bfe37406e12a8121162b731e2ea402d6a8a2ec892c2deec48d724b9cfef6`  
		Last Modified: Thu, 23 Mar 2017 17:42:45 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603f0454bb74014f4c5521ffb7cd512b2795f102111df52306c4a9e15127bd95`  
		Last Modified: Thu, 23 Mar 2017 17:42:46 GMT  
		Size: 1.8 MB (1840864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45841c2d2301841345fc7ed9663f24e70e68401200f6caf7ae953d9e654bbe09`  
		Last Modified: Thu, 23 Mar 2017 17:42:46 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad0088f868f738809cea1f89713ac4955a17d7205de8031cd8db996ac435d3b`  
		Last Modified: Thu, 23 Mar 2017 17:43:01 GMT  
		Size: 12.4 MB (12396994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.3.0-rc2`

```console
$ docker pull drupal@sha256:e09c8877291b54aeaf8c7628f8a326da0fd44233874353f919d58b266f8fd717
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3.0-rc2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.8 MB (172829476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6afaccec33a12538a2b438f43ab921de5b7b3ae82f8d13ff2670e2eb527ca79e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 22:59:49 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 21 Mar 2017 22:59:50 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 21 Mar 2017 22:59:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 21 Mar 2017 22:59:52 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 21 Mar 2017 22:59:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:13:11 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 21 Mar 2017 23:13:12 GMT
ENV PHP_VERSION=7.1.3
# Tue, 21 Mar 2017 23:13:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.3.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:13:12 GMT
ENV PHP_SHA256=e4887c2634778e37fd962fbdf5c4a7d32cd708482fe07b448804625570cb0bb0 PHP_MD5=d604d688be17f4a05b99dbb7fb9581f4
# Tue, 21 Mar 2017 23:13:21 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:13:21 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:15:42 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:15:43 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:15:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:15:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:15:45 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:15:45 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 23:15:46 GMT
CMD ["apache2-foreground"]
# Wed, 22 Mar 2017 18:10:58 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 18:11:55 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:11:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 22 Mar 2017 18:11:57 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:11:57 GMT
ENV DRUPAL_VERSION=8.3.0-rc2
# Wed, 22 Mar 2017 18:11:57 GMT
ENV DRUPAL_MD5=3bcddc9a48801f7035c7cb0e6f02f6d0
# Wed, 22 Mar 2017 18:12:04 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf3547d9b739f2f04846520e0d804358ac8bb09d8fe087b9b22776466591147`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 2.9 MB (2858770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1004db2760ff505c8cb29d8b6e0c3807eb12a9c4f75dfe899ec12330443ae4c0`  
		Last Modified: Wed, 22 Mar 2017 23:53:16 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e2d66a547e35efdd6f59963e788cec2b96be1c0a95952c5760430c405c6466`  
		Last Modified: Wed, 22 Mar 2017 23:53:15 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfaa62c234a9168aa1e9a43ad031162a50b71dc0ebff0a48c05b33497a93d51`  
		Last Modified: Wed, 22 Mar 2017 23:53:14 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce8807f4d1a92b890a7878d0f6aadef4fe718b2d1a07b9c98ed585e87dc2e9`  
		Last Modified: Wed, 22 Mar 2017 23:53:13 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63f8d35ca798303c3a272c8b66590122bd5431a807f752815bcf74c7240199e7`  
		Last Modified: Thu, 23 Mar 2017 17:42:52 GMT  
		Size: 12.9 MB (12919540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5594b4d2a52081bd08983b536696b3a40f6784595493054493ff4a19370ce90`  
		Last Modified: Thu, 23 Mar 2017 17:42:48 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f1cbd038cf08a7f67c568548dcc899bc4770bdae242a2e64978da79367e9a2`  
		Last Modified: Thu, 23 Mar 2017 17:42:55 GMT  
		Size: 13.7 MB (13686268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a739656e85cbe1e91b6cc9eaa3066bcc7f78a15709d41bbe40a45991638b4475`  
		Last Modified: Thu, 23 Mar 2017 17:42:47 GMT  
		Size: 2.0 KB (2025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b6a5f245a1a29065cc5f5aeac6c8d77ee5edf7083a05d2d36ea0fc344cb303`  
		Last Modified: Thu, 23 Mar 2017 17:42:45 GMT  
		Size: 885.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5472bfe37406e12a8121162b731e2ea402d6a8a2ec892c2deec48d724b9cfef6`  
		Last Modified: Thu, 23 Mar 2017 17:42:45 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603f0454bb74014f4c5521ffb7cd512b2795f102111df52306c4a9e15127bd95`  
		Last Modified: Thu, 23 Mar 2017 17:42:46 GMT  
		Size: 1.8 MB (1840864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45841c2d2301841345fc7ed9663f24e70e68401200f6caf7ae953d9e654bbe09`  
		Last Modified: Thu, 23 Mar 2017 17:42:46 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad0088f868f738809cea1f89713ac4955a17d7205de8031cd8db996ac435d3b`  
		Last Modified: Thu, 23 Mar 2017 17:43:01 GMT  
		Size: 12.4 MB (12396994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.3-rc`

```console
$ docker pull drupal@sha256:e09c8877291b54aeaf8c7628f8a326da0fd44233874353f919d58b266f8fd717
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3-rc` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.8 MB (172829476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6afaccec33a12538a2b438f43ab921de5b7b3ae82f8d13ff2670e2eb527ca79e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 22:59:49 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 21 Mar 2017 22:59:50 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 21 Mar 2017 22:59:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 21 Mar 2017 22:59:52 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 21 Mar 2017 22:59:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:13:11 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 21 Mar 2017 23:13:12 GMT
ENV PHP_VERSION=7.1.3
# Tue, 21 Mar 2017 23:13:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.3.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:13:12 GMT
ENV PHP_SHA256=e4887c2634778e37fd962fbdf5c4a7d32cd708482fe07b448804625570cb0bb0 PHP_MD5=d604d688be17f4a05b99dbb7fb9581f4
# Tue, 21 Mar 2017 23:13:21 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:13:21 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:15:42 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:15:43 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:15:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:15:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:15:45 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:15:45 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 23:15:46 GMT
CMD ["apache2-foreground"]
# Wed, 22 Mar 2017 18:10:58 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 18:11:55 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:11:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 22 Mar 2017 18:11:57 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:11:57 GMT
ENV DRUPAL_VERSION=8.3.0-rc2
# Wed, 22 Mar 2017 18:11:57 GMT
ENV DRUPAL_MD5=3bcddc9a48801f7035c7cb0e6f02f6d0
# Wed, 22 Mar 2017 18:12:04 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf3547d9b739f2f04846520e0d804358ac8bb09d8fe087b9b22776466591147`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 2.9 MB (2858770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1004db2760ff505c8cb29d8b6e0c3807eb12a9c4f75dfe899ec12330443ae4c0`  
		Last Modified: Wed, 22 Mar 2017 23:53:16 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e2d66a547e35efdd6f59963e788cec2b96be1c0a95952c5760430c405c6466`  
		Last Modified: Wed, 22 Mar 2017 23:53:15 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfaa62c234a9168aa1e9a43ad031162a50b71dc0ebff0a48c05b33497a93d51`  
		Last Modified: Wed, 22 Mar 2017 23:53:14 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce8807f4d1a92b890a7878d0f6aadef4fe718b2d1a07b9c98ed585e87dc2e9`  
		Last Modified: Wed, 22 Mar 2017 23:53:13 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63f8d35ca798303c3a272c8b66590122bd5431a807f752815bcf74c7240199e7`  
		Last Modified: Thu, 23 Mar 2017 17:42:52 GMT  
		Size: 12.9 MB (12919540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5594b4d2a52081bd08983b536696b3a40f6784595493054493ff4a19370ce90`  
		Last Modified: Thu, 23 Mar 2017 17:42:48 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f1cbd038cf08a7f67c568548dcc899bc4770bdae242a2e64978da79367e9a2`  
		Last Modified: Thu, 23 Mar 2017 17:42:55 GMT  
		Size: 13.7 MB (13686268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a739656e85cbe1e91b6cc9eaa3066bcc7f78a15709d41bbe40a45991638b4475`  
		Last Modified: Thu, 23 Mar 2017 17:42:47 GMT  
		Size: 2.0 KB (2025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b6a5f245a1a29065cc5f5aeac6c8d77ee5edf7083a05d2d36ea0fc344cb303`  
		Last Modified: Thu, 23 Mar 2017 17:42:45 GMT  
		Size: 885.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5472bfe37406e12a8121162b731e2ea402d6a8a2ec892c2deec48d724b9cfef6`  
		Last Modified: Thu, 23 Mar 2017 17:42:45 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603f0454bb74014f4c5521ffb7cd512b2795f102111df52306c4a9e15127bd95`  
		Last Modified: Thu, 23 Mar 2017 17:42:46 GMT  
		Size: 1.8 MB (1840864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45841c2d2301841345fc7ed9663f24e70e68401200f6caf7ae953d9e654bbe09`  
		Last Modified: Thu, 23 Mar 2017 17:42:46 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad0088f868f738809cea1f89713ac4955a17d7205de8031cd8db996ac435d3b`  
		Last Modified: Thu, 23 Mar 2017 17:43:01 GMT  
		Size: 12.4 MB (12396994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:rc`

```console
$ docker pull drupal@sha256:e09c8877291b54aeaf8c7628f8a326da0fd44233874353f919d58b266f8fd717
```

-	Platforms:
	-	linux; amd64

### `drupal:rc` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.8 MB (172829476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6afaccec33a12538a2b438f43ab921de5b7b3ae82f8d13ff2670e2eb527ca79e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 22:59:49 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 21 Mar 2017 22:59:50 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 21 Mar 2017 22:59:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 21 Mar 2017 22:59:52 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 21 Mar 2017 22:59:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:13:11 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 21 Mar 2017 23:13:12 GMT
ENV PHP_VERSION=7.1.3
# Tue, 21 Mar 2017 23:13:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.3.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:13:12 GMT
ENV PHP_SHA256=e4887c2634778e37fd962fbdf5c4a7d32cd708482fe07b448804625570cb0bb0 PHP_MD5=d604d688be17f4a05b99dbb7fb9581f4
# Tue, 21 Mar 2017 23:13:21 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:13:21 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:15:42 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:15:43 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:15:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:15:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:15:45 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:15:45 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 23:15:46 GMT
CMD ["apache2-foreground"]
# Wed, 22 Mar 2017 18:10:58 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 18:11:55 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:11:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 22 Mar 2017 18:11:57 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:11:57 GMT
ENV DRUPAL_VERSION=8.3.0-rc2
# Wed, 22 Mar 2017 18:11:57 GMT
ENV DRUPAL_MD5=3bcddc9a48801f7035c7cb0e6f02f6d0
# Wed, 22 Mar 2017 18:12:04 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf3547d9b739f2f04846520e0d804358ac8bb09d8fe087b9b22776466591147`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 2.9 MB (2858770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1004db2760ff505c8cb29d8b6e0c3807eb12a9c4f75dfe899ec12330443ae4c0`  
		Last Modified: Wed, 22 Mar 2017 23:53:16 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e2d66a547e35efdd6f59963e788cec2b96be1c0a95952c5760430c405c6466`  
		Last Modified: Wed, 22 Mar 2017 23:53:15 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfaa62c234a9168aa1e9a43ad031162a50b71dc0ebff0a48c05b33497a93d51`  
		Last Modified: Wed, 22 Mar 2017 23:53:14 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce8807f4d1a92b890a7878d0f6aadef4fe718b2d1a07b9c98ed585e87dc2e9`  
		Last Modified: Wed, 22 Mar 2017 23:53:13 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63f8d35ca798303c3a272c8b66590122bd5431a807f752815bcf74c7240199e7`  
		Last Modified: Thu, 23 Mar 2017 17:42:52 GMT  
		Size: 12.9 MB (12919540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5594b4d2a52081bd08983b536696b3a40f6784595493054493ff4a19370ce90`  
		Last Modified: Thu, 23 Mar 2017 17:42:48 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f1cbd038cf08a7f67c568548dcc899bc4770bdae242a2e64978da79367e9a2`  
		Last Modified: Thu, 23 Mar 2017 17:42:55 GMT  
		Size: 13.7 MB (13686268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a739656e85cbe1e91b6cc9eaa3066bcc7f78a15709d41bbe40a45991638b4475`  
		Last Modified: Thu, 23 Mar 2017 17:42:47 GMT  
		Size: 2.0 KB (2025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b6a5f245a1a29065cc5f5aeac6c8d77ee5edf7083a05d2d36ea0fc344cb303`  
		Last Modified: Thu, 23 Mar 2017 17:42:45 GMT  
		Size: 885.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5472bfe37406e12a8121162b731e2ea402d6a8a2ec892c2deec48d724b9cfef6`  
		Last Modified: Thu, 23 Mar 2017 17:42:45 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603f0454bb74014f4c5521ffb7cd512b2795f102111df52306c4a9e15127bd95`  
		Last Modified: Thu, 23 Mar 2017 17:42:46 GMT  
		Size: 1.8 MB (1840864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45841c2d2301841345fc7ed9663f24e70e68401200f6caf7ae953d9e654bbe09`  
		Last Modified: Thu, 23 Mar 2017 17:42:46 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad0088f868f738809cea1f89713ac4955a17d7205de8031cd8db996ac435d3b`  
		Last Modified: Thu, 23 Mar 2017 17:43:01 GMT  
		Size: 12.4 MB (12396994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.3.0-rc2-fpm`

```console
$ docker pull drupal@sha256:93180b000355812cffcc5ffdcfdd87d00e6083668ad60c36cd0817f7583c949e
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3.0-rc2-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169491757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1daa848c3ed8d75dbc067e242eedb2f053d1ca5e4d60b80989750424a4f7e142`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 23:02:23 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 21 Mar 2017 23:02:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 23:02:24 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 23:02:24 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:15:46 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 21 Mar 2017 23:15:47 GMT
ENV PHP_VERSION=7.1.3
# Tue, 21 Mar 2017 23:15:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.3.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:15:48 GMT
ENV PHP_SHA256=e4887c2634778e37fd962fbdf5c4a7d32cd708482fe07b448804625570cb0bb0 PHP_MD5=d604d688be17f4a05b99dbb7fb9581f4
# Tue, 21 Mar 2017 23:15:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:15:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:19:35 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:19:37 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:19:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:19:37 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:19:38 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 21 Mar 2017 23:19:39 GMT
EXPOSE 9000/tcp
# Tue, 21 Mar 2017 23:19:39 GMT
CMD ["php-fpm"]
# Wed, 22 Mar 2017 18:13:02 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:13:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 22 Mar 2017 18:13:04 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:13:04 GMT
ENV DRUPAL_VERSION=8.3.0-rc2
# Wed, 22 Mar 2017 18:13:04 GMT
ENV DRUPAL_MD5=3bcddc9a48801f7035c7cb0e6f02f6d0
# Wed, 22 Mar 2017 18:13:11 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d4072b899de680139a505b5992bb6877989d93909304a0f1b8c50b9c0c8cdee`  
		Last Modified: Thu, 23 Mar 2017 17:46:01 GMT  
		Size: 12.9 MB (12900219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1ce34821cd797aae0fadd5f55df7adc0b6eaedd5ee1c7177bb2097a55a0ba9`  
		Last Modified: Thu, 23 Mar 2017 17:45:59 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e1156c2a72691e99c16e795b001be06b42bdaa5f0678d9a0ac2651d4a694dd`  
		Last Modified: Thu, 23 Mar 2017 17:46:04 GMT  
		Size: 13.2 MB (13244521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74bc03c6ec60bedba91c365cc9f94025ebfccfb904d81cbe7f6138e1915f53d5`  
		Last Modified: Thu, 23 Mar 2017 17:45:57 GMT  
		Size: 2.0 KB (2008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a257233aab912f5ab030982f471ef6239493b7c7eb9dd89a066280d8bc9da0c`  
		Last Modified: Thu, 23 Mar 2017 17:45:56 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e598beb3e68d50a615c9bbecb7f7e2a202bb8ddcafe4530942cc293d39451c4`  
		Last Modified: Thu, 23 Mar 2017 17:45:54 GMT  
		Size: 7.7 KB (7693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740e6cdbbdfc767fa0c9eadfaf6e390b22d90d38ac1f3f2be29077a76d0db654`  
		Last Modified: Thu, 23 Mar 2017 17:45:55 GMT  
		Size: 1.8 MB (1818743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3998438ecb65b465803b21bf52e10331b0ffe3b7ad510007eeba1e1b8cd42075`  
		Last Modified: Thu, 23 Mar 2017 17:45:54 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d6dfbb2c0a49e90a52298885da17de18dba0f0f7b6da93f10b25532595c81a`  
		Last Modified: Thu, 23 Mar 2017 17:46:10 GMT  
		Size: 12.4 MB (12396984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.3-rc-fpm`

```console
$ docker pull drupal@sha256:93180b000355812cffcc5ffdcfdd87d00e6083668ad60c36cd0817f7583c949e
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3-rc-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169491757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1daa848c3ed8d75dbc067e242eedb2f053d1ca5e4d60b80989750424a4f7e142`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 23:02:23 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 21 Mar 2017 23:02:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 23:02:24 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 23:02:24 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:15:46 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 21 Mar 2017 23:15:47 GMT
ENV PHP_VERSION=7.1.3
# Tue, 21 Mar 2017 23:15:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.3.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:15:48 GMT
ENV PHP_SHA256=e4887c2634778e37fd962fbdf5c4a7d32cd708482fe07b448804625570cb0bb0 PHP_MD5=d604d688be17f4a05b99dbb7fb9581f4
# Tue, 21 Mar 2017 23:15:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:15:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:19:35 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:19:37 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:19:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:19:37 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:19:38 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 21 Mar 2017 23:19:39 GMT
EXPOSE 9000/tcp
# Tue, 21 Mar 2017 23:19:39 GMT
CMD ["php-fpm"]
# Wed, 22 Mar 2017 18:13:02 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:13:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 22 Mar 2017 18:13:04 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:13:04 GMT
ENV DRUPAL_VERSION=8.3.0-rc2
# Wed, 22 Mar 2017 18:13:04 GMT
ENV DRUPAL_MD5=3bcddc9a48801f7035c7cb0e6f02f6d0
# Wed, 22 Mar 2017 18:13:11 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d4072b899de680139a505b5992bb6877989d93909304a0f1b8c50b9c0c8cdee`  
		Last Modified: Thu, 23 Mar 2017 17:46:01 GMT  
		Size: 12.9 MB (12900219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1ce34821cd797aae0fadd5f55df7adc0b6eaedd5ee1c7177bb2097a55a0ba9`  
		Last Modified: Thu, 23 Mar 2017 17:45:59 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e1156c2a72691e99c16e795b001be06b42bdaa5f0678d9a0ac2651d4a694dd`  
		Last Modified: Thu, 23 Mar 2017 17:46:04 GMT  
		Size: 13.2 MB (13244521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74bc03c6ec60bedba91c365cc9f94025ebfccfb904d81cbe7f6138e1915f53d5`  
		Last Modified: Thu, 23 Mar 2017 17:45:57 GMT  
		Size: 2.0 KB (2008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a257233aab912f5ab030982f471ef6239493b7c7eb9dd89a066280d8bc9da0c`  
		Last Modified: Thu, 23 Mar 2017 17:45:56 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e598beb3e68d50a615c9bbecb7f7e2a202bb8ddcafe4530942cc293d39451c4`  
		Last Modified: Thu, 23 Mar 2017 17:45:54 GMT  
		Size: 7.7 KB (7693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740e6cdbbdfc767fa0c9eadfaf6e390b22d90d38ac1f3f2be29077a76d0db654`  
		Last Modified: Thu, 23 Mar 2017 17:45:55 GMT  
		Size: 1.8 MB (1818743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3998438ecb65b465803b21bf52e10331b0ffe3b7ad510007eeba1e1b8cd42075`  
		Last Modified: Thu, 23 Mar 2017 17:45:54 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d6dfbb2c0a49e90a52298885da17de18dba0f0f7b6da93f10b25532595c81a`  
		Last Modified: Thu, 23 Mar 2017 17:46:10 GMT  
		Size: 12.4 MB (12396984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:rc-fpm`

```console
$ docker pull drupal@sha256:93180b000355812cffcc5ffdcfdd87d00e6083668ad60c36cd0817f7583c949e
```

-	Platforms:
	-	linux; amd64

### `drupal:rc-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169491757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1daa848c3ed8d75dbc067e242eedb2f053d1ca5e4d60b80989750424a4f7e142`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 23:02:23 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 21 Mar 2017 23:02:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 23:02:24 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 23:02:24 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:15:46 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 21 Mar 2017 23:15:47 GMT
ENV PHP_VERSION=7.1.3
# Tue, 21 Mar 2017 23:15:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.3.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:15:48 GMT
ENV PHP_SHA256=e4887c2634778e37fd962fbdf5c4a7d32cd708482fe07b448804625570cb0bb0 PHP_MD5=d604d688be17f4a05b99dbb7fb9581f4
# Tue, 21 Mar 2017 23:15:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:15:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:19:35 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:19:37 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:19:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:19:37 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:19:38 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 21 Mar 2017 23:19:39 GMT
EXPOSE 9000/tcp
# Tue, 21 Mar 2017 23:19:39 GMT
CMD ["php-fpm"]
# Wed, 22 Mar 2017 18:13:02 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:13:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 22 Mar 2017 18:13:04 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:13:04 GMT
ENV DRUPAL_VERSION=8.3.0-rc2
# Wed, 22 Mar 2017 18:13:04 GMT
ENV DRUPAL_MD5=3bcddc9a48801f7035c7cb0e6f02f6d0
# Wed, 22 Mar 2017 18:13:11 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d4072b899de680139a505b5992bb6877989d93909304a0f1b8c50b9c0c8cdee`  
		Last Modified: Thu, 23 Mar 2017 17:46:01 GMT  
		Size: 12.9 MB (12900219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1ce34821cd797aae0fadd5f55df7adc0b6eaedd5ee1c7177bb2097a55a0ba9`  
		Last Modified: Thu, 23 Mar 2017 17:45:59 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e1156c2a72691e99c16e795b001be06b42bdaa5f0678d9a0ac2651d4a694dd`  
		Last Modified: Thu, 23 Mar 2017 17:46:04 GMT  
		Size: 13.2 MB (13244521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74bc03c6ec60bedba91c365cc9f94025ebfccfb904d81cbe7f6138e1915f53d5`  
		Last Modified: Thu, 23 Mar 2017 17:45:57 GMT  
		Size: 2.0 KB (2008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a257233aab912f5ab030982f471ef6239493b7c7eb9dd89a066280d8bc9da0c`  
		Last Modified: Thu, 23 Mar 2017 17:45:56 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e598beb3e68d50a615c9bbecb7f7e2a202bb8ddcafe4530942cc293d39451c4`  
		Last Modified: Thu, 23 Mar 2017 17:45:54 GMT  
		Size: 7.7 KB (7693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740e6cdbbdfc767fa0c9eadfaf6e390b22d90d38ac1f3f2be29077a76d0db654`  
		Last Modified: Thu, 23 Mar 2017 17:45:55 GMT  
		Size: 1.8 MB (1818743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3998438ecb65b465803b21bf52e10331b0ffe3b7ad510007eeba1e1b8cd42075`  
		Last Modified: Thu, 23 Mar 2017 17:45:54 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d6dfbb2c0a49e90a52298885da17de18dba0f0f7b6da93f10b25532595c81a`  
		Last Modified: Thu, 23 Mar 2017 17:46:10 GMT  
		Size: 12.4 MB (12396984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.3.0-rc2-fpm-alpine`

```console
$ docker pull drupal@sha256:57fbe05835feaa8684a57d377e00d2d4df0f22a360403e8a541d512dd3e6e541
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3.0-rc2-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45582572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e139c6745cc0f502051ad85d4014ab236e5ccd60ceaf9d24847ad4cd11c6ad0`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Fri, 17 Mar 2017 22:50:05 GMT
ENV PHP_VERSION=7.0.17
# Fri, 17 Mar 2017 22:50:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Fri, 17 Mar 2017 22:50:06 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Fri, 17 Mar 2017 22:50:11 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 17 Mar 2017 22:50:12 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 17 Mar 2017 22:53:42 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 17 Mar 2017 22:53:43 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 17 Mar 2017 22:53:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 17 Mar 2017 22:53:44 GMT
WORKDIR /var/www/html
# Fri, 17 Mar 2017 22:53:45 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 17 Mar 2017 22:53:45 GMT
EXPOSE 9000/tcp
# Fri, 17 Mar 2017 22:53:46 GMT
CMD ["php-fpm"]
# Mon, 20 Mar 2017 17:58:41 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Mon, 20 Mar 2017 17:58:42 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 20 Mar 2017 17:58:43 GMT
WORKDIR /var/www/html
# Mon, 20 Mar 2017 18:01:17 GMT
ENV DRUPAL_VERSION=8.3.0-rc2
# Mon, 20 Mar 2017 18:01:18 GMT
ENV DRUPAL_MD5=3bcddc9a48801f7035c7cb0e6f02f6d0
# Mon, 20 Mar 2017 18:01:25 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:4a71032f36996c52cdc5d3899a337eadd2f5b5a7309da6f7f761758384fb6363`  
		Last Modified: Fri, 17 Mar 2017 23:20:34 GMT  
		Size: 12.8 MB (12763566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0fc9d424cfbfbae2ceb87dd09f19bed18a7e73cfefa0c79f6dc91013314399`  
		Last Modified: Fri, 17 Mar 2017 23:20:29 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5d359dac63dc82ae43410f8ad3855f8a2aaec29421b93c36d7c24646f26460`  
		Last Modified: Fri, 17 Mar 2017 23:20:34 GMT  
		Size: 14.0 MB (14048004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69582e193154c41d7e915b4c5a41a51dfc5ff6ce631ea8fb3178aeaed2d784bb`  
		Last Modified: Fri, 17 Mar 2017 23:20:29 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b33a55e487a68a5c3fad4df0a07757928c3e6851a5e255de54aa37121150ab6`  
		Last Modified: Fri, 17 Mar 2017 23:20:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0303332798597c27ac14722b933dc4e80cf9c2b6c6a6948a15a291bb40538d`  
		Last Modified: Fri, 17 Mar 2017 23:20:29 GMT  
		Size: 7.7 KB (7670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7057c38211d64db6ab7126ceca06caafd5966ebb9296e2c40fc83abdd6c6a098`  
		Last Modified: Mon, 20 Mar 2017 18:10:04 GMT  
		Size: 3.0 MB (2989013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910683e3a019ae24ea524b3ccb9ab8985503b27c781e287e4fa497de4e745bcd`  
		Last Modified: Mon, 20 Mar 2017 18:10:03 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4807b7c9bd1b68b82f3756a79efb81e6028f0a3d80c2e4a18e805860e70a40f`  
		Last Modified: Mon, 20 Mar 2017 18:14:40 GMT  
		Size: 12.4 MB (12396983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.3-rc-fpm-alpine`

```console
$ docker pull drupal@sha256:57fbe05835feaa8684a57d377e00d2d4df0f22a360403e8a541d512dd3e6e541
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3-rc-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45582572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e139c6745cc0f502051ad85d4014ab236e5ccd60ceaf9d24847ad4cd11c6ad0`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Fri, 17 Mar 2017 22:50:05 GMT
ENV PHP_VERSION=7.0.17
# Fri, 17 Mar 2017 22:50:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Fri, 17 Mar 2017 22:50:06 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Fri, 17 Mar 2017 22:50:11 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 17 Mar 2017 22:50:12 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 17 Mar 2017 22:53:42 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 17 Mar 2017 22:53:43 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 17 Mar 2017 22:53:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 17 Mar 2017 22:53:44 GMT
WORKDIR /var/www/html
# Fri, 17 Mar 2017 22:53:45 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 17 Mar 2017 22:53:45 GMT
EXPOSE 9000/tcp
# Fri, 17 Mar 2017 22:53:46 GMT
CMD ["php-fpm"]
# Mon, 20 Mar 2017 17:58:41 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Mon, 20 Mar 2017 17:58:42 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 20 Mar 2017 17:58:43 GMT
WORKDIR /var/www/html
# Mon, 20 Mar 2017 18:01:17 GMT
ENV DRUPAL_VERSION=8.3.0-rc2
# Mon, 20 Mar 2017 18:01:18 GMT
ENV DRUPAL_MD5=3bcddc9a48801f7035c7cb0e6f02f6d0
# Mon, 20 Mar 2017 18:01:25 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:4a71032f36996c52cdc5d3899a337eadd2f5b5a7309da6f7f761758384fb6363`  
		Last Modified: Fri, 17 Mar 2017 23:20:34 GMT  
		Size: 12.8 MB (12763566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0fc9d424cfbfbae2ceb87dd09f19bed18a7e73cfefa0c79f6dc91013314399`  
		Last Modified: Fri, 17 Mar 2017 23:20:29 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5d359dac63dc82ae43410f8ad3855f8a2aaec29421b93c36d7c24646f26460`  
		Last Modified: Fri, 17 Mar 2017 23:20:34 GMT  
		Size: 14.0 MB (14048004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69582e193154c41d7e915b4c5a41a51dfc5ff6ce631ea8fb3178aeaed2d784bb`  
		Last Modified: Fri, 17 Mar 2017 23:20:29 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b33a55e487a68a5c3fad4df0a07757928c3e6851a5e255de54aa37121150ab6`  
		Last Modified: Fri, 17 Mar 2017 23:20:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0303332798597c27ac14722b933dc4e80cf9c2b6c6a6948a15a291bb40538d`  
		Last Modified: Fri, 17 Mar 2017 23:20:29 GMT  
		Size: 7.7 KB (7670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7057c38211d64db6ab7126ceca06caafd5966ebb9296e2c40fc83abdd6c6a098`  
		Last Modified: Mon, 20 Mar 2017 18:10:04 GMT  
		Size: 3.0 MB (2989013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910683e3a019ae24ea524b3ccb9ab8985503b27c781e287e4fa497de4e745bcd`  
		Last Modified: Mon, 20 Mar 2017 18:10:03 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4807b7c9bd1b68b82f3756a79efb81e6028f0a3d80c2e4a18e805860e70a40f`  
		Last Modified: Mon, 20 Mar 2017 18:14:40 GMT  
		Size: 12.4 MB (12396983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:rc-fpm-alpine`

```console
$ docker pull drupal@sha256:57fbe05835feaa8684a57d377e00d2d4df0f22a360403e8a541d512dd3e6e541
```

-	Platforms:
	-	linux; amd64

### `drupal:rc-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45582572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e139c6745cc0f502051ad85d4014ab236e5ccd60ceaf9d24847ad4cd11c6ad0`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Fri, 17 Mar 2017 22:50:05 GMT
ENV PHP_VERSION=7.0.17
# Fri, 17 Mar 2017 22:50:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Fri, 17 Mar 2017 22:50:06 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Fri, 17 Mar 2017 22:50:11 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 17 Mar 2017 22:50:12 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 17 Mar 2017 22:53:42 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 17 Mar 2017 22:53:43 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 17 Mar 2017 22:53:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 17 Mar 2017 22:53:44 GMT
WORKDIR /var/www/html
# Fri, 17 Mar 2017 22:53:45 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 17 Mar 2017 22:53:45 GMT
EXPOSE 9000/tcp
# Fri, 17 Mar 2017 22:53:46 GMT
CMD ["php-fpm"]
# Mon, 20 Mar 2017 17:58:41 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Mon, 20 Mar 2017 17:58:42 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 20 Mar 2017 17:58:43 GMT
WORKDIR /var/www/html
# Mon, 20 Mar 2017 18:01:17 GMT
ENV DRUPAL_VERSION=8.3.0-rc2
# Mon, 20 Mar 2017 18:01:18 GMT
ENV DRUPAL_MD5=3bcddc9a48801f7035c7cb0e6f02f6d0
# Mon, 20 Mar 2017 18:01:25 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:4a71032f36996c52cdc5d3899a337eadd2f5b5a7309da6f7f761758384fb6363`  
		Last Modified: Fri, 17 Mar 2017 23:20:34 GMT  
		Size: 12.8 MB (12763566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0fc9d424cfbfbae2ceb87dd09f19bed18a7e73cfefa0c79f6dc91013314399`  
		Last Modified: Fri, 17 Mar 2017 23:20:29 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5d359dac63dc82ae43410f8ad3855f8a2aaec29421b93c36d7c24646f26460`  
		Last Modified: Fri, 17 Mar 2017 23:20:34 GMT  
		Size: 14.0 MB (14048004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69582e193154c41d7e915b4c5a41a51dfc5ff6ce631ea8fb3178aeaed2d784bb`  
		Last Modified: Fri, 17 Mar 2017 23:20:29 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b33a55e487a68a5c3fad4df0a07757928c3e6851a5e255de54aa37121150ab6`  
		Last Modified: Fri, 17 Mar 2017 23:20:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0303332798597c27ac14722b933dc4e80cf9c2b6c6a6948a15a291bb40538d`  
		Last Modified: Fri, 17 Mar 2017 23:20:29 GMT  
		Size: 7.7 KB (7670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7057c38211d64db6ab7126ceca06caafd5966ebb9296e2c40fc83abdd6c6a098`  
		Last Modified: Mon, 20 Mar 2017 18:10:04 GMT  
		Size: 3.0 MB (2989013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910683e3a019ae24ea524b3ccb9ab8985503b27c781e287e4fa497de4e745bcd`  
		Last Modified: Mon, 20 Mar 2017 18:10:03 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4807b7c9bd1b68b82f3756a79efb81e6028f0a3d80c2e4a18e805860e70a40f`  
		Last Modified: Mon, 20 Mar 2017 18:14:40 GMT  
		Size: 12.4 MB (12396983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2.7-apache`

```console
$ docker pull drupal@sha256:13c1ef6e91ff9d21dd7020eba341f1c14fc7814c0fe1abcc57ae7325ca41cf97
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.7-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (172024076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9366c791423625811926b3df5603bd1ddd963871112ab10eaa6a442e1ec2c25e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 22:59:49 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 21 Mar 2017 22:59:50 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 21 Mar 2017 22:59:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 21 Mar 2017 22:59:52 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 21 Mar 2017 22:59:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:27:13 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 23:27:13 GMT
ENV PHP_VERSION=7.0.17
# Tue, 21 Mar 2017 23:27:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:27:14 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Tue, 21 Mar 2017 23:27:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:27:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:43 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:29:44 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:29:45 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:45 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:29:46 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 23:29:46 GMT
CMD ["apache2-foreground"]
# Wed, 22 Mar 2017 18:07:08 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 18:09:45 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:09:46 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 22 Mar 2017 18:09:46 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:09:47 GMT
ENV DRUPAL_VERSION=8.2.7
# Wed, 22 Mar 2017 18:09:47 GMT
ENV DRUPAL_MD5=10b1669f750a9996096e76059c157b9a
# Wed, 22 Mar 2017 18:09:54 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf3547d9b739f2f04846520e0d804358ac8bb09d8fe087b9b22776466591147`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 2.9 MB (2858770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1004db2760ff505c8cb29d8b6e0c3807eb12a9c4f75dfe899ec12330443ae4c0`  
		Last Modified: Wed, 22 Mar 2017 23:53:16 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e2d66a547e35efdd6f59963e788cec2b96be1c0a95952c5760430c405c6466`  
		Last Modified: Wed, 22 Mar 2017 23:53:15 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfaa62c234a9168aa1e9a43ad031162a50b71dc0ebff0a48c05b33497a93d51`  
		Last Modified: Wed, 22 Mar 2017 23:53:14 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce8807f4d1a92b890a7878d0f6aadef4fe718b2d1a07b9c98ed585e87dc2e9`  
		Last Modified: Wed, 22 Mar 2017 23:53:13 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707697960803481c5a91fc0d3857c7313aec10cb08fa72369bba1a249a9cd8b1`  
		Last Modified: Thu, 23 Mar 2017 17:33:28 GMT  
		Size: 12.7 MB (12718333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581043ffa58eb96796f52ce3c36fab8fe5d9ea6c2ce68bfbf35bf80719bf98cf`  
		Last Modified: Thu, 23 Mar 2017 17:33:25 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c4532e141130c5cf01d46f381da53ac7e5cb06870965059adc9ee75bf4127`  
		Last Modified: Thu, 23 Mar 2017 17:33:29 GMT  
		Size: 13.4 MB (13382566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51dcb88cf1804e730a57bcf9d1471003c8555b15f7791a42daadea6fa6c15d1e`  
		Last Modified: Thu, 23 Mar 2017 17:33:22 GMT  
		Size: 2.0 KB (2022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7985a51f51b4851fd99471e4ec1aecf55962f650862bbc4face628efb9bda7`  
		Last Modified: Thu, 23 Mar 2017 17:33:21 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01b833ec89726e1c98b08699a5c9649c68924a327cd9341a493707a49f11bb2`  
		Last Modified: Thu, 23 Mar 2017 17:33:21 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7112e7fb30b634a37637e469462b8892874e30f0ff383346832f55b0b0b60a`  
		Last Modified: Thu, 23 Mar 2017 17:35:46 GMT  
		Size: 1.8 MB (1757724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d14565c7116efb40f07ae5e2fd2f1e23111e53f639a9d8fa170ca9a3530bcf`  
		Last Modified: Thu, 23 Mar 2017 17:35:46 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3028d0b0b1184feb33a422a82657543f56270a3a8e3d2e9dec6b137794b0f9`  
		Last Modified: Thu, 23 Mar 2017 17:35:59 GMT  
		Size: 12.2 MB (12179648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2-apache`

```console
$ docker pull drupal@sha256:13c1ef6e91ff9d21dd7020eba341f1c14fc7814c0fe1abcc57ae7325ca41cf97
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (172024076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9366c791423625811926b3df5603bd1ddd963871112ab10eaa6a442e1ec2c25e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 22:59:49 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 21 Mar 2017 22:59:50 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 21 Mar 2017 22:59:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 21 Mar 2017 22:59:52 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 21 Mar 2017 22:59:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:27:13 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 23:27:13 GMT
ENV PHP_VERSION=7.0.17
# Tue, 21 Mar 2017 23:27:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:27:14 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Tue, 21 Mar 2017 23:27:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:27:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:43 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:29:44 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:29:45 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:45 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:29:46 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 23:29:46 GMT
CMD ["apache2-foreground"]
# Wed, 22 Mar 2017 18:07:08 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 18:09:45 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:09:46 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 22 Mar 2017 18:09:46 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:09:47 GMT
ENV DRUPAL_VERSION=8.2.7
# Wed, 22 Mar 2017 18:09:47 GMT
ENV DRUPAL_MD5=10b1669f750a9996096e76059c157b9a
# Wed, 22 Mar 2017 18:09:54 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf3547d9b739f2f04846520e0d804358ac8bb09d8fe087b9b22776466591147`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 2.9 MB (2858770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1004db2760ff505c8cb29d8b6e0c3807eb12a9c4f75dfe899ec12330443ae4c0`  
		Last Modified: Wed, 22 Mar 2017 23:53:16 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e2d66a547e35efdd6f59963e788cec2b96be1c0a95952c5760430c405c6466`  
		Last Modified: Wed, 22 Mar 2017 23:53:15 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfaa62c234a9168aa1e9a43ad031162a50b71dc0ebff0a48c05b33497a93d51`  
		Last Modified: Wed, 22 Mar 2017 23:53:14 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce8807f4d1a92b890a7878d0f6aadef4fe718b2d1a07b9c98ed585e87dc2e9`  
		Last Modified: Wed, 22 Mar 2017 23:53:13 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707697960803481c5a91fc0d3857c7313aec10cb08fa72369bba1a249a9cd8b1`  
		Last Modified: Thu, 23 Mar 2017 17:33:28 GMT  
		Size: 12.7 MB (12718333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581043ffa58eb96796f52ce3c36fab8fe5d9ea6c2ce68bfbf35bf80719bf98cf`  
		Last Modified: Thu, 23 Mar 2017 17:33:25 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c4532e141130c5cf01d46f381da53ac7e5cb06870965059adc9ee75bf4127`  
		Last Modified: Thu, 23 Mar 2017 17:33:29 GMT  
		Size: 13.4 MB (13382566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51dcb88cf1804e730a57bcf9d1471003c8555b15f7791a42daadea6fa6c15d1e`  
		Last Modified: Thu, 23 Mar 2017 17:33:22 GMT  
		Size: 2.0 KB (2022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7985a51f51b4851fd99471e4ec1aecf55962f650862bbc4face628efb9bda7`  
		Last Modified: Thu, 23 Mar 2017 17:33:21 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01b833ec89726e1c98b08699a5c9649c68924a327cd9341a493707a49f11bb2`  
		Last Modified: Thu, 23 Mar 2017 17:33:21 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7112e7fb30b634a37637e469462b8892874e30f0ff383346832f55b0b0b60a`  
		Last Modified: Thu, 23 Mar 2017 17:35:46 GMT  
		Size: 1.8 MB (1757724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d14565c7116efb40f07ae5e2fd2f1e23111e53f639a9d8fa170ca9a3530bcf`  
		Last Modified: Thu, 23 Mar 2017 17:35:46 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3028d0b0b1184feb33a422a82657543f56270a3a8e3d2e9dec6b137794b0f9`  
		Last Modified: Thu, 23 Mar 2017 17:35:59 GMT  
		Size: 12.2 MB (12179648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8-apache`

```console
$ docker pull drupal@sha256:13c1ef6e91ff9d21dd7020eba341f1c14fc7814c0fe1abcc57ae7325ca41cf97
```

-	Platforms:
	-	linux; amd64

### `drupal:8-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (172024076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9366c791423625811926b3df5603bd1ddd963871112ab10eaa6a442e1ec2c25e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 22:59:49 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 21 Mar 2017 22:59:50 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 21 Mar 2017 22:59:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 21 Mar 2017 22:59:52 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 21 Mar 2017 22:59:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:27:13 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 23:27:13 GMT
ENV PHP_VERSION=7.0.17
# Tue, 21 Mar 2017 23:27:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:27:14 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Tue, 21 Mar 2017 23:27:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:27:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:43 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:29:44 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:29:45 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:45 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:29:46 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 23:29:46 GMT
CMD ["apache2-foreground"]
# Wed, 22 Mar 2017 18:07:08 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 18:09:45 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:09:46 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 22 Mar 2017 18:09:46 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:09:47 GMT
ENV DRUPAL_VERSION=8.2.7
# Wed, 22 Mar 2017 18:09:47 GMT
ENV DRUPAL_MD5=10b1669f750a9996096e76059c157b9a
# Wed, 22 Mar 2017 18:09:54 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf3547d9b739f2f04846520e0d804358ac8bb09d8fe087b9b22776466591147`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 2.9 MB (2858770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1004db2760ff505c8cb29d8b6e0c3807eb12a9c4f75dfe899ec12330443ae4c0`  
		Last Modified: Wed, 22 Mar 2017 23:53:16 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e2d66a547e35efdd6f59963e788cec2b96be1c0a95952c5760430c405c6466`  
		Last Modified: Wed, 22 Mar 2017 23:53:15 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfaa62c234a9168aa1e9a43ad031162a50b71dc0ebff0a48c05b33497a93d51`  
		Last Modified: Wed, 22 Mar 2017 23:53:14 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce8807f4d1a92b890a7878d0f6aadef4fe718b2d1a07b9c98ed585e87dc2e9`  
		Last Modified: Wed, 22 Mar 2017 23:53:13 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707697960803481c5a91fc0d3857c7313aec10cb08fa72369bba1a249a9cd8b1`  
		Last Modified: Thu, 23 Mar 2017 17:33:28 GMT  
		Size: 12.7 MB (12718333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581043ffa58eb96796f52ce3c36fab8fe5d9ea6c2ce68bfbf35bf80719bf98cf`  
		Last Modified: Thu, 23 Mar 2017 17:33:25 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c4532e141130c5cf01d46f381da53ac7e5cb06870965059adc9ee75bf4127`  
		Last Modified: Thu, 23 Mar 2017 17:33:29 GMT  
		Size: 13.4 MB (13382566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51dcb88cf1804e730a57bcf9d1471003c8555b15f7791a42daadea6fa6c15d1e`  
		Last Modified: Thu, 23 Mar 2017 17:33:22 GMT  
		Size: 2.0 KB (2022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7985a51f51b4851fd99471e4ec1aecf55962f650862bbc4face628efb9bda7`  
		Last Modified: Thu, 23 Mar 2017 17:33:21 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01b833ec89726e1c98b08699a5c9649c68924a327cd9341a493707a49f11bb2`  
		Last Modified: Thu, 23 Mar 2017 17:33:21 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7112e7fb30b634a37637e469462b8892874e30f0ff383346832f55b0b0b60a`  
		Last Modified: Thu, 23 Mar 2017 17:35:46 GMT  
		Size: 1.8 MB (1757724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d14565c7116efb40f07ae5e2fd2f1e23111e53f639a9d8fa170ca9a3530bcf`  
		Last Modified: Thu, 23 Mar 2017 17:35:46 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3028d0b0b1184feb33a422a82657543f56270a3a8e3d2e9dec6b137794b0f9`  
		Last Modified: Thu, 23 Mar 2017 17:35:59 GMT  
		Size: 12.2 MB (12179648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:apache`

```console
$ docker pull drupal@sha256:13c1ef6e91ff9d21dd7020eba341f1c14fc7814c0fe1abcc57ae7325ca41cf97
```

-	Platforms:
	-	linux; amd64

### `drupal:apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (172024076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9366c791423625811926b3df5603bd1ddd963871112ab10eaa6a442e1ec2c25e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 22:59:49 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 21 Mar 2017 22:59:50 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 21 Mar 2017 22:59:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 21 Mar 2017 22:59:52 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 21 Mar 2017 22:59:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:27:13 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 23:27:13 GMT
ENV PHP_VERSION=7.0.17
# Tue, 21 Mar 2017 23:27:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:27:14 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Tue, 21 Mar 2017 23:27:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:27:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:43 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:29:44 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:29:45 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:45 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:29:46 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 23:29:46 GMT
CMD ["apache2-foreground"]
# Wed, 22 Mar 2017 18:07:08 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 18:09:45 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:09:46 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 22 Mar 2017 18:09:46 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:09:47 GMT
ENV DRUPAL_VERSION=8.2.7
# Wed, 22 Mar 2017 18:09:47 GMT
ENV DRUPAL_MD5=10b1669f750a9996096e76059c157b9a
# Wed, 22 Mar 2017 18:09:54 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf3547d9b739f2f04846520e0d804358ac8bb09d8fe087b9b22776466591147`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 2.9 MB (2858770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1004db2760ff505c8cb29d8b6e0c3807eb12a9c4f75dfe899ec12330443ae4c0`  
		Last Modified: Wed, 22 Mar 2017 23:53:16 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e2d66a547e35efdd6f59963e788cec2b96be1c0a95952c5760430c405c6466`  
		Last Modified: Wed, 22 Mar 2017 23:53:15 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfaa62c234a9168aa1e9a43ad031162a50b71dc0ebff0a48c05b33497a93d51`  
		Last Modified: Wed, 22 Mar 2017 23:53:14 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce8807f4d1a92b890a7878d0f6aadef4fe718b2d1a07b9c98ed585e87dc2e9`  
		Last Modified: Wed, 22 Mar 2017 23:53:13 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707697960803481c5a91fc0d3857c7313aec10cb08fa72369bba1a249a9cd8b1`  
		Last Modified: Thu, 23 Mar 2017 17:33:28 GMT  
		Size: 12.7 MB (12718333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581043ffa58eb96796f52ce3c36fab8fe5d9ea6c2ce68bfbf35bf80719bf98cf`  
		Last Modified: Thu, 23 Mar 2017 17:33:25 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c4532e141130c5cf01d46f381da53ac7e5cb06870965059adc9ee75bf4127`  
		Last Modified: Thu, 23 Mar 2017 17:33:29 GMT  
		Size: 13.4 MB (13382566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51dcb88cf1804e730a57bcf9d1471003c8555b15f7791a42daadea6fa6c15d1e`  
		Last Modified: Thu, 23 Mar 2017 17:33:22 GMT  
		Size: 2.0 KB (2022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7985a51f51b4851fd99471e4ec1aecf55962f650862bbc4face628efb9bda7`  
		Last Modified: Thu, 23 Mar 2017 17:33:21 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01b833ec89726e1c98b08699a5c9649c68924a327cd9341a493707a49f11bb2`  
		Last Modified: Thu, 23 Mar 2017 17:33:21 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7112e7fb30b634a37637e469462b8892874e30f0ff383346832f55b0b0b60a`  
		Last Modified: Thu, 23 Mar 2017 17:35:46 GMT  
		Size: 1.8 MB (1757724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d14565c7116efb40f07ae5e2fd2f1e23111e53f639a9d8fa170ca9a3530bcf`  
		Last Modified: Thu, 23 Mar 2017 17:35:46 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3028d0b0b1184feb33a422a82657543f56270a3a8e3d2e9dec6b137794b0f9`  
		Last Modified: Thu, 23 Mar 2017 17:35:59 GMT  
		Size: 12.2 MB (12179648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2.7`

```console
$ docker pull drupal@sha256:13c1ef6e91ff9d21dd7020eba341f1c14fc7814c0fe1abcc57ae7325ca41cf97
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (172024076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9366c791423625811926b3df5603bd1ddd963871112ab10eaa6a442e1ec2c25e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 22:59:49 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 21 Mar 2017 22:59:50 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 21 Mar 2017 22:59:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 21 Mar 2017 22:59:52 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 21 Mar 2017 22:59:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:27:13 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 23:27:13 GMT
ENV PHP_VERSION=7.0.17
# Tue, 21 Mar 2017 23:27:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:27:14 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Tue, 21 Mar 2017 23:27:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:27:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:43 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:29:44 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:29:45 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:45 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:29:46 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 23:29:46 GMT
CMD ["apache2-foreground"]
# Wed, 22 Mar 2017 18:07:08 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 18:09:45 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:09:46 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 22 Mar 2017 18:09:46 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:09:47 GMT
ENV DRUPAL_VERSION=8.2.7
# Wed, 22 Mar 2017 18:09:47 GMT
ENV DRUPAL_MD5=10b1669f750a9996096e76059c157b9a
# Wed, 22 Mar 2017 18:09:54 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf3547d9b739f2f04846520e0d804358ac8bb09d8fe087b9b22776466591147`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 2.9 MB (2858770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1004db2760ff505c8cb29d8b6e0c3807eb12a9c4f75dfe899ec12330443ae4c0`  
		Last Modified: Wed, 22 Mar 2017 23:53:16 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e2d66a547e35efdd6f59963e788cec2b96be1c0a95952c5760430c405c6466`  
		Last Modified: Wed, 22 Mar 2017 23:53:15 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfaa62c234a9168aa1e9a43ad031162a50b71dc0ebff0a48c05b33497a93d51`  
		Last Modified: Wed, 22 Mar 2017 23:53:14 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce8807f4d1a92b890a7878d0f6aadef4fe718b2d1a07b9c98ed585e87dc2e9`  
		Last Modified: Wed, 22 Mar 2017 23:53:13 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707697960803481c5a91fc0d3857c7313aec10cb08fa72369bba1a249a9cd8b1`  
		Last Modified: Thu, 23 Mar 2017 17:33:28 GMT  
		Size: 12.7 MB (12718333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581043ffa58eb96796f52ce3c36fab8fe5d9ea6c2ce68bfbf35bf80719bf98cf`  
		Last Modified: Thu, 23 Mar 2017 17:33:25 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c4532e141130c5cf01d46f381da53ac7e5cb06870965059adc9ee75bf4127`  
		Last Modified: Thu, 23 Mar 2017 17:33:29 GMT  
		Size: 13.4 MB (13382566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51dcb88cf1804e730a57bcf9d1471003c8555b15f7791a42daadea6fa6c15d1e`  
		Last Modified: Thu, 23 Mar 2017 17:33:22 GMT  
		Size: 2.0 KB (2022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7985a51f51b4851fd99471e4ec1aecf55962f650862bbc4face628efb9bda7`  
		Last Modified: Thu, 23 Mar 2017 17:33:21 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01b833ec89726e1c98b08699a5c9649c68924a327cd9341a493707a49f11bb2`  
		Last Modified: Thu, 23 Mar 2017 17:33:21 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7112e7fb30b634a37637e469462b8892874e30f0ff383346832f55b0b0b60a`  
		Last Modified: Thu, 23 Mar 2017 17:35:46 GMT  
		Size: 1.8 MB (1757724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d14565c7116efb40f07ae5e2fd2f1e23111e53f639a9d8fa170ca9a3530bcf`  
		Last Modified: Thu, 23 Mar 2017 17:35:46 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3028d0b0b1184feb33a422a82657543f56270a3a8e3d2e9dec6b137794b0f9`  
		Last Modified: Thu, 23 Mar 2017 17:35:59 GMT  
		Size: 12.2 MB (12179648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2`

```console
$ docker pull drupal@sha256:13c1ef6e91ff9d21dd7020eba341f1c14fc7814c0fe1abcc57ae7325ca41cf97
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (172024076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9366c791423625811926b3df5603bd1ddd963871112ab10eaa6a442e1ec2c25e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 22:59:49 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 21 Mar 2017 22:59:50 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 21 Mar 2017 22:59:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 21 Mar 2017 22:59:52 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 21 Mar 2017 22:59:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:27:13 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 23:27:13 GMT
ENV PHP_VERSION=7.0.17
# Tue, 21 Mar 2017 23:27:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:27:14 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Tue, 21 Mar 2017 23:27:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:27:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:43 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:29:44 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:29:45 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:45 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:29:46 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 23:29:46 GMT
CMD ["apache2-foreground"]
# Wed, 22 Mar 2017 18:07:08 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 18:09:45 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:09:46 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 22 Mar 2017 18:09:46 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:09:47 GMT
ENV DRUPAL_VERSION=8.2.7
# Wed, 22 Mar 2017 18:09:47 GMT
ENV DRUPAL_MD5=10b1669f750a9996096e76059c157b9a
# Wed, 22 Mar 2017 18:09:54 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf3547d9b739f2f04846520e0d804358ac8bb09d8fe087b9b22776466591147`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 2.9 MB (2858770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1004db2760ff505c8cb29d8b6e0c3807eb12a9c4f75dfe899ec12330443ae4c0`  
		Last Modified: Wed, 22 Mar 2017 23:53:16 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e2d66a547e35efdd6f59963e788cec2b96be1c0a95952c5760430c405c6466`  
		Last Modified: Wed, 22 Mar 2017 23:53:15 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfaa62c234a9168aa1e9a43ad031162a50b71dc0ebff0a48c05b33497a93d51`  
		Last Modified: Wed, 22 Mar 2017 23:53:14 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce8807f4d1a92b890a7878d0f6aadef4fe718b2d1a07b9c98ed585e87dc2e9`  
		Last Modified: Wed, 22 Mar 2017 23:53:13 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707697960803481c5a91fc0d3857c7313aec10cb08fa72369bba1a249a9cd8b1`  
		Last Modified: Thu, 23 Mar 2017 17:33:28 GMT  
		Size: 12.7 MB (12718333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581043ffa58eb96796f52ce3c36fab8fe5d9ea6c2ce68bfbf35bf80719bf98cf`  
		Last Modified: Thu, 23 Mar 2017 17:33:25 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c4532e141130c5cf01d46f381da53ac7e5cb06870965059adc9ee75bf4127`  
		Last Modified: Thu, 23 Mar 2017 17:33:29 GMT  
		Size: 13.4 MB (13382566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51dcb88cf1804e730a57bcf9d1471003c8555b15f7791a42daadea6fa6c15d1e`  
		Last Modified: Thu, 23 Mar 2017 17:33:22 GMT  
		Size: 2.0 KB (2022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7985a51f51b4851fd99471e4ec1aecf55962f650862bbc4face628efb9bda7`  
		Last Modified: Thu, 23 Mar 2017 17:33:21 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01b833ec89726e1c98b08699a5c9649c68924a327cd9341a493707a49f11bb2`  
		Last Modified: Thu, 23 Mar 2017 17:33:21 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7112e7fb30b634a37637e469462b8892874e30f0ff383346832f55b0b0b60a`  
		Last Modified: Thu, 23 Mar 2017 17:35:46 GMT  
		Size: 1.8 MB (1757724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d14565c7116efb40f07ae5e2fd2f1e23111e53f639a9d8fa170ca9a3530bcf`  
		Last Modified: Thu, 23 Mar 2017 17:35:46 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3028d0b0b1184feb33a422a82657543f56270a3a8e3d2e9dec6b137794b0f9`  
		Last Modified: Thu, 23 Mar 2017 17:35:59 GMT  
		Size: 12.2 MB (12179648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8`

```console
$ docker pull drupal@sha256:13c1ef6e91ff9d21dd7020eba341f1c14fc7814c0fe1abcc57ae7325ca41cf97
```

-	Platforms:
	-	linux; amd64

### `drupal:8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (172024076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9366c791423625811926b3df5603bd1ddd963871112ab10eaa6a442e1ec2c25e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 22:59:49 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 21 Mar 2017 22:59:50 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 21 Mar 2017 22:59:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 21 Mar 2017 22:59:52 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 21 Mar 2017 22:59:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:27:13 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 23:27:13 GMT
ENV PHP_VERSION=7.0.17
# Tue, 21 Mar 2017 23:27:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:27:14 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Tue, 21 Mar 2017 23:27:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:27:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:43 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:29:44 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:29:45 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:45 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:29:46 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 23:29:46 GMT
CMD ["apache2-foreground"]
# Wed, 22 Mar 2017 18:07:08 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 18:09:45 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:09:46 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 22 Mar 2017 18:09:46 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:09:47 GMT
ENV DRUPAL_VERSION=8.2.7
# Wed, 22 Mar 2017 18:09:47 GMT
ENV DRUPAL_MD5=10b1669f750a9996096e76059c157b9a
# Wed, 22 Mar 2017 18:09:54 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf3547d9b739f2f04846520e0d804358ac8bb09d8fe087b9b22776466591147`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 2.9 MB (2858770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1004db2760ff505c8cb29d8b6e0c3807eb12a9c4f75dfe899ec12330443ae4c0`  
		Last Modified: Wed, 22 Mar 2017 23:53:16 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e2d66a547e35efdd6f59963e788cec2b96be1c0a95952c5760430c405c6466`  
		Last Modified: Wed, 22 Mar 2017 23:53:15 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfaa62c234a9168aa1e9a43ad031162a50b71dc0ebff0a48c05b33497a93d51`  
		Last Modified: Wed, 22 Mar 2017 23:53:14 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce8807f4d1a92b890a7878d0f6aadef4fe718b2d1a07b9c98ed585e87dc2e9`  
		Last Modified: Wed, 22 Mar 2017 23:53:13 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707697960803481c5a91fc0d3857c7313aec10cb08fa72369bba1a249a9cd8b1`  
		Last Modified: Thu, 23 Mar 2017 17:33:28 GMT  
		Size: 12.7 MB (12718333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581043ffa58eb96796f52ce3c36fab8fe5d9ea6c2ce68bfbf35bf80719bf98cf`  
		Last Modified: Thu, 23 Mar 2017 17:33:25 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c4532e141130c5cf01d46f381da53ac7e5cb06870965059adc9ee75bf4127`  
		Last Modified: Thu, 23 Mar 2017 17:33:29 GMT  
		Size: 13.4 MB (13382566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51dcb88cf1804e730a57bcf9d1471003c8555b15f7791a42daadea6fa6c15d1e`  
		Last Modified: Thu, 23 Mar 2017 17:33:22 GMT  
		Size: 2.0 KB (2022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7985a51f51b4851fd99471e4ec1aecf55962f650862bbc4face628efb9bda7`  
		Last Modified: Thu, 23 Mar 2017 17:33:21 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01b833ec89726e1c98b08699a5c9649c68924a327cd9341a493707a49f11bb2`  
		Last Modified: Thu, 23 Mar 2017 17:33:21 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7112e7fb30b634a37637e469462b8892874e30f0ff383346832f55b0b0b60a`  
		Last Modified: Thu, 23 Mar 2017 17:35:46 GMT  
		Size: 1.8 MB (1757724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d14565c7116efb40f07ae5e2fd2f1e23111e53f639a9d8fa170ca9a3530bcf`  
		Last Modified: Thu, 23 Mar 2017 17:35:46 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3028d0b0b1184feb33a422a82657543f56270a3a8e3d2e9dec6b137794b0f9`  
		Last Modified: Thu, 23 Mar 2017 17:35:59 GMT  
		Size: 12.2 MB (12179648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:latest`

```console
$ docker pull drupal@sha256:13c1ef6e91ff9d21dd7020eba341f1c14fc7814c0fe1abcc57ae7325ca41cf97
```

-	Platforms:
	-	linux; amd64

### `drupal:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (172024076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9366c791423625811926b3df5603bd1ddd963871112ab10eaa6a442e1ec2c25e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 22:59:49 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 21 Mar 2017 22:59:50 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 21 Mar 2017 22:59:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 21 Mar 2017 22:59:52 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 21 Mar 2017 22:59:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:27:13 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 23:27:13 GMT
ENV PHP_VERSION=7.0.17
# Tue, 21 Mar 2017 23:27:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:27:14 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Tue, 21 Mar 2017 23:27:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:27:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:43 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:29:44 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:29:45 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:45 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:29:46 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 23:29:46 GMT
CMD ["apache2-foreground"]
# Wed, 22 Mar 2017 18:07:08 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 18:09:45 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:09:46 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 22 Mar 2017 18:09:46 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:09:47 GMT
ENV DRUPAL_VERSION=8.2.7
# Wed, 22 Mar 2017 18:09:47 GMT
ENV DRUPAL_MD5=10b1669f750a9996096e76059c157b9a
# Wed, 22 Mar 2017 18:09:54 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf3547d9b739f2f04846520e0d804358ac8bb09d8fe087b9b22776466591147`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 2.9 MB (2858770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1004db2760ff505c8cb29d8b6e0c3807eb12a9c4f75dfe899ec12330443ae4c0`  
		Last Modified: Wed, 22 Mar 2017 23:53:16 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e2d66a547e35efdd6f59963e788cec2b96be1c0a95952c5760430c405c6466`  
		Last Modified: Wed, 22 Mar 2017 23:53:15 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfaa62c234a9168aa1e9a43ad031162a50b71dc0ebff0a48c05b33497a93d51`  
		Last Modified: Wed, 22 Mar 2017 23:53:14 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce8807f4d1a92b890a7878d0f6aadef4fe718b2d1a07b9c98ed585e87dc2e9`  
		Last Modified: Wed, 22 Mar 2017 23:53:13 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707697960803481c5a91fc0d3857c7313aec10cb08fa72369bba1a249a9cd8b1`  
		Last Modified: Thu, 23 Mar 2017 17:33:28 GMT  
		Size: 12.7 MB (12718333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581043ffa58eb96796f52ce3c36fab8fe5d9ea6c2ce68bfbf35bf80719bf98cf`  
		Last Modified: Thu, 23 Mar 2017 17:33:25 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c4532e141130c5cf01d46f381da53ac7e5cb06870965059adc9ee75bf4127`  
		Last Modified: Thu, 23 Mar 2017 17:33:29 GMT  
		Size: 13.4 MB (13382566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51dcb88cf1804e730a57bcf9d1471003c8555b15f7791a42daadea6fa6c15d1e`  
		Last Modified: Thu, 23 Mar 2017 17:33:22 GMT  
		Size: 2.0 KB (2022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7985a51f51b4851fd99471e4ec1aecf55962f650862bbc4face628efb9bda7`  
		Last Modified: Thu, 23 Mar 2017 17:33:21 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01b833ec89726e1c98b08699a5c9649c68924a327cd9341a493707a49f11bb2`  
		Last Modified: Thu, 23 Mar 2017 17:33:21 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7112e7fb30b634a37637e469462b8892874e30f0ff383346832f55b0b0b60a`  
		Last Modified: Thu, 23 Mar 2017 17:35:46 GMT  
		Size: 1.8 MB (1757724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d14565c7116efb40f07ae5e2fd2f1e23111e53f639a9d8fa170ca9a3530bcf`  
		Last Modified: Thu, 23 Mar 2017 17:35:46 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3028d0b0b1184feb33a422a82657543f56270a3a8e3d2e9dec6b137794b0f9`  
		Last Modified: Thu, 23 Mar 2017 17:35:59 GMT  
		Size: 12.2 MB (12179648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2.7-fpm`

```console
$ docker pull drupal@sha256:5655487b79b77e36a9df85df9be180dacec4576939e1e85d2eb783c99970dea8
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.7-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.6 MB (168592588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8951a03a167fbb871bc1c5c80cd669365923e92a019e85f4f5963beae1f1e8e1`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 23:02:23 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 21 Mar 2017 23:02:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 23:02:24 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 23:02:24 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:29:47 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 23:29:47 GMT
ENV PHP_VERSION=7.0.17
# Tue, 21 Mar 2017 23:29:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:29:48 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Tue, 21 Mar 2017 23:29:57 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:29:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:33:24 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:33:25 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:33:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:33:26 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:33:27 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 21 Mar 2017 23:33:27 GMT
EXPOSE 9000/tcp
# Tue, 21 Mar 2017 23:33:28 GMT
CMD ["php-fpm"]
# Wed, 22 Mar 2017 18:10:47 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:10:48 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 22 Mar 2017 18:10:48 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:10:49 GMT
ENV DRUPAL_VERSION=8.2.7
# Wed, 22 Mar 2017 18:10:49 GMT
ENV DRUPAL_MD5=10b1669f750a9996096e76059c157b9a
# Wed, 22 Mar 2017 18:10:56 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4a0ada0bc344974653b134216b27c759eeb93a1a4a9d86e76091d8bd7dd4d0`  
		Last Modified: Thu, 23 Mar 2017 17:34:56 GMT  
		Size: 12.7 MB (12699149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79fd1a34245464e48c2127077d557a5a43cd70e47acb8eccce8ea981b344516`  
		Last Modified: Thu, 23 Mar 2017 17:34:55 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef60b04e1f2411aea57cfa8163d5a43bbb96269645c2c395c5884942a414e303`  
		Last Modified: Thu, 23 Mar 2017 17:35:00 GMT  
		Size: 12.8 MB (12847311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a9f8e4a6eb8cffec1976f68eceaa30ec0d12e8705c510d587020dad7db822e`  
		Last Modified: Thu, 23 Mar 2017 17:34:52 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df66442e14117e77b7b6a443145c1a0877f795cde830e8cf619c6d8f4484c248`  
		Last Modified: Thu, 23 Mar 2017 17:34:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91fdf504db2ed957f5d6195b27ed4cc0bd00aff5811971df2a8fdbc759cbe3c`  
		Last Modified: Thu, 23 Mar 2017 17:34:52 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e759e3f2e0fe2761b2f0a20eefca5c18dc817fe55835f5783df6cfe4168f22d`  
		Last Modified: Thu, 23 Mar 2017 17:40:25 GMT  
		Size: 1.7 MB (1735194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5556a3a0bf7dbb005f49c52b9798df3642d744b6a95a8cd445f79f87ec782d2`  
		Last Modified: Thu, 23 Mar 2017 17:40:24 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d655a8d109401ee0dc8a06c0a4084ed493183ba5187ce9036afc11aedcec06d`  
		Last Modified: Thu, 23 Mar 2017 17:40:38 GMT  
		Size: 12.2 MB (12179645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2-fpm`

```console
$ docker pull drupal@sha256:5655487b79b77e36a9df85df9be180dacec4576939e1e85d2eb783c99970dea8
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.6 MB (168592588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8951a03a167fbb871bc1c5c80cd669365923e92a019e85f4f5963beae1f1e8e1`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 23:02:23 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 21 Mar 2017 23:02:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 23:02:24 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 23:02:24 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:29:47 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 23:29:47 GMT
ENV PHP_VERSION=7.0.17
# Tue, 21 Mar 2017 23:29:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:29:48 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Tue, 21 Mar 2017 23:29:57 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:29:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:33:24 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:33:25 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:33:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:33:26 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:33:27 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 21 Mar 2017 23:33:27 GMT
EXPOSE 9000/tcp
# Tue, 21 Mar 2017 23:33:28 GMT
CMD ["php-fpm"]
# Wed, 22 Mar 2017 18:10:47 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:10:48 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 22 Mar 2017 18:10:48 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:10:49 GMT
ENV DRUPAL_VERSION=8.2.7
# Wed, 22 Mar 2017 18:10:49 GMT
ENV DRUPAL_MD5=10b1669f750a9996096e76059c157b9a
# Wed, 22 Mar 2017 18:10:56 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4a0ada0bc344974653b134216b27c759eeb93a1a4a9d86e76091d8bd7dd4d0`  
		Last Modified: Thu, 23 Mar 2017 17:34:56 GMT  
		Size: 12.7 MB (12699149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79fd1a34245464e48c2127077d557a5a43cd70e47acb8eccce8ea981b344516`  
		Last Modified: Thu, 23 Mar 2017 17:34:55 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef60b04e1f2411aea57cfa8163d5a43bbb96269645c2c395c5884942a414e303`  
		Last Modified: Thu, 23 Mar 2017 17:35:00 GMT  
		Size: 12.8 MB (12847311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a9f8e4a6eb8cffec1976f68eceaa30ec0d12e8705c510d587020dad7db822e`  
		Last Modified: Thu, 23 Mar 2017 17:34:52 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df66442e14117e77b7b6a443145c1a0877f795cde830e8cf619c6d8f4484c248`  
		Last Modified: Thu, 23 Mar 2017 17:34:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91fdf504db2ed957f5d6195b27ed4cc0bd00aff5811971df2a8fdbc759cbe3c`  
		Last Modified: Thu, 23 Mar 2017 17:34:52 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e759e3f2e0fe2761b2f0a20eefca5c18dc817fe55835f5783df6cfe4168f22d`  
		Last Modified: Thu, 23 Mar 2017 17:40:25 GMT  
		Size: 1.7 MB (1735194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5556a3a0bf7dbb005f49c52b9798df3642d744b6a95a8cd445f79f87ec782d2`  
		Last Modified: Thu, 23 Mar 2017 17:40:24 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d655a8d109401ee0dc8a06c0a4084ed493183ba5187ce9036afc11aedcec06d`  
		Last Modified: Thu, 23 Mar 2017 17:40:38 GMT  
		Size: 12.2 MB (12179645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8-fpm`

```console
$ docker pull drupal@sha256:5655487b79b77e36a9df85df9be180dacec4576939e1e85d2eb783c99970dea8
```

-	Platforms:
	-	linux; amd64

### `drupal:8-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.6 MB (168592588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8951a03a167fbb871bc1c5c80cd669365923e92a019e85f4f5963beae1f1e8e1`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 23:02:23 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 21 Mar 2017 23:02:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 23:02:24 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 23:02:24 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:29:47 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 23:29:47 GMT
ENV PHP_VERSION=7.0.17
# Tue, 21 Mar 2017 23:29:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:29:48 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Tue, 21 Mar 2017 23:29:57 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:29:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:33:24 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:33:25 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:33:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:33:26 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:33:27 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 21 Mar 2017 23:33:27 GMT
EXPOSE 9000/tcp
# Tue, 21 Mar 2017 23:33:28 GMT
CMD ["php-fpm"]
# Wed, 22 Mar 2017 18:10:47 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:10:48 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 22 Mar 2017 18:10:48 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:10:49 GMT
ENV DRUPAL_VERSION=8.2.7
# Wed, 22 Mar 2017 18:10:49 GMT
ENV DRUPAL_MD5=10b1669f750a9996096e76059c157b9a
# Wed, 22 Mar 2017 18:10:56 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4a0ada0bc344974653b134216b27c759eeb93a1a4a9d86e76091d8bd7dd4d0`  
		Last Modified: Thu, 23 Mar 2017 17:34:56 GMT  
		Size: 12.7 MB (12699149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79fd1a34245464e48c2127077d557a5a43cd70e47acb8eccce8ea981b344516`  
		Last Modified: Thu, 23 Mar 2017 17:34:55 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef60b04e1f2411aea57cfa8163d5a43bbb96269645c2c395c5884942a414e303`  
		Last Modified: Thu, 23 Mar 2017 17:35:00 GMT  
		Size: 12.8 MB (12847311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a9f8e4a6eb8cffec1976f68eceaa30ec0d12e8705c510d587020dad7db822e`  
		Last Modified: Thu, 23 Mar 2017 17:34:52 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df66442e14117e77b7b6a443145c1a0877f795cde830e8cf619c6d8f4484c248`  
		Last Modified: Thu, 23 Mar 2017 17:34:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91fdf504db2ed957f5d6195b27ed4cc0bd00aff5811971df2a8fdbc759cbe3c`  
		Last Modified: Thu, 23 Mar 2017 17:34:52 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e759e3f2e0fe2761b2f0a20eefca5c18dc817fe55835f5783df6cfe4168f22d`  
		Last Modified: Thu, 23 Mar 2017 17:40:25 GMT  
		Size: 1.7 MB (1735194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5556a3a0bf7dbb005f49c52b9798df3642d744b6a95a8cd445f79f87ec782d2`  
		Last Modified: Thu, 23 Mar 2017 17:40:24 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d655a8d109401ee0dc8a06c0a4084ed493183ba5187ce9036afc11aedcec06d`  
		Last Modified: Thu, 23 Mar 2017 17:40:38 GMT  
		Size: 12.2 MB (12179645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:fpm`

```console
$ docker pull drupal@sha256:5655487b79b77e36a9df85df9be180dacec4576939e1e85d2eb783c99970dea8
```

-	Platforms:
	-	linux; amd64

### `drupal:fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.6 MB (168592588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8951a03a167fbb871bc1c5c80cd669365923e92a019e85f4f5963beae1f1e8e1`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 23:02:23 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 21 Mar 2017 23:02:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 23:02:24 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 23:02:24 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:29:47 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 23:29:47 GMT
ENV PHP_VERSION=7.0.17
# Tue, 21 Mar 2017 23:29:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:29:48 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Tue, 21 Mar 2017 23:29:57 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:29:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:33:24 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:33:25 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:33:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:33:26 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:33:27 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 21 Mar 2017 23:33:27 GMT
EXPOSE 9000/tcp
# Tue, 21 Mar 2017 23:33:28 GMT
CMD ["php-fpm"]
# Wed, 22 Mar 2017 18:10:47 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:10:48 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 22 Mar 2017 18:10:48 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:10:49 GMT
ENV DRUPAL_VERSION=8.2.7
# Wed, 22 Mar 2017 18:10:49 GMT
ENV DRUPAL_MD5=10b1669f750a9996096e76059c157b9a
# Wed, 22 Mar 2017 18:10:56 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4a0ada0bc344974653b134216b27c759eeb93a1a4a9d86e76091d8bd7dd4d0`  
		Last Modified: Thu, 23 Mar 2017 17:34:56 GMT  
		Size: 12.7 MB (12699149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79fd1a34245464e48c2127077d557a5a43cd70e47acb8eccce8ea981b344516`  
		Last Modified: Thu, 23 Mar 2017 17:34:55 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef60b04e1f2411aea57cfa8163d5a43bbb96269645c2c395c5884942a414e303`  
		Last Modified: Thu, 23 Mar 2017 17:35:00 GMT  
		Size: 12.8 MB (12847311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a9f8e4a6eb8cffec1976f68eceaa30ec0d12e8705c510d587020dad7db822e`  
		Last Modified: Thu, 23 Mar 2017 17:34:52 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df66442e14117e77b7b6a443145c1a0877f795cde830e8cf619c6d8f4484c248`  
		Last Modified: Thu, 23 Mar 2017 17:34:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91fdf504db2ed957f5d6195b27ed4cc0bd00aff5811971df2a8fdbc759cbe3c`  
		Last Modified: Thu, 23 Mar 2017 17:34:52 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e759e3f2e0fe2761b2f0a20eefca5c18dc817fe55835f5783df6cfe4168f22d`  
		Last Modified: Thu, 23 Mar 2017 17:40:25 GMT  
		Size: 1.7 MB (1735194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5556a3a0bf7dbb005f49c52b9798df3642d744b6a95a8cd445f79f87ec782d2`  
		Last Modified: Thu, 23 Mar 2017 17:40:24 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d655a8d109401ee0dc8a06c0a4084ed493183ba5187ce9036afc11aedcec06d`  
		Last Modified: Thu, 23 Mar 2017 17:40:38 GMT  
		Size: 12.2 MB (12179645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2.7-fpm-alpine`

```console
$ docker pull drupal@sha256:7c0624c308b878ea1159dfe14c84e5a1dfffcf665767f3b3f8fb2e14ac566b8c
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.7-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45365249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db1889c1355975883fa8ca1e9e88cfd4deddb29a6de598b440aeb1adfa43e93`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Fri, 17 Mar 2017 22:50:05 GMT
ENV PHP_VERSION=7.0.17
# Fri, 17 Mar 2017 22:50:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Fri, 17 Mar 2017 22:50:06 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Fri, 17 Mar 2017 22:50:11 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 17 Mar 2017 22:50:12 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 17 Mar 2017 22:53:42 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 17 Mar 2017 22:53:43 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 17 Mar 2017 22:53:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 17 Mar 2017 22:53:44 GMT
WORKDIR /var/www/html
# Fri, 17 Mar 2017 22:53:45 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 17 Mar 2017 22:53:45 GMT
EXPOSE 9000/tcp
# Fri, 17 Mar 2017 22:53:46 GMT
CMD ["php-fpm"]
# Mon, 20 Mar 2017 17:58:41 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Mon, 20 Mar 2017 17:58:42 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 20 Mar 2017 17:58:43 GMT
WORKDIR /var/www/html
# Mon, 20 Mar 2017 17:58:44 GMT
ENV DRUPAL_VERSION=8.2.7
# Mon, 20 Mar 2017 17:58:44 GMT
ENV DRUPAL_MD5=10b1669f750a9996096e76059c157b9a
# Mon, 20 Mar 2017 17:58:51 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:4a71032f36996c52cdc5d3899a337eadd2f5b5a7309da6f7f761758384fb6363`  
		Last Modified: Fri, 17 Mar 2017 23:20:34 GMT  
		Size: 12.8 MB (12763566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0fc9d424cfbfbae2ceb87dd09f19bed18a7e73cfefa0c79f6dc91013314399`  
		Last Modified: Fri, 17 Mar 2017 23:20:29 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5d359dac63dc82ae43410f8ad3855f8a2aaec29421b93c36d7c24646f26460`  
		Last Modified: Fri, 17 Mar 2017 23:20:34 GMT  
		Size: 14.0 MB (14048004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69582e193154c41d7e915b4c5a41a51dfc5ff6ce631ea8fb3178aeaed2d784bb`  
		Last Modified: Fri, 17 Mar 2017 23:20:29 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b33a55e487a68a5c3fad4df0a07757928c3e6851a5e255de54aa37121150ab6`  
		Last Modified: Fri, 17 Mar 2017 23:20:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0303332798597c27ac14722b933dc4e80cf9c2b6c6a6948a15a291bb40538d`  
		Last Modified: Fri, 17 Mar 2017 23:20:29 GMT  
		Size: 7.7 KB (7670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7057c38211d64db6ab7126ceca06caafd5966ebb9296e2c40fc83abdd6c6a098`  
		Last Modified: Mon, 20 Mar 2017 18:10:04 GMT  
		Size: 3.0 MB (2989013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910683e3a019ae24ea524b3ccb9ab8985503b27c781e287e4fa497de4e745bcd`  
		Last Modified: Mon, 20 Mar 2017 18:10:03 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546e8a97789337cc529739d8bfce2e4850f3846ff88eb0b59453f3e1a5ab8f81`  
		Last Modified: Mon, 20 Mar 2017 18:10:08 GMT  
		Size: 12.2 MB (12179660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2-fpm-alpine`

```console
$ docker pull drupal@sha256:7c0624c308b878ea1159dfe14c84e5a1dfffcf665767f3b3f8fb2e14ac566b8c
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45365249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db1889c1355975883fa8ca1e9e88cfd4deddb29a6de598b440aeb1adfa43e93`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Fri, 17 Mar 2017 22:50:05 GMT
ENV PHP_VERSION=7.0.17
# Fri, 17 Mar 2017 22:50:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Fri, 17 Mar 2017 22:50:06 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Fri, 17 Mar 2017 22:50:11 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 17 Mar 2017 22:50:12 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 17 Mar 2017 22:53:42 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 17 Mar 2017 22:53:43 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 17 Mar 2017 22:53:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 17 Mar 2017 22:53:44 GMT
WORKDIR /var/www/html
# Fri, 17 Mar 2017 22:53:45 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 17 Mar 2017 22:53:45 GMT
EXPOSE 9000/tcp
# Fri, 17 Mar 2017 22:53:46 GMT
CMD ["php-fpm"]
# Mon, 20 Mar 2017 17:58:41 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Mon, 20 Mar 2017 17:58:42 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 20 Mar 2017 17:58:43 GMT
WORKDIR /var/www/html
# Mon, 20 Mar 2017 17:58:44 GMT
ENV DRUPAL_VERSION=8.2.7
# Mon, 20 Mar 2017 17:58:44 GMT
ENV DRUPAL_MD5=10b1669f750a9996096e76059c157b9a
# Mon, 20 Mar 2017 17:58:51 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:4a71032f36996c52cdc5d3899a337eadd2f5b5a7309da6f7f761758384fb6363`  
		Last Modified: Fri, 17 Mar 2017 23:20:34 GMT  
		Size: 12.8 MB (12763566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0fc9d424cfbfbae2ceb87dd09f19bed18a7e73cfefa0c79f6dc91013314399`  
		Last Modified: Fri, 17 Mar 2017 23:20:29 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5d359dac63dc82ae43410f8ad3855f8a2aaec29421b93c36d7c24646f26460`  
		Last Modified: Fri, 17 Mar 2017 23:20:34 GMT  
		Size: 14.0 MB (14048004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69582e193154c41d7e915b4c5a41a51dfc5ff6ce631ea8fb3178aeaed2d784bb`  
		Last Modified: Fri, 17 Mar 2017 23:20:29 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b33a55e487a68a5c3fad4df0a07757928c3e6851a5e255de54aa37121150ab6`  
		Last Modified: Fri, 17 Mar 2017 23:20:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0303332798597c27ac14722b933dc4e80cf9c2b6c6a6948a15a291bb40538d`  
		Last Modified: Fri, 17 Mar 2017 23:20:29 GMT  
		Size: 7.7 KB (7670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7057c38211d64db6ab7126ceca06caafd5966ebb9296e2c40fc83abdd6c6a098`  
		Last Modified: Mon, 20 Mar 2017 18:10:04 GMT  
		Size: 3.0 MB (2989013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910683e3a019ae24ea524b3ccb9ab8985503b27c781e287e4fa497de4e745bcd`  
		Last Modified: Mon, 20 Mar 2017 18:10:03 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546e8a97789337cc529739d8bfce2e4850f3846ff88eb0b59453f3e1a5ab8f81`  
		Last Modified: Mon, 20 Mar 2017 18:10:08 GMT  
		Size: 12.2 MB (12179660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8-fpm-alpine`

```console
$ docker pull drupal@sha256:7c0624c308b878ea1159dfe14c84e5a1dfffcf665767f3b3f8fb2e14ac566b8c
```

-	Platforms:
	-	linux; amd64

### `drupal:8-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45365249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db1889c1355975883fa8ca1e9e88cfd4deddb29a6de598b440aeb1adfa43e93`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Fri, 17 Mar 2017 22:50:05 GMT
ENV PHP_VERSION=7.0.17
# Fri, 17 Mar 2017 22:50:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Fri, 17 Mar 2017 22:50:06 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Fri, 17 Mar 2017 22:50:11 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 17 Mar 2017 22:50:12 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 17 Mar 2017 22:53:42 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 17 Mar 2017 22:53:43 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 17 Mar 2017 22:53:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 17 Mar 2017 22:53:44 GMT
WORKDIR /var/www/html
# Fri, 17 Mar 2017 22:53:45 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 17 Mar 2017 22:53:45 GMT
EXPOSE 9000/tcp
# Fri, 17 Mar 2017 22:53:46 GMT
CMD ["php-fpm"]
# Mon, 20 Mar 2017 17:58:41 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Mon, 20 Mar 2017 17:58:42 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 20 Mar 2017 17:58:43 GMT
WORKDIR /var/www/html
# Mon, 20 Mar 2017 17:58:44 GMT
ENV DRUPAL_VERSION=8.2.7
# Mon, 20 Mar 2017 17:58:44 GMT
ENV DRUPAL_MD5=10b1669f750a9996096e76059c157b9a
# Mon, 20 Mar 2017 17:58:51 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:4a71032f36996c52cdc5d3899a337eadd2f5b5a7309da6f7f761758384fb6363`  
		Last Modified: Fri, 17 Mar 2017 23:20:34 GMT  
		Size: 12.8 MB (12763566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0fc9d424cfbfbae2ceb87dd09f19bed18a7e73cfefa0c79f6dc91013314399`  
		Last Modified: Fri, 17 Mar 2017 23:20:29 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5d359dac63dc82ae43410f8ad3855f8a2aaec29421b93c36d7c24646f26460`  
		Last Modified: Fri, 17 Mar 2017 23:20:34 GMT  
		Size: 14.0 MB (14048004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69582e193154c41d7e915b4c5a41a51dfc5ff6ce631ea8fb3178aeaed2d784bb`  
		Last Modified: Fri, 17 Mar 2017 23:20:29 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b33a55e487a68a5c3fad4df0a07757928c3e6851a5e255de54aa37121150ab6`  
		Last Modified: Fri, 17 Mar 2017 23:20:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0303332798597c27ac14722b933dc4e80cf9c2b6c6a6948a15a291bb40538d`  
		Last Modified: Fri, 17 Mar 2017 23:20:29 GMT  
		Size: 7.7 KB (7670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7057c38211d64db6ab7126ceca06caafd5966ebb9296e2c40fc83abdd6c6a098`  
		Last Modified: Mon, 20 Mar 2017 18:10:04 GMT  
		Size: 3.0 MB (2989013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910683e3a019ae24ea524b3ccb9ab8985503b27c781e287e4fa497de4e745bcd`  
		Last Modified: Mon, 20 Mar 2017 18:10:03 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546e8a97789337cc529739d8bfce2e4850f3846ff88eb0b59453f3e1a5ab8f81`  
		Last Modified: Mon, 20 Mar 2017 18:10:08 GMT  
		Size: 12.2 MB (12179660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:fpm-alpine`

```console
$ docker pull drupal@sha256:7c0624c308b878ea1159dfe14c84e5a1dfffcf665767f3b3f8fb2e14ac566b8c
```

-	Platforms:
	-	linux; amd64

### `drupal:fpm-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45365249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db1889c1355975883fa8ca1e9e88cfd4deddb29a6de598b440aeb1adfa43e93`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Fri, 17 Mar 2017 22:50:05 GMT
ENV PHP_VERSION=7.0.17
# Fri, 17 Mar 2017 22:50:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Fri, 17 Mar 2017 22:50:06 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Fri, 17 Mar 2017 22:50:11 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 17 Mar 2017 22:50:12 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 17 Mar 2017 22:53:42 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 17 Mar 2017 22:53:43 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 17 Mar 2017 22:53:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 17 Mar 2017 22:53:44 GMT
WORKDIR /var/www/html
# Fri, 17 Mar 2017 22:53:45 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 17 Mar 2017 22:53:45 GMT
EXPOSE 9000/tcp
# Fri, 17 Mar 2017 22:53:46 GMT
CMD ["php-fpm"]
# Mon, 20 Mar 2017 17:58:41 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Mon, 20 Mar 2017 17:58:42 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 20 Mar 2017 17:58:43 GMT
WORKDIR /var/www/html
# Mon, 20 Mar 2017 17:58:44 GMT
ENV DRUPAL_VERSION=8.2.7
# Mon, 20 Mar 2017 17:58:44 GMT
ENV DRUPAL_MD5=10b1669f750a9996096e76059c157b9a
# Mon, 20 Mar 2017 17:58:51 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:4a71032f36996c52cdc5d3899a337eadd2f5b5a7309da6f7f761758384fb6363`  
		Last Modified: Fri, 17 Mar 2017 23:20:34 GMT  
		Size: 12.8 MB (12763566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0fc9d424cfbfbae2ceb87dd09f19bed18a7e73cfefa0c79f6dc91013314399`  
		Last Modified: Fri, 17 Mar 2017 23:20:29 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5d359dac63dc82ae43410f8ad3855f8a2aaec29421b93c36d7c24646f26460`  
		Last Modified: Fri, 17 Mar 2017 23:20:34 GMT  
		Size: 14.0 MB (14048004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69582e193154c41d7e915b4c5a41a51dfc5ff6ce631ea8fb3178aeaed2d784bb`  
		Last Modified: Fri, 17 Mar 2017 23:20:29 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b33a55e487a68a5c3fad4df0a07757928c3e6851a5e255de54aa37121150ab6`  
		Last Modified: Fri, 17 Mar 2017 23:20:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0303332798597c27ac14722b933dc4e80cf9c2b6c6a6948a15a291bb40538d`  
		Last Modified: Fri, 17 Mar 2017 23:20:29 GMT  
		Size: 7.7 KB (7670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7057c38211d64db6ab7126ceca06caafd5966ebb9296e2c40fc83abdd6c6a098`  
		Last Modified: Mon, 20 Mar 2017 18:10:04 GMT  
		Size: 3.0 MB (2989013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910683e3a019ae24ea524b3ccb9ab8985503b27c781e287e4fa497de4e745bcd`  
		Last Modified: Mon, 20 Mar 2017 18:10:03 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546e8a97789337cc529739d8bfce2e4850f3846ff88eb0b59453f3e1a5ab8f81`  
		Last Modified: Mon, 20 Mar 2017 18:10:08 GMT  
		Size: 12.2 MB (12179660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7.54-apache`

```console
$ docker pull drupal@sha256:e3f9634784e9062629353fefe0e6fd1438082a5557bf65c84ab6993f7169af11
```

-	Platforms:
	-	linux; amd64

### `drupal:7.54-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (163040377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39819bbf7e0e925017badfc54d9dcff546a93ff4e52abc6bf886097a3449d2a9`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 22:59:49 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 21 Mar 2017 22:59:50 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 21 Mar 2017 22:59:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 21 Mar 2017 22:59:52 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 21 Mar 2017 22:59:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:27:13 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 23:27:13 GMT
ENV PHP_VERSION=7.0.17
# Tue, 21 Mar 2017 23:27:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:27:14 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Tue, 21 Mar 2017 23:27:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:27:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:43 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:29:44 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:29:45 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:45 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:29:46 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 23:29:46 GMT
CMD ["apache2-foreground"]
# Wed, 22 Mar 2017 18:07:08 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 18:07:57 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:07:58 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:07:58 GMT
ENV DRUPAL_VERSION=7.54
# Wed, 22 Mar 2017 18:07:58 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Wed, 22 Mar 2017 18:08:00 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf3547d9b739f2f04846520e0d804358ac8bb09d8fe087b9b22776466591147`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 2.9 MB (2858770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1004db2760ff505c8cb29d8b6e0c3807eb12a9c4f75dfe899ec12330443ae4c0`  
		Last Modified: Wed, 22 Mar 2017 23:53:16 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e2d66a547e35efdd6f59963e788cec2b96be1c0a95952c5760430c405c6466`  
		Last Modified: Wed, 22 Mar 2017 23:53:15 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfaa62c234a9168aa1e9a43ad031162a50b71dc0ebff0a48c05b33497a93d51`  
		Last Modified: Wed, 22 Mar 2017 23:53:14 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce8807f4d1a92b890a7878d0f6aadef4fe718b2d1a07b9c98ed585e87dc2e9`  
		Last Modified: Wed, 22 Mar 2017 23:53:13 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707697960803481c5a91fc0d3857c7313aec10cb08fa72369bba1a249a9cd8b1`  
		Last Modified: Thu, 23 Mar 2017 17:33:28 GMT  
		Size: 12.7 MB (12718333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581043ffa58eb96796f52ce3c36fab8fe5d9ea6c2ce68bfbf35bf80719bf98cf`  
		Last Modified: Thu, 23 Mar 2017 17:33:25 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c4532e141130c5cf01d46f381da53ac7e5cb06870965059adc9ee75bf4127`  
		Last Modified: Thu, 23 Mar 2017 17:33:29 GMT  
		Size: 13.4 MB (13382566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51dcb88cf1804e730a57bcf9d1471003c8555b15f7791a42daadea6fa6c15d1e`  
		Last Modified: Thu, 23 Mar 2017 17:33:22 GMT  
		Size: 2.0 KB (2022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7985a51f51b4851fd99471e4ec1aecf55962f650862bbc4face628efb9bda7`  
		Last Modified: Thu, 23 Mar 2017 17:33:21 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01b833ec89726e1c98b08699a5c9649c68924a327cd9341a493707a49f11bb2`  
		Last Modified: Thu, 23 Mar 2017 17:33:21 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577268f7d6a2e07391ac1ed4296dc3960f9513d0d865f943cc892c79459d980c`  
		Last Modified: Thu, 23 Mar 2017 17:33:22 GMT  
		Size: 1.7 MB (1661989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b802266333e1a1f9820b699f4afee28ba751437796dbce438b954f40a688bd9`  
		Last Modified: Thu, 23 Mar 2017 17:33:23 GMT  
		Size: 3.3 MB (3292017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7-apache`

```console
$ docker pull drupal@sha256:e3f9634784e9062629353fefe0e6fd1438082a5557bf65c84ab6993f7169af11
```

-	Platforms:
	-	linux; amd64

### `drupal:7-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (163040377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39819bbf7e0e925017badfc54d9dcff546a93ff4e52abc6bf886097a3449d2a9`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 22:59:49 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 21 Mar 2017 22:59:50 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 21 Mar 2017 22:59:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 21 Mar 2017 22:59:52 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 21 Mar 2017 22:59:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:27:13 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 23:27:13 GMT
ENV PHP_VERSION=7.0.17
# Tue, 21 Mar 2017 23:27:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:27:14 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Tue, 21 Mar 2017 23:27:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:27:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:43 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:29:44 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:29:45 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:45 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:29:46 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 23:29:46 GMT
CMD ["apache2-foreground"]
# Wed, 22 Mar 2017 18:07:08 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 18:07:57 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:07:58 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:07:58 GMT
ENV DRUPAL_VERSION=7.54
# Wed, 22 Mar 2017 18:07:58 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Wed, 22 Mar 2017 18:08:00 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf3547d9b739f2f04846520e0d804358ac8bb09d8fe087b9b22776466591147`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 2.9 MB (2858770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1004db2760ff505c8cb29d8b6e0c3807eb12a9c4f75dfe899ec12330443ae4c0`  
		Last Modified: Wed, 22 Mar 2017 23:53:16 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e2d66a547e35efdd6f59963e788cec2b96be1c0a95952c5760430c405c6466`  
		Last Modified: Wed, 22 Mar 2017 23:53:15 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfaa62c234a9168aa1e9a43ad031162a50b71dc0ebff0a48c05b33497a93d51`  
		Last Modified: Wed, 22 Mar 2017 23:53:14 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce8807f4d1a92b890a7878d0f6aadef4fe718b2d1a07b9c98ed585e87dc2e9`  
		Last Modified: Wed, 22 Mar 2017 23:53:13 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707697960803481c5a91fc0d3857c7313aec10cb08fa72369bba1a249a9cd8b1`  
		Last Modified: Thu, 23 Mar 2017 17:33:28 GMT  
		Size: 12.7 MB (12718333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581043ffa58eb96796f52ce3c36fab8fe5d9ea6c2ce68bfbf35bf80719bf98cf`  
		Last Modified: Thu, 23 Mar 2017 17:33:25 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c4532e141130c5cf01d46f381da53ac7e5cb06870965059adc9ee75bf4127`  
		Last Modified: Thu, 23 Mar 2017 17:33:29 GMT  
		Size: 13.4 MB (13382566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51dcb88cf1804e730a57bcf9d1471003c8555b15f7791a42daadea6fa6c15d1e`  
		Last Modified: Thu, 23 Mar 2017 17:33:22 GMT  
		Size: 2.0 KB (2022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7985a51f51b4851fd99471e4ec1aecf55962f650862bbc4face628efb9bda7`  
		Last Modified: Thu, 23 Mar 2017 17:33:21 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01b833ec89726e1c98b08699a5c9649c68924a327cd9341a493707a49f11bb2`  
		Last Modified: Thu, 23 Mar 2017 17:33:21 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577268f7d6a2e07391ac1ed4296dc3960f9513d0d865f943cc892c79459d980c`  
		Last Modified: Thu, 23 Mar 2017 17:33:22 GMT  
		Size: 1.7 MB (1661989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b802266333e1a1f9820b699f4afee28ba751437796dbce438b954f40a688bd9`  
		Last Modified: Thu, 23 Mar 2017 17:33:23 GMT  
		Size: 3.3 MB (3292017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7.54`

```console
$ docker pull drupal@sha256:e3f9634784e9062629353fefe0e6fd1438082a5557bf65c84ab6993f7169af11
```

-	Platforms:
	-	linux; amd64

### `drupal:7.54` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (163040377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39819bbf7e0e925017badfc54d9dcff546a93ff4e52abc6bf886097a3449d2a9`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 22:59:49 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 21 Mar 2017 22:59:50 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 21 Mar 2017 22:59:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 21 Mar 2017 22:59:52 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 21 Mar 2017 22:59:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:27:13 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 23:27:13 GMT
ENV PHP_VERSION=7.0.17
# Tue, 21 Mar 2017 23:27:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:27:14 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Tue, 21 Mar 2017 23:27:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:27:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:43 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:29:44 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:29:45 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:45 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:29:46 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 23:29:46 GMT
CMD ["apache2-foreground"]
# Wed, 22 Mar 2017 18:07:08 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 18:07:57 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:07:58 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:07:58 GMT
ENV DRUPAL_VERSION=7.54
# Wed, 22 Mar 2017 18:07:58 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Wed, 22 Mar 2017 18:08:00 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf3547d9b739f2f04846520e0d804358ac8bb09d8fe087b9b22776466591147`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 2.9 MB (2858770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1004db2760ff505c8cb29d8b6e0c3807eb12a9c4f75dfe899ec12330443ae4c0`  
		Last Modified: Wed, 22 Mar 2017 23:53:16 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e2d66a547e35efdd6f59963e788cec2b96be1c0a95952c5760430c405c6466`  
		Last Modified: Wed, 22 Mar 2017 23:53:15 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfaa62c234a9168aa1e9a43ad031162a50b71dc0ebff0a48c05b33497a93d51`  
		Last Modified: Wed, 22 Mar 2017 23:53:14 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce8807f4d1a92b890a7878d0f6aadef4fe718b2d1a07b9c98ed585e87dc2e9`  
		Last Modified: Wed, 22 Mar 2017 23:53:13 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707697960803481c5a91fc0d3857c7313aec10cb08fa72369bba1a249a9cd8b1`  
		Last Modified: Thu, 23 Mar 2017 17:33:28 GMT  
		Size: 12.7 MB (12718333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581043ffa58eb96796f52ce3c36fab8fe5d9ea6c2ce68bfbf35bf80719bf98cf`  
		Last Modified: Thu, 23 Mar 2017 17:33:25 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c4532e141130c5cf01d46f381da53ac7e5cb06870965059adc9ee75bf4127`  
		Last Modified: Thu, 23 Mar 2017 17:33:29 GMT  
		Size: 13.4 MB (13382566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51dcb88cf1804e730a57bcf9d1471003c8555b15f7791a42daadea6fa6c15d1e`  
		Last Modified: Thu, 23 Mar 2017 17:33:22 GMT  
		Size: 2.0 KB (2022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7985a51f51b4851fd99471e4ec1aecf55962f650862bbc4face628efb9bda7`  
		Last Modified: Thu, 23 Mar 2017 17:33:21 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01b833ec89726e1c98b08699a5c9649c68924a327cd9341a493707a49f11bb2`  
		Last Modified: Thu, 23 Mar 2017 17:33:21 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577268f7d6a2e07391ac1ed4296dc3960f9513d0d865f943cc892c79459d980c`  
		Last Modified: Thu, 23 Mar 2017 17:33:22 GMT  
		Size: 1.7 MB (1661989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b802266333e1a1f9820b699f4afee28ba751437796dbce438b954f40a688bd9`  
		Last Modified: Thu, 23 Mar 2017 17:33:23 GMT  
		Size: 3.3 MB (3292017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7`

```console
$ docker pull drupal@sha256:e3f9634784e9062629353fefe0e6fd1438082a5557bf65c84ab6993f7169af11
```

-	Platforms:
	-	linux; amd64

### `drupal:7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (163040377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39819bbf7e0e925017badfc54d9dcff546a93ff4e52abc6bf886097a3449d2a9`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 22:59:49 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 21 Mar 2017 22:59:50 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 21 Mar 2017 22:59:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 21 Mar 2017 22:59:52 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 21 Mar 2017 22:59:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:27:13 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 23:27:13 GMT
ENV PHP_VERSION=7.0.17
# Tue, 21 Mar 2017 23:27:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:27:14 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Tue, 21 Mar 2017 23:27:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:27:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:43 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:29:44 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:29:45 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:45 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:29:46 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 23:29:46 GMT
CMD ["apache2-foreground"]
# Wed, 22 Mar 2017 18:07:08 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 18:07:57 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:07:58 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:07:58 GMT
ENV DRUPAL_VERSION=7.54
# Wed, 22 Mar 2017 18:07:58 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Wed, 22 Mar 2017 18:08:00 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf3547d9b739f2f04846520e0d804358ac8bb09d8fe087b9b22776466591147`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 2.9 MB (2858770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1004db2760ff505c8cb29d8b6e0c3807eb12a9c4f75dfe899ec12330443ae4c0`  
		Last Modified: Wed, 22 Mar 2017 23:53:16 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e2d66a547e35efdd6f59963e788cec2b96be1c0a95952c5760430c405c6466`  
		Last Modified: Wed, 22 Mar 2017 23:53:15 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfaa62c234a9168aa1e9a43ad031162a50b71dc0ebff0a48c05b33497a93d51`  
		Last Modified: Wed, 22 Mar 2017 23:53:14 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce8807f4d1a92b890a7878d0f6aadef4fe718b2d1a07b9c98ed585e87dc2e9`  
		Last Modified: Wed, 22 Mar 2017 23:53:13 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707697960803481c5a91fc0d3857c7313aec10cb08fa72369bba1a249a9cd8b1`  
		Last Modified: Thu, 23 Mar 2017 17:33:28 GMT  
		Size: 12.7 MB (12718333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581043ffa58eb96796f52ce3c36fab8fe5d9ea6c2ce68bfbf35bf80719bf98cf`  
		Last Modified: Thu, 23 Mar 2017 17:33:25 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c4532e141130c5cf01d46f381da53ac7e5cb06870965059adc9ee75bf4127`  
		Last Modified: Thu, 23 Mar 2017 17:33:29 GMT  
		Size: 13.4 MB (13382566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51dcb88cf1804e730a57bcf9d1471003c8555b15f7791a42daadea6fa6c15d1e`  
		Last Modified: Thu, 23 Mar 2017 17:33:22 GMT  
		Size: 2.0 KB (2022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7985a51f51b4851fd99471e4ec1aecf55962f650862bbc4face628efb9bda7`  
		Last Modified: Thu, 23 Mar 2017 17:33:21 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01b833ec89726e1c98b08699a5c9649c68924a327cd9341a493707a49f11bb2`  
		Last Modified: Thu, 23 Mar 2017 17:33:21 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577268f7d6a2e07391ac1ed4296dc3960f9513d0d865f943cc892c79459d980c`  
		Last Modified: Thu, 23 Mar 2017 17:33:22 GMT  
		Size: 1.7 MB (1661989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b802266333e1a1f9820b699f4afee28ba751437796dbce438b954f40a688bd9`  
		Last Modified: Thu, 23 Mar 2017 17:33:23 GMT  
		Size: 3.3 MB (3292017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7.54-fpm`

```console
$ docker pull drupal@sha256:45881670c55c4850acc3a9a30263d7ffafb44b75a2709402f18989b923b42e6b
```

-	Platforms:
	-	linux; amd64

### `drupal:7.54-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.6 MB (159609031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06a10b0d1f8d267bef6f3611617bfaff228d14970e8789012046863ca26dc11e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 23:02:23 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 21 Mar 2017 23:02:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 23:02:24 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 23:02:24 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:29:47 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 23:29:47 GMT
ENV PHP_VERSION=7.0.17
# Tue, 21 Mar 2017 23:29:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:29:48 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Tue, 21 Mar 2017 23:29:57 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:29:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:33:24 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:33:25 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:33:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:33:26 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:33:27 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 21 Mar 2017 23:33:27 GMT
EXPOSE 9000/tcp
# Tue, 21 Mar 2017 23:33:28 GMT
CMD ["php-fpm"]
# Wed, 22 Mar 2017 18:08:49 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:08:49 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:08:50 GMT
ENV DRUPAL_VERSION=7.54
# Wed, 22 Mar 2017 18:08:50 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Wed, 22 Mar 2017 18:08:52 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4a0ada0bc344974653b134216b27c759eeb93a1a4a9d86e76091d8bd7dd4d0`  
		Last Modified: Thu, 23 Mar 2017 17:34:56 GMT  
		Size: 12.7 MB (12699149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79fd1a34245464e48c2127077d557a5a43cd70e47acb8eccce8ea981b344516`  
		Last Modified: Thu, 23 Mar 2017 17:34:55 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef60b04e1f2411aea57cfa8163d5a43bbb96269645c2c395c5884942a414e303`  
		Last Modified: Thu, 23 Mar 2017 17:35:00 GMT  
		Size: 12.8 MB (12847311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a9f8e4a6eb8cffec1976f68eceaa30ec0d12e8705c510d587020dad7db822e`  
		Last Modified: Thu, 23 Mar 2017 17:34:52 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df66442e14117e77b7b6a443145c1a0877f795cde830e8cf619c6d8f4484c248`  
		Last Modified: Thu, 23 Mar 2017 17:34:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91fdf504db2ed957f5d6195b27ed4cc0bd00aff5811971df2a8fdbc759cbe3c`  
		Last Modified: Thu, 23 Mar 2017 17:34:52 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac8da1b0190ecf35c0defd21da8bef595ac71c217af8ab8245ecdd626c10d5c`  
		Last Modified: Thu, 23 Mar 2017 17:34:53 GMT  
		Size: 1.6 MB (1639601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d675ed70cb34a6861f50d8547ecd60ec5e07d0e2cbe069c99403f4da9e86e53`  
		Last Modified: Thu, 23 Mar 2017 17:34:56 GMT  
		Size: 3.3 MB (3292011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7-fpm`

```console
$ docker pull drupal@sha256:45881670c55c4850acc3a9a30263d7ffafb44b75a2709402f18989b923b42e6b
```

-	Platforms:
	-	linux; amd64

### `drupal:7-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.6 MB (159609031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06a10b0d1f8d267bef6f3611617bfaff228d14970e8789012046863ca26dc11e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 23:02:23 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 21 Mar 2017 23:02:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 23:02:24 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 23:02:24 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:29:47 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 23:29:47 GMT
ENV PHP_VERSION=7.0.17
# Tue, 21 Mar 2017 23:29:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:29:48 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Tue, 21 Mar 2017 23:29:57 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:29:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:33:24 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:33:25 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:33:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:33:26 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:33:27 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 21 Mar 2017 23:33:27 GMT
EXPOSE 9000/tcp
# Tue, 21 Mar 2017 23:33:28 GMT
CMD ["php-fpm"]
# Wed, 22 Mar 2017 18:08:49 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:08:49 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:08:50 GMT
ENV DRUPAL_VERSION=7.54
# Wed, 22 Mar 2017 18:08:50 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Wed, 22 Mar 2017 18:08:52 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4a0ada0bc344974653b134216b27c759eeb93a1a4a9d86e76091d8bd7dd4d0`  
		Last Modified: Thu, 23 Mar 2017 17:34:56 GMT  
		Size: 12.7 MB (12699149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79fd1a34245464e48c2127077d557a5a43cd70e47acb8eccce8ea981b344516`  
		Last Modified: Thu, 23 Mar 2017 17:34:55 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef60b04e1f2411aea57cfa8163d5a43bbb96269645c2c395c5884942a414e303`  
		Last Modified: Thu, 23 Mar 2017 17:35:00 GMT  
		Size: 12.8 MB (12847311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a9f8e4a6eb8cffec1976f68eceaa30ec0d12e8705c510d587020dad7db822e`  
		Last Modified: Thu, 23 Mar 2017 17:34:52 GMT  
		Size: 2.0 KB (2016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df66442e14117e77b7b6a443145c1a0877f795cde830e8cf619c6d8f4484c248`  
		Last Modified: Thu, 23 Mar 2017 17:34:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91fdf504db2ed957f5d6195b27ed4cc0bd00aff5811971df2a8fdbc759cbe3c`  
		Last Modified: Thu, 23 Mar 2017 17:34:52 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac8da1b0190ecf35c0defd21da8bef595ac71c217af8ab8245ecdd626c10d5c`  
		Last Modified: Thu, 23 Mar 2017 17:34:53 GMT  
		Size: 1.6 MB (1639601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d675ed70cb34a6861f50d8547ecd60ec5e07d0e2cbe069c99403f4da9e86e53`  
		Last Modified: Thu, 23 Mar 2017 17:34:56 GMT  
		Size: 3.3 MB (3292011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7.54-fpm-alpine`

```console
$ docker pull drupal@sha256:a8773cff2f9aa19012c27933c58c53f072a4bb46c60a8571b39581ad9764f757
```

-	Platforms:
	-	linux; amd64

### `drupal:7.54-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36383131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c89c15585735604c20c5b1d551b4fd2c8926c64d379e3c023b0e66afa3884dc`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Fri, 17 Mar 2017 22:50:05 GMT
ENV PHP_VERSION=7.0.17
# Fri, 17 Mar 2017 22:50:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Fri, 17 Mar 2017 22:50:06 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Fri, 17 Mar 2017 22:50:11 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 17 Mar 2017 22:50:12 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 17 Mar 2017 22:53:42 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 17 Mar 2017 22:53:43 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 17 Mar 2017 22:53:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 17 Mar 2017 22:53:44 GMT
WORKDIR /var/www/html
# Fri, 17 Mar 2017 22:53:45 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 17 Mar 2017 22:53:45 GMT
EXPOSE 9000/tcp
# Fri, 17 Mar 2017 22:53:46 GMT
CMD ["php-fpm"]
# Mon, 20 Mar 2017 17:55:44 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Mon, 20 Mar 2017 17:55:45 GMT
WORKDIR /var/www/html
# Mon, 20 Mar 2017 17:55:45 GMT
ENV DRUPAL_VERSION=7.54
# Mon, 20 Mar 2017 17:55:46 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Mon, 20 Mar 2017 17:55:48 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:4a71032f36996c52cdc5d3899a337eadd2f5b5a7309da6f7f761758384fb6363`  
		Last Modified: Fri, 17 Mar 2017 23:20:34 GMT  
		Size: 12.8 MB (12763566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0fc9d424cfbfbae2ceb87dd09f19bed18a7e73cfefa0c79f6dc91013314399`  
		Last Modified: Fri, 17 Mar 2017 23:20:29 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5d359dac63dc82ae43410f8ad3855f8a2aaec29421b93c36d7c24646f26460`  
		Last Modified: Fri, 17 Mar 2017 23:20:34 GMT  
		Size: 14.0 MB (14048004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69582e193154c41d7e915b4c5a41a51dfc5ff6ce631ea8fb3178aeaed2d784bb`  
		Last Modified: Fri, 17 Mar 2017 23:20:29 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b33a55e487a68a5c3fad4df0a07757928c3e6851a5e255de54aa37121150ab6`  
		Last Modified: Fri, 17 Mar 2017 23:20:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0303332798597c27ac14722b933dc4e80cf9c2b6c6a6948a15a291bb40538d`  
		Last Modified: Fri, 17 Mar 2017 23:20:29 GMT  
		Size: 7.7 KB (7670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86596e72f9e345cb47c9d439b3918ef831f405c54daeb256933fa226936464d1`  
		Last Modified: Mon, 20 Mar 2017 18:05:10 GMT  
		Size: 2.9 MB (2894870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:088044f68c686f46ec930af7610c2e851d2613c002f08a05a8904aad8a56e816`  
		Last Modified: Mon, 20 Mar 2017 18:05:11 GMT  
		Size: 3.3 MB (3292008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7-fpm-alpine`

```console
$ docker pull drupal@sha256:a8773cff2f9aa19012c27933c58c53f072a4bb46c60a8571b39581ad9764f757
```

-	Platforms:
	-	linux; amd64

### `drupal:7-fpm-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36383131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c89c15585735604c20c5b1d551b4fd2c8926c64d379e3c023b0e66afa3884dc`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Fri, 17 Mar 2017 22:50:05 GMT
ENV PHP_VERSION=7.0.17
# Fri, 17 Mar 2017 22:50:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Fri, 17 Mar 2017 22:50:06 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Fri, 17 Mar 2017 22:50:11 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 17 Mar 2017 22:50:12 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 17 Mar 2017 22:53:42 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps
# Fri, 17 Mar 2017 22:53:43 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Fri, 17 Mar 2017 22:53:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 17 Mar 2017 22:53:44 GMT
WORKDIR /var/www/html
# Fri, 17 Mar 2017 22:53:45 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 17 Mar 2017 22:53:45 GMT
EXPOSE 9000/tcp
# Fri, 17 Mar 2017 22:53:46 GMT
CMD ["php-fpm"]
# Mon, 20 Mar 2017 17:55:44 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Mon, 20 Mar 2017 17:55:45 GMT
WORKDIR /var/www/html
# Mon, 20 Mar 2017 17:55:45 GMT
ENV DRUPAL_VERSION=7.54
# Mon, 20 Mar 2017 17:55:46 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Mon, 20 Mar 2017 17:55:48 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:4a71032f36996c52cdc5d3899a337eadd2f5b5a7309da6f7f761758384fb6363`  
		Last Modified: Fri, 17 Mar 2017 23:20:34 GMT  
		Size: 12.8 MB (12763566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0fc9d424cfbfbae2ceb87dd09f19bed18a7e73cfefa0c79f6dc91013314399`  
		Last Modified: Fri, 17 Mar 2017 23:20:29 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5d359dac63dc82ae43410f8ad3855f8a2aaec29421b93c36d7c24646f26460`  
		Last Modified: Fri, 17 Mar 2017 23:20:34 GMT  
		Size: 14.0 MB (14048004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69582e193154c41d7e915b4c5a41a51dfc5ff6ce631ea8fb3178aeaed2d784bb`  
		Last Modified: Fri, 17 Mar 2017 23:20:29 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b33a55e487a68a5c3fad4df0a07757928c3e6851a5e255de54aa37121150ab6`  
		Last Modified: Fri, 17 Mar 2017 23:20:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0303332798597c27ac14722b933dc4e80cf9c2b6c6a6948a15a291bb40538d`  
		Last Modified: Fri, 17 Mar 2017 23:20:29 GMT  
		Size: 7.7 KB (7670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86596e72f9e345cb47c9d439b3918ef831f405c54daeb256933fa226936464d1`  
		Last Modified: Mon, 20 Mar 2017 18:05:10 GMT  
		Size: 2.9 MB (2894870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:088044f68c686f46ec930af7610c2e851d2613c002f08a05a8904aad8a56e816`  
		Last Modified: Mon, 20 Mar 2017 18:05:11 GMT  
		Size: 3.3 MB (3292008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
