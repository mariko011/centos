<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `drupal`

-	[`drupal:8.3.4-apache`](#drupal834-apache)
-	[`drupal:8.3-apache`](#drupal83-apache)
-	[`drupal:8-apache`](#drupal8-apache)
-	[`drupal:apache`](#drupalapache)
-	[`drupal:8.3.4`](#drupal834)
-	[`drupal:8.3`](#drupal83)
-	[`drupal:8`](#drupal8)
-	[`drupal:latest`](#drupallatest)
-	[`drupal:8.3.4-fpm`](#drupal834-fpm)
-	[`drupal:8.3-fpm`](#drupal83-fpm)
-	[`drupal:8-fpm`](#drupal8-fpm)
-	[`drupal:fpm`](#drupalfpm)
-	[`drupal:8.3.4-fpm-alpine`](#drupal834-fpm-alpine)
-	[`drupal:8.3-fpm-alpine`](#drupal83-fpm-alpine)
-	[`drupal:8-fpm-alpine`](#drupal8-fpm-alpine)
-	[`drupal:fpm-alpine`](#drupalfpm-alpine)
-	[`drupal:7.56-apache`](#drupal756-apache)
-	[`drupal:7-apache`](#drupal7-apache)
-	[`drupal:7.56`](#drupal756)
-	[`drupal:7`](#drupal7)
-	[`drupal:7.56-fpm`](#drupal756-fpm)
-	[`drupal:7-fpm`](#drupal7-fpm)
-	[`drupal:7.56-fpm-alpine`](#drupal756-fpm-alpine)
-	[`drupal:7-fpm-alpine`](#drupal7-fpm-alpine)

## `drupal:8.3.4-apache`

```console
$ docker pull drupal@sha256:0c316a8216dcb25c31b808f15290c953b48fbe0ec904625a035c72f0b08f0a80
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3.4-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.1 MB (179062679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af0c7824d24e356e036aa6cc1686cfb0efa507c85c0048cc0342d2fffbe8f270`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:10:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:10:25 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Wed, 21 Jun 2017 16:10:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Jun 2017 16:10:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:13:02 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 21 Jun 2017 16:13:04 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:13:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Jun 2017 16:13:06 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:13:07 GMT
WORKDIR /var/www/html
# Wed, 21 Jun 2017 16:13:08 GMT
EXPOSE 80/tcp
# Wed, 21 Jun 2017 16:13:09 GMT
CMD ["apache2-foreground"]
# Thu, 22 Jun 2017 20:09:49 GMT
RUN a2enmod rewrite
# Thu, 22 Jun 2017 20:11:01 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Jun 2017 20:11:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 22 Jun 2017 20:11:04 GMT
WORKDIR /var/www/html
# Thu, 22 Jun 2017 20:11:05 GMT
ENV DRUPAL_VERSION=8.3.4
# Thu, 22 Jun 2017 20:11:06 GMT
ENV DRUPAL_MD5=243a2e10032abaf55c10a96555315727
# Thu, 22 Jun 2017 20:11:13 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6edd671e0b3874ec04702768c59ed7e944c83ec7ffb6924a25b611b430165c41`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 12.9 MB (12935855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38554bba508af73d46f9d8a7e44a768d235d8334e42fd7e4adb1d10f38d2b85`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6554e0e0588fdbf3e60e3e3b426995646c49d3af236618812337b742d8a510`  
		Last Modified: Wed, 21 Jun 2017 16:58:12 GMT  
		Size: 13.5 MB (13521205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3548be1f1016a680570fd575eb90725658bb1ec572db5db59db3f752deb58020`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 2.1 KB (2125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee1a52c53c7f810950b10f8ea2c403241d1eff114134c56d89a411cc4119ae7`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf993ac79f25366a7e4f27d24be95cec939e019982db0cfa6a7f9d700954d76e`  
		Last Modified: Thu, 22 Jun 2017 20:17:15 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37e8247d85e020db705327b49d237660d9b4dc2c4cc55864f3719124a2fde13`  
		Last Modified: Thu, 22 Jun 2017 20:17:16 GMT  
		Size: 1.9 MB (1876534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:743d7209cf5458f41995f83cd2d92db6805fd774845e4dfe809e7d498fb0deff`  
		Last Modified: Thu, 22 Jun 2017 20:17:15 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b749f658fb45927a26cbab28d2289489c6a45433a090edcce1719b9f4bf5b3be`  
		Last Modified: Thu, 22 Jun 2017 20:17:21 GMT  
		Size: 12.8 MB (12827750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.3-apache`

```console
$ docker pull drupal@sha256:0c316a8216dcb25c31b808f15290c953b48fbe0ec904625a035c72f0b08f0a80
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.1 MB (179062679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af0c7824d24e356e036aa6cc1686cfb0efa507c85c0048cc0342d2fffbe8f270`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:10:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:10:25 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Wed, 21 Jun 2017 16:10:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Jun 2017 16:10:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:13:02 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 21 Jun 2017 16:13:04 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:13:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Jun 2017 16:13:06 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:13:07 GMT
WORKDIR /var/www/html
# Wed, 21 Jun 2017 16:13:08 GMT
EXPOSE 80/tcp
# Wed, 21 Jun 2017 16:13:09 GMT
CMD ["apache2-foreground"]
# Thu, 22 Jun 2017 20:09:49 GMT
RUN a2enmod rewrite
# Thu, 22 Jun 2017 20:11:01 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Jun 2017 20:11:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 22 Jun 2017 20:11:04 GMT
WORKDIR /var/www/html
# Thu, 22 Jun 2017 20:11:05 GMT
ENV DRUPAL_VERSION=8.3.4
# Thu, 22 Jun 2017 20:11:06 GMT
ENV DRUPAL_MD5=243a2e10032abaf55c10a96555315727
# Thu, 22 Jun 2017 20:11:13 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6edd671e0b3874ec04702768c59ed7e944c83ec7ffb6924a25b611b430165c41`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 12.9 MB (12935855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38554bba508af73d46f9d8a7e44a768d235d8334e42fd7e4adb1d10f38d2b85`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6554e0e0588fdbf3e60e3e3b426995646c49d3af236618812337b742d8a510`  
		Last Modified: Wed, 21 Jun 2017 16:58:12 GMT  
		Size: 13.5 MB (13521205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3548be1f1016a680570fd575eb90725658bb1ec572db5db59db3f752deb58020`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 2.1 KB (2125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee1a52c53c7f810950b10f8ea2c403241d1eff114134c56d89a411cc4119ae7`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf993ac79f25366a7e4f27d24be95cec939e019982db0cfa6a7f9d700954d76e`  
		Last Modified: Thu, 22 Jun 2017 20:17:15 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37e8247d85e020db705327b49d237660d9b4dc2c4cc55864f3719124a2fde13`  
		Last Modified: Thu, 22 Jun 2017 20:17:16 GMT  
		Size: 1.9 MB (1876534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:743d7209cf5458f41995f83cd2d92db6805fd774845e4dfe809e7d498fb0deff`  
		Last Modified: Thu, 22 Jun 2017 20:17:15 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b749f658fb45927a26cbab28d2289489c6a45433a090edcce1719b9f4bf5b3be`  
		Last Modified: Thu, 22 Jun 2017 20:17:21 GMT  
		Size: 12.8 MB (12827750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8-apache`

```console
$ docker pull drupal@sha256:0c316a8216dcb25c31b808f15290c953b48fbe0ec904625a035c72f0b08f0a80
```

-	Platforms:
	-	linux; amd64

### `drupal:8-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.1 MB (179062679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af0c7824d24e356e036aa6cc1686cfb0efa507c85c0048cc0342d2fffbe8f270`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:10:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:10:25 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Wed, 21 Jun 2017 16:10:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Jun 2017 16:10:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:13:02 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 21 Jun 2017 16:13:04 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:13:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Jun 2017 16:13:06 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:13:07 GMT
WORKDIR /var/www/html
# Wed, 21 Jun 2017 16:13:08 GMT
EXPOSE 80/tcp
# Wed, 21 Jun 2017 16:13:09 GMT
CMD ["apache2-foreground"]
# Thu, 22 Jun 2017 20:09:49 GMT
RUN a2enmod rewrite
# Thu, 22 Jun 2017 20:11:01 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Jun 2017 20:11:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 22 Jun 2017 20:11:04 GMT
WORKDIR /var/www/html
# Thu, 22 Jun 2017 20:11:05 GMT
ENV DRUPAL_VERSION=8.3.4
# Thu, 22 Jun 2017 20:11:06 GMT
ENV DRUPAL_MD5=243a2e10032abaf55c10a96555315727
# Thu, 22 Jun 2017 20:11:13 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6edd671e0b3874ec04702768c59ed7e944c83ec7ffb6924a25b611b430165c41`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 12.9 MB (12935855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38554bba508af73d46f9d8a7e44a768d235d8334e42fd7e4adb1d10f38d2b85`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6554e0e0588fdbf3e60e3e3b426995646c49d3af236618812337b742d8a510`  
		Last Modified: Wed, 21 Jun 2017 16:58:12 GMT  
		Size: 13.5 MB (13521205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3548be1f1016a680570fd575eb90725658bb1ec572db5db59db3f752deb58020`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 2.1 KB (2125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee1a52c53c7f810950b10f8ea2c403241d1eff114134c56d89a411cc4119ae7`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf993ac79f25366a7e4f27d24be95cec939e019982db0cfa6a7f9d700954d76e`  
		Last Modified: Thu, 22 Jun 2017 20:17:15 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37e8247d85e020db705327b49d237660d9b4dc2c4cc55864f3719124a2fde13`  
		Last Modified: Thu, 22 Jun 2017 20:17:16 GMT  
		Size: 1.9 MB (1876534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:743d7209cf5458f41995f83cd2d92db6805fd774845e4dfe809e7d498fb0deff`  
		Last Modified: Thu, 22 Jun 2017 20:17:15 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b749f658fb45927a26cbab28d2289489c6a45433a090edcce1719b9f4bf5b3be`  
		Last Modified: Thu, 22 Jun 2017 20:17:21 GMT  
		Size: 12.8 MB (12827750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:apache`

```console
$ docker pull drupal@sha256:0c316a8216dcb25c31b808f15290c953b48fbe0ec904625a035c72f0b08f0a80
```

-	Platforms:
	-	linux; amd64

### `drupal:apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.1 MB (179062679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af0c7824d24e356e036aa6cc1686cfb0efa507c85c0048cc0342d2fffbe8f270`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:10:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:10:25 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Wed, 21 Jun 2017 16:10:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Jun 2017 16:10:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:13:02 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 21 Jun 2017 16:13:04 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:13:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Jun 2017 16:13:06 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:13:07 GMT
WORKDIR /var/www/html
# Wed, 21 Jun 2017 16:13:08 GMT
EXPOSE 80/tcp
# Wed, 21 Jun 2017 16:13:09 GMT
CMD ["apache2-foreground"]
# Thu, 22 Jun 2017 20:09:49 GMT
RUN a2enmod rewrite
# Thu, 22 Jun 2017 20:11:01 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Jun 2017 20:11:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 22 Jun 2017 20:11:04 GMT
WORKDIR /var/www/html
# Thu, 22 Jun 2017 20:11:05 GMT
ENV DRUPAL_VERSION=8.3.4
# Thu, 22 Jun 2017 20:11:06 GMT
ENV DRUPAL_MD5=243a2e10032abaf55c10a96555315727
# Thu, 22 Jun 2017 20:11:13 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6edd671e0b3874ec04702768c59ed7e944c83ec7ffb6924a25b611b430165c41`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 12.9 MB (12935855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38554bba508af73d46f9d8a7e44a768d235d8334e42fd7e4adb1d10f38d2b85`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6554e0e0588fdbf3e60e3e3b426995646c49d3af236618812337b742d8a510`  
		Last Modified: Wed, 21 Jun 2017 16:58:12 GMT  
		Size: 13.5 MB (13521205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3548be1f1016a680570fd575eb90725658bb1ec572db5db59db3f752deb58020`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 2.1 KB (2125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee1a52c53c7f810950b10f8ea2c403241d1eff114134c56d89a411cc4119ae7`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf993ac79f25366a7e4f27d24be95cec939e019982db0cfa6a7f9d700954d76e`  
		Last Modified: Thu, 22 Jun 2017 20:17:15 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37e8247d85e020db705327b49d237660d9b4dc2c4cc55864f3719124a2fde13`  
		Last Modified: Thu, 22 Jun 2017 20:17:16 GMT  
		Size: 1.9 MB (1876534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:743d7209cf5458f41995f83cd2d92db6805fd774845e4dfe809e7d498fb0deff`  
		Last Modified: Thu, 22 Jun 2017 20:17:15 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b749f658fb45927a26cbab28d2289489c6a45433a090edcce1719b9f4bf5b3be`  
		Last Modified: Thu, 22 Jun 2017 20:17:21 GMT  
		Size: 12.8 MB (12827750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.3.4`

```console
$ docker pull drupal@sha256:0c316a8216dcb25c31b808f15290c953b48fbe0ec904625a035c72f0b08f0a80
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.1 MB (179062679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af0c7824d24e356e036aa6cc1686cfb0efa507c85c0048cc0342d2fffbe8f270`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:10:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:10:25 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Wed, 21 Jun 2017 16:10:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Jun 2017 16:10:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:13:02 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 21 Jun 2017 16:13:04 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:13:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Jun 2017 16:13:06 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:13:07 GMT
WORKDIR /var/www/html
# Wed, 21 Jun 2017 16:13:08 GMT
EXPOSE 80/tcp
# Wed, 21 Jun 2017 16:13:09 GMT
CMD ["apache2-foreground"]
# Thu, 22 Jun 2017 20:09:49 GMT
RUN a2enmod rewrite
# Thu, 22 Jun 2017 20:11:01 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Jun 2017 20:11:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 22 Jun 2017 20:11:04 GMT
WORKDIR /var/www/html
# Thu, 22 Jun 2017 20:11:05 GMT
ENV DRUPAL_VERSION=8.3.4
# Thu, 22 Jun 2017 20:11:06 GMT
ENV DRUPAL_MD5=243a2e10032abaf55c10a96555315727
# Thu, 22 Jun 2017 20:11:13 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6edd671e0b3874ec04702768c59ed7e944c83ec7ffb6924a25b611b430165c41`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 12.9 MB (12935855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38554bba508af73d46f9d8a7e44a768d235d8334e42fd7e4adb1d10f38d2b85`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6554e0e0588fdbf3e60e3e3b426995646c49d3af236618812337b742d8a510`  
		Last Modified: Wed, 21 Jun 2017 16:58:12 GMT  
		Size: 13.5 MB (13521205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3548be1f1016a680570fd575eb90725658bb1ec572db5db59db3f752deb58020`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 2.1 KB (2125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee1a52c53c7f810950b10f8ea2c403241d1eff114134c56d89a411cc4119ae7`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf993ac79f25366a7e4f27d24be95cec939e019982db0cfa6a7f9d700954d76e`  
		Last Modified: Thu, 22 Jun 2017 20:17:15 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37e8247d85e020db705327b49d237660d9b4dc2c4cc55864f3719124a2fde13`  
		Last Modified: Thu, 22 Jun 2017 20:17:16 GMT  
		Size: 1.9 MB (1876534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:743d7209cf5458f41995f83cd2d92db6805fd774845e4dfe809e7d498fb0deff`  
		Last Modified: Thu, 22 Jun 2017 20:17:15 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b749f658fb45927a26cbab28d2289489c6a45433a090edcce1719b9f4bf5b3be`  
		Last Modified: Thu, 22 Jun 2017 20:17:21 GMT  
		Size: 12.8 MB (12827750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.3`

```console
$ docker pull drupal@sha256:0c316a8216dcb25c31b808f15290c953b48fbe0ec904625a035c72f0b08f0a80
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.1 MB (179062679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af0c7824d24e356e036aa6cc1686cfb0efa507c85c0048cc0342d2fffbe8f270`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:10:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:10:25 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Wed, 21 Jun 2017 16:10:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Jun 2017 16:10:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:13:02 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 21 Jun 2017 16:13:04 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:13:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Jun 2017 16:13:06 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:13:07 GMT
WORKDIR /var/www/html
# Wed, 21 Jun 2017 16:13:08 GMT
EXPOSE 80/tcp
# Wed, 21 Jun 2017 16:13:09 GMT
CMD ["apache2-foreground"]
# Thu, 22 Jun 2017 20:09:49 GMT
RUN a2enmod rewrite
# Thu, 22 Jun 2017 20:11:01 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Jun 2017 20:11:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 22 Jun 2017 20:11:04 GMT
WORKDIR /var/www/html
# Thu, 22 Jun 2017 20:11:05 GMT
ENV DRUPAL_VERSION=8.3.4
# Thu, 22 Jun 2017 20:11:06 GMT
ENV DRUPAL_MD5=243a2e10032abaf55c10a96555315727
# Thu, 22 Jun 2017 20:11:13 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6edd671e0b3874ec04702768c59ed7e944c83ec7ffb6924a25b611b430165c41`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 12.9 MB (12935855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38554bba508af73d46f9d8a7e44a768d235d8334e42fd7e4adb1d10f38d2b85`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6554e0e0588fdbf3e60e3e3b426995646c49d3af236618812337b742d8a510`  
		Last Modified: Wed, 21 Jun 2017 16:58:12 GMT  
		Size: 13.5 MB (13521205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3548be1f1016a680570fd575eb90725658bb1ec572db5db59db3f752deb58020`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 2.1 KB (2125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee1a52c53c7f810950b10f8ea2c403241d1eff114134c56d89a411cc4119ae7`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf993ac79f25366a7e4f27d24be95cec939e019982db0cfa6a7f9d700954d76e`  
		Last Modified: Thu, 22 Jun 2017 20:17:15 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37e8247d85e020db705327b49d237660d9b4dc2c4cc55864f3719124a2fde13`  
		Last Modified: Thu, 22 Jun 2017 20:17:16 GMT  
		Size: 1.9 MB (1876534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:743d7209cf5458f41995f83cd2d92db6805fd774845e4dfe809e7d498fb0deff`  
		Last Modified: Thu, 22 Jun 2017 20:17:15 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b749f658fb45927a26cbab28d2289489c6a45433a090edcce1719b9f4bf5b3be`  
		Last Modified: Thu, 22 Jun 2017 20:17:21 GMT  
		Size: 12.8 MB (12827750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8`

```console
$ docker pull drupal@sha256:0c316a8216dcb25c31b808f15290c953b48fbe0ec904625a035c72f0b08f0a80
```

-	Platforms:
	-	linux; amd64

### `drupal:8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.1 MB (179062679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af0c7824d24e356e036aa6cc1686cfb0efa507c85c0048cc0342d2fffbe8f270`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:10:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:10:25 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Wed, 21 Jun 2017 16:10:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Jun 2017 16:10:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:13:02 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 21 Jun 2017 16:13:04 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:13:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Jun 2017 16:13:06 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:13:07 GMT
WORKDIR /var/www/html
# Wed, 21 Jun 2017 16:13:08 GMT
EXPOSE 80/tcp
# Wed, 21 Jun 2017 16:13:09 GMT
CMD ["apache2-foreground"]
# Thu, 22 Jun 2017 20:09:49 GMT
RUN a2enmod rewrite
# Thu, 22 Jun 2017 20:11:01 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Jun 2017 20:11:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 22 Jun 2017 20:11:04 GMT
WORKDIR /var/www/html
# Thu, 22 Jun 2017 20:11:05 GMT
ENV DRUPAL_VERSION=8.3.4
# Thu, 22 Jun 2017 20:11:06 GMT
ENV DRUPAL_MD5=243a2e10032abaf55c10a96555315727
# Thu, 22 Jun 2017 20:11:13 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6edd671e0b3874ec04702768c59ed7e944c83ec7ffb6924a25b611b430165c41`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 12.9 MB (12935855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38554bba508af73d46f9d8a7e44a768d235d8334e42fd7e4adb1d10f38d2b85`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6554e0e0588fdbf3e60e3e3b426995646c49d3af236618812337b742d8a510`  
		Last Modified: Wed, 21 Jun 2017 16:58:12 GMT  
		Size: 13.5 MB (13521205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3548be1f1016a680570fd575eb90725658bb1ec572db5db59db3f752deb58020`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 2.1 KB (2125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee1a52c53c7f810950b10f8ea2c403241d1eff114134c56d89a411cc4119ae7`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf993ac79f25366a7e4f27d24be95cec939e019982db0cfa6a7f9d700954d76e`  
		Last Modified: Thu, 22 Jun 2017 20:17:15 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37e8247d85e020db705327b49d237660d9b4dc2c4cc55864f3719124a2fde13`  
		Last Modified: Thu, 22 Jun 2017 20:17:16 GMT  
		Size: 1.9 MB (1876534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:743d7209cf5458f41995f83cd2d92db6805fd774845e4dfe809e7d498fb0deff`  
		Last Modified: Thu, 22 Jun 2017 20:17:15 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b749f658fb45927a26cbab28d2289489c6a45433a090edcce1719b9f4bf5b3be`  
		Last Modified: Thu, 22 Jun 2017 20:17:21 GMT  
		Size: 12.8 MB (12827750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:latest`

```console
$ docker pull drupal@sha256:0c316a8216dcb25c31b808f15290c953b48fbe0ec904625a035c72f0b08f0a80
```

-	Platforms:
	-	linux; amd64

### `drupal:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.1 MB (179062679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af0c7824d24e356e036aa6cc1686cfb0efa507c85c0048cc0342d2fffbe8f270`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:10:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:10:25 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Wed, 21 Jun 2017 16:10:26 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Wed, 21 Jun 2017 16:10:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Jun 2017 16:10:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:13:02 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 21 Jun 2017 16:13:04 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:13:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Jun 2017 16:13:06 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:13:07 GMT
WORKDIR /var/www/html
# Wed, 21 Jun 2017 16:13:08 GMT
EXPOSE 80/tcp
# Wed, 21 Jun 2017 16:13:09 GMT
CMD ["apache2-foreground"]
# Thu, 22 Jun 2017 20:09:49 GMT
RUN a2enmod rewrite
# Thu, 22 Jun 2017 20:11:01 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Jun 2017 20:11:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 22 Jun 2017 20:11:04 GMT
WORKDIR /var/www/html
# Thu, 22 Jun 2017 20:11:05 GMT
ENV DRUPAL_VERSION=8.3.4
# Thu, 22 Jun 2017 20:11:06 GMT
ENV DRUPAL_MD5=243a2e10032abaf55c10a96555315727
# Thu, 22 Jun 2017 20:11:13 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6edd671e0b3874ec04702768c59ed7e944c83ec7ffb6924a25b611b430165c41`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 12.9 MB (12935855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38554bba508af73d46f9d8a7e44a768d235d8334e42fd7e4adb1d10f38d2b85`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6554e0e0588fdbf3e60e3e3b426995646c49d3af236618812337b742d8a510`  
		Last Modified: Wed, 21 Jun 2017 16:58:12 GMT  
		Size: 13.5 MB (13521205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3548be1f1016a680570fd575eb90725658bb1ec572db5db59db3f752deb58020`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 2.1 KB (2125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee1a52c53c7f810950b10f8ea2c403241d1eff114134c56d89a411cc4119ae7`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf993ac79f25366a7e4f27d24be95cec939e019982db0cfa6a7f9d700954d76e`  
		Last Modified: Thu, 22 Jun 2017 20:17:15 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37e8247d85e020db705327b49d237660d9b4dc2c4cc55864f3719124a2fde13`  
		Last Modified: Thu, 22 Jun 2017 20:17:16 GMT  
		Size: 1.9 MB (1876534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:743d7209cf5458f41995f83cd2d92db6805fd774845e4dfe809e7d498fb0deff`  
		Last Modified: Thu, 22 Jun 2017 20:17:15 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b749f658fb45927a26cbab28d2289489c6a45433a090edcce1719b9f4bf5b3be`  
		Last Modified: Thu, 22 Jun 2017 20:17:21 GMT  
		Size: 12.8 MB (12827750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.3.4-fpm`

```console
$ docker pull drupal@sha256:11979c2915b9164ad097a08c321504a4823bed3929a42678cc88f4770db4a6d5
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3.4-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.8 MB (175805984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c0c347678081b631410044faeb040cfa81325047bdaffb7c17847d427f7857`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:13:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 21 Jun 2017 16:13:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:13:37 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:13:38 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:13:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Wed, 21 Jun 2017 16:13:39 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Wed, 21 Jun 2017 16:13:51 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Jun 2017 16:13:52 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:17:25 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 21 Jun 2017 16:17:27 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:17:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Jun 2017 16:17:29 GMT
WORKDIR /var/www/html
# Wed, 21 Jun 2017 16:17:30 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 21 Jun 2017 16:17:31 GMT
EXPOSE 9000/tcp
# Wed, 21 Jun 2017 16:17:32 GMT
CMD ["php-fpm"]
# Thu, 22 Jun 2017 20:12:41 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Jun 2017 20:12:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 22 Jun 2017 20:12:44 GMT
WORKDIR /var/www/html
# Thu, 22 Jun 2017 20:12:45 GMT
ENV DRUPAL_VERSION=8.3.4
# Thu, 22 Jun 2017 20:12:45 GMT
ENV DRUPAL_MD5=243a2e10032abaf55c10a96555315727
# Thu, 22 Jun 2017 20:12:52 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ce0d9c08506c8b4c56ceefd40b7d1ae88005c800ed98073330ee800d49dc4d`  
		Last Modified: Wed, 21 Jun 2017 17:00:08 GMT  
		Size: 12.9 MB (12918552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047a15ecfbe7381d04b4304ba9f1dfaf4eb75b39f1b27a21b9689809440822dd`  
		Last Modified: Wed, 21 Jun 2017 17:00:02 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e288f2a486976f5dac740bfddc2ac7d90bbfe462f9968489cfc2b45243afd7ed`  
		Last Modified: Wed, 21 Jun 2017 17:00:17 GMT  
		Size: 13.1 MB (13081557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdbc0df3315ac6adb1438e5b4d9601dc0fc1df98a4a1a845a750fd840387304c`  
		Last Modified: Wed, 21 Jun 2017 17:00:03 GMT  
		Size: 2.1 KB (2118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e08cbb58cb442de1b2fe13a861443cbfc33ecdfe1f5aa7efac0e50b65ae2420`  
		Last Modified: Wed, 21 Jun 2017 17:00:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e4a4ba23cfb01d406de8389f965881070342d9d4c4e29972e24ffbd8ec2bf3`  
		Last Modified: Wed, 21 Jun 2017 17:00:03 GMT  
		Size: 7.7 KB (7674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032b4ede4ecc5f6a848be376b8243c0872b666d9d8611341ff62ea6a81cf23fa`  
		Last Modified: Thu, 22 Jun 2017 20:21:01 GMT  
		Size: 1.9 MB (1856541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa88d8621bd07235855dd629c01ad8ff5f7287c730414daf4ac7598bb230d532`  
		Last Modified: Thu, 22 Jun 2017 20:21:01 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc282df9fbdc8b5e65f82113dd1d161119e36ef80065b554fdf3f01c7315ef9`  
		Last Modified: Thu, 22 Jun 2017 20:21:04 GMT  
		Size: 12.8 MB (12827717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.3-fpm`

```console
$ docker pull drupal@sha256:11979c2915b9164ad097a08c321504a4823bed3929a42678cc88f4770db4a6d5
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.8 MB (175805984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c0c347678081b631410044faeb040cfa81325047bdaffb7c17847d427f7857`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:13:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 21 Jun 2017 16:13:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:13:37 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:13:38 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:13:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Wed, 21 Jun 2017 16:13:39 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Wed, 21 Jun 2017 16:13:51 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Jun 2017 16:13:52 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:17:25 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 21 Jun 2017 16:17:27 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:17:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Jun 2017 16:17:29 GMT
WORKDIR /var/www/html
# Wed, 21 Jun 2017 16:17:30 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 21 Jun 2017 16:17:31 GMT
EXPOSE 9000/tcp
# Wed, 21 Jun 2017 16:17:32 GMT
CMD ["php-fpm"]
# Thu, 22 Jun 2017 20:12:41 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Jun 2017 20:12:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 22 Jun 2017 20:12:44 GMT
WORKDIR /var/www/html
# Thu, 22 Jun 2017 20:12:45 GMT
ENV DRUPAL_VERSION=8.3.4
# Thu, 22 Jun 2017 20:12:45 GMT
ENV DRUPAL_MD5=243a2e10032abaf55c10a96555315727
# Thu, 22 Jun 2017 20:12:52 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ce0d9c08506c8b4c56ceefd40b7d1ae88005c800ed98073330ee800d49dc4d`  
		Last Modified: Wed, 21 Jun 2017 17:00:08 GMT  
		Size: 12.9 MB (12918552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047a15ecfbe7381d04b4304ba9f1dfaf4eb75b39f1b27a21b9689809440822dd`  
		Last Modified: Wed, 21 Jun 2017 17:00:02 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e288f2a486976f5dac740bfddc2ac7d90bbfe462f9968489cfc2b45243afd7ed`  
		Last Modified: Wed, 21 Jun 2017 17:00:17 GMT  
		Size: 13.1 MB (13081557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdbc0df3315ac6adb1438e5b4d9601dc0fc1df98a4a1a845a750fd840387304c`  
		Last Modified: Wed, 21 Jun 2017 17:00:03 GMT  
		Size: 2.1 KB (2118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e08cbb58cb442de1b2fe13a861443cbfc33ecdfe1f5aa7efac0e50b65ae2420`  
		Last Modified: Wed, 21 Jun 2017 17:00:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e4a4ba23cfb01d406de8389f965881070342d9d4c4e29972e24ffbd8ec2bf3`  
		Last Modified: Wed, 21 Jun 2017 17:00:03 GMT  
		Size: 7.7 KB (7674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032b4ede4ecc5f6a848be376b8243c0872b666d9d8611341ff62ea6a81cf23fa`  
		Last Modified: Thu, 22 Jun 2017 20:21:01 GMT  
		Size: 1.9 MB (1856541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa88d8621bd07235855dd629c01ad8ff5f7287c730414daf4ac7598bb230d532`  
		Last Modified: Thu, 22 Jun 2017 20:21:01 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc282df9fbdc8b5e65f82113dd1d161119e36ef80065b554fdf3f01c7315ef9`  
		Last Modified: Thu, 22 Jun 2017 20:21:04 GMT  
		Size: 12.8 MB (12827717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8-fpm`

```console
$ docker pull drupal@sha256:11979c2915b9164ad097a08c321504a4823bed3929a42678cc88f4770db4a6d5
```

-	Platforms:
	-	linux; amd64

### `drupal:8-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.8 MB (175805984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c0c347678081b631410044faeb040cfa81325047bdaffb7c17847d427f7857`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:13:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 21 Jun 2017 16:13:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:13:37 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:13:38 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:13:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Wed, 21 Jun 2017 16:13:39 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Wed, 21 Jun 2017 16:13:51 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Jun 2017 16:13:52 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:17:25 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 21 Jun 2017 16:17:27 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:17:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Jun 2017 16:17:29 GMT
WORKDIR /var/www/html
# Wed, 21 Jun 2017 16:17:30 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 21 Jun 2017 16:17:31 GMT
EXPOSE 9000/tcp
# Wed, 21 Jun 2017 16:17:32 GMT
CMD ["php-fpm"]
# Thu, 22 Jun 2017 20:12:41 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Jun 2017 20:12:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 22 Jun 2017 20:12:44 GMT
WORKDIR /var/www/html
# Thu, 22 Jun 2017 20:12:45 GMT
ENV DRUPAL_VERSION=8.3.4
# Thu, 22 Jun 2017 20:12:45 GMT
ENV DRUPAL_MD5=243a2e10032abaf55c10a96555315727
# Thu, 22 Jun 2017 20:12:52 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ce0d9c08506c8b4c56ceefd40b7d1ae88005c800ed98073330ee800d49dc4d`  
		Last Modified: Wed, 21 Jun 2017 17:00:08 GMT  
		Size: 12.9 MB (12918552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047a15ecfbe7381d04b4304ba9f1dfaf4eb75b39f1b27a21b9689809440822dd`  
		Last Modified: Wed, 21 Jun 2017 17:00:02 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e288f2a486976f5dac740bfddc2ac7d90bbfe462f9968489cfc2b45243afd7ed`  
		Last Modified: Wed, 21 Jun 2017 17:00:17 GMT  
		Size: 13.1 MB (13081557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdbc0df3315ac6adb1438e5b4d9601dc0fc1df98a4a1a845a750fd840387304c`  
		Last Modified: Wed, 21 Jun 2017 17:00:03 GMT  
		Size: 2.1 KB (2118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e08cbb58cb442de1b2fe13a861443cbfc33ecdfe1f5aa7efac0e50b65ae2420`  
		Last Modified: Wed, 21 Jun 2017 17:00:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e4a4ba23cfb01d406de8389f965881070342d9d4c4e29972e24ffbd8ec2bf3`  
		Last Modified: Wed, 21 Jun 2017 17:00:03 GMT  
		Size: 7.7 KB (7674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032b4ede4ecc5f6a848be376b8243c0872b666d9d8611341ff62ea6a81cf23fa`  
		Last Modified: Thu, 22 Jun 2017 20:21:01 GMT  
		Size: 1.9 MB (1856541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa88d8621bd07235855dd629c01ad8ff5f7287c730414daf4ac7598bb230d532`  
		Last Modified: Thu, 22 Jun 2017 20:21:01 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc282df9fbdc8b5e65f82113dd1d161119e36ef80065b554fdf3f01c7315ef9`  
		Last Modified: Thu, 22 Jun 2017 20:21:04 GMT  
		Size: 12.8 MB (12827717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:fpm`

```console
$ docker pull drupal@sha256:11979c2915b9164ad097a08c321504a4823bed3929a42678cc88f4770db4a6d5
```

-	Platforms:
	-	linux; amd64

### `drupal:fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.8 MB (175805984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c0c347678081b631410044faeb040cfa81325047bdaffb7c17847d427f7857`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:13:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 21 Jun 2017 16:13:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:13:37 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 21 Jun 2017 16:13:38 GMT
ENV PHP_VERSION=7.1.6
# Wed, 21 Jun 2017 16:13:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Wed, 21 Jun 2017 16:13:39 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Wed, 21 Jun 2017 16:13:51 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Jun 2017 16:13:52 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:17:25 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 21 Jun 2017 16:17:27 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:17:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Jun 2017 16:17:29 GMT
WORKDIR /var/www/html
# Wed, 21 Jun 2017 16:17:30 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 21 Jun 2017 16:17:31 GMT
EXPOSE 9000/tcp
# Wed, 21 Jun 2017 16:17:32 GMT
CMD ["php-fpm"]
# Thu, 22 Jun 2017 20:12:41 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Jun 2017 20:12:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 22 Jun 2017 20:12:44 GMT
WORKDIR /var/www/html
# Thu, 22 Jun 2017 20:12:45 GMT
ENV DRUPAL_VERSION=8.3.4
# Thu, 22 Jun 2017 20:12:45 GMT
ENV DRUPAL_MD5=243a2e10032abaf55c10a96555315727
# Thu, 22 Jun 2017 20:12:52 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ce0d9c08506c8b4c56ceefd40b7d1ae88005c800ed98073330ee800d49dc4d`  
		Last Modified: Wed, 21 Jun 2017 17:00:08 GMT  
		Size: 12.9 MB (12918552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047a15ecfbe7381d04b4304ba9f1dfaf4eb75b39f1b27a21b9689809440822dd`  
		Last Modified: Wed, 21 Jun 2017 17:00:02 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e288f2a486976f5dac740bfddc2ac7d90bbfe462f9968489cfc2b45243afd7ed`  
		Last Modified: Wed, 21 Jun 2017 17:00:17 GMT  
		Size: 13.1 MB (13081557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdbc0df3315ac6adb1438e5b4d9601dc0fc1df98a4a1a845a750fd840387304c`  
		Last Modified: Wed, 21 Jun 2017 17:00:03 GMT  
		Size: 2.1 KB (2118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e08cbb58cb442de1b2fe13a861443cbfc33ecdfe1f5aa7efac0e50b65ae2420`  
		Last Modified: Wed, 21 Jun 2017 17:00:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e4a4ba23cfb01d406de8389f965881070342d9d4c4e29972e24ffbd8ec2bf3`  
		Last Modified: Wed, 21 Jun 2017 17:00:03 GMT  
		Size: 7.7 KB (7674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032b4ede4ecc5f6a848be376b8243c0872b666d9d8611341ff62ea6a81cf23fa`  
		Last Modified: Thu, 22 Jun 2017 20:21:01 GMT  
		Size: 1.9 MB (1856541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa88d8621bd07235855dd629c01ad8ff5f7287c730414daf4ac7598bb230d532`  
		Last Modified: Thu, 22 Jun 2017 20:21:01 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc282df9fbdc8b5e65f82113dd1d161119e36ef80065b554fdf3f01c7315ef9`  
		Last Modified: Thu, 22 Jun 2017 20:21:04 GMT  
		Size: 12.8 MB (12827717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.3.4-fpm-alpine`

```console
$ docker pull drupal@sha256:a9a85c0baf1470de13b71cce74cf9173ef76cbed30e8ff4afbc36b37db6d9347
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3.4-fpm-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46910330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49d32e94f98407029393af90264114cec046120a111354f38bfa8831e96e6f55`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 19 Jun 2017 16:54:49 GMT
ADD file:cf1b74f7af8abcfbe58722467970b39b3ef9c8343665ef2d175f058f734a7f6e in / 
# Mon, 19 Jun 2017 16:55:12 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:46:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Mon, 19 Jun 2017 22:46:48 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Mon, 19 Jun 2017 22:46:50 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Mon, 19 Jun 2017 22:46:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 19 Jun 2017 22:46:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 19 Jun 2017 22:58:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Mon, 19 Jun 2017 22:58:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 19 Jun 2017 22:58:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 19 Jun 2017 22:58:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Mon, 19 Jun 2017 22:58:55 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Mon, 19 Jun 2017 22:58:55 GMT
ENV PHP_VERSION=7.1.6
# Mon, 19 Jun 2017 22:58:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 19 Jun 2017 22:58:58 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 19 Jun 2017 22:59:07 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Mon, 19 Jun 2017 22:59:49 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Jun 2017 23:05:14 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 19 Jun 2017 23:05:42 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Mon, 19 Jun 2017 23:06:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Jun 2017 23:06:29 GMT
WORKDIR /var/www/html
# Mon, 19 Jun 2017 23:06:53 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Jun 2017 23:07:16 GMT
EXPOSE 9000/tcp
# Mon, 19 Jun 2017 23:07:40 GMT
CMD ["php-fpm"]
# Tue, 20 Jun 2017 17:55:07 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Tue, 20 Jun 2017 17:55:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Jun 2017 17:55:09 GMT
WORKDIR /var/www/html
# Thu, 22 Jun 2017 20:13:19 GMT
ENV DRUPAL_VERSION=8.3.4
# Thu, 22 Jun 2017 20:13:20 GMT
ENV DRUPAL_MD5=243a2e10032abaf55c10a96555315727
# Thu, 22 Jun 2017 20:13:26 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:acb474fa89565f9f79ee5ddaaaad12c59954e2694d005ec120d6b11825bad191`  
		Last Modified: Mon, 19 Jun 2017 17:06:54 GMT  
		Size: 2.4 MB (2385060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dabaad5e9926028cc146660baf944edb2684f3920faf2156ebf44ed92cf44133`  
		Last Modified: Tue, 20 Jun 2017 14:35:02 GMT  
		Size: 1.1 MB (1081308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33401fdb9aa65db74d315ebb85f68ae379f28e026bdbc5b9ce92224bccefc95`  
		Last Modified: Tue, 20 Jun 2017 14:34:59 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad83aa6d5dabea040da9162ce26e4da6e8212756b4f1279068078313bfa16d6`  
		Last Modified: Tue, 20 Jun 2017 14:34:59 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6c504d0025ac0c8fc2faf8c176a92ca79af79ad53cbd6d3ab90c82a86c79fe`  
		Last Modified: Tue, 20 Jun 2017 14:44:02 GMT  
		Size: 13.0 MB (12982376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d343b6b369dc763bdb10c866743fd0876246d7cc695306e12adbb6c5e474983d`  
		Last Modified: Tue, 20 Jun 2017 14:44:00 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186c0b7e39bbfec42520d3204e137223c13144afddc632c96205bc264f36b247`  
		Last Modified: Tue, 20 Jun 2017 14:44:07 GMT  
		Size: 14.5 MB (14457971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2b7a3db8b8e5726970970708d09e47d1e6da8bec483f3b350fa94fea7532fb`  
		Last Modified: Tue, 20 Jun 2017 14:44:01 GMT  
		Size: 2.1 KB (2110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2200f6801c3daeee0b537713678365bee875c365fac9b822965d7eb8538accf`  
		Last Modified: Tue, 20 Jun 2017 14:44:00 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4494ce4715ec9a3fb1475345666806784e0107afebd5ae69ad8ded46106ce902`  
		Last Modified: Tue, 20 Jun 2017 14:44:00 GMT  
		Size: 7.7 KB (7661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6cfb3f8fb6a4a49ad26c28527574a1d52215faab780e0a71c90a72a14c8ecf`  
		Last Modified: Thu, 22 Jun 2017 20:22:55 GMT  
		Size: 3.2 MB (3163746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee170ee49bc0bbe83645f333940351e31b9dc1d910616af3ad8150360bcbfe6`  
		Last Modified: Thu, 22 Jun 2017 20:22:54 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b26ba35d138e198262a6511c33ab50e054a1aaab68776cf26ce4b9121147aab`  
		Last Modified: Thu, 22 Jun 2017 20:22:58 GMT  
		Size: 12.8 MB (12827724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.3-fpm-alpine`

```console
$ docker pull drupal@sha256:a9a85c0baf1470de13b71cce74cf9173ef76cbed30e8ff4afbc36b37db6d9347
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3-fpm-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46910330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49d32e94f98407029393af90264114cec046120a111354f38bfa8831e96e6f55`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 19 Jun 2017 16:54:49 GMT
ADD file:cf1b74f7af8abcfbe58722467970b39b3ef9c8343665ef2d175f058f734a7f6e in / 
# Mon, 19 Jun 2017 16:55:12 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:46:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Mon, 19 Jun 2017 22:46:48 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Mon, 19 Jun 2017 22:46:50 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Mon, 19 Jun 2017 22:46:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 19 Jun 2017 22:46:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 19 Jun 2017 22:58:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Mon, 19 Jun 2017 22:58:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 19 Jun 2017 22:58:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 19 Jun 2017 22:58:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Mon, 19 Jun 2017 22:58:55 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Mon, 19 Jun 2017 22:58:55 GMT
ENV PHP_VERSION=7.1.6
# Mon, 19 Jun 2017 22:58:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 19 Jun 2017 22:58:58 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 19 Jun 2017 22:59:07 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Mon, 19 Jun 2017 22:59:49 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Jun 2017 23:05:14 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 19 Jun 2017 23:05:42 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Mon, 19 Jun 2017 23:06:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Jun 2017 23:06:29 GMT
WORKDIR /var/www/html
# Mon, 19 Jun 2017 23:06:53 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Jun 2017 23:07:16 GMT
EXPOSE 9000/tcp
# Mon, 19 Jun 2017 23:07:40 GMT
CMD ["php-fpm"]
# Tue, 20 Jun 2017 17:55:07 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Tue, 20 Jun 2017 17:55:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Jun 2017 17:55:09 GMT
WORKDIR /var/www/html
# Thu, 22 Jun 2017 20:13:19 GMT
ENV DRUPAL_VERSION=8.3.4
# Thu, 22 Jun 2017 20:13:20 GMT
ENV DRUPAL_MD5=243a2e10032abaf55c10a96555315727
# Thu, 22 Jun 2017 20:13:26 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:acb474fa89565f9f79ee5ddaaaad12c59954e2694d005ec120d6b11825bad191`  
		Last Modified: Mon, 19 Jun 2017 17:06:54 GMT  
		Size: 2.4 MB (2385060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dabaad5e9926028cc146660baf944edb2684f3920faf2156ebf44ed92cf44133`  
		Last Modified: Tue, 20 Jun 2017 14:35:02 GMT  
		Size: 1.1 MB (1081308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33401fdb9aa65db74d315ebb85f68ae379f28e026bdbc5b9ce92224bccefc95`  
		Last Modified: Tue, 20 Jun 2017 14:34:59 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad83aa6d5dabea040da9162ce26e4da6e8212756b4f1279068078313bfa16d6`  
		Last Modified: Tue, 20 Jun 2017 14:34:59 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6c504d0025ac0c8fc2faf8c176a92ca79af79ad53cbd6d3ab90c82a86c79fe`  
		Last Modified: Tue, 20 Jun 2017 14:44:02 GMT  
		Size: 13.0 MB (12982376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d343b6b369dc763bdb10c866743fd0876246d7cc695306e12adbb6c5e474983d`  
		Last Modified: Tue, 20 Jun 2017 14:44:00 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186c0b7e39bbfec42520d3204e137223c13144afddc632c96205bc264f36b247`  
		Last Modified: Tue, 20 Jun 2017 14:44:07 GMT  
		Size: 14.5 MB (14457971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2b7a3db8b8e5726970970708d09e47d1e6da8bec483f3b350fa94fea7532fb`  
		Last Modified: Tue, 20 Jun 2017 14:44:01 GMT  
		Size: 2.1 KB (2110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2200f6801c3daeee0b537713678365bee875c365fac9b822965d7eb8538accf`  
		Last Modified: Tue, 20 Jun 2017 14:44:00 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4494ce4715ec9a3fb1475345666806784e0107afebd5ae69ad8ded46106ce902`  
		Last Modified: Tue, 20 Jun 2017 14:44:00 GMT  
		Size: 7.7 KB (7661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6cfb3f8fb6a4a49ad26c28527574a1d52215faab780e0a71c90a72a14c8ecf`  
		Last Modified: Thu, 22 Jun 2017 20:22:55 GMT  
		Size: 3.2 MB (3163746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee170ee49bc0bbe83645f333940351e31b9dc1d910616af3ad8150360bcbfe6`  
		Last Modified: Thu, 22 Jun 2017 20:22:54 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b26ba35d138e198262a6511c33ab50e054a1aaab68776cf26ce4b9121147aab`  
		Last Modified: Thu, 22 Jun 2017 20:22:58 GMT  
		Size: 12.8 MB (12827724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8-fpm-alpine`

```console
$ docker pull drupal@sha256:a9a85c0baf1470de13b71cce74cf9173ef76cbed30e8ff4afbc36b37db6d9347
```

-	Platforms:
	-	linux; amd64

### `drupal:8-fpm-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46910330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49d32e94f98407029393af90264114cec046120a111354f38bfa8831e96e6f55`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 19 Jun 2017 16:54:49 GMT
ADD file:cf1b74f7af8abcfbe58722467970b39b3ef9c8343665ef2d175f058f734a7f6e in / 
# Mon, 19 Jun 2017 16:55:12 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:46:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Mon, 19 Jun 2017 22:46:48 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Mon, 19 Jun 2017 22:46:50 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Mon, 19 Jun 2017 22:46:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 19 Jun 2017 22:46:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 19 Jun 2017 22:58:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Mon, 19 Jun 2017 22:58:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 19 Jun 2017 22:58:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 19 Jun 2017 22:58:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Mon, 19 Jun 2017 22:58:55 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Mon, 19 Jun 2017 22:58:55 GMT
ENV PHP_VERSION=7.1.6
# Mon, 19 Jun 2017 22:58:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 19 Jun 2017 22:58:58 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 19 Jun 2017 22:59:07 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Mon, 19 Jun 2017 22:59:49 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Jun 2017 23:05:14 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 19 Jun 2017 23:05:42 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Mon, 19 Jun 2017 23:06:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Jun 2017 23:06:29 GMT
WORKDIR /var/www/html
# Mon, 19 Jun 2017 23:06:53 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Jun 2017 23:07:16 GMT
EXPOSE 9000/tcp
# Mon, 19 Jun 2017 23:07:40 GMT
CMD ["php-fpm"]
# Tue, 20 Jun 2017 17:55:07 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Tue, 20 Jun 2017 17:55:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Jun 2017 17:55:09 GMT
WORKDIR /var/www/html
# Thu, 22 Jun 2017 20:13:19 GMT
ENV DRUPAL_VERSION=8.3.4
# Thu, 22 Jun 2017 20:13:20 GMT
ENV DRUPAL_MD5=243a2e10032abaf55c10a96555315727
# Thu, 22 Jun 2017 20:13:26 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:acb474fa89565f9f79ee5ddaaaad12c59954e2694d005ec120d6b11825bad191`  
		Last Modified: Mon, 19 Jun 2017 17:06:54 GMT  
		Size: 2.4 MB (2385060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dabaad5e9926028cc146660baf944edb2684f3920faf2156ebf44ed92cf44133`  
		Last Modified: Tue, 20 Jun 2017 14:35:02 GMT  
		Size: 1.1 MB (1081308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33401fdb9aa65db74d315ebb85f68ae379f28e026bdbc5b9ce92224bccefc95`  
		Last Modified: Tue, 20 Jun 2017 14:34:59 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad83aa6d5dabea040da9162ce26e4da6e8212756b4f1279068078313bfa16d6`  
		Last Modified: Tue, 20 Jun 2017 14:34:59 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6c504d0025ac0c8fc2faf8c176a92ca79af79ad53cbd6d3ab90c82a86c79fe`  
		Last Modified: Tue, 20 Jun 2017 14:44:02 GMT  
		Size: 13.0 MB (12982376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d343b6b369dc763bdb10c866743fd0876246d7cc695306e12adbb6c5e474983d`  
		Last Modified: Tue, 20 Jun 2017 14:44:00 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186c0b7e39bbfec42520d3204e137223c13144afddc632c96205bc264f36b247`  
		Last Modified: Tue, 20 Jun 2017 14:44:07 GMT  
		Size: 14.5 MB (14457971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2b7a3db8b8e5726970970708d09e47d1e6da8bec483f3b350fa94fea7532fb`  
		Last Modified: Tue, 20 Jun 2017 14:44:01 GMT  
		Size: 2.1 KB (2110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2200f6801c3daeee0b537713678365bee875c365fac9b822965d7eb8538accf`  
		Last Modified: Tue, 20 Jun 2017 14:44:00 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4494ce4715ec9a3fb1475345666806784e0107afebd5ae69ad8ded46106ce902`  
		Last Modified: Tue, 20 Jun 2017 14:44:00 GMT  
		Size: 7.7 KB (7661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6cfb3f8fb6a4a49ad26c28527574a1d52215faab780e0a71c90a72a14c8ecf`  
		Last Modified: Thu, 22 Jun 2017 20:22:55 GMT  
		Size: 3.2 MB (3163746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee170ee49bc0bbe83645f333940351e31b9dc1d910616af3ad8150360bcbfe6`  
		Last Modified: Thu, 22 Jun 2017 20:22:54 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b26ba35d138e198262a6511c33ab50e054a1aaab68776cf26ce4b9121147aab`  
		Last Modified: Thu, 22 Jun 2017 20:22:58 GMT  
		Size: 12.8 MB (12827724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:fpm-alpine`

```console
$ docker pull drupal@sha256:a9a85c0baf1470de13b71cce74cf9173ef76cbed30e8ff4afbc36b37db6d9347
```

-	Platforms:
	-	linux; amd64

### `drupal:fpm-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46910330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49d32e94f98407029393af90264114cec046120a111354f38bfa8831e96e6f55`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 19 Jun 2017 16:54:49 GMT
ADD file:cf1b74f7af8abcfbe58722467970b39b3ef9c8343665ef2d175f058f734a7f6e in / 
# Mon, 19 Jun 2017 16:55:12 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:46:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Mon, 19 Jun 2017 22:46:48 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Mon, 19 Jun 2017 22:46:50 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Mon, 19 Jun 2017 22:46:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 19 Jun 2017 22:46:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 19 Jun 2017 22:58:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Mon, 19 Jun 2017 22:58:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 19 Jun 2017 22:58:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 19 Jun 2017 22:58:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Mon, 19 Jun 2017 22:58:55 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Mon, 19 Jun 2017 22:58:55 GMT
ENV PHP_VERSION=7.1.6
# Mon, 19 Jun 2017 22:58:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror
# Mon, 19 Jun 2017 22:58:58 GMT
ENV PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b PHP_MD5=eafc7a79cc8cc62c9292c96f9c9ccf90
# Mon, 19 Jun 2017 22:59:07 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Mon, 19 Jun 2017 22:59:49 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Jun 2017 23:05:14 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 19 Jun 2017 23:05:42 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Mon, 19 Jun 2017 23:06:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Jun 2017 23:06:29 GMT
WORKDIR /var/www/html
# Mon, 19 Jun 2017 23:06:53 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Jun 2017 23:07:16 GMT
EXPOSE 9000/tcp
# Mon, 19 Jun 2017 23:07:40 GMT
CMD ["php-fpm"]
# Tue, 20 Jun 2017 17:55:07 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Tue, 20 Jun 2017 17:55:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 20 Jun 2017 17:55:09 GMT
WORKDIR /var/www/html
# Thu, 22 Jun 2017 20:13:19 GMT
ENV DRUPAL_VERSION=8.3.4
# Thu, 22 Jun 2017 20:13:20 GMT
ENV DRUPAL_MD5=243a2e10032abaf55c10a96555315727
# Thu, 22 Jun 2017 20:13:26 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:acb474fa89565f9f79ee5ddaaaad12c59954e2694d005ec120d6b11825bad191`  
		Last Modified: Mon, 19 Jun 2017 17:06:54 GMT  
		Size: 2.4 MB (2385060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dabaad5e9926028cc146660baf944edb2684f3920faf2156ebf44ed92cf44133`  
		Last Modified: Tue, 20 Jun 2017 14:35:02 GMT  
		Size: 1.1 MB (1081308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33401fdb9aa65db74d315ebb85f68ae379f28e026bdbc5b9ce92224bccefc95`  
		Last Modified: Tue, 20 Jun 2017 14:34:59 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad83aa6d5dabea040da9162ce26e4da6e8212756b4f1279068078313bfa16d6`  
		Last Modified: Tue, 20 Jun 2017 14:34:59 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6c504d0025ac0c8fc2faf8c176a92ca79af79ad53cbd6d3ab90c82a86c79fe`  
		Last Modified: Tue, 20 Jun 2017 14:44:02 GMT  
		Size: 13.0 MB (12982376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d343b6b369dc763bdb10c866743fd0876246d7cc695306e12adbb6c5e474983d`  
		Last Modified: Tue, 20 Jun 2017 14:44:00 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186c0b7e39bbfec42520d3204e137223c13144afddc632c96205bc264f36b247`  
		Last Modified: Tue, 20 Jun 2017 14:44:07 GMT  
		Size: 14.5 MB (14457971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2b7a3db8b8e5726970970708d09e47d1e6da8bec483f3b350fa94fea7532fb`  
		Last Modified: Tue, 20 Jun 2017 14:44:01 GMT  
		Size: 2.1 KB (2110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2200f6801c3daeee0b537713678365bee875c365fac9b822965d7eb8538accf`  
		Last Modified: Tue, 20 Jun 2017 14:44:00 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4494ce4715ec9a3fb1475345666806784e0107afebd5ae69ad8ded46106ce902`  
		Last Modified: Tue, 20 Jun 2017 14:44:00 GMT  
		Size: 7.7 KB (7661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6cfb3f8fb6a4a49ad26c28527574a1d52215faab780e0a71c90a72a14c8ecf`  
		Last Modified: Thu, 22 Jun 2017 20:22:55 GMT  
		Size: 3.2 MB (3163746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee170ee49bc0bbe83645f333940351e31b9dc1d910616af3ad8150360bcbfe6`  
		Last Modified: Thu, 22 Jun 2017 20:22:54 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b26ba35d138e198262a6511c33ab50e054a1aaab68776cf26ce4b9121147aab`  
		Last Modified: Thu, 22 Jun 2017 20:22:58 GMT  
		Size: 12.8 MB (12827724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7.56-apache`

```console
$ docker pull drupal@sha256:997b29bfae3074061d7d47e687f3bd525bda65864f264f39bc9e8fafd97461af
```

-	Platforms:
	-	linux; amd64

### `drupal:7.56-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168840188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c617e39e8c6dab8562973624efed098ab383401d7a1d1c516d6cfe65ba790693`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:26:25 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 21 Jun 2017 16:26:26 GMT
ENV PHP_VERSION=7.0.20
# Wed, 21 Jun 2017 16:26:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.20.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.20.tar.xz.asc/from/this/mirror
# Wed, 21 Jun 2017 16:26:27 GMT
ENV PHP_SHA256=31b9cf1fb83fe3cd82c2f6603a0ae81ae6abacb5286827e362d8f85e68908e0a PHP_MD5=e84615871c1c6dbd0860746a31f3a7c8
# Wed, 21 Jun 2017 16:26:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Jun 2017 16:26:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:28:54 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 21 Jun 2017 16:28:56 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:28:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Jun 2017 16:28:58 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:28:59 GMT
WORKDIR /var/www/html
# Wed, 21 Jun 2017 16:28:59 GMT
EXPOSE 80/tcp
# Wed, 21 Jun 2017 16:29:00 GMT
CMD ["apache2-foreground"]
# Thu, 22 Jun 2017 20:13:54 GMT
RUN a2enmod rewrite
# Thu, 22 Jun 2017 20:14:46 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Jun 2017 20:14:48 GMT
WORKDIR /var/www/html
# Thu, 22 Jun 2017 20:14:48 GMT
ENV DRUPAL_VERSION=7.56
# Thu, 22 Jun 2017 20:14:49 GMT
ENV DRUPAL_MD5=5d198f40f0f1cbf9cdf1bf3de842e534
# Thu, 22 Jun 2017 20:14:51 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11839020942b3b3552cca00b2c5c7b58493dfbc1eb46345834728a010605e772`  
		Last Modified: Wed, 21 Jun 2017 17:10:11 GMT  
		Size: 12.7 MB (12732294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2654f9cf5b1a0d5b2d3ea369f706f167e8e42af061d1487839837182f9f0b7f`  
		Last Modified: Wed, 21 Jun 2017 17:10:10 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a96e5953e58c9ccb225550f1177e6e25b84d453b98541e013a9443c7cb3351c`  
		Last Modified: Wed, 21 Jun 2017 17:10:14 GMT  
		Size: 13.2 MB (13211719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f03cd9b91242a0156f953cde43ce7092976604092d9d2978d5ea67563d1f7e`  
		Last Modified: Wed, 21 Jun 2017 17:10:10 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea57884972f247653754fab6ab656b395c7f048515dfdd4837ec337d1d4b517d`  
		Last Modified: Wed, 21 Jun 2017 17:10:10 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea7768d3a4365ab4bffee0da19e4dfe1894c2932ba6c2d6cbe9ebc1133d1176`  
		Last Modified: Thu, 22 Jun 2017 20:24:45 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5af528f4afa1465ccf04a35e0f6f960893343220e20fceb56af030662110242`  
		Last Modified: Thu, 22 Jun 2017 20:24:46 GMT  
		Size: 1.7 MB (1692649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52114af693012c20992c4c6082cea4c648fa2b73ba81f699fbcce09e7aa0e978`  
		Last Modified: Thu, 22 Jun 2017 20:24:46 GMT  
		Size: 3.3 MB (3302523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7-apache`

```console
$ docker pull drupal@sha256:997b29bfae3074061d7d47e687f3bd525bda65864f264f39bc9e8fafd97461af
```

-	Platforms:
	-	linux; amd64

### `drupal:7-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168840188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c617e39e8c6dab8562973624efed098ab383401d7a1d1c516d6cfe65ba790693`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:26:25 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 21 Jun 2017 16:26:26 GMT
ENV PHP_VERSION=7.0.20
# Wed, 21 Jun 2017 16:26:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.20.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.20.tar.xz.asc/from/this/mirror
# Wed, 21 Jun 2017 16:26:27 GMT
ENV PHP_SHA256=31b9cf1fb83fe3cd82c2f6603a0ae81ae6abacb5286827e362d8f85e68908e0a PHP_MD5=e84615871c1c6dbd0860746a31f3a7c8
# Wed, 21 Jun 2017 16:26:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Jun 2017 16:26:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:28:54 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 21 Jun 2017 16:28:56 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:28:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Jun 2017 16:28:58 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:28:59 GMT
WORKDIR /var/www/html
# Wed, 21 Jun 2017 16:28:59 GMT
EXPOSE 80/tcp
# Wed, 21 Jun 2017 16:29:00 GMT
CMD ["apache2-foreground"]
# Thu, 22 Jun 2017 20:13:54 GMT
RUN a2enmod rewrite
# Thu, 22 Jun 2017 20:14:46 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Jun 2017 20:14:48 GMT
WORKDIR /var/www/html
# Thu, 22 Jun 2017 20:14:48 GMT
ENV DRUPAL_VERSION=7.56
# Thu, 22 Jun 2017 20:14:49 GMT
ENV DRUPAL_MD5=5d198f40f0f1cbf9cdf1bf3de842e534
# Thu, 22 Jun 2017 20:14:51 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11839020942b3b3552cca00b2c5c7b58493dfbc1eb46345834728a010605e772`  
		Last Modified: Wed, 21 Jun 2017 17:10:11 GMT  
		Size: 12.7 MB (12732294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2654f9cf5b1a0d5b2d3ea369f706f167e8e42af061d1487839837182f9f0b7f`  
		Last Modified: Wed, 21 Jun 2017 17:10:10 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a96e5953e58c9ccb225550f1177e6e25b84d453b98541e013a9443c7cb3351c`  
		Last Modified: Wed, 21 Jun 2017 17:10:14 GMT  
		Size: 13.2 MB (13211719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f03cd9b91242a0156f953cde43ce7092976604092d9d2978d5ea67563d1f7e`  
		Last Modified: Wed, 21 Jun 2017 17:10:10 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea57884972f247653754fab6ab656b395c7f048515dfdd4837ec337d1d4b517d`  
		Last Modified: Wed, 21 Jun 2017 17:10:10 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea7768d3a4365ab4bffee0da19e4dfe1894c2932ba6c2d6cbe9ebc1133d1176`  
		Last Modified: Thu, 22 Jun 2017 20:24:45 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5af528f4afa1465ccf04a35e0f6f960893343220e20fceb56af030662110242`  
		Last Modified: Thu, 22 Jun 2017 20:24:46 GMT  
		Size: 1.7 MB (1692649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52114af693012c20992c4c6082cea4c648fa2b73ba81f699fbcce09e7aa0e978`  
		Last Modified: Thu, 22 Jun 2017 20:24:46 GMT  
		Size: 3.3 MB (3302523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7.56`

```console
$ docker pull drupal@sha256:997b29bfae3074061d7d47e687f3bd525bda65864f264f39bc9e8fafd97461af
```

-	Platforms:
	-	linux; amd64

### `drupal:7.56` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168840188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c617e39e8c6dab8562973624efed098ab383401d7a1d1c516d6cfe65ba790693`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:26:25 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 21 Jun 2017 16:26:26 GMT
ENV PHP_VERSION=7.0.20
# Wed, 21 Jun 2017 16:26:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.20.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.20.tar.xz.asc/from/this/mirror
# Wed, 21 Jun 2017 16:26:27 GMT
ENV PHP_SHA256=31b9cf1fb83fe3cd82c2f6603a0ae81ae6abacb5286827e362d8f85e68908e0a PHP_MD5=e84615871c1c6dbd0860746a31f3a7c8
# Wed, 21 Jun 2017 16:26:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Jun 2017 16:26:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:28:54 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 21 Jun 2017 16:28:56 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:28:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Jun 2017 16:28:58 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:28:59 GMT
WORKDIR /var/www/html
# Wed, 21 Jun 2017 16:28:59 GMT
EXPOSE 80/tcp
# Wed, 21 Jun 2017 16:29:00 GMT
CMD ["apache2-foreground"]
# Thu, 22 Jun 2017 20:13:54 GMT
RUN a2enmod rewrite
# Thu, 22 Jun 2017 20:14:46 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Jun 2017 20:14:48 GMT
WORKDIR /var/www/html
# Thu, 22 Jun 2017 20:14:48 GMT
ENV DRUPAL_VERSION=7.56
# Thu, 22 Jun 2017 20:14:49 GMT
ENV DRUPAL_MD5=5d198f40f0f1cbf9cdf1bf3de842e534
# Thu, 22 Jun 2017 20:14:51 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11839020942b3b3552cca00b2c5c7b58493dfbc1eb46345834728a010605e772`  
		Last Modified: Wed, 21 Jun 2017 17:10:11 GMT  
		Size: 12.7 MB (12732294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2654f9cf5b1a0d5b2d3ea369f706f167e8e42af061d1487839837182f9f0b7f`  
		Last Modified: Wed, 21 Jun 2017 17:10:10 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a96e5953e58c9ccb225550f1177e6e25b84d453b98541e013a9443c7cb3351c`  
		Last Modified: Wed, 21 Jun 2017 17:10:14 GMT  
		Size: 13.2 MB (13211719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f03cd9b91242a0156f953cde43ce7092976604092d9d2978d5ea67563d1f7e`  
		Last Modified: Wed, 21 Jun 2017 17:10:10 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea57884972f247653754fab6ab656b395c7f048515dfdd4837ec337d1d4b517d`  
		Last Modified: Wed, 21 Jun 2017 17:10:10 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea7768d3a4365ab4bffee0da19e4dfe1894c2932ba6c2d6cbe9ebc1133d1176`  
		Last Modified: Thu, 22 Jun 2017 20:24:45 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5af528f4afa1465ccf04a35e0f6f960893343220e20fceb56af030662110242`  
		Last Modified: Thu, 22 Jun 2017 20:24:46 GMT  
		Size: 1.7 MB (1692649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52114af693012c20992c4c6082cea4c648fa2b73ba81f699fbcce09e7aa0e978`  
		Last Modified: Thu, 22 Jun 2017 20:24:46 GMT  
		Size: 3.3 MB (3302523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7`

```console
$ docker pull drupal@sha256:997b29bfae3074061d7d47e687f3bd525bda65864f264f39bc9e8fafd97461af
```

-	Platforms:
	-	linux; amd64

### `drupal:7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168840188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c617e39e8c6dab8562973624efed098ab383401d7a1d1c516d6cfe65ba790693`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:10:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Jun 2017 16:10:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Jun 2017 16:10:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 21 Jun 2017 16:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 21 Jun 2017 16:10:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 21 Jun 2017 16:10:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 21 Jun 2017 16:10:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 21 Jun 2017 16:10:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 21 Jun 2017 16:10:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:10:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:26:25 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 21 Jun 2017 16:26:26 GMT
ENV PHP_VERSION=7.0.20
# Wed, 21 Jun 2017 16:26:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.20.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.20.tar.xz.asc/from/this/mirror
# Wed, 21 Jun 2017 16:26:27 GMT
ENV PHP_SHA256=31b9cf1fb83fe3cd82c2f6603a0ae81ae6abacb5286827e362d8f85e68908e0a PHP_MD5=e84615871c1c6dbd0860746a31f3a7c8
# Wed, 21 Jun 2017 16:26:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Jun 2017 16:26:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:28:54 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 21 Jun 2017 16:28:56 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:28:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Jun 2017 16:28:58 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:28:59 GMT
WORKDIR /var/www/html
# Wed, 21 Jun 2017 16:28:59 GMT
EXPOSE 80/tcp
# Wed, 21 Jun 2017 16:29:00 GMT
CMD ["apache2-foreground"]
# Thu, 22 Jun 2017 20:13:54 GMT
RUN a2enmod rewrite
# Thu, 22 Jun 2017 20:14:46 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Jun 2017 20:14:48 GMT
WORKDIR /var/www/html
# Thu, 22 Jun 2017 20:14:48 GMT
ENV DRUPAL_VERSION=7.56
# Thu, 22 Jun 2017 20:14:49 GMT
ENV DRUPAL_MD5=5d198f40f0f1cbf9cdf1bf3de842e534
# Thu, 22 Jun 2017 20:14:51 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e1013aed14b359861a7bef1eae3f92ccee99eeede577dec563474671489d2`  
		Last Modified: Wed, 21 Jun 2017 16:58:11 GMT  
		Size: 2.8 MB (2783957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5e03d7e247cb9670dbaaef4fce4711989d5756a56463f79c459f20f1a0cb9`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f836a88be268955f536c3ebd06de203e53aa7c5b9b14232fc1083dbc69de3`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc54431819e985c69a38bb02873dadea819dfa587d8870afe346a9a1537258`  
		Last Modified: Wed, 21 Jun 2017 16:58:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60b574790b87e69d0de663eb7d3ee5b84ee5c0ce1a8abe9501cdd1d7ea1143c`  
		Last Modified: Wed, 21 Jun 2017 16:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11839020942b3b3552cca00b2c5c7b58493dfbc1eb46345834728a010605e772`  
		Last Modified: Wed, 21 Jun 2017 17:10:11 GMT  
		Size: 12.7 MB (12732294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2654f9cf5b1a0d5b2d3ea369f706f167e8e42af061d1487839837182f9f0b7f`  
		Last Modified: Wed, 21 Jun 2017 17:10:10 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a96e5953e58c9ccb225550f1177e6e25b84d453b98541e013a9443c7cb3351c`  
		Last Modified: Wed, 21 Jun 2017 17:10:14 GMT  
		Size: 13.2 MB (13211719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f03cd9b91242a0156f953cde43ce7092976604092d9d2978d5ea67563d1f7e`  
		Last Modified: Wed, 21 Jun 2017 17:10:10 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea57884972f247653754fab6ab656b395c7f048515dfdd4837ec337d1d4b517d`  
		Last Modified: Wed, 21 Jun 2017 17:10:10 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea7768d3a4365ab4bffee0da19e4dfe1894c2932ba6c2d6cbe9ebc1133d1176`  
		Last Modified: Thu, 22 Jun 2017 20:24:45 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5af528f4afa1465ccf04a35e0f6f960893343220e20fceb56af030662110242`  
		Last Modified: Thu, 22 Jun 2017 20:24:46 GMT  
		Size: 1.7 MB (1692649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52114af693012c20992c4c6082cea4c648fa2b73ba81f699fbcce09e7aa0e978`  
		Last Modified: Thu, 22 Jun 2017 20:24:46 GMT  
		Size: 3.3 MB (3302523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7.56-fpm`

```console
$ docker pull drupal@sha256:aac9b57ac916a18ae60c83f6d6d63cc5689ce1e72bc0001f6aba573b46102a90
```

-	Platforms:
	-	linux; amd64

### `drupal:7.56-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.5 MB (165489216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32d2d721788759b464a215b5158d6f4f811d4c1a891df0d8efc59f146a6ca4a7`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:13:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 21 Jun 2017 16:13:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:29:25 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 21 Jun 2017 16:29:26 GMT
ENV PHP_VERSION=7.0.20
# Wed, 21 Jun 2017 16:29:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.20.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.20.tar.xz.asc/from/this/mirror
# Wed, 21 Jun 2017 16:29:28 GMT
ENV PHP_SHA256=31b9cf1fb83fe3cd82c2f6603a0ae81ae6abacb5286827e362d8f85e68908e0a PHP_MD5=e84615871c1c6dbd0860746a31f3a7c8
# Wed, 21 Jun 2017 16:29:40 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Jun 2017 16:29:41 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:33:02 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 21 Jun 2017 16:33:04 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:33:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Jun 2017 16:33:05 GMT
WORKDIR /var/www/html
# Wed, 21 Jun 2017 16:33:07 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 21 Jun 2017 16:33:08 GMT
EXPOSE 9000/tcp
# Wed, 21 Jun 2017 16:33:08 GMT
CMD ["php-fpm"]
# Thu, 22 Jun 2017 20:16:10 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Jun 2017 20:16:11 GMT
WORKDIR /var/www/html
# Thu, 22 Jun 2017 20:16:12 GMT
ENV DRUPAL_VERSION=7.56
# Thu, 22 Jun 2017 20:16:13 GMT
ENV DRUPAL_MD5=5d198f40f0f1cbf9cdf1bf3de842e534
# Thu, 22 Jun 2017 20:16:15 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:673aac7b374aed13aa1e0e2c83ac852a64c07687f8c5352657ff44cccf4a429d`  
		Last Modified: Wed, 21 Jun 2017 17:11:16 GMT  
		Size: 12.7 MB (12715090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891ae41a04a51b11ceae618ed3f2d255fedb080a570cd616fad2e059b3fe0041`  
		Last Modified: Wed, 21 Jun 2017 17:11:15 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15413f5b830e1774dda4ba4acd77919af289ce5b3c96f951ff085ab120b3f91`  
		Last Modified: Wed, 21 Jun 2017 17:11:19 GMT  
		Size: 12.7 MB (12677609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de30cd7a3c284611843d7b967052d255ab63c365070af4bc0f3a1d7f6ac27caa`  
		Last Modified: Wed, 21 Jun 2017 17:11:14 GMT  
		Size: 2.1 KB (2118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdbb9b5f5dfea06b74763139881643b1ccc6b23a9f2587b6d62fbd29e9891519`  
		Last Modified: Wed, 21 Jun 2017 17:11:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67803082f3f9526f6a3f90ea3d2afc9d6310c4ae3e220a959df87984ef0543d`  
		Last Modified: Wed, 21 Jun 2017 17:11:15 GMT  
		Size: 7.7 KB (7666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74afe5444ad03471df51f9a4899706eea458d1d51d88cd25a710f1ed2477cf61`  
		Last Modified: Thu, 22 Jun 2017 20:26:38 GMT  
		Size: 1.7 MB (1672724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:126297fbd35b18ab1e6543928d65cabeeb0a74bd6d765e84b320d821f853077b`  
		Last Modified: Thu, 22 Jun 2017 20:26:37 GMT  
		Size: 3.3 MB (3302517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7-fpm`

```console
$ docker pull drupal@sha256:aac9b57ac916a18ae60c83f6d6d63cc5689ce1e72bc0001f6aba573b46102a90
```

-	Platforms:
	-	linux; amd64

### `drupal:7-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.5 MB (165489216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32d2d721788759b464a215b5158d6f4f811d4c1a891df0d8efc59f146a6ca4a7`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 16:05:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 21 Jun 2017 16:05:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 21 Jun 2017 16:05:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Jun 2017 16:05:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 21 Jun 2017 16:13:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 21 Jun 2017 16:13:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 21 Jun 2017 16:13:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 21 Jun 2017 16:29:25 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 21 Jun 2017 16:29:26 GMT
ENV PHP_VERSION=7.0.20
# Wed, 21 Jun 2017 16:29:27 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.20.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.20.tar.xz.asc/from/this/mirror
# Wed, 21 Jun 2017 16:29:28 GMT
ENV PHP_SHA256=31b9cf1fb83fe3cd82c2f6603a0ae81ae6abacb5286827e362d8f85e68908e0a PHP_MD5=e84615871c1c6dbd0860746a31f3a7c8
# Wed, 21 Jun 2017 16:29:40 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Jun 2017 16:29:41 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:33:02 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 21 Jun 2017 16:33:04 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Wed, 21 Jun 2017 16:33:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Jun 2017 16:33:05 GMT
WORKDIR /var/www/html
# Wed, 21 Jun 2017 16:33:07 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 21 Jun 2017 16:33:08 GMT
EXPOSE 9000/tcp
# Wed, 21 Jun 2017 16:33:08 GMT
CMD ["php-fpm"]
# Thu, 22 Jun 2017 20:16:10 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Jun 2017 20:16:11 GMT
WORKDIR /var/www/html
# Thu, 22 Jun 2017 20:16:12 GMT
ENV DRUPAL_VERSION=7.56
# Thu, 22 Jun 2017 20:16:13 GMT
ENV DRUPAL_MD5=5d198f40f0f1cbf9cdf1bf3de842e534
# Thu, 22 Jun 2017 20:16:15 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c407763908f0d63b21189df6608f3623dbaa58948aa929b98bf75104d435581`  
		Last Modified: Wed, 21 Jun 2017 16:52:52 GMT  
		Size: 82.5 MB (82495882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e2bc3a45c1409c931a9feef79a4758849d6fe3f74ea295cdc687201ed364b0`  
		Last Modified: Wed, 21 Jun 2017 16:52:30 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:673aac7b374aed13aa1e0e2c83ac852a64c07687f8c5352657ff44cccf4a429d`  
		Last Modified: Wed, 21 Jun 2017 17:11:16 GMT  
		Size: 12.7 MB (12715090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891ae41a04a51b11ceae618ed3f2d255fedb080a570cd616fad2e059b3fe0041`  
		Last Modified: Wed, 21 Jun 2017 17:11:15 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15413f5b830e1774dda4ba4acd77919af289ce5b3c96f951ff085ab120b3f91`  
		Last Modified: Wed, 21 Jun 2017 17:11:19 GMT  
		Size: 12.7 MB (12677609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de30cd7a3c284611843d7b967052d255ab63c365070af4bc0f3a1d7f6ac27caa`  
		Last Modified: Wed, 21 Jun 2017 17:11:14 GMT  
		Size: 2.1 KB (2118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdbb9b5f5dfea06b74763139881643b1ccc6b23a9f2587b6d62fbd29e9891519`  
		Last Modified: Wed, 21 Jun 2017 17:11:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67803082f3f9526f6a3f90ea3d2afc9d6310c4ae3e220a959df87984ef0543d`  
		Last Modified: Wed, 21 Jun 2017 17:11:15 GMT  
		Size: 7.7 KB (7666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74afe5444ad03471df51f9a4899706eea458d1d51d88cd25a710f1ed2477cf61`  
		Last Modified: Thu, 22 Jun 2017 20:26:38 GMT  
		Size: 1.7 MB (1672724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:126297fbd35b18ab1e6543928d65cabeeb0a74bd6d765e84b320d821f853077b`  
		Last Modified: Thu, 22 Jun 2017 20:26:37 GMT  
		Size: 3.3 MB (3302517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7.56-fpm-alpine`

```console
$ docker pull drupal@sha256:ddf247fceea6d31f0389445b0d33b6357c076153e3379a96786c72ddd24aaa89
```

-	Platforms:
	-	linux; amd64

### `drupal:7.56-fpm-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36600907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9d7f499aea56398af8e0c445b0e87a6a7e3ecaf54778324c4a0267661a1ca3`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 19 Jun 2017 16:54:49 GMT
ADD file:cf1b74f7af8abcfbe58722467970b39b3ef9c8343665ef2d175f058f734a7f6e in / 
# Mon, 19 Jun 2017 16:55:12 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:46:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Mon, 19 Jun 2017 22:46:48 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Mon, 19 Jun 2017 22:46:50 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Mon, 19 Jun 2017 22:46:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 19 Jun 2017 22:46:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 19 Jun 2017 22:58:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Mon, 19 Jun 2017 22:58:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 19 Jun 2017 22:58:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 19 Jun 2017 22:58:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Mon, 19 Jun 2017 23:31:33 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 19 Jun 2017 23:31:34 GMT
ENV PHP_VERSION=7.0.20
# Mon, 19 Jun 2017 23:31:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.20.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.20.tar.xz.asc/from/this/mirror
# Mon, 19 Jun 2017 23:31:36 GMT
ENV PHP_SHA256=31b9cf1fb83fe3cd82c2f6603a0ae81ae6abacb5286827e362d8f85e68908e0a PHP_MD5=e84615871c1c6dbd0860746a31f3a7c8
# Mon, 19 Jun 2017 23:31:44 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Mon, 19 Jun 2017 23:31:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Jun 2017 23:36:35 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 19 Jun 2017 23:36:38 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Mon, 19 Jun 2017 23:36:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Jun 2017 23:36:40 GMT
WORKDIR /var/www/html
# Mon, 19 Jun 2017 23:36:41 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Jun 2017 23:36:42 GMT
EXPOSE 9000/tcp
# Mon, 19 Jun 2017 23:36:43 GMT
CMD ["php-fpm"]
# Tue, 20 Jun 2017 17:56:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Tue, 20 Jun 2017 17:56:24 GMT
WORKDIR /var/www/html
# Thu, 22 Jun 2017 20:16:40 GMT
ENV DRUPAL_VERSION=7.56
# Thu, 22 Jun 2017 20:16:41 GMT
ENV DRUPAL_MD5=5d198f40f0f1cbf9cdf1bf3de842e534
# Thu, 22 Jun 2017 20:16:43 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:acb474fa89565f9f79ee5ddaaaad12c59954e2694d005ec120d6b11825bad191`  
		Last Modified: Mon, 19 Jun 2017 17:06:54 GMT  
		Size: 2.4 MB (2385060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dabaad5e9926028cc146660baf944edb2684f3920faf2156ebf44ed92cf44133`  
		Last Modified: Tue, 20 Jun 2017 14:35:02 GMT  
		Size: 1.1 MB (1081308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33401fdb9aa65db74d315ebb85f68ae379f28e026bdbc5b9ce92224bccefc95`  
		Last Modified: Tue, 20 Jun 2017 14:34:59 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad83aa6d5dabea040da9162ce26e4da6e8212756b4f1279068078313bfa16d6`  
		Last Modified: Tue, 20 Jun 2017 14:34:59 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e45ac3b8ea807d262238d26f5e374e4d412512a2d9f37b25a8b828c72e28ff`  
		Last Modified: Tue, 20 Jun 2017 14:59:32 GMT  
		Size: 12.8 MB (12777888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b80298ec4bfdb8d2332b46151215c792cdd6b137f546d7a2ad8fca2c8e921662`  
		Last Modified: Tue, 20 Jun 2017 14:59:31 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c55a54194c6dd12b96859a109df56d08935bdd126ad89822f2a4eb4d77c28b`  
		Last Modified: Tue, 20 Jun 2017 14:59:35 GMT  
		Size: 14.1 MB (14059342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368ea13c5beb61aedd62f5d9f37d724ea618dd33e92d26e08ac8f03fda6efec4`  
		Last Modified: Tue, 20 Jun 2017 14:59:30 GMT  
		Size: 2.1 KB (2110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416a9a710629a89f54106407b8443dd738c95e68b99b5f7d1bb196618cbc4818`  
		Last Modified: Tue, 20 Jun 2017 14:59:30 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ddd7409c8fba2e0170a1eb1ba6838ee560232ccd725f488e1f7dd16673beba`  
		Last Modified: Tue, 20 Jun 2017 14:59:30 GMT  
		Size: 7.7 KB (7652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cb6f3831a8b4158fe4b0e59cd232ad3ebfd1d964a7f6365ace425a01e9c759`  
		Last Modified: Thu, 22 Jun 2017 20:27:35 GMT  
		Size: 3.0 MB (2982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c1f0b14b42aeda9da880552c58163fd6072173ad3b17a24210c2d01efbf6246`  
		Last Modified: Thu, 22 Jun 2017 20:27:35 GMT  
		Size: 3.3 MB (3302526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7-fpm-alpine`

```console
$ docker pull drupal@sha256:ddf247fceea6d31f0389445b0d33b6357c076153e3379a96786c72ddd24aaa89
```

-	Platforms:
	-	linux; amd64

### `drupal:7-fpm-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36600907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9d7f499aea56398af8e0c445b0e87a6a7e3ecaf54778324c4a0267661a1ca3`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 19 Jun 2017 16:54:49 GMT
ADD file:cf1b74f7af8abcfbe58722467970b39b3ef9c8343665ef2d175f058f734a7f6e in / 
# Mon, 19 Jun 2017 16:55:12 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:46:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c
# Mon, 19 Jun 2017 22:46:48 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz
# Mon, 19 Jun 2017 22:46:50 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Mon, 19 Jun 2017 22:46:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 19 Jun 2017 22:46:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 19 Jun 2017 22:58:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Mon, 19 Jun 2017 22:58:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 19 Jun 2017 22:58:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 19 Jun 2017 22:58:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Mon, 19 Jun 2017 23:31:33 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 19 Jun 2017 23:31:34 GMT
ENV PHP_VERSION=7.0.20
# Mon, 19 Jun 2017 23:31:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.20.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.20.tar.xz.asc/from/this/mirror
# Mon, 19 Jun 2017 23:31:36 GMT
ENV PHP_SHA256=31b9cf1fb83fe3cd82c2f6603a0ae81ae6abacb5286827e362d8f85e68908e0a PHP_MD5=e84615871c1c6dbd0860746a31f3a7c8
# Mon, 19 Jun 2017 23:31:44 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Mon, 19 Jun 2017 23:31:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 19 Jun 2017 23:36:35 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 19 Jun 2017 23:36:38 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Mon, 19 Jun 2017 23:36:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 19 Jun 2017 23:36:40 GMT
WORKDIR /var/www/html
# Mon, 19 Jun 2017 23:36:41 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 19 Jun 2017 23:36:42 GMT
EXPOSE 9000/tcp
# Mon, 19 Jun 2017 23:36:43 GMT
CMD ["php-fpm"]
# Tue, 20 Jun 2017 17:56:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libjpeg-turbo-dev 		libpng-dev 		postgresql-dev 	&& docker-php-ext-configure gd 		--with-freetype-dir=/usr/include/ 		--with-jpeg-dir=/usr/include/ 		--with-png-dir=/usr/include/ 	&& docker-php-ext-install -j "$(nproc)" gd mbstring pdo pdo_mysql pdo_pgsql zip 	&& runDeps="$( 		scanelf --needed --nobanner --recursive 			/usr/local/lib/php/extensions 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .drupal-phpexts-rundeps $runDeps 	&& apk del .build-deps
# Tue, 20 Jun 2017 17:56:24 GMT
WORKDIR /var/www/html
# Thu, 22 Jun 2017 20:16:40 GMT
ENV DRUPAL_VERSION=7.56
# Thu, 22 Jun 2017 20:16:41 GMT
ENV DRUPAL_MD5=5d198f40f0f1cbf9cdf1bf3de842e534
# Thu, 22 Jun 2017 20:16:43 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
```

-	Layers:
	-	`sha256:acb474fa89565f9f79ee5ddaaaad12c59954e2694d005ec120d6b11825bad191`  
		Last Modified: Mon, 19 Jun 2017 17:06:54 GMT  
		Size: 2.4 MB (2385060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dabaad5e9926028cc146660baf944edb2684f3920faf2156ebf44ed92cf44133`  
		Last Modified: Tue, 20 Jun 2017 14:35:02 GMT  
		Size: 1.1 MB (1081308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33401fdb9aa65db74d315ebb85f68ae379f28e026bdbc5b9ce92224bccefc95`  
		Last Modified: Tue, 20 Jun 2017 14:34:59 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad83aa6d5dabea040da9162ce26e4da6e8212756b4f1279068078313bfa16d6`  
		Last Modified: Tue, 20 Jun 2017 14:34:59 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e45ac3b8ea807d262238d26f5e374e4d412512a2d9f37b25a8b828c72e28ff`  
		Last Modified: Tue, 20 Jun 2017 14:59:32 GMT  
		Size: 12.8 MB (12777888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b80298ec4bfdb8d2332b46151215c792cdd6b137f546d7a2ad8fca2c8e921662`  
		Last Modified: Tue, 20 Jun 2017 14:59:31 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c55a54194c6dd12b96859a109df56d08935bdd126ad89822f2a4eb4d77c28b`  
		Last Modified: Tue, 20 Jun 2017 14:59:35 GMT  
		Size: 14.1 MB (14059342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368ea13c5beb61aedd62f5d9f37d724ea618dd33e92d26e08ac8f03fda6efec4`  
		Last Modified: Tue, 20 Jun 2017 14:59:30 GMT  
		Size: 2.1 KB (2110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416a9a710629a89f54106407b8443dd738c95e68b99b5f7d1bb196618cbc4818`  
		Last Modified: Tue, 20 Jun 2017 14:59:30 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ddd7409c8fba2e0170a1eb1ba6838ee560232ccd725f488e1f7dd16673beba`  
		Last Modified: Tue, 20 Jun 2017 14:59:30 GMT  
		Size: 7.7 KB (7652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cb6f3831a8b4158fe4b0e59cd232ad3ebfd1d964a7f6365ace425a01e9c759`  
		Last Modified: Thu, 22 Jun 2017 20:27:35 GMT  
		Size: 3.0 MB (2982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c1f0b14b42aeda9da880552c58163fd6072173ad3b17a24210c2d01efbf6246`  
		Last Modified: Thu, 22 Jun 2017 20:27:35 GMT  
		Size: 3.3 MB (3302526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
