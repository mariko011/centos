<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `drupal`

-	[`drupal:8.3.0-beta1-apache`](#drupal830-beta1-apache)
-	[`drupal:8.3-rc-apache`](#drupal83-rc-apache)
-	[`drupal:rc-apache`](#drupalrc-apache)
-	[`drupal:8.3.0-beta1`](#drupal830-beta1)
-	[`drupal:8.3-rc`](#drupal83-rc)
-	[`drupal:rc`](#drupalrc)
-	[`drupal:8.3.0-beta1-fpm`](#drupal830-beta1-fpm)
-	[`drupal:8.3-rc-fpm`](#drupal83-rc-fpm)
-	[`drupal:rc-fpm`](#drupalrc-fpm)
-	[`drupal:8.2.6-apache`](#drupal826-apache)
-	[`drupal:8.2-apache`](#drupal82-apache)
-	[`drupal:8-apache`](#drupal8-apache)
-	[`drupal:apache`](#drupalapache)
-	[`drupal:8.2.6`](#drupal826)
-	[`drupal:8.2`](#drupal82)
-	[`drupal:8`](#drupal8)
-	[`drupal:latest`](#drupallatest)
-	[`drupal:8.2.6-fpm`](#drupal826-fpm)
-	[`drupal:8.2-fpm`](#drupal82-fpm)
-	[`drupal:8-fpm`](#drupal8-fpm)
-	[`drupal:fpm`](#drupalfpm)
-	[`drupal:7.54-apache`](#drupal754-apache)
-	[`drupal:7-apache`](#drupal7-apache)
-	[`drupal:7.54`](#drupal754)
-	[`drupal:7`](#drupal7)
-	[`drupal:7.54-fpm`](#drupal754-fpm)
-	[`drupal:7-fpm`](#drupal7-fpm)

## `drupal:8.3.0-beta1-apache`

```console
$ docker pull drupal@sha256:54f363fab8486b964ce64038bfb468595d63b029393a23c4c56757c3aa108305
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3.0-beta1-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.4 MB (179427163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43e2e1f21386bfd3b234bc924356dfe90d66287e5a6504218d6ede38e6091043`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 18:31:37 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 24 Jan 2017 18:31:37 GMT
ENV PHP_VERSION=7.1.1
# Tue, 24 Jan 2017 18:31:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.1.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.1.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 18:31:38 GMT
ENV PHP_SHA256=b3565b0c1441064eba204821608df1ec7367abff881286898d900c2c2a5ffe70 PHP_MD5=65eef256f6e7104a05361939f5e23ada
# Tue, 24 Jan 2017 18:31:47 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 18:31:48 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 18:34:09 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 18:34:10 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 18:34:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 27 Jan 2017 23:15:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 27 Jan 2017 23:15:11 GMT
WORKDIR /var/www/html
# Fri, 27 Jan 2017 23:15:11 GMT
EXPOSE 80/tcp
# Fri, 27 Jan 2017 23:15:12 GMT
CMD ["apache2-foreground"]
# Tue, 07 Feb 2017 19:45:17 GMT
RUN a2enmod rewrite
# Tue, 07 Feb 2017 19:46:48 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 07 Feb 2017 19:46:49 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 07 Feb 2017 19:46:49 GMT
WORKDIR /var/www/html
# Fri, 17 Feb 2017 18:57:51 GMT
ENV DRUPAL_VERSION=8.3.0-beta1
# Fri, 17 Feb 2017 18:57:51 GMT
ENV DRUPAL_MD5=7c5b312098fd5573d6e1420cfe86275e
# Fri, 17 Feb 2017 18:57:59 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02192cdb2b85b8e791facf01c6d856479e4f17deed3f1496b26f5ad80ab9b254`  
		Last Modified: Tue, 24 Jan 2017 19:45:54 GMT  
		Size: 12.9 MB (12896249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438a4f02ffc78eb4a0841f27eb20b201db9d775e2e5f87d9892ea822534246d7`  
		Last Modified: Tue, 24 Jan 2017 19:45:52 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3c50aa40727b1bf4c8645dd6976963e6f3a0cd4870695613574604a1f5c17`  
		Last Modified: Tue, 24 Jan 2017 19:45:57 GMT  
		Size: 13.6 MB (13601582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7291edaaf617548d594d8855e35a9fb3c657f79ebe997aa34b2879c87502bdf4`  
		Last Modified: Tue, 24 Jan 2017 19:45:52 GMT  
		Size: 2.0 KB (2021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac60b9af575c65836748f9ed03ccb909db120bb9b848ff3bbf217eb6151c817`  
		Last Modified: Fri, 27 Jan 2017 23:18:38 GMT  
		Size: 881.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8858fea14c13f607642773618ce4dd91194b2fd027784d7bc1a0c6fe657db90`  
		Last Modified: Tue, 07 Feb 2017 19:48:53 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1055670e79cffaaef4e2b2ad993904074265fd4bb2be51036cd035d6374ed61d`  
		Last Modified: Tue, 07 Feb 2017 19:48:55 GMT  
		Size: 8.7 MB (8744236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f6aece3020993b0ccbf54b11a3a6e1423471be1534ca1f19d983f475856424`  
		Last Modified: Tue, 07 Feb 2017 19:48:53 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f313e5519446df3b81a4ebf3167fd16b5df63ca5bd3568519e2aad724851a0`  
		Last Modified: Fri, 17 Feb 2017 18:58:36 GMT  
		Size: 12.4 MB (12361328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.3-rc-apache`

```console
$ docker pull drupal@sha256:54f363fab8486b964ce64038bfb468595d63b029393a23c4c56757c3aa108305
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3-rc-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.4 MB (179427163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43e2e1f21386bfd3b234bc924356dfe90d66287e5a6504218d6ede38e6091043`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 18:31:37 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 24 Jan 2017 18:31:37 GMT
ENV PHP_VERSION=7.1.1
# Tue, 24 Jan 2017 18:31:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.1.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.1.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 18:31:38 GMT
ENV PHP_SHA256=b3565b0c1441064eba204821608df1ec7367abff881286898d900c2c2a5ffe70 PHP_MD5=65eef256f6e7104a05361939f5e23ada
# Tue, 24 Jan 2017 18:31:47 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 18:31:48 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 18:34:09 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 18:34:10 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 18:34:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 27 Jan 2017 23:15:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 27 Jan 2017 23:15:11 GMT
WORKDIR /var/www/html
# Fri, 27 Jan 2017 23:15:11 GMT
EXPOSE 80/tcp
# Fri, 27 Jan 2017 23:15:12 GMT
CMD ["apache2-foreground"]
# Tue, 07 Feb 2017 19:45:17 GMT
RUN a2enmod rewrite
# Tue, 07 Feb 2017 19:46:48 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 07 Feb 2017 19:46:49 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 07 Feb 2017 19:46:49 GMT
WORKDIR /var/www/html
# Fri, 17 Feb 2017 18:57:51 GMT
ENV DRUPAL_VERSION=8.3.0-beta1
# Fri, 17 Feb 2017 18:57:51 GMT
ENV DRUPAL_MD5=7c5b312098fd5573d6e1420cfe86275e
# Fri, 17 Feb 2017 18:57:59 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02192cdb2b85b8e791facf01c6d856479e4f17deed3f1496b26f5ad80ab9b254`  
		Last Modified: Tue, 24 Jan 2017 19:45:54 GMT  
		Size: 12.9 MB (12896249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438a4f02ffc78eb4a0841f27eb20b201db9d775e2e5f87d9892ea822534246d7`  
		Last Modified: Tue, 24 Jan 2017 19:45:52 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3c50aa40727b1bf4c8645dd6976963e6f3a0cd4870695613574604a1f5c17`  
		Last Modified: Tue, 24 Jan 2017 19:45:57 GMT  
		Size: 13.6 MB (13601582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7291edaaf617548d594d8855e35a9fb3c657f79ebe997aa34b2879c87502bdf4`  
		Last Modified: Tue, 24 Jan 2017 19:45:52 GMT  
		Size: 2.0 KB (2021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac60b9af575c65836748f9ed03ccb909db120bb9b848ff3bbf217eb6151c817`  
		Last Modified: Fri, 27 Jan 2017 23:18:38 GMT  
		Size: 881.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8858fea14c13f607642773618ce4dd91194b2fd027784d7bc1a0c6fe657db90`  
		Last Modified: Tue, 07 Feb 2017 19:48:53 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1055670e79cffaaef4e2b2ad993904074265fd4bb2be51036cd035d6374ed61d`  
		Last Modified: Tue, 07 Feb 2017 19:48:55 GMT  
		Size: 8.7 MB (8744236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f6aece3020993b0ccbf54b11a3a6e1423471be1534ca1f19d983f475856424`  
		Last Modified: Tue, 07 Feb 2017 19:48:53 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f313e5519446df3b81a4ebf3167fd16b5df63ca5bd3568519e2aad724851a0`  
		Last Modified: Fri, 17 Feb 2017 18:58:36 GMT  
		Size: 12.4 MB (12361328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:rc-apache`

```console
$ docker pull drupal@sha256:54f363fab8486b964ce64038bfb468595d63b029393a23c4c56757c3aa108305
```

-	Platforms:
	-	linux; amd64

### `drupal:rc-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.4 MB (179427163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43e2e1f21386bfd3b234bc924356dfe90d66287e5a6504218d6ede38e6091043`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 18:31:37 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 24 Jan 2017 18:31:37 GMT
ENV PHP_VERSION=7.1.1
# Tue, 24 Jan 2017 18:31:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.1.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.1.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 18:31:38 GMT
ENV PHP_SHA256=b3565b0c1441064eba204821608df1ec7367abff881286898d900c2c2a5ffe70 PHP_MD5=65eef256f6e7104a05361939f5e23ada
# Tue, 24 Jan 2017 18:31:47 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 18:31:48 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 18:34:09 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 18:34:10 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 18:34:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 27 Jan 2017 23:15:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 27 Jan 2017 23:15:11 GMT
WORKDIR /var/www/html
# Fri, 27 Jan 2017 23:15:11 GMT
EXPOSE 80/tcp
# Fri, 27 Jan 2017 23:15:12 GMT
CMD ["apache2-foreground"]
# Tue, 07 Feb 2017 19:45:17 GMT
RUN a2enmod rewrite
# Tue, 07 Feb 2017 19:46:48 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 07 Feb 2017 19:46:49 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 07 Feb 2017 19:46:49 GMT
WORKDIR /var/www/html
# Fri, 17 Feb 2017 18:57:51 GMT
ENV DRUPAL_VERSION=8.3.0-beta1
# Fri, 17 Feb 2017 18:57:51 GMT
ENV DRUPAL_MD5=7c5b312098fd5573d6e1420cfe86275e
# Fri, 17 Feb 2017 18:57:59 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02192cdb2b85b8e791facf01c6d856479e4f17deed3f1496b26f5ad80ab9b254`  
		Last Modified: Tue, 24 Jan 2017 19:45:54 GMT  
		Size: 12.9 MB (12896249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438a4f02ffc78eb4a0841f27eb20b201db9d775e2e5f87d9892ea822534246d7`  
		Last Modified: Tue, 24 Jan 2017 19:45:52 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3c50aa40727b1bf4c8645dd6976963e6f3a0cd4870695613574604a1f5c17`  
		Last Modified: Tue, 24 Jan 2017 19:45:57 GMT  
		Size: 13.6 MB (13601582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7291edaaf617548d594d8855e35a9fb3c657f79ebe997aa34b2879c87502bdf4`  
		Last Modified: Tue, 24 Jan 2017 19:45:52 GMT  
		Size: 2.0 KB (2021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac60b9af575c65836748f9ed03ccb909db120bb9b848ff3bbf217eb6151c817`  
		Last Modified: Fri, 27 Jan 2017 23:18:38 GMT  
		Size: 881.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8858fea14c13f607642773618ce4dd91194b2fd027784d7bc1a0c6fe657db90`  
		Last Modified: Tue, 07 Feb 2017 19:48:53 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1055670e79cffaaef4e2b2ad993904074265fd4bb2be51036cd035d6374ed61d`  
		Last Modified: Tue, 07 Feb 2017 19:48:55 GMT  
		Size: 8.7 MB (8744236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f6aece3020993b0ccbf54b11a3a6e1423471be1534ca1f19d983f475856424`  
		Last Modified: Tue, 07 Feb 2017 19:48:53 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f313e5519446df3b81a4ebf3167fd16b5df63ca5bd3568519e2aad724851a0`  
		Last Modified: Fri, 17 Feb 2017 18:58:36 GMT  
		Size: 12.4 MB (12361328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.3.0-beta1`

```console
$ docker pull drupal@sha256:54f363fab8486b964ce64038bfb468595d63b029393a23c4c56757c3aa108305
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3.0-beta1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.4 MB (179427163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43e2e1f21386bfd3b234bc924356dfe90d66287e5a6504218d6ede38e6091043`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 18:31:37 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 24 Jan 2017 18:31:37 GMT
ENV PHP_VERSION=7.1.1
# Tue, 24 Jan 2017 18:31:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.1.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.1.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 18:31:38 GMT
ENV PHP_SHA256=b3565b0c1441064eba204821608df1ec7367abff881286898d900c2c2a5ffe70 PHP_MD5=65eef256f6e7104a05361939f5e23ada
# Tue, 24 Jan 2017 18:31:47 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 18:31:48 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 18:34:09 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 18:34:10 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 18:34:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 27 Jan 2017 23:15:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 27 Jan 2017 23:15:11 GMT
WORKDIR /var/www/html
# Fri, 27 Jan 2017 23:15:11 GMT
EXPOSE 80/tcp
# Fri, 27 Jan 2017 23:15:12 GMT
CMD ["apache2-foreground"]
# Tue, 07 Feb 2017 19:45:17 GMT
RUN a2enmod rewrite
# Tue, 07 Feb 2017 19:46:48 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 07 Feb 2017 19:46:49 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 07 Feb 2017 19:46:49 GMT
WORKDIR /var/www/html
# Fri, 17 Feb 2017 18:57:51 GMT
ENV DRUPAL_VERSION=8.3.0-beta1
# Fri, 17 Feb 2017 18:57:51 GMT
ENV DRUPAL_MD5=7c5b312098fd5573d6e1420cfe86275e
# Fri, 17 Feb 2017 18:57:59 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02192cdb2b85b8e791facf01c6d856479e4f17deed3f1496b26f5ad80ab9b254`  
		Last Modified: Tue, 24 Jan 2017 19:45:54 GMT  
		Size: 12.9 MB (12896249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438a4f02ffc78eb4a0841f27eb20b201db9d775e2e5f87d9892ea822534246d7`  
		Last Modified: Tue, 24 Jan 2017 19:45:52 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3c50aa40727b1bf4c8645dd6976963e6f3a0cd4870695613574604a1f5c17`  
		Last Modified: Tue, 24 Jan 2017 19:45:57 GMT  
		Size: 13.6 MB (13601582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7291edaaf617548d594d8855e35a9fb3c657f79ebe997aa34b2879c87502bdf4`  
		Last Modified: Tue, 24 Jan 2017 19:45:52 GMT  
		Size: 2.0 KB (2021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac60b9af575c65836748f9ed03ccb909db120bb9b848ff3bbf217eb6151c817`  
		Last Modified: Fri, 27 Jan 2017 23:18:38 GMT  
		Size: 881.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8858fea14c13f607642773618ce4dd91194b2fd027784d7bc1a0c6fe657db90`  
		Last Modified: Tue, 07 Feb 2017 19:48:53 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1055670e79cffaaef4e2b2ad993904074265fd4bb2be51036cd035d6374ed61d`  
		Last Modified: Tue, 07 Feb 2017 19:48:55 GMT  
		Size: 8.7 MB (8744236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f6aece3020993b0ccbf54b11a3a6e1423471be1534ca1f19d983f475856424`  
		Last Modified: Tue, 07 Feb 2017 19:48:53 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f313e5519446df3b81a4ebf3167fd16b5df63ca5bd3568519e2aad724851a0`  
		Last Modified: Fri, 17 Feb 2017 18:58:36 GMT  
		Size: 12.4 MB (12361328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.3-rc`

```console
$ docker pull drupal@sha256:54f363fab8486b964ce64038bfb468595d63b029393a23c4c56757c3aa108305
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3-rc` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.4 MB (179427163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43e2e1f21386bfd3b234bc924356dfe90d66287e5a6504218d6ede38e6091043`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 18:31:37 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 24 Jan 2017 18:31:37 GMT
ENV PHP_VERSION=7.1.1
# Tue, 24 Jan 2017 18:31:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.1.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.1.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 18:31:38 GMT
ENV PHP_SHA256=b3565b0c1441064eba204821608df1ec7367abff881286898d900c2c2a5ffe70 PHP_MD5=65eef256f6e7104a05361939f5e23ada
# Tue, 24 Jan 2017 18:31:47 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 18:31:48 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 18:34:09 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 18:34:10 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 18:34:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 27 Jan 2017 23:15:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 27 Jan 2017 23:15:11 GMT
WORKDIR /var/www/html
# Fri, 27 Jan 2017 23:15:11 GMT
EXPOSE 80/tcp
# Fri, 27 Jan 2017 23:15:12 GMT
CMD ["apache2-foreground"]
# Tue, 07 Feb 2017 19:45:17 GMT
RUN a2enmod rewrite
# Tue, 07 Feb 2017 19:46:48 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 07 Feb 2017 19:46:49 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 07 Feb 2017 19:46:49 GMT
WORKDIR /var/www/html
# Fri, 17 Feb 2017 18:57:51 GMT
ENV DRUPAL_VERSION=8.3.0-beta1
# Fri, 17 Feb 2017 18:57:51 GMT
ENV DRUPAL_MD5=7c5b312098fd5573d6e1420cfe86275e
# Fri, 17 Feb 2017 18:57:59 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02192cdb2b85b8e791facf01c6d856479e4f17deed3f1496b26f5ad80ab9b254`  
		Last Modified: Tue, 24 Jan 2017 19:45:54 GMT  
		Size: 12.9 MB (12896249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438a4f02ffc78eb4a0841f27eb20b201db9d775e2e5f87d9892ea822534246d7`  
		Last Modified: Tue, 24 Jan 2017 19:45:52 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3c50aa40727b1bf4c8645dd6976963e6f3a0cd4870695613574604a1f5c17`  
		Last Modified: Tue, 24 Jan 2017 19:45:57 GMT  
		Size: 13.6 MB (13601582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7291edaaf617548d594d8855e35a9fb3c657f79ebe997aa34b2879c87502bdf4`  
		Last Modified: Tue, 24 Jan 2017 19:45:52 GMT  
		Size: 2.0 KB (2021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac60b9af575c65836748f9ed03ccb909db120bb9b848ff3bbf217eb6151c817`  
		Last Modified: Fri, 27 Jan 2017 23:18:38 GMT  
		Size: 881.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8858fea14c13f607642773618ce4dd91194b2fd027784d7bc1a0c6fe657db90`  
		Last Modified: Tue, 07 Feb 2017 19:48:53 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1055670e79cffaaef4e2b2ad993904074265fd4bb2be51036cd035d6374ed61d`  
		Last Modified: Tue, 07 Feb 2017 19:48:55 GMT  
		Size: 8.7 MB (8744236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f6aece3020993b0ccbf54b11a3a6e1423471be1534ca1f19d983f475856424`  
		Last Modified: Tue, 07 Feb 2017 19:48:53 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f313e5519446df3b81a4ebf3167fd16b5df63ca5bd3568519e2aad724851a0`  
		Last Modified: Fri, 17 Feb 2017 18:58:36 GMT  
		Size: 12.4 MB (12361328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:rc`

```console
$ docker pull drupal@sha256:54f363fab8486b964ce64038bfb468595d63b029393a23c4c56757c3aa108305
```

-	Platforms:
	-	linux; amd64

### `drupal:rc` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.4 MB (179427163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43e2e1f21386bfd3b234bc924356dfe90d66287e5a6504218d6ede38e6091043`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 18:31:37 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 24 Jan 2017 18:31:37 GMT
ENV PHP_VERSION=7.1.1
# Tue, 24 Jan 2017 18:31:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.1.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.1.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 18:31:38 GMT
ENV PHP_SHA256=b3565b0c1441064eba204821608df1ec7367abff881286898d900c2c2a5ffe70 PHP_MD5=65eef256f6e7104a05361939f5e23ada
# Tue, 24 Jan 2017 18:31:47 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 18:31:48 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 18:34:09 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 18:34:10 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 18:34:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 27 Jan 2017 23:15:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 27 Jan 2017 23:15:11 GMT
WORKDIR /var/www/html
# Fri, 27 Jan 2017 23:15:11 GMT
EXPOSE 80/tcp
# Fri, 27 Jan 2017 23:15:12 GMT
CMD ["apache2-foreground"]
# Tue, 07 Feb 2017 19:45:17 GMT
RUN a2enmod rewrite
# Tue, 07 Feb 2017 19:46:48 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 07 Feb 2017 19:46:49 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 07 Feb 2017 19:46:49 GMT
WORKDIR /var/www/html
# Fri, 17 Feb 2017 18:57:51 GMT
ENV DRUPAL_VERSION=8.3.0-beta1
# Fri, 17 Feb 2017 18:57:51 GMT
ENV DRUPAL_MD5=7c5b312098fd5573d6e1420cfe86275e
# Fri, 17 Feb 2017 18:57:59 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02192cdb2b85b8e791facf01c6d856479e4f17deed3f1496b26f5ad80ab9b254`  
		Last Modified: Tue, 24 Jan 2017 19:45:54 GMT  
		Size: 12.9 MB (12896249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438a4f02ffc78eb4a0841f27eb20b201db9d775e2e5f87d9892ea822534246d7`  
		Last Modified: Tue, 24 Jan 2017 19:45:52 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3c50aa40727b1bf4c8645dd6976963e6f3a0cd4870695613574604a1f5c17`  
		Last Modified: Tue, 24 Jan 2017 19:45:57 GMT  
		Size: 13.6 MB (13601582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7291edaaf617548d594d8855e35a9fb3c657f79ebe997aa34b2879c87502bdf4`  
		Last Modified: Tue, 24 Jan 2017 19:45:52 GMT  
		Size: 2.0 KB (2021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac60b9af575c65836748f9ed03ccb909db120bb9b848ff3bbf217eb6151c817`  
		Last Modified: Fri, 27 Jan 2017 23:18:38 GMT  
		Size: 881.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8858fea14c13f607642773618ce4dd91194b2fd027784d7bc1a0c6fe657db90`  
		Last Modified: Tue, 07 Feb 2017 19:48:53 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1055670e79cffaaef4e2b2ad993904074265fd4bb2be51036cd035d6374ed61d`  
		Last Modified: Tue, 07 Feb 2017 19:48:55 GMT  
		Size: 8.7 MB (8744236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f6aece3020993b0ccbf54b11a3a6e1423471be1534ca1f19d983f475856424`  
		Last Modified: Tue, 07 Feb 2017 19:48:53 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f313e5519446df3b81a4ebf3167fd16b5df63ca5bd3568519e2aad724851a0`  
		Last Modified: Fri, 17 Feb 2017 18:58:36 GMT  
		Size: 12.4 MB (12361328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.3.0-beta1-fpm`

```console
$ docker pull drupal@sha256:91c25b0a07482a84e1a761c4d50bc74ebb1a5f92f86a6d1c8ce755a14b5c9cc7
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3.0-beta1-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.2 MB (176170478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e0478f45558dc4ef89701d85b69a83918cf86dabbde486387da43e0ee08bc6f`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Tue, 24 Jan 2017 18:34:13 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 24 Jan 2017 18:34:14 GMT
ENV PHP_VERSION=7.1.1
# Tue, 24 Jan 2017 18:34:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.1.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.1.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 18:34:14 GMT
ENV PHP_SHA256=b3565b0c1441064eba204821608df1ec7367abff881286898d900c2c2a5ffe70 PHP_MD5=65eef256f6e7104a05361939f5e23ada
# Tue, 24 Jan 2017 18:34:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 18:34:22 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 18:38:00 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 18:38:01 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 24 Jan 2017 18:38:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 18:38:02 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 18:38:03 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 24 Jan 2017 18:38:03 GMT
EXPOSE 9000/tcp
# Tue, 24 Jan 2017 18:38:03 GMT
CMD ["php-fpm"]
# Tue, 07 Feb 2017 19:48:25 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 07 Feb 2017 19:48:26 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 07 Feb 2017 19:48:26 GMT
WORKDIR /var/www/html
# Fri, 17 Feb 2017 18:58:00 GMT
ENV DRUPAL_VERSION=8.3.0-beta1
# Fri, 17 Feb 2017 18:58:00 GMT
ENV DRUPAL_MD5=7c5b312098fd5573d6e1420cfe86275e
# Fri, 17 Feb 2017 18:58:08 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:f0e6a6bc8d1e81f0a0cabc6d6ffbe5afd359180690a8a5636ef28348fa175fae`  
		Last Modified: Tue, 24 Jan 2017 19:47:05 GMT  
		Size: 12.9 MB (12877173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87aabe63962f661c482b05d84bb8395caa702be20083960662fb60e67222725d`  
		Last Modified: Tue, 24 Jan 2017 19:47:00 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb90835d9a2c3760efc67c16b83f354f7c3cb07e13ba2758c37fbc82fd5d8789`  
		Last Modified: Tue, 24 Jan 2017 19:47:04 GMT  
		Size: 13.2 MB (13231251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e2076d00d418f7353f520b593a1c713b0cb3d4a4459529be02be5873c65fa6`  
		Last Modified: Tue, 24 Jan 2017 19:47:00 GMT  
		Size: 2.0 KB (2012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6513f99dd295140e380702399316c59febb88500be36eb82be719034d9b461`  
		Last Modified: Tue, 24 Jan 2017 19:47:00 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f980afbbb48f0579f34cafb590555c14911148125ca9b0e59549dccdab433208`  
		Last Modified: Tue, 24 Jan 2017 19:47:00 GMT  
		Size: 7.7 KB (7694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e637e4316f3710ec711c155f5e05b2eb3eb52cc54591841e63db8ef15f9d8a`  
		Last Modified: Tue, 07 Feb 2017 19:50:41 GMT  
		Size: 8.7 MB (8721874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1f571ac89ef6206ad5f0c470851cc8f6a0e0bbce44b063e6cbc8a0f67ae923`  
		Last Modified: Tue, 07 Feb 2017 19:50:35 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f166a1a299925be0b18fd5ba33207092ecc4b37c91e5782307b391e54206a09`  
		Last Modified: Fri, 17 Feb 2017 19:01:00 GMT  
		Size: 12.4 MB (12361324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.3-rc-fpm`

```console
$ docker pull drupal@sha256:91c25b0a07482a84e1a761c4d50bc74ebb1a5f92f86a6d1c8ce755a14b5c9cc7
```

-	Platforms:
	-	linux; amd64

### `drupal:8.3-rc-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.2 MB (176170478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e0478f45558dc4ef89701d85b69a83918cf86dabbde486387da43e0ee08bc6f`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Tue, 24 Jan 2017 18:34:13 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 24 Jan 2017 18:34:14 GMT
ENV PHP_VERSION=7.1.1
# Tue, 24 Jan 2017 18:34:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.1.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.1.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 18:34:14 GMT
ENV PHP_SHA256=b3565b0c1441064eba204821608df1ec7367abff881286898d900c2c2a5ffe70 PHP_MD5=65eef256f6e7104a05361939f5e23ada
# Tue, 24 Jan 2017 18:34:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 18:34:22 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 18:38:00 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 18:38:01 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 24 Jan 2017 18:38:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 18:38:02 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 18:38:03 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 24 Jan 2017 18:38:03 GMT
EXPOSE 9000/tcp
# Tue, 24 Jan 2017 18:38:03 GMT
CMD ["php-fpm"]
# Tue, 07 Feb 2017 19:48:25 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 07 Feb 2017 19:48:26 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 07 Feb 2017 19:48:26 GMT
WORKDIR /var/www/html
# Fri, 17 Feb 2017 18:58:00 GMT
ENV DRUPAL_VERSION=8.3.0-beta1
# Fri, 17 Feb 2017 18:58:00 GMT
ENV DRUPAL_MD5=7c5b312098fd5573d6e1420cfe86275e
# Fri, 17 Feb 2017 18:58:08 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:f0e6a6bc8d1e81f0a0cabc6d6ffbe5afd359180690a8a5636ef28348fa175fae`  
		Last Modified: Tue, 24 Jan 2017 19:47:05 GMT  
		Size: 12.9 MB (12877173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87aabe63962f661c482b05d84bb8395caa702be20083960662fb60e67222725d`  
		Last Modified: Tue, 24 Jan 2017 19:47:00 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb90835d9a2c3760efc67c16b83f354f7c3cb07e13ba2758c37fbc82fd5d8789`  
		Last Modified: Tue, 24 Jan 2017 19:47:04 GMT  
		Size: 13.2 MB (13231251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e2076d00d418f7353f520b593a1c713b0cb3d4a4459529be02be5873c65fa6`  
		Last Modified: Tue, 24 Jan 2017 19:47:00 GMT  
		Size: 2.0 KB (2012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6513f99dd295140e380702399316c59febb88500be36eb82be719034d9b461`  
		Last Modified: Tue, 24 Jan 2017 19:47:00 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f980afbbb48f0579f34cafb590555c14911148125ca9b0e59549dccdab433208`  
		Last Modified: Tue, 24 Jan 2017 19:47:00 GMT  
		Size: 7.7 KB (7694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e637e4316f3710ec711c155f5e05b2eb3eb52cc54591841e63db8ef15f9d8a`  
		Last Modified: Tue, 07 Feb 2017 19:50:41 GMT  
		Size: 8.7 MB (8721874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1f571ac89ef6206ad5f0c470851cc8f6a0e0bbce44b063e6cbc8a0f67ae923`  
		Last Modified: Tue, 07 Feb 2017 19:50:35 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f166a1a299925be0b18fd5ba33207092ecc4b37c91e5782307b391e54206a09`  
		Last Modified: Fri, 17 Feb 2017 19:01:00 GMT  
		Size: 12.4 MB (12361324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:rc-fpm`

```console
$ docker pull drupal@sha256:91c25b0a07482a84e1a761c4d50bc74ebb1a5f92f86a6d1c8ce755a14b5c9cc7
```

-	Platforms:
	-	linux; amd64

### `drupal:rc-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.2 MB (176170478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e0478f45558dc4ef89701d85b69a83918cf86dabbde486387da43e0ee08bc6f`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Tue, 24 Jan 2017 18:34:13 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 24 Jan 2017 18:34:14 GMT
ENV PHP_VERSION=7.1.1
# Tue, 24 Jan 2017 18:34:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.1.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.1.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 18:34:14 GMT
ENV PHP_SHA256=b3565b0c1441064eba204821608df1ec7367abff881286898d900c2c2a5ffe70 PHP_MD5=65eef256f6e7104a05361939f5e23ada
# Tue, 24 Jan 2017 18:34:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 18:34:22 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 18:38:00 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 18:38:01 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 24 Jan 2017 18:38:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 18:38:02 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 18:38:03 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 24 Jan 2017 18:38:03 GMT
EXPOSE 9000/tcp
# Tue, 24 Jan 2017 18:38:03 GMT
CMD ["php-fpm"]
# Tue, 07 Feb 2017 19:48:25 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 07 Feb 2017 19:48:26 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 07 Feb 2017 19:48:26 GMT
WORKDIR /var/www/html
# Fri, 17 Feb 2017 18:58:00 GMT
ENV DRUPAL_VERSION=8.3.0-beta1
# Fri, 17 Feb 2017 18:58:00 GMT
ENV DRUPAL_MD5=7c5b312098fd5573d6e1420cfe86275e
# Fri, 17 Feb 2017 18:58:08 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:f0e6a6bc8d1e81f0a0cabc6d6ffbe5afd359180690a8a5636ef28348fa175fae`  
		Last Modified: Tue, 24 Jan 2017 19:47:05 GMT  
		Size: 12.9 MB (12877173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87aabe63962f661c482b05d84bb8395caa702be20083960662fb60e67222725d`  
		Last Modified: Tue, 24 Jan 2017 19:47:00 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb90835d9a2c3760efc67c16b83f354f7c3cb07e13ba2758c37fbc82fd5d8789`  
		Last Modified: Tue, 24 Jan 2017 19:47:04 GMT  
		Size: 13.2 MB (13231251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e2076d00d418f7353f520b593a1c713b0cb3d4a4459529be02be5873c65fa6`  
		Last Modified: Tue, 24 Jan 2017 19:47:00 GMT  
		Size: 2.0 KB (2012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6513f99dd295140e380702399316c59febb88500be36eb82be719034d9b461`  
		Last Modified: Tue, 24 Jan 2017 19:47:00 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f980afbbb48f0579f34cafb590555c14911148125ca9b0e59549dccdab433208`  
		Last Modified: Tue, 24 Jan 2017 19:47:00 GMT  
		Size: 7.7 KB (7694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e637e4316f3710ec711c155f5e05b2eb3eb52cc54591841e63db8ef15f9d8a`  
		Last Modified: Tue, 07 Feb 2017 19:50:41 GMT  
		Size: 8.7 MB (8721874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1f571ac89ef6206ad5f0c470851cc8f6a0e0bbce44b063e6cbc8a0f67ae923`  
		Last Modified: Tue, 07 Feb 2017 19:50:35 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f166a1a299925be0b18fd5ba33207092ecc4b37c91e5782307b391e54206a09`  
		Last Modified: Fri, 17 Feb 2017 19:01:00 GMT  
		Size: 12.4 MB (12361324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2.6-apache`

```console
$ docker pull drupal@sha256:5606e9511cff2817b440b7c18b15d7aa1faa0c7166774a1867c7261a436595bd
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.6-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.7 MB (178675105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae409b87f641dfd7a7925d2f4870d15da06f4aa040f9eab88f14fcbc0e3d63b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:00:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:00:36 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:00:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:00:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:02:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:03:00 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 27 Jan 2017 23:15:14 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 27 Jan 2017 23:15:15 GMT
WORKDIR /var/www/html
# Fri, 27 Jan 2017 23:15:15 GMT
EXPOSE 80/tcp
# Fri, 27 Jan 2017 23:15:16 GMT
CMD ["apache2-foreground"]
# Mon, 30 Jan 2017 15:04:50 GMT
RUN a2enmod rewrite
# Mon, 30 Jan 2017 15:07:26 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 30 Jan 2017 15:07:27 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 30 Jan 2017 15:07:28 GMT
WORKDIR /var/www/html
# Mon, 06 Feb 2017 17:44:29 GMT
ENV DRUPAL_VERSION=8.2.6
# Mon, 06 Feb 2017 17:44:30 GMT
ENV DRUPAL_MD5=57526a827771ea8a06db1792f1602a85
# Mon, 06 Feb 2017 17:44:37 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da10a8382a2ca7e8f3d5ca17b081516cf0ad3a66b1f052997e8be4d441e5958b`  
		Last Modified: Tue, 24 Jan 2017 19:53:03 GMT  
		Size: 12.7 MB (12705419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0367125b7d8c7329d52d1e82c05ae1e85cbe3009c6f54f22e550ce2baed9d3d`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e0d1d8a91db49b5c444f49ff6b2d8ed40609a491b9d4552ad2a72c31a5fd13`  
		Last Modified: Tue, 24 Jan 2017 19:53:06 GMT  
		Size: 13.3 MB (13305091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5aa3e152475a0fcfb59e3204e6a96abd7d43beadf1d47d8f82207428d3629b`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15b0aba9c25409c38480927194ba0e61fe47ed6fa522fa2a76c0df8ba43fa69`  
		Last Modified: Fri, 27 Jan 2017 23:25:06 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3a8f31ee5b862651fe7f1119aa8aeb6f68defaad2da8d0b1a18a823427b493`  
		Last Modified: Mon, 30 Jan 2017 15:07:54 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c17c4c56aac50da2c162f7bb1c2da87d9d7cbacca5c9a6ebeae87ce9f6681a4`  
		Last Modified: Mon, 30 Jan 2017 15:09:36 GMT  
		Size: 8.7 MB (8661564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5775f75d2e4bea0018de2620656a25c7f1607d9f754c62489754ca60ed6b21b`  
		Last Modified: Mon, 30 Jan 2017 15:09:33 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715fa18deb6d226ddd2c39e4ea5b198c644b2316b1d5f0b320ce4fefbaec96c8`  
		Last Modified: Mon, 06 Feb 2017 17:45:13 GMT  
		Size: 12.2 MB (12179260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2-apache`

```console
$ docker pull drupal@sha256:5606e9511cff2817b440b7c18b15d7aa1faa0c7166774a1867c7261a436595bd
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.7 MB (178675105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae409b87f641dfd7a7925d2f4870d15da06f4aa040f9eab88f14fcbc0e3d63b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:00:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:00:36 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:00:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:00:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:02:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:03:00 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 27 Jan 2017 23:15:14 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 27 Jan 2017 23:15:15 GMT
WORKDIR /var/www/html
# Fri, 27 Jan 2017 23:15:15 GMT
EXPOSE 80/tcp
# Fri, 27 Jan 2017 23:15:16 GMT
CMD ["apache2-foreground"]
# Mon, 30 Jan 2017 15:04:50 GMT
RUN a2enmod rewrite
# Mon, 30 Jan 2017 15:07:26 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 30 Jan 2017 15:07:27 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 30 Jan 2017 15:07:28 GMT
WORKDIR /var/www/html
# Mon, 06 Feb 2017 17:44:29 GMT
ENV DRUPAL_VERSION=8.2.6
# Mon, 06 Feb 2017 17:44:30 GMT
ENV DRUPAL_MD5=57526a827771ea8a06db1792f1602a85
# Mon, 06 Feb 2017 17:44:37 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da10a8382a2ca7e8f3d5ca17b081516cf0ad3a66b1f052997e8be4d441e5958b`  
		Last Modified: Tue, 24 Jan 2017 19:53:03 GMT  
		Size: 12.7 MB (12705419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0367125b7d8c7329d52d1e82c05ae1e85cbe3009c6f54f22e550ce2baed9d3d`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e0d1d8a91db49b5c444f49ff6b2d8ed40609a491b9d4552ad2a72c31a5fd13`  
		Last Modified: Tue, 24 Jan 2017 19:53:06 GMT  
		Size: 13.3 MB (13305091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5aa3e152475a0fcfb59e3204e6a96abd7d43beadf1d47d8f82207428d3629b`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15b0aba9c25409c38480927194ba0e61fe47ed6fa522fa2a76c0df8ba43fa69`  
		Last Modified: Fri, 27 Jan 2017 23:25:06 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3a8f31ee5b862651fe7f1119aa8aeb6f68defaad2da8d0b1a18a823427b493`  
		Last Modified: Mon, 30 Jan 2017 15:07:54 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c17c4c56aac50da2c162f7bb1c2da87d9d7cbacca5c9a6ebeae87ce9f6681a4`  
		Last Modified: Mon, 30 Jan 2017 15:09:36 GMT  
		Size: 8.7 MB (8661564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5775f75d2e4bea0018de2620656a25c7f1607d9f754c62489754ca60ed6b21b`  
		Last Modified: Mon, 30 Jan 2017 15:09:33 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715fa18deb6d226ddd2c39e4ea5b198c644b2316b1d5f0b320ce4fefbaec96c8`  
		Last Modified: Mon, 06 Feb 2017 17:45:13 GMT  
		Size: 12.2 MB (12179260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8-apache`

```console
$ docker pull drupal@sha256:5606e9511cff2817b440b7c18b15d7aa1faa0c7166774a1867c7261a436595bd
```

-	Platforms:
	-	linux; amd64

### `drupal:8-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.7 MB (178675105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae409b87f641dfd7a7925d2f4870d15da06f4aa040f9eab88f14fcbc0e3d63b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:00:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:00:36 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:00:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:00:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:02:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:03:00 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 27 Jan 2017 23:15:14 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 27 Jan 2017 23:15:15 GMT
WORKDIR /var/www/html
# Fri, 27 Jan 2017 23:15:15 GMT
EXPOSE 80/tcp
# Fri, 27 Jan 2017 23:15:16 GMT
CMD ["apache2-foreground"]
# Mon, 30 Jan 2017 15:04:50 GMT
RUN a2enmod rewrite
# Mon, 30 Jan 2017 15:07:26 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 30 Jan 2017 15:07:27 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 30 Jan 2017 15:07:28 GMT
WORKDIR /var/www/html
# Mon, 06 Feb 2017 17:44:29 GMT
ENV DRUPAL_VERSION=8.2.6
# Mon, 06 Feb 2017 17:44:30 GMT
ENV DRUPAL_MD5=57526a827771ea8a06db1792f1602a85
# Mon, 06 Feb 2017 17:44:37 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da10a8382a2ca7e8f3d5ca17b081516cf0ad3a66b1f052997e8be4d441e5958b`  
		Last Modified: Tue, 24 Jan 2017 19:53:03 GMT  
		Size: 12.7 MB (12705419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0367125b7d8c7329d52d1e82c05ae1e85cbe3009c6f54f22e550ce2baed9d3d`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e0d1d8a91db49b5c444f49ff6b2d8ed40609a491b9d4552ad2a72c31a5fd13`  
		Last Modified: Tue, 24 Jan 2017 19:53:06 GMT  
		Size: 13.3 MB (13305091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5aa3e152475a0fcfb59e3204e6a96abd7d43beadf1d47d8f82207428d3629b`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15b0aba9c25409c38480927194ba0e61fe47ed6fa522fa2a76c0df8ba43fa69`  
		Last Modified: Fri, 27 Jan 2017 23:25:06 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3a8f31ee5b862651fe7f1119aa8aeb6f68defaad2da8d0b1a18a823427b493`  
		Last Modified: Mon, 30 Jan 2017 15:07:54 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c17c4c56aac50da2c162f7bb1c2da87d9d7cbacca5c9a6ebeae87ce9f6681a4`  
		Last Modified: Mon, 30 Jan 2017 15:09:36 GMT  
		Size: 8.7 MB (8661564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5775f75d2e4bea0018de2620656a25c7f1607d9f754c62489754ca60ed6b21b`  
		Last Modified: Mon, 30 Jan 2017 15:09:33 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715fa18deb6d226ddd2c39e4ea5b198c644b2316b1d5f0b320ce4fefbaec96c8`  
		Last Modified: Mon, 06 Feb 2017 17:45:13 GMT  
		Size: 12.2 MB (12179260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:apache`

```console
$ docker pull drupal@sha256:5606e9511cff2817b440b7c18b15d7aa1faa0c7166774a1867c7261a436595bd
```

-	Platforms:
	-	linux; amd64

### `drupal:apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.7 MB (178675105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae409b87f641dfd7a7925d2f4870d15da06f4aa040f9eab88f14fcbc0e3d63b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:00:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:00:36 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:00:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:00:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:02:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:03:00 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 27 Jan 2017 23:15:14 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 27 Jan 2017 23:15:15 GMT
WORKDIR /var/www/html
# Fri, 27 Jan 2017 23:15:15 GMT
EXPOSE 80/tcp
# Fri, 27 Jan 2017 23:15:16 GMT
CMD ["apache2-foreground"]
# Mon, 30 Jan 2017 15:04:50 GMT
RUN a2enmod rewrite
# Mon, 30 Jan 2017 15:07:26 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 30 Jan 2017 15:07:27 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 30 Jan 2017 15:07:28 GMT
WORKDIR /var/www/html
# Mon, 06 Feb 2017 17:44:29 GMT
ENV DRUPAL_VERSION=8.2.6
# Mon, 06 Feb 2017 17:44:30 GMT
ENV DRUPAL_MD5=57526a827771ea8a06db1792f1602a85
# Mon, 06 Feb 2017 17:44:37 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da10a8382a2ca7e8f3d5ca17b081516cf0ad3a66b1f052997e8be4d441e5958b`  
		Last Modified: Tue, 24 Jan 2017 19:53:03 GMT  
		Size: 12.7 MB (12705419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0367125b7d8c7329d52d1e82c05ae1e85cbe3009c6f54f22e550ce2baed9d3d`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e0d1d8a91db49b5c444f49ff6b2d8ed40609a491b9d4552ad2a72c31a5fd13`  
		Last Modified: Tue, 24 Jan 2017 19:53:06 GMT  
		Size: 13.3 MB (13305091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5aa3e152475a0fcfb59e3204e6a96abd7d43beadf1d47d8f82207428d3629b`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15b0aba9c25409c38480927194ba0e61fe47ed6fa522fa2a76c0df8ba43fa69`  
		Last Modified: Fri, 27 Jan 2017 23:25:06 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3a8f31ee5b862651fe7f1119aa8aeb6f68defaad2da8d0b1a18a823427b493`  
		Last Modified: Mon, 30 Jan 2017 15:07:54 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c17c4c56aac50da2c162f7bb1c2da87d9d7cbacca5c9a6ebeae87ce9f6681a4`  
		Last Modified: Mon, 30 Jan 2017 15:09:36 GMT  
		Size: 8.7 MB (8661564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5775f75d2e4bea0018de2620656a25c7f1607d9f754c62489754ca60ed6b21b`  
		Last Modified: Mon, 30 Jan 2017 15:09:33 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715fa18deb6d226ddd2c39e4ea5b198c644b2316b1d5f0b320ce4fefbaec96c8`  
		Last Modified: Mon, 06 Feb 2017 17:45:13 GMT  
		Size: 12.2 MB (12179260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2.6`

```console
$ docker pull drupal@sha256:5606e9511cff2817b440b7c18b15d7aa1faa0c7166774a1867c7261a436595bd
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.7 MB (178675105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae409b87f641dfd7a7925d2f4870d15da06f4aa040f9eab88f14fcbc0e3d63b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:00:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:00:36 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:00:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:00:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:02:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:03:00 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 27 Jan 2017 23:15:14 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 27 Jan 2017 23:15:15 GMT
WORKDIR /var/www/html
# Fri, 27 Jan 2017 23:15:15 GMT
EXPOSE 80/tcp
# Fri, 27 Jan 2017 23:15:16 GMT
CMD ["apache2-foreground"]
# Mon, 30 Jan 2017 15:04:50 GMT
RUN a2enmod rewrite
# Mon, 30 Jan 2017 15:07:26 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 30 Jan 2017 15:07:27 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 30 Jan 2017 15:07:28 GMT
WORKDIR /var/www/html
# Mon, 06 Feb 2017 17:44:29 GMT
ENV DRUPAL_VERSION=8.2.6
# Mon, 06 Feb 2017 17:44:30 GMT
ENV DRUPAL_MD5=57526a827771ea8a06db1792f1602a85
# Mon, 06 Feb 2017 17:44:37 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da10a8382a2ca7e8f3d5ca17b081516cf0ad3a66b1f052997e8be4d441e5958b`  
		Last Modified: Tue, 24 Jan 2017 19:53:03 GMT  
		Size: 12.7 MB (12705419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0367125b7d8c7329d52d1e82c05ae1e85cbe3009c6f54f22e550ce2baed9d3d`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e0d1d8a91db49b5c444f49ff6b2d8ed40609a491b9d4552ad2a72c31a5fd13`  
		Last Modified: Tue, 24 Jan 2017 19:53:06 GMT  
		Size: 13.3 MB (13305091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5aa3e152475a0fcfb59e3204e6a96abd7d43beadf1d47d8f82207428d3629b`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15b0aba9c25409c38480927194ba0e61fe47ed6fa522fa2a76c0df8ba43fa69`  
		Last Modified: Fri, 27 Jan 2017 23:25:06 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3a8f31ee5b862651fe7f1119aa8aeb6f68defaad2da8d0b1a18a823427b493`  
		Last Modified: Mon, 30 Jan 2017 15:07:54 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c17c4c56aac50da2c162f7bb1c2da87d9d7cbacca5c9a6ebeae87ce9f6681a4`  
		Last Modified: Mon, 30 Jan 2017 15:09:36 GMT  
		Size: 8.7 MB (8661564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5775f75d2e4bea0018de2620656a25c7f1607d9f754c62489754ca60ed6b21b`  
		Last Modified: Mon, 30 Jan 2017 15:09:33 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715fa18deb6d226ddd2c39e4ea5b198c644b2316b1d5f0b320ce4fefbaec96c8`  
		Last Modified: Mon, 06 Feb 2017 17:45:13 GMT  
		Size: 12.2 MB (12179260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2`

```console
$ docker pull drupal@sha256:5606e9511cff2817b440b7c18b15d7aa1faa0c7166774a1867c7261a436595bd
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.7 MB (178675105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae409b87f641dfd7a7925d2f4870d15da06f4aa040f9eab88f14fcbc0e3d63b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:00:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:00:36 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:00:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:00:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:02:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:03:00 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 27 Jan 2017 23:15:14 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 27 Jan 2017 23:15:15 GMT
WORKDIR /var/www/html
# Fri, 27 Jan 2017 23:15:15 GMT
EXPOSE 80/tcp
# Fri, 27 Jan 2017 23:15:16 GMT
CMD ["apache2-foreground"]
# Mon, 30 Jan 2017 15:04:50 GMT
RUN a2enmod rewrite
# Mon, 30 Jan 2017 15:07:26 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 30 Jan 2017 15:07:27 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 30 Jan 2017 15:07:28 GMT
WORKDIR /var/www/html
# Mon, 06 Feb 2017 17:44:29 GMT
ENV DRUPAL_VERSION=8.2.6
# Mon, 06 Feb 2017 17:44:30 GMT
ENV DRUPAL_MD5=57526a827771ea8a06db1792f1602a85
# Mon, 06 Feb 2017 17:44:37 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da10a8382a2ca7e8f3d5ca17b081516cf0ad3a66b1f052997e8be4d441e5958b`  
		Last Modified: Tue, 24 Jan 2017 19:53:03 GMT  
		Size: 12.7 MB (12705419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0367125b7d8c7329d52d1e82c05ae1e85cbe3009c6f54f22e550ce2baed9d3d`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e0d1d8a91db49b5c444f49ff6b2d8ed40609a491b9d4552ad2a72c31a5fd13`  
		Last Modified: Tue, 24 Jan 2017 19:53:06 GMT  
		Size: 13.3 MB (13305091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5aa3e152475a0fcfb59e3204e6a96abd7d43beadf1d47d8f82207428d3629b`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15b0aba9c25409c38480927194ba0e61fe47ed6fa522fa2a76c0df8ba43fa69`  
		Last Modified: Fri, 27 Jan 2017 23:25:06 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3a8f31ee5b862651fe7f1119aa8aeb6f68defaad2da8d0b1a18a823427b493`  
		Last Modified: Mon, 30 Jan 2017 15:07:54 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c17c4c56aac50da2c162f7bb1c2da87d9d7cbacca5c9a6ebeae87ce9f6681a4`  
		Last Modified: Mon, 30 Jan 2017 15:09:36 GMT  
		Size: 8.7 MB (8661564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5775f75d2e4bea0018de2620656a25c7f1607d9f754c62489754ca60ed6b21b`  
		Last Modified: Mon, 30 Jan 2017 15:09:33 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715fa18deb6d226ddd2c39e4ea5b198c644b2316b1d5f0b320ce4fefbaec96c8`  
		Last Modified: Mon, 06 Feb 2017 17:45:13 GMT  
		Size: 12.2 MB (12179260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8`

```console
$ docker pull drupal@sha256:5606e9511cff2817b440b7c18b15d7aa1faa0c7166774a1867c7261a436595bd
```

-	Platforms:
	-	linux; amd64

### `drupal:8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.7 MB (178675105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae409b87f641dfd7a7925d2f4870d15da06f4aa040f9eab88f14fcbc0e3d63b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:00:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:00:36 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:00:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:00:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:02:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:03:00 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 27 Jan 2017 23:15:14 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 27 Jan 2017 23:15:15 GMT
WORKDIR /var/www/html
# Fri, 27 Jan 2017 23:15:15 GMT
EXPOSE 80/tcp
# Fri, 27 Jan 2017 23:15:16 GMT
CMD ["apache2-foreground"]
# Mon, 30 Jan 2017 15:04:50 GMT
RUN a2enmod rewrite
# Mon, 30 Jan 2017 15:07:26 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 30 Jan 2017 15:07:27 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 30 Jan 2017 15:07:28 GMT
WORKDIR /var/www/html
# Mon, 06 Feb 2017 17:44:29 GMT
ENV DRUPAL_VERSION=8.2.6
# Mon, 06 Feb 2017 17:44:30 GMT
ENV DRUPAL_MD5=57526a827771ea8a06db1792f1602a85
# Mon, 06 Feb 2017 17:44:37 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da10a8382a2ca7e8f3d5ca17b081516cf0ad3a66b1f052997e8be4d441e5958b`  
		Last Modified: Tue, 24 Jan 2017 19:53:03 GMT  
		Size: 12.7 MB (12705419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0367125b7d8c7329d52d1e82c05ae1e85cbe3009c6f54f22e550ce2baed9d3d`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e0d1d8a91db49b5c444f49ff6b2d8ed40609a491b9d4552ad2a72c31a5fd13`  
		Last Modified: Tue, 24 Jan 2017 19:53:06 GMT  
		Size: 13.3 MB (13305091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5aa3e152475a0fcfb59e3204e6a96abd7d43beadf1d47d8f82207428d3629b`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15b0aba9c25409c38480927194ba0e61fe47ed6fa522fa2a76c0df8ba43fa69`  
		Last Modified: Fri, 27 Jan 2017 23:25:06 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3a8f31ee5b862651fe7f1119aa8aeb6f68defaad2da8d0b1a18a823427b493`  
		Last Modified: Mon, 30 Jan 2017 15:07:54 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c17c4c56aac50da2c162f7bb1c2da87d9d7cbacca5c9a6ebeae87ce9f6681a4`  
		Last Modified: Mon, 30 Jan 2017 15:09:36 GMT  
		Size: 8.7 MB (8661564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5775f75d2e4bea0018de2620656a25c7f1607d9f754c62489754ca60ed6b21b`  
		Last Modified: Mon, 30 Jan 2017 15:09:33 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715fa18deb6d226ddd2c39e4ea5b198c644b2316b1d5f0b320ce4fefbaec96c8`  
		Last Modified: Mon, 06 Feb 2017 17:45:13 GMT  
		Size: 12.2 MB (12179260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:latest`

```console
$ docker pull drupal@sha256:5606e9511cff2817b440b7c18b15d7aa1faa0c7166774a1867c7261a436595bd
```

-	Platforms:
	-	linux; amd64

### `drupal:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.7 MB (178675105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae409b87f641dfd7a7925d2f4870d15da06f4aa040f9eab88f14fcbc0e3d63b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:00:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:00:36 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:00:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:00:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:02:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:03:00 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 27 Jan 2017 23:15:14 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 27 Jan 2017 23:15:15 GMT
WORKDIR /var/www/html
# Fri, 27 Jan 2017 23:15:15 GMT
EXPOSE 80/tcp
# Fri, 27 Jan 2017 23:15:16 GMT
CMD ["apache2-foreground"]
# Mon, 30 Jan 2017 15:04:50 GMT
RUN a2enmod rewrite
# Mon, 30 Jan 2017 15:07:26 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Mon, 30 Jan 2017 15:07:27 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 30 Jan 2017 15:07:28 GMT
WORKDIR /var/www/html
# Mon, 06 Feb 2017 17:44:29 GMT
ENV DRUPAL_VERSION=8.2.6
# Mon, 06 Feb 2017 17:44:30 GMT
ENV DRUPAL_MD5=57526a827771ea8a06db1792f1602a85
# Mon, 06 Feb 2017 17:44:37 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da10a8382a2ca7e8f3d5ca17b081516cf0ad3a66b1f052997e8be4d441e5958b`  
		Last Modified: Tue, 24 Jan 2017 19:53:03 GMT  
		Size: 12.7 MB (12705419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0367125b7d8c7329d52d1e82c05ae1e85cbe3009c6f54f22e550ce2baed9d3d`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e0d1d8a91db49b5c444f49ff6b2d8ed40609a491b9d4552ad2a72c31a5fd13`  
		Last Modified: Tue, 24 Jan 2017 19:53:06 GMT  
		Size: 13.3 MB (13305091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5aa3e152475a0fcfb59e3204e6a96abd7d43beadf1d47d8f82207428d3629b`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15b0aba9c25409c38480927194ba0e61fe47ed6fa522fa2a76c0df8ba43fa69`  
		Last Modified: Fri, 27 Jan 2017 23:25:06 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3a8f31ee5b862651fe7f1119aa8aeb6f68defaad2da8d0b1a18a823427b493`  
		Last Modified: Mon, 30 Jan 2017 15:07:54 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c17c4c56aac50da2c162f7bb1c2da87d9d7cbacca5c9a6ebeae87ce9f6681a4`  
		Last Modified: Mon, 30 Jan 2017 15:09:36 GMT  
		Size: 8.7 MB (8661564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5775f75d2e4bea0018de2620656a25c7f1607d9f754c62489754ca60ed6b21b`  
		Last Modified: Mon, 30 Jan 2017 15:09:33 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715fa18deb6d226ddd2c39e4ea5b198c644b2316b1d5f0b320ce4fefbaec96c8`  
		Last Modified: Mon, 06 Feb 2017 17:45:13 GMT  
		Size: 12.2 MB (12179260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2.6-fpm`

```console
$ docker pull drupal@sha256:0c6e17829a50eeb9f119e6a7af20d40a224da3ed1dacd1b48ab3361dfd10fa19
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2.6-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173667511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d19f3706d3be65f7ee2c5a5bcbe5250cededd332abf3577676313145b3d05102`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Tue, 24 Jan 2017 19:03:04 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:03:04 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:03:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:03:05 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:03:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:03:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:07:01 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:07:02 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:07:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:07:16 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:07:17 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 24 Jan 2017 19:07:17 GMT
EXPOSE 9000/tcp
# Tue, 24 Jan 2017 19:07:30 GMT
CMD ["php-fpm"]
# Tue, 24 Jan 2017 21:14:34 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 24 Jan 2017 21:14:35 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 24 Jan 2017 21:14:36 GMT
WORKDIR /var/www/html
# Mon, 06 Feb 2017 17:44:38 GMT
ENV DRUPAL_VERSION=8.2.6
# Mon, 06 Feb 2017 17:44:39 GMT
ENV DRUPAL_MD5=57526a827771ea8a06db1792f1602a85
# Mon, 06 Feb 2017 17:44:45 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:5adc4f960d6708a157eb2e2bf309c1527d76d588812a85533b4a69be8ab2bb45`  
		Last Modified: Tue, 24 Jan 2017 19:53:43 GMT  
		Size: 12.7 MB (12686248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3362e72b86682d2606142b16bdafc1428159c3ca2c7ba66e96e46901aef511`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73c76e9dd922588dfe19869b77ecca40ea2bc56eda07fe29aec8ae1c2713b12`  
		Last Modified: Tue, 24 Jan 2017 19:53:43 GMT  
		Size: 12.8 MB (12840061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733604049d5f02738f2e4db3249655f5e56e5c051ae375c70f785077959b26b`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 2.0 KB (2011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a902ab47dc431ddf765838c7e20b540a4f3ec76037cef42535f6bf33f2bce4`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e699a493bc711dd2eb0d5abb550f738771964dca27a1d2287eb97786635abf07`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bfa9f90f9a198713589304c6113d583f99c305b3c309a2b751dc3b0bad5bec`  
		Last Modified: Tue, 24 Jan 2017 21:18:55 GMT  
		Size: 7.0 MB (6983099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44f73907d3ab0dc7ede8d55bb7d800172438d7487ac61f90b38e9ce1e9d3f01`  
		Last Modified: Tue, 24 Jan 2017 21:18:53 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e0a364548e4fbcc5d00b191e0c5c08c4e10ce1e11126a91c120187e46edfc8`  
		Last Modified: Mon, 06 Feb 2017 17:47:27 GMT  
		Size: 12.2 MB (12179255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8.2-fpm`

```console
$ docker pull drupal@sha256:0c6e17829a50eeb9f119e6a7af20d40a224da3ed1dacd1b48ab3361dfd10fa19
```

-	Platforms:
	-	linux; amd64

### `drupal:8.2-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173667511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d19f3706d3be65f7ee2c5a5bcbe5250cededd332abf3577676313145b3d05102`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Tue, 24 Jan 2017 19:03:04 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:03:04 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:03:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:03:05 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:03:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:03:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:07:01 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:07:02 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:07:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:07:16 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:07:17 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 24 Jan 2017 19:07:17 GMT
EXPOSE 9000/tcp
# Tue, 24 Jan 2017 19:07:30 GMT
CMD ["php-fpm"]
# Tue, 24 Jan 2017 21:14:34 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 24 Jan 2017 21:14:35 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 24 Jan 2017 21:14:36 GMT
WORKDIR /var/www/html
# Mon, 06 Feb 2017 17:44:38 GMT
ENV DRUPAL_VERSION=8.2.6
# Mon, 06 Feb 2017 17:44:39 GMT
ENV DRUPAL_MD5=57526a827771ea8a06db1792f1602a85
# Mon, 06 Feb 2017 17:44:45 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:5adc4f960d6708a157eb2e2bf309c1527d76d588812a85533b4a69be8ab2bb45`  
		Last Modified: Tue, 24 Jan 2017 19:53:43 GMT  
		Size: 12.7 MB (12686248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3362e72b86682d2606142b16bdafc1428159c3ca2c7ba66e96e46901aef511`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73c76e9dd922588dfe19869b77ecca40ea2bc56eda07fe29aec8ae1c2713b12`  
		Last Modified: Tue, 24 Jan 2017 19:53:43 GMT  
		Size: 12.8 MB (12840061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733604049d5f02738f2e4db3249655f5e56e5c051ae375c70f785077959b26b`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 2.0 KB (2011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a902ab47dc431ddf765838c7e20b540a4f3ec76037cef42535f6bf33f2bce4`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e699a493bc711dd2eb0d5abb550f738771964dca27a1d2287eb97786635abf07`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bfa9f90f9a198713589304c6113d583f99c305b3c309a2b751dc3b0bad5bec`  
		Last Modified: Tue, 24 Jan 2017 21:18:55 GMT  
		Size: 7.0 MB (6983099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44f73907d3ab0dc7ede8d55bb7d800172438d7487ac61f90b38e9ce1e9d3f01`  
		Last Modified: Tue, 24 Jan 2017 21:18:53 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e0a364548e4fbcc5d00b191e0c5c08c4e10ce1e11126a91c120187e46edfc8`  
		Last Modified: Mon, 06 Feb 2017 17:47:27 GMT  
		Size: 12.2 MB (12179255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:8-fpm`

```console
$ docker pull drupal@sha256:0c6e17829a50eeb9f119e6a7af20d40a224da3ed1dacd1b48ab3361dfd10fa19
```

-	Platforms:
	-	linux; amd64

### `drupal:8-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173667511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d19f3706d3be65f7ee2c5a5bcbe5250cededd332abf3577676313145b3d05102`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Tue, 24 Jan 2017 19:03:04 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:03:04 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:03:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:03:05 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:03:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:03:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:07:01 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:07:02 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:07:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:07:16 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:07:17 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 24 Jan 2017 19:07:17 GMT
EXPOSE 9000/tcp
# Tue, 24 Jan 2017 19:07:30 GMT
CMD ["php-fpm"]
# Tue, 24 Jan 2017 21:14:34 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 24 Jan 2017 21:14:35 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 24 Jan 2017 21:14:36 GMT
WORKDIR /var/www/html
# Mon, 06 Feb 2017 17:44:38 GMT
ENV DRUPAL_VERSION=8.2.6
# Mon, 06 Feb 2017 17:44:39 GMT
ENV DRUPAL_MD5=57526a827771ea8a06db1792f1602a85
# Mon, 06 Feb 2017 17:44:45 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:5adc4f960d6708a157eb2e2bf309c1527d76d588812a85533b4a69be8ab2bb45`  
		Last Modified: Tue, 24 Jan 2017 19:53:43 GMT  
		Size: 12.7 MB (12686248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3362e72b86682d2606142b16bdafc1428159c3ca2c7ba66e96e46901aef511`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73c76e9dd922588dfe19869b77ecca40ea2bc56eda07fe29aec8ae1c2713b12`  
		Last Modified: Tue, 24 Jan 2017 19:53:43 GMT  
		Size: 12.8 MB (12840061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733604049d5f02738f2e4db3249655f5e56e5c051ae375c70f785077959b26b`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 2.0 KB (2011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a902ab47dc431ddf765838c7e20b540a4f3ec76037cef42535f6bf33f2bce4`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e699a493bc711dd2eb0d5abb550f738771964dca27a1d2287eb97786635abf07`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bfa9f90f9a198713589304c6113d583f99c305b3c309a2b751dc3b0bad5bec`  
		Last Modified: Tue, 24 Jan 2017 21:18:55 GMT  
		Size: 7.0 MB (6983099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44f73907d3ab0dc7ede8d55bb7d800172438d7487ac61f90b38e9ce1e9d3f01`  
		Last Modified: Tue, 24 Jan 2017 21:18:53 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e0a364548e4fbcc5d00b191e0c5c08c4e10ce1e11126a91c120187e46edfc8`  
		Last Modified: Mon, 06 Feb 2017 17:47:27 GMT  
		Size: 12.2 MB (12179255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:fpm`

```console
$ docker pull drupal@sha256:0c6e17829a50eeb9f119e6a7af20d40a224da3ed1dacd1b48ab3361dfd10fa19
```

-	Platforms:
	-	linux; amd64

### `drupal:fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173667511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d19f3706d3be65f7ee2c5a5bcbe5250cededd332abf3577676313145b3d05102`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Tue, 24 Jan 2017 19:03:04 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:03:04 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:03:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:03:05 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:03:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:03:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:07:01 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:07:02 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:07:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:07:16 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:07:17 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 24 Jan 2017 19:07:17 GMT
EXPOSE 9000/tcp
# Tue, 24 Jan 2017 19:07:30 GMT
CMD ["php-fpm"]
# Tue, 24 Jan 2017 21:14:34 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Tue, 24 Jan 2017 21:14:35 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 24 Jan 2017 21:14:36 GMT
WORKDIR /var/www/html
# Mon, 06 Feb 2017 17:44:38 GMT
ENV DRUPAL_VERSION=8.2.6
# Mon, 06 Feb 2017 17:44:39 GMT
ENV DRUPAL_MD5=57526a827771ea8a06db1792f1602a85
# Mon, 06 Feb 2017 17:44:45 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:5adc4f960d6708a157eb2e2bf309c1527d76d588812a85533b4a69be8ab2bb45`  
		Last Modified: Tue, 24 Jan 2017 19:53:43 GMT  
		Size: 12.7 MB (12686248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3362e72b86682d2606142b16bdafc1428159c3ca2c7ba66e96e46901aef511`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73c76e9dd922588dfe19869b77ecca40ea2bc56eda07fe29aec8ae1c2713b12`  
		Last Modified: Tue, 24 Jan 2017 19:53:43 GMT  
		Size: 12.8 MB (12840061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733604049d5f02738f2e4db3249655f5e56e5c051ae375c70f785077959b26b`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 2.0 KB (2011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a902ab47dc431ddf765838c7e20b540a4f3ec76037cef42535f6bf33f2bce4`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e699a493bc711dd2eb0d5abb550f738771964dca27a1d2287eb97786635abf07`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bfa9f90f9a198713589304c6113d583f99c305b3c309a2b751dc3b0bad5bec`  
		Last Modified: Tue, 24 Jan 2017 21:18:55 GMT  
		Size: 7.0 MB (6983099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44f73907d3ab0dc7ede8d55bb7d800172438d7487ac61f90b38e9ce1e9d3f01`  
		Last Modified: Tue, 24 Jan 2017 21:18:53 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e0a364548e4fbcc5d00b191e0c5c08c4e10ce1e11126a91c120187e46edfc8`  
		Last Modified: Mon, 06 Feb 2017 17:47:27 GMT  
		Size: 12.2 MB (12179255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7.54-apache`

```console
$ docker pull drupal@sha256:267e73c7ab82e5350f7085fc8b3e8d9f6cce14f2d4a70db276ed30ec01f23322
```

-	Platforms:
	-	linux; amd64

### `drupal:7.54-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.7 MB (169692133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24daa41d563e08cad59aba8c45ad0e5800965ca7aff7285bf33a8fd2fd10a5b4`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:00:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:00:36 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:00:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:00:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:02:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:03:00 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 27 Jan 2017 23:15:14 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 27 Jan 2017 23:15:15 GMT
WORKDIR /var/www/html
# Fri, 27 Jan 2017 23:15:15 GMT
EXPOSE 80/tcp
# Fri, 27 Jan 2017 23:15:16 GMT
CMD ["apache2-foreground"]
# Mon, 30 Jan 2017 15:04:50 GMT
RUN a2enmod rewrite
# Mon, 30 Jan 2017 15:06:01 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Mon, 30 Jan 2017 15:06:02 GMT
WORKDIR /var/www/html
# Mon, 06 Feb 2017 17:44:46 GMT
ENV DRUPAL_VERSION=7.54
# Mon, 06 Feb 2017 17:44:46 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Mon, 06 Feb 2017 17:44:48 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da10a8382a2ca7e8f3d5ca17b081516cf0ad3a66b1f052997e8be4d441e5958b`  
		Last Modified: Tue, 24 Jan 2017 19:53:03 GMT  
		Size: 12.7 MB (12705419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0367125b7d8c7329d52d1e82c05ae1e85cbe3009c6f54f22e550ce2baed9d3d`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e0d1d8a91db49b5c444f49ff6b2d8ed40609a491b9d4552ad2a72c31a5fd13`  
		Last Modified: Tue, 24 Jan 2017 19:53:06 GMT  
		Size: 13.3 MB (13305091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5aa3e152475a0fcfb59e3204e6a96abd7d43beadf1d47d8f82207428d3629b`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15b0aba9c25409c38480927194ba0e61fe47ed6fa522fa2a76c0df8ba43fa69`  
		Last Modified: Fri, 27 Jan 2017 23:25:06 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3a8f31ee5b862651fe7f1119aa8aeb6f68defaad2da8d0b1a18a823427b493`  
		Last Modified: Mon, 30 Jan 2017 15:07:54 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a5a25313eaef2310c9bdf4681e458b46cda363d612807b81be7619badbd712`  
		Last Modified: Mon, 30 Jan 2017 15:07:57 GMT  
		Size: 8.6 MB (8566170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d270744531e7a95112d72f06cb83d95bc6cb4a0f223f562552b4cf33c22f49a3`  
		Last Modified: Mon, 06 Feb 2017 17:48:33 GMT  
		Size: 3.3 MB (3292016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7-apache`

```console
$ docker pull drupal@sha256:267e73c7ab82e5350f7085fc8b3e8d9f6cce14f2d4a70db276ed30ec01f23322
```

-	Platforms:
	-	linux; amd64

### `drupal:7-apache` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.7 MB (169692133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24daa41d563e08cad59aba8c45ad0e5800965ca7aff7285bf33a8fd2fd10a5b4`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:00:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:00:36 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:00:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:00:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:02:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:03:00 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 27 Jan 2017 23:15:14 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 27 Jan 2017 23:15:15 GMT
WORKDIR /var/www/html
# Fri, 27 Jan 2017 23:15:15 GMT
EXPOSE 80/tcp
# Fri, 27 Jan 2017 23:15:16 GMT
CMD ["apache2-foreground"]
# Mon, 30 Jan 2017 15:04:50 GMT
RUN a2enmod rewrite
# Mon, 30 Jan 2017 15:06:01 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Mon, 30 Jan 2017 15:06:02 GMT
WORKDIR /var/www/html
# Mon, 06 Feb 2017 17:44:46 GMT
ENV DRUPAL_VERSION=7.54
# Mon, 06 Feb 2017 17:44:46 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Mon, 06 Feb 2017 17:44:48 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da10a8382a2ca7e8f3d5ca17b081516cf0ad3a66b1f052997e8be4d441e5958b`  
		Last Modified: Tue, 24 Jan 2017 19:53:03 GMT  
		Size: 12.7 MB (12705419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0367125b7d8c7329d52d1e82c05ae1e85cbe3009c6f54f22e550ce2baed9d3d`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e0d1d8a91db49b5c444f49ff6b2d8ed40609a491b9d4552ad2a72c31a5fd13`  
		Last Modified: Tue, 24 Jan 2017 19:53:06 GMT  
		Size: 13.3 MB (13305091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5aa3e152475a0fcfb59e3204e6a96abd7d43beadf1d47d8f82207428d3629b`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15b0aba9c25409c38480927194ba0e61fe47ed6fa522fa2a76c0df8ba43fa69`  
		Last Modified: Fri, 27 Jan 2017 23:25:06 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3a8f31ee5b862651fe7f1119aa8aeb6f68defaad2da8d0b1a18a823427b493`  
		Last Modified: Mon, 30 Jan 2017 15:07:54 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a5a25313eaef2310c9bdf4681e458b46cda363d612807b81be7619badbd712`  
		Last Modified: Mon, 30 Jan 2017 15:07:57 GMT  
		Size: 8.6 MB (8566170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d270744531e7a95112d72f06cb83d95bc6cb4a0f223f562552b4cf33c22f49a3`  
		Last Modified: Mon, 06 Feb 2017 17:48:33 GMT  
		Size: 3.3 MB (3292016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7.54`

```console
$ docker pull drupal@sha256:267e73c7ab82e5350f7085fc8b3e8d9f6cce14f2d4a70db276ed30ec01f23322
```

-	Platforms:
	-	linux; amd64

### `drupal:7.54` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.7 MB (169692133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24daa41d563e08cad59aba8c45ad0e5800965ca7aff7285bf33a8fd2fd10a5b4`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:00:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:00:36 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:00:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:00:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:02:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:03:00 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 27 Jan 2017 23:15:14 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 27 Jan 2017 23:15:15 GMT
WORKDIR /var/www/html
# Fri, 27 Jan 2017 23:15:15 GMT
EXPOSE 80/tcp
# Fri, 27 Jan 2017 23:15:16 GMT
CMD ["apache2-foreground"]
# Mon, 30 Jan 2017 15:04:50 GMT
RUN a2enmod rewrite
# Mon, 30 Jan 2017 15:06:01 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Mon, 30 Jan 2017 15:06:02 GMT
WORKDIR /var/www/html
# Mon, 06 Feb 2017 17:44:46 GMT
ENV DRUPAL_VERSION=7.54
# Mon, 06 Feb 2017 17:44:46 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Mon, 06 Feb 2017 17:44:48 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da10a8382a2ca7e8f3d5ca17b081516cf0ad3a66b1f052997e8be4d441e5958b`  
		Last Modified: Tue, 24 Jan 2017 19:53:03 GMT  
		Size: 12.7 MB (12705419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0367125b7d8c7329d52d1e82c05ae1e85cbe3009c6f54f22e550ce2baed9d3d`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e0d1d8a91db49b5c444f49ff6b2d8ed40609a491b9d4552ad2a72c31a5fd13`  
		Last Modified: Tue, 24 Jan 2017 19:53:06 GMT  
		Size: 13.3 MB (13305091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5aa3e152475a0fcfb59e3204e6a96abd7d43beadf1d47d8f82207428d3629b`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15b0aba9c25409c38480927194ba0e61fe47ed6fa522fa2a76c0df8ba43fa69`  
		Last Modified: Fri, 27 Jan 2017 23:25:06 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3a8f31ee5b862651fe7f1119aa8aeb6f68defaad2da8d0b1a18a823427b493`  
		Last Modified: Mon, 30 Jan 2017 15:07:54 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a5a25313eaef2310c9bdf4681e458b46cda363d612807b81be7619badbd712`  
		Last Modified: Mon, 30 Jan 2017 15:07:57 GMT  
		Size: 8.6 MB (8566170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d270744531e7a95112d72f06cb83d95bc6cb4a0f223f562552b4cf33c22f49a3`  
		Last Modified: Mon, 06 Feb 2017 17:48:33 GMT  
		Size: 3.3 MB (3292016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7`

```console
$ docker pull drupal@sha256:267e73c7ab82e5350f7085fc8b3e8d9f6cce14f2d4a70db276ed30ec01f23322
```

-	Platforms:
	-	linux; amd64

### `drupal:7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.7 MB (169692133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24daa41d563e08cad59aba8c45ad0e5800965ca7aff7285bf33a8fd2fd10a5b4`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

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
# Tue, 17 Jan 2017 18:58:08 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 17 Jan 2017 18:58:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 17 Jan 2017 18:58:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 17 Jan 2017 18:58:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 17 Jan 2017 18:58:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 17 Jan 2017 18:58:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 17 Jan 2017 18:58:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jan 2017 18:58:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Jan 2017 19:00:34 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:00:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:00:36 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:00:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:00:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:02:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:03:00 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:03:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 27 Jan 2017 23:15:14 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 27 Jan 2017 23:15:15 GMT
WORKDIR /var/www/html
# Fri, 27 Jan 2017 23:15:15 GMT
EXPOSE 80/tcp
# Fri, 27 Jan 2017 23:15:16 GMT
CMD ["apache2-foreground"]
# Mon, 30 Jan 2017 15:04:50 GMT
RUN a2enmod rewrite
# Mon, 30 Jan 2017 15:06:01 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Mon, 30 Jan 2017 15:06:02 GMT
WORKDIR /var/www/html
# Mon, 06 Feb 2017 17:44:46 GMT
ENV DRUPAL_VERSION=7.54
# Mon, 06 Feb 2017 17:44:46 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Mon, 06 Feb 2017 17:44:48 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:3b0f3d176a5bf080e41340e04575cdeece539b71cd0405812474a03151cdf73f`  
		Last Modified: Wed, 18 Jan 2017 03:05:22 GMT  
		Size: 2.8 MB (2849173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cc248a5690169dac19b598857e4ecd4a6421a5c21eb699066d5006cf27834b`  
		Last Modified: Wed, 18 Jan 2017 03:05:20 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff565538ee684ae5f9d8e1c0c152bfabefa1f94202054df27edc82410555c74`  
		Last Modified: Wed, 18 Jan 2017 03:05:19 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1077228581cd19b5dc570b5831269295dd388feba6e783bd93396b0a825caa`  
		Last Modified: Wed, 18 Jan 2017 03:05:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57359f144a1928936e5079e40f75cf1e00f8eb81b3bf2045fbdbc02e9f1b78e5`  
		Last Modified: Wed, 18 Jan 2017 03:05:17 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da10a8382a2ca7e8f3d5ca17b081516cf0ad3a66b1f052997e8be4d441e5958b`  
		Last Modified: Tue, 24 Jan 2017 19:53:03 GMT  
		Size: 12.7 MB (12705419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0367125b7d8c7329d52d1e82c05ae1e85cbe3009c6f54f22e550ce2baed9d3d`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e0d1d8a91db49b5c444f49ff6b2d8ed40609a491b9d4552ad2a72c31a5fd13`  
		Last Modified: Tue, 24 Jan 2017 19:53:06 GMT  
		Size: 13.3 MB (13305091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5aa3e152475a0fcfb59e3204e6a96abd7d43beadf1d47d8f82207428d3629b`  
		Last Modified: Tue, 24 Jan 2017 19:53:02 GMT  
		Size: 2.0 KB (2023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15b0aba9c25409c38480927194ba0e61fe47ed6fa522fa2a76c0df8ba43fa69`  
		Last Modified: Fri, 27 Jan 2017 23:25:06 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3a8f31ee5b862651fe7f1119aa8aeb6f68defaad2da8d0b1a18a823427b493`  
		Last Modified: Mon, 30 Jan 2017 15:07:54 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a5a25313eaef2310c9bdf4681e458b46cda363d612807b81be7619badbd712`  
		Last Modified: Mon, 30 Jan 2017 15:07:57 GMT  
		Size: 8.6 MB (8566170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d270744531e7a95112d72f06cb83d95bc6cb4a0f223f562552b4cf33c22f49a3`  
		Last Modified: Mon, 06 Feb 2017 17:48:33 GMT  
		Size: 3.3 MB (3292016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7.54-fpm`

```console
$ docker pull drupal@sha256:5559d7ff2bcadad9d6af588bf7bb00d302662cc252875cdc6c15990bc11a760f
```

-	Platforms:
	-	linux; amd64

### `drupal:7.54-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.7 MB (164684855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28fd51eb0b69001d972d2f521440edcb8852abe63ba1b4c520e2274e001f41ae`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Tue, 24 Jan 2017 19:03:04 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:03:04 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:03:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:03:05 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:03:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:03:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:07:01 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:07:02 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:07:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:07:16 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:07:17 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 24 Jan 2017 19:07:17 GMT
EXPOSE 9000/tcp
# Tue, 24 Jan 2017 19:07:30 GMT
CMD ["php-fpm"]
# Tue, 24 Jan 2017 21:11:40 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 24 Jan 2017 21:11:41 GMT
WORKDIR /var/www/html
# Mon, 06 Feb 2017 17:44:48 GMT
ENV DRUPAL_VERSION=7.54
# Mon, 06 Feb 2017 17:44:49 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Mon, 06 Feb 2017 17:44:50 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:5adc4f960d6708a157eb2e2bf309c1527d76d588812a85533b4a69be8ab2bb45`  
		Last Modified: Tue, 24 Jan 2017 19:53:43 GMT  
		Size: 12.7 MB (12686248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3362e72b86682d2606142b16bdafc1428159c3ca2c7ba66e96e46901aef511`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73c76e9dd922588dfe19869b77ecca40ea2bc56eda07fe29aec8ae1c2713b12`  
		Last Modified: Tue, 24 Jan 2017 19:53:43 GMT  
		Size: 12.8 MB (12840061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733604049d5f02738f2e4db3249655f5e56e5c051ae375c70f785077959b26b`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 2.0 KB (2011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a902ab47dc431ddf765838c7e20b540a4f3ec76037cef42535f6bf33f2bce4`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e699a493bc711dd2eb0d5abb550f738771964dca27a1d2287eb97786635abf07`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18dc0ed777254a1e6ba504baeab7c78851afdaf3be978cf7fe2deb2a3ac773ec`  
		Last Modified: Tue, 24 Jan 2017 21:16:10 GMT  
		Size: 6.9 MB (6888019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b85f9f4343357d2425d25462cabbe9ee0d52f4c51421f7280b50ae5efa48d97`  
		Last Modified: Mon, 06 Feb 2017 17:49:51 GMT  
		Size: 3.3 MB (3292012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `drupal:7-fpm`

```console
$ docker pull drupal@sha256:5559d7ff2bcadad9d6af588bf7bb00d302662cc252875cdc6c15990bc11a760f
```

-	Platforms:
	-	linux; amd64

### `drupal:7-fpm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.7 MB (164684855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28fd51eb0b69001d972d2f521440edcb8852abe63ba1b4c520e2274e001f41ae`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Tue, 24 Jan 2017 19:03:04 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Jan 2017 19:03:04 GMT
ENV PHP_VERSION=7.0.15
# Tue, 24 Jan 2017 19:03:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.15.tar.xz.asc/from/this/mirror
# Tue, 24 Jan 2017 19:03:05 GMT
ENV PHP_SHA256=300364d57fc4a6176ff7d52d390ee870ab6e30df121026649f8e7e0b9657fe93 PHP_MD5=dca23412f3e3b3987e582091b751925d
# Tue, 24 Jan 2017 19:03:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 24 Jan 2017 19:03:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:07:01 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 24 Jan 2017 19:07:02 GMT
COPY multi:5c1cc33896847ec6f8a128a1494e83c37aea885824061e1b8e308f9e09499956 in /usr/local/bin/ 
# Tue, 24 Jan 2017 19:07:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Jan 2017 19:07:16 GMT
WORKDIR /var/www/html
# Tue, 24 Jan 2017 19:07:17 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 24 Jan 2017 19:07:17 GMT
EXPOSE 9000/tcp
# Tue, 24 Jan 2017 19:07:30 GMT
CMD ["php-fpm"]
# Tue, 24 Jan 2017 21:11:40 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip
# Tue, 24 Jan 2017 21:11:41 GMT
WORKDIR /var/www/html
# Mon, 06 Feb 2017 17:44:48 GMT
ENV DRUPAL_VERSION=7.54
# Mon, 06 Feb 2017 17:44:49 GMT
ENV DRUPAL_MD5=3068cbe488075ae166e23ea6cd29cf0f
# Mon, 06 Feb 2017 17:44:50 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites
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
	-	`sha256:5adc4f960d6708a157eb2e2bf309c1527d76d588812a85533b4a69be8ab2bb45`  
		Last Modified: Tue, 24 Jan 2017 19:53:43 GMT  
		Size: 12.7 MB (12686248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3362e72b86682d2606142b16bdafc1428159c3ca2c7ba66e96e46901aef511`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73c76e9dd922588dfe19869b77ecca40ea2bc56eda07fe29aec8ae1c2713b12`  
		Last Modified: Tue, 24 Jan 2017 19:53:43 GMT  
		Size: 12.8 MB (12840061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733604049d5f02738f2e4db3249655f5e56e5c051ae375c70f785077959b26b`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 2.0 KB (2011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a902ab47dc431ddf765838c7e20b540a4f3ec76037cef42535f6bf33f2bce4`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e699a493bc711dd2eb0d5abb550f738771964dca27a1d2287eb97786635abf07`  
		Last Modified: Tue, 24 Jan 2017 19:53:39 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18dc0ed777254a1e6ba504baeab7c78851afdaf3be978cf7fe2deb2a3ac773ec`  
		Last Modified: Tue, 24 Jan 2017 21:16:10 GMT  
		Size: 6.9 MB (6888019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b85f9f4343357d2425d25462cabbe9ee0d52f4c51421f7280b50ae5efa48d97`  
		Last Modified: Mon, 06 Feb 2017 17:49:51 GMT  
		Size: 3.3 MB (3292012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
